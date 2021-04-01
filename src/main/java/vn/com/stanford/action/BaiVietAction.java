package vn.com.stanford.action;

import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import vn.com.stanford.entity.BaiViet;
import vn.com.stanford.entity.ChuDe;
import vn.com.stanford.entity.HanhDongEnum;
import vn.com.stanford.entity.LoaiTin;
import vn.com.stanford.service.BaiVietDao;
import vn.com.stanford.service.ChuDeDao;
import vn.com.stanford.service.LoaiTinDao;

public class BaiVietAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 848599055038300867L;
	private List<BaiViet> lstBaiViet = new ArrayList<BaiViet>();
	private BaiVietDao baiVietDao;
	private BaiViet objBaiViet;
	private int maBaiViet = 0;
	private List<ChuDe> lstChuDe = new ArrayList<ChuDe>();
	private List<LoaiTin> lstLoaiTin = new ArrayList<LoaiTin>();
	private File fileUpload;
	private String fileUploadFileName;
	private String fileUploadContentType;
	private ChuDeDao chuDeDao;
	private LoaiTinDao loaiTinDao;
	private Map<String, Object> s;
	private String chuoiId="";
	private String kQ="";
	
	public String getkQ() {
		return kQ;
	}


	public void setkQ(String kQ) {
		this.kQ = kQ;
	}


	public String getChuoiId() {
		return chuoiId;
	}


	public void setChuoiId(String chuoiId) {
		this.chuoiId = chuoiId;
	}


	public void setChuDeDao(ChuDeDao chuDeDao) {
		this.chuDeDao = chuDeDao;
	}


	public void setLoaiTinDao(LoaiTinDao loaiTinDao) {
		this.loaiTinDao = loaiTinDao;
	}


	public File getFileUpload() {
		return fileUpload;
	}


	public void setFileUpload(File fileUpload) {
		this.fileUpload = fileUpload;
	}


	public String getFileUploadFileName() {
		return fileUploadFileName;
	}


	public void setFileUploadFileName(String fileUploadFileName) {
		this.fileUploadFileName = fileUploadFileName;
	}


	public String getFileUploadContentType() {
		return fileUploadContentType;
	}


	public void setFileUploadContentType(String fileUploadContentType) {
		this.fileUploadContentType = fileUploadContentType;
	}


	public List<ChuDe> getLstChuDe() {
		return lstChuDe;
	}


	public void setLstChuDe(List<ChuDe> lstChuDe) {
		this.lstChuDe = lstChuDe;
	}


	public List<LoaiTin> getLstLoaiTin() {
		return lstLoaiTin;
	}


	public void setLstLoaiTin(List<LoaiTin> lstLoaiTin) {
		this.lstLoaiTin = lstLoaiTin;
	}


	public int getMaBaiViet() {
		return maBaiViet;
	}


	public void setMaBaiViet(int maBaiViet) {
		this.maBaiViet = maBaiViet;
	}


	public BaiViet getObjBaiViet() {
		return objBaiViet;
	}


	public void setObjBaiViet(BaiViet objBaiViet) {
		this.objBaiViet = objBaiViet;
	}


	public void setBaiVietDao(BaiVietDao baiVietDao) {
		this.baiVietDao = baiVietDao;
	}


	public List<BaiViet> getLstBaiViet() {
		return lstBaiViet;
	}
	public void setLstBaiViet(List<BaiViet> lstBaiViet) {
		this.lstBaiViet = lstBaiViet;
	}
	public String danhSachBaiViet() {
		lstBaiViet = baiVietDao.layDanhSach();
		return SUCCESS;
	}
	public String chiTietThongTinBaiViet() {
		hienThiChuDe();
		hienThiLoaiTin();
		
		if(maBaiViet != 0) {
			objBaiViet = baiVietDao.layChiTiet(maBaiViet);
		}
		return SUCCESS;
	}
	public void hienThiChuDe() {
		lstChuDe = chuDeDao.layDanhSach();
		System.out.println(lstChuDe.size());
	}
	public void hienThiLoaiTin(){
		lstLoaiTin = loaiTinDao.layDanhSach();
	}
	public String themMoiCapNhatBaiViet() throws UnknownHostException {
		boolean  ketQua = false;
		if (fileUploadFileName != null && !fileUploadFileName.isEmpty() && fileUploadFileName.length() > 0) {
			try {
				String filePath = ServletActionContext.getServletContext().getInitParameter("file-upload");
				File fileToCreate = new File(filePath, fileUploadFileName);
				FileUtils.copyFile(fileUpload, fileToCreate);
			} catch (IOException ex) {
				System.err.println("Có lỗi xảy ra. Chi tiết: " + ex);
			}
			// Thực hiện gán ảnh để lưu vào db như sau
			objBaiViet.setAvatar(fileUploadFileName);
		}
		if (objBaiViet!= null) {
			String noiDung = objBaiViet.getId()+";"+ objBaiViet.getTieuDe();
			if(maBaiViet != 0) {
				Date datecapnhat = new Date();
				objBaiViet.setNgayCapNhat(datecapnhat);
				objBaiViet.setId(maBaiViet);
				
				ketQua = baiVietDao.sua(objBaiViet);
				NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.SUA, "QuanLyBaiViet");
			}else {
				Date date = new Date();
				s = ActionContext.getContext().getSession();
				int id = (Integer) s.get("userId");
				System.out.println(objBaiViet.getNguoiDuyetId());
				objBaiViet.setNguoiTaoId(id);
				objBaiViet.setDaDuyet(0);
				objBaiViet.setNgayTao(date);
				ketQua = baiVietDao.themMoi(objBaiViet);
				NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.THEMMOI, "QuanLyBaiViet");
			}
		}
		if(ketQua) {
			return SUCCESS;
		}
		return INPUT;
	}
	public String xoaBaiViet() throws UnknownHostException {
		String[] lstId= chuoiId.split(";");
		String noiDung="";
		for (int i =0; i< lstId.length; i++) {
			baiVietDao.xoa(Integer.parseInt(lstId[i]));
			noiDung=lstId[i];
			NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.XOA, "QuanLyBaiViet");
		}
		kQ = "Xóa thành công";
		return SUCCESS;
		
	}
	
	
}
