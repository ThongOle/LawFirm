package vn.com.stanford.action;

import java.io.File;
import java.io.IOException;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import com.opensymphony.xwork2.ActionSupport;

import vn.com.stanford.entity.HanhDongEnum;
import vn.com.stanford.entity.LuatSu;
import vn.com.stanford.service.LuatSuDao;

public class LuatSuAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5890109959677546082L;

	private List<LuatSu> lstLuatSu = new ArrayList<LuatSu>();
	private LuatSuDao luatSuDao;
	private LuatSu objLuatSu;
	private int maLuatSu = 0;
	private File fileUpload;
	private String fileUploadFileName;
	private String fileUploadContentType;
	private Map<String, Object> s;
	private String chuoiId = "";
	private String kQ = "";

	public List<LuatSu> getLstLuatSu() {
		return lstLuatSu;
	}

	public void setLstLuatSu(List<LuatSu> lstLuatSu) {
		this.lstLuatSu = lstLuatSu;
	}

	public LuatSuDao getLuatSuDao() {
		return luatSuDao;
	}

	public void setLuatSuDao(LuatSuDao luatSuDao) {
		this.luatSuDao = luatSuDao;
	}

	public LuatSu getObjLuatSu() {
		return objLuatSu;
	}

	public void setObjLuatSu(LuatSu objLuatSu) {
		this.objLuatSu = objLuatSu;
	}

	public int getMaLuatSu() {
		return maLuatSu;
	}

	public void setMaLuatSu(int maLuatSu) {
		this.maLuatSu = maLuatSu;
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

	public Map<String, Object> getS() {
		return s;
	}

	public void setS(Map<String, Object> s) {
		this.s = s;
	}

	public String getChuoiId() {
		return chuoiId;
	}

	public void setChuoiId(String chuoiId) {
		this.chuoiId = chuoiId;
	}

	public String getkQ() {
		return kQ;
	}

	public void setkQ(String kQ) {
		this.kQ = kQ;
	}

	public String danhSachLuatSu() {
		lstLuatSu = luatSuDao.layDanhSach();
		return SUCCESS;
	}

	public String chiTietThongTinLuatSu() {
		if (maLuatSu != 0) {
			objLuatSu = luatSuDao.layChiTiet(maLuatSu);
		}
		return SUCCESS;
	}
	public String chiTietThongTinLuatSu1() {
		lstLuatSu = luatSuDao.layDanhSach();
		if (maLuatSu != 0) {
			objLuatSu = luatSuDao.layChiTiet(maLuatSu);
			for (int i = 0; i<lstLuatSu.size(); i++) {
				if(lstLuatSu.get(i).getId()== maLuatSu) {
					lstLuatSu.remove(i);
					break;
				}
			}
		}
		
		return SUCCESS;
	}
	public String themMoiCapNhatLuatsu() throws UnknownHostException {
		boolean ketQua = false;
		if (fileUploadFileName != null && !fileUploadFileName.isEmpty() && fileUploadFileName.length() > 0) {
			try {
				String filePath = ServletActionContext.getServletContext().getInitParameter("file-upload");
				File fileToCreate = new File(filePath, fileUploadFileName);
				FileUtils.copyFile(fileUpload, fileToCreate);
			} catch (IOException ex) {
				System.err.println("Có lỗi xảy ra. Chi tiết: " + ex);
			}
			// Thực hiện gán ảnh để lưu vào db như sau
			objLuatSu.setAnh(fileUploadFileName);
		}
		if (objLuatSu != null) {
			String noiDung = objLuatSu.getId() + ";" + objLuatSu.getHoTen();
			if (maLuatSu != 0) {
				objLuatSu.setId(maLuatSu);

				ketQua = luatSuDao.sua(objLuatSu);
				NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.SUA, "QuanLyLuatSu");
			} else {
				
				ketQua = luatSuDao.themMoi(objLuatSu);
				NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.THEMMOI, "QuanLyLuatSu");
			}
		}
		if (ketQua) {
			return SUCCESS;
		}
		return INPUT;
	}

	public String xoaLuatSu() throws UnknownHostException {
		String[] lstId = chuoiId.split(";");
		String noiDung = "";
		for (int i = 0; i < lstId.length; i++) {
			luatSuDao.xoa(Integer.parseInt(lstId[i]));
			noiDung = lstId[i];
			NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.XOA, "QuanLyLuatSu");
		}
		kQ = "Xóa thành công";
		return SUCCESS;

	}
}
