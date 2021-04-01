package vn.com.stanford.entity;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="BaiViet")
public class BaiViet implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -1415901608000177549L;
	private int id, nguoiTaoId, daDuyet, nguoiDuyetId, loaiTinId;
	private String tieuDe, moTa, avatar, noiDung, tacGia, tuKhoa, tags, maChuDe;
	private Date ngayTao, ngayCapNhat;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name = "NguoiTaoId", nullable = true)
	public int getNguoiTaoId() {
		return nguoiTaoId;
	}
	public void setNguoiTaoId(int nguoiTaoId) {
		this.nguoiTaoId = nguoiTaoId;
	}
	@Column(name = "DaDuyet", nullable = true)
	public int getDaDuyet() {
		return daDuyet;
	}
	public void setDaDuyet(int daDuyet) {
		this.daDuyet = daDuyet;
	}
	@Column(name = "NguoiDuyetId", nullable = true)
	public int getNguoiDuyetId() {
		return nguoiDuyetId;
	}
	public void setNguoiDuyetId(int nguoiDuyetId) {
		this.nguoiDuyetId = nguoiDuyetId;
	}
	@Column(name = "LoaiTinId", nullable = true)
	public int getLoaiTinId() {
		return loaiTinId;
	}
	public void setLoaiTinId(int loaiTinId) {
		this.loaiTinId = loaiTinId;
	}
	@Column(name = "TieuDe", nullable = true, length = 350)
	public String getTieuDe() {
		return tieuDe;
	}
	public void setTieuDe(String tieuDe) {
		this.tieuDe = tieuDe;
	}
	@Column(name = "MoTa", nullable = true, length = 2000)
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	@Column(name = "Avatar", nullable = true, length = 100)
	public String getAvatar() {
		return avatar;
	}
	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}
	@Column(name = "NoiDung", nullable = true)
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	@Column(name = "TacGia", nullable = true, length = 100)
	public String getTacGia() {
		return tacGia;
	}
	public void setTacGia(String tacGia) {
		this.tacGia = tacGia;
	}
	@Column(name = "TuKhoa", nullable = true, length = 500)
	public String getTuKhoa() {
		return tuKhoa;
	}
	public void setTuKhoa(String tuKhoa) {
		this.tuKhoa = tuKhoa;
	}
	@Column(name = "Tags", nullable = true, length = 500)
	public String getTags() {
		return tags;
	}
	public void setTags(String tags) {
		this.tags = tags;
	}
	@Column(name = "MaChuDe", nullable = true, length = 10)
	public String getMaChuDe() {
		return maChuDe;
	}
	public void setMaChuDe(String maChuDe) {
		this.maChuDe = maChuDe;
	}
	@Column(name = "NgayTao", nullable = true)
	public Date getNgayTao() {
		return ngayTao;
	}
	public void setNgayTao(Date ngayTao) {
		this.ngayTao = ngayTao;
	}
	@Column(name = "NgayCapNhat", nullable = true)
	public Date getNgayCapNhat() {
		return ngayCapNhat;
	}
	public void setNgayCapNhat(Date ngayCapNhat) {
		this.ngayCapNhat = ngayCapNhat;
	}
}
