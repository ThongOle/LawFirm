package vn.com.stanford.action;

import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.List;
import com.opensymphony.xwork2.ActionSupport;
import vn.com.stanford.entity.ChuDe;
import vn.com.stanford.entity.HanhDongEnum;
import vn.com.stanford.service.ChuDeDao;

public class ChuDeAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 2190230724988350237L;
	private List<ChuDe> lstChuDe = new ArrayList<ChuDe>();
	private ChuDeDao chuDeDao;
	private String maChuDe;
	private ChuDe objChuDe;
	private String chuoiId;
	private String ketQua ="";
	
	
	public String getKetQua() {
		return ketQua;
	}


	public void setKetQua(String ketQua) {
		this.ketQua = ketQua;
	}


	public String getChuoiId() {
		return chuoiId;
	}


	public void setChuoiId(String chuoiId) {
		this.chuoiId = chuoiId;
	}


	public ChuDe getObjChuDe() {
		return objChuDe;
	}


	public void setObjChuDe(ChuDe objChuDe) {
		this.objChuDe = objChuDe;
	}


	public String getMaChuDe() {
		return maChuDe;
	}


	public void setMaChuDe(String maChuDe) {
		this.maChuDe = maChuDe;
	}


	public List<ChuDe> getLstChuDe() {
		return lstChuDe;
	}


	public void setLstChuDe(List<ChuDe> lstChuDe) {
		this.lstChuDe = lstChuDe;
	}


	public void setChuDeDao(ChuDeDao chuDeDao) {
		this.chuDeDao = chuDeDao;
	}


	@Override
	public String execute() throws Exception {
		lstChuDe = chuDeDao.layDanhSach();
		return SUCCESS;
	}
	public String chiTietThongTinChuDe() {
		if(maChuDe != null && !maChuDe.isEmpty()) {
			objChuDe = chuDeDao.layChiTiet(maChuDe);
		}
		return SUCCESS;
	}
	public String xoaChuDe() throws UnknownHostException {
		String[] lstId= chuoiId.split(";");
		String noiDung ="";
		for (int i =0; i< lstId.length; i++) {
			chuDeDao.xoa(lstId[i]);
			noiDung=lstId[i];
			NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.XOA, "QuanLyChuDe");
		}
		ketQua = "Xóa thành công";
		return SUCCESS;
	}
	public String themMoiCapNhat() throws UnknownHostException {
		boolean kQ= false;
		if (objChuDe!= null) {
			String noiDung = objChuDe.getMaChuDe()+ objChuDe.getTenChuDe();
			if(maChuDe != null && !maChuDe.isEmpty()) {
				kQ = chuDeDao.sua(objChuDe);
				NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.SUA, "QuanLyChuDe");
			}else {
				kQ = chuDeDao.themMoi(objChuDe);
				NhatKyAction.themMoiNhatKy(noiDung, HanhDongEnum.THEMMOI, "QuanLyChuDe");
			}
		}
		if(kQ) {
			return SUCCESS;
		}
		return INPUT;
	}
}
