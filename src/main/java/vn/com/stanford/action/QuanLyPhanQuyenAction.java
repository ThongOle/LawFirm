package vn.com.stanford.action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import vn.com.stanford.entity.ChucNang;
import vn.com.stanford.entity.PhanQuyen;
import vn.com.stanford.entity.VaiTro;
import vn.com.stanford.service.ChucNangDao;
import vn.com.stanford.service.PhanQuyenDao;
import vn.com.stanford.service.VaiTroDao;

public class QuanLyPhanQuyenAction extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 4368611386404281742L;
	private List<VaiTro> lstVaiTro;
	private List<PhanQuyen> lstPhanQuyen;
	private int id;
	private List<ChucNang> lstChucNang;
	private VaiTroDao vaiTroDao;
	private PhanQuyenDao phanQuyenDao;
	private ChucNangDao chucNangDao;

	public void setVaiTroDao(VaiTroDao vaiTroDao) {
		this.vaiTroDao = vaiTroDao;
	}
	public void setPhanQuyenDao(PhanQuyenDao phanQuyenDao) {
		this.phanQuyenDao = phanQuyenDao;
	}
	public void setChucNangDao(ChucNangDao chucNangDao) {
		this.chucNangDao = chucNangDao;
	}
	public List<ChucNang> getLstChucNang() {
		return lstChucNang;
	}
	public void setLstChucNang(List<ChucNang> lstChucNang) {
		this.lstChucNang = lstChucNang;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public List<PhanQuyen> getLstPhanQuyen() {
		return lstPhanQuyen;
	}
	public void setLstPhanQuyen(List<PhanQuyen> lstPhanQuyen) {
		this.lstPhanQuyen = lstPhanQuyen;
	}
	public List<VaiTro> getLstVaiTro() {
		return lstVaiTro;
	}
	public void setLstVaiTro(List<VaiTro> lstVaiTro) {
		this.lstVaiTro = lstVaiTro;
	}
	
	public String hienThiVaiTro() {
		lstVaiTro = vaiTroDao.layDanhSach();
		return SUCCESS;
	}
	public String hienThiPhanQuyen() {
		hienThiVaiTro();
		lstPhanQuyen = phanQuyenDao.timKiemTheoVaiTro(id);
		for (PhanQuyen pq : lstPhanQuyen) {
			pq.setTenChucNang(hienThiChucNang(pq.getChucNangId()));
		}
		return SUCCESS;
	}
	public String hienThiChucNang(int chucNangId) {
		ChucNang chucNang = chucNangDao.layChiTiet(chucNangId);
		
		return chucNang.getTenChucNang();
	}
	public String test() {
		
		return SUCCESS;
	}
}
