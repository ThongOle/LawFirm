package vn.com.stanford.service;

import vn.com.stanford.entity.NguoiDung;

public interface NguoiDungDao extends HanhDong<NguoiDung, Integer>{
	NguoiDung kiemTraDangNhap(String username);
}
