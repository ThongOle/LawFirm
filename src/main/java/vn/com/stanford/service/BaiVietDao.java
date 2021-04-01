package vn.com.stanford.service;

import java.util.List;

import vn.com.stanford.entity.BaiViet;

public interface BaiVietDao extends HanhDong<BaiViet, Integer>{
	public List<BaiViet> timKiem(String maBV);
}
