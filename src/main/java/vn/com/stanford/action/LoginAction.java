package vn.com.stanford.action;

import java.util.Map;

import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

import vn.com.stanford.entity.NguoiDung;
import vn.com.stanford.service.NguoiDungDao;

public class LoginAction extends ActionSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = -1575621891075725009L;
	private String tenDangNhap, matKhau;
	private NguoiDungDao nguoiDungDao;
	private NguoiDung objNguoiDung;
	
	
	public NguoiDung getObjNguoiDung() {
		return objNguoiDung;
	}


	public void setObjNguoiDung(NguoiDung objNguoiDung) {
		this.objNguoiDung = objNguoiDung;
	}


	public void setNguoiDungDao(NguoiDungDao nguoiDungDao) {
		this.nguoiDungDao = nguoiDungDao;
	}

	public String getTenDangNhap() {
		return tenDangNhap;
	}


	public void setTenDangNhap(String tenDangNhap) {
		this.tenDangNhap = tenDangNhap;
	}

	public String getMatKhau() {
		return matKhau;
	}


	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}


	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		return INPUT;
	}
	public String dangNhapHeThong() {
		objNguoiDung = nguoiDungDao.kiemTraDangNhap(tenDangNhap);
		if(objNguoiDung!=null) {
			if(matKhau.equals(objNguoiDung.getMatKhau())) {
				// Sau khi đăng nhập thành công thì gán vào session
				Map<String, Object> session = ActionContext.getContext().getSession();
				// Lưu thông tin đăng nhập vào session
				session.put("username", tenDangNhap);
				session.put("userId", objNguoiDung.getId());
				session.put("hoTen", objNguoiDung.getHoTen());
				return SUCCESS;
			}
		}
		return INPUT;
	}

}
