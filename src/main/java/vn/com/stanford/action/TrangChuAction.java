package vn.com.stanford.action;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import vn.com.stanford.entity.BaiViet;
import vn.com.stanford.entity.LuatSu;
import vn.com.stanford.service.BaiVietDao;
import vn.com.stanford.service.LuatSuDao;

public class TrangChuAction extends ActionSupport {
	private LuatSuDao luatSuDao;
	private List<LuatSu> lstLuatSu;
	private BaiViet objBaiViet;
	private BaiVietDao baiVietDao;
	private List<BaiViet> lstBaiViet;
	private int maDichVu=0;
	
	public int getMaDichVu() {
		return maDichVu;
	}

	public void setMaDichVu(int maDichVu) {
		this.maDichVu = maDichVu;
	}

	public List<BaiViet> getLstBaiViet() {
		return lstBaiViet;
	}

	public void setLstBaiViet(List<BaiViet> lstBaiViet) {
		this.lstBaiViet = lstBaiViet;
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

	public List<LuatSu> getLstLuatSu() {
		return lstLuatSu;
	}

	public void setLstLuatSu(List<LuatSu> lstLuatSu) {
		this.lstLuatSu = lstLuatSu;
	}

	public void setLuatSuDao(LuatSuDao luatSuDao) {
		this.luatSuDao = luatSuDao;
	}

	/**
	 * 
	 */
	private static final long serialVersionUID = 8280891544440579204L;
	
	@Override
	public String execute() throws Exception {
		// TODO Auto-generated method stub
		lstLuatSu = luatSuDao.layDanhSach();
		Collections.sort(lstLuatSu, new Comparator<LuatSu>() {
            @Override
            public int compare(LuatSu o1, LuatSu o2) {
                return o1.getSapXep() >o2.getSapXep() ?1:-1;
            }
        });
		return SUCCESS;
	}
	
	public String gioiThieu() throws Exception {
		execute();
		objBaiViet = baiVietDao.timKiem("GT").get(0);
		return SUCCESS;
	}
	public String dichVu() {
		lstBaiViet = baiVietDao.timKiem("DV");
		return SUCCESS;
	}
	public String chiTietDichVu() {
		objBaiViet = baiVietDao.layChiTiet(maDichVu);
		return SUCCESS;
	}
	
}
