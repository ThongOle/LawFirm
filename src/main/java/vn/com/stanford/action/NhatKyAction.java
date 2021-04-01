package vn.com.stanford.action;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import vn.com.stanford.action.NhatKyAction;
import vn.com.stanford.entity.HanhDongEnum;
import vn.com.stanford.entity.NhatKy;
import vn.com.stanford.service.NhatKyDao;
import vn.com.stanford.service.NhatKyImpl;

public class NhatKyAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -5093319804751501831L;
	private static NhatKyDao nhatKyDao = new NhatKyImpl();
	
	private List<NhatKy> lstNhatKy = new ArrayList<NhatKy>();
	private String chuoiId = "" ;
	private String ketQua = "";
	private String tuKhoa ="";
	private int idNhatKy = 0;
	private static NhatKy objNhatKy;
	private static Map<String, Object> s;
	
	public NhatKy getObjNhatKy() {
		return objNhatKy;
	}
	public void setObjNhatKy(NhatKy objNhatKy) {
		NhatKyAction.objNhatKy = objNhatKy;
	}
	public int getIdNhatKy() {
		return idNhatKy;
	}
	public void setIdNhatKy(int idNhatKy) {
		this.idNhatKy = idNhatKy;
	}
	
	public List<NhatKy> getLstNhatKy() {
		return lstNhatKy;
	}
	public void setLstNhatKy(List<NhatKy> lstNhatKy) {
		this.lstNhatKy = lstNhatKy;
	}
	public String getChuoiId() {
		return chuoiId;
	}
	public void setChuoiId(String chuoiId) {
		this.chuoiId = chuoiId;
	}
	public String getKetQua() {
		return ketQua;
	}
	public void setKetQua(String ketQua) {
		this.ketQua = ketQua;
	}
	public String getTuKhoa() {
		return tuKhoa;
	}
	public void setTuKhoa(String tuKhoa) {
		this.tuKhoa = tuKhoa;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		lstNhatKy = nhatKyDao.layDanhSach();
		return SUCCESS;
	}
	
	public String chiTietThongTinNhatKy() {
		if(idNhatKy != 0) {
			objNhatKy = nhatKyDao.layChiTiet(idNhatKy);
		}
		return SUCCESS;
	}
	
	public String xoaNhatKy() {
		String[] lstId= chuoiId.split(";");
		for (int i =0; i< lstId.length; i++) {
			nhatKyDao.xoa(Integer.parseInt(lstId[i]));
		}
		ketQua = "Xóa thành công";
		return SUCCESS;
		
	}
	public static String themMoiNhatKy(String noiDung, HanhDongEnum hd, String tenChucNang) throws UnknownHostException {
		
		Date date = new Date();
		InetAddress yourIP= InetAddress.getLocalHost();
		String diaChiIp = yourIP +"";
		objNhatKy = new NhatKy();
		objNhatKy.setNoiDung(noiDung);
		objNhatKy.setHanhDong(hd);
		objNhatKy.setTenChucNang(tenChucNang);
		objNhatKy.setDiaChiIp(diaChiIp);
		objNhatKy.setNgayTao(date);
		s = ActionContext.getContext().getSession();
		int id = (Integer) s.get("userId");
		objNhatKy.setNguoiTaoId(id);
		System.out.println("Nhật ký là" + id);
		nhatKyDao.themMoi(objNhatKy);
		
		return SUCCESS;
		
	}

}
