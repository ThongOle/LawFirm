package vn.com.stanford.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "LuatSu")
public class LuatSu implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1234199853250090522L;
	int id, sapXep;
	String chucVu, noiDung, hoTen, facebook, email, anh;
	
	
	
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="Id", unique = true, nullable = false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	
	@Column(name = "SapXep", nullable = true)
	public int getSapXep() {
		return sapXep;
	}
	public void setSapXep(int sapXep) {
		this.sapXep = sapXep;
	}
	
	@Column(name = "HoTen", nullable = true)
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	@Column(name = "ChucVu", nullable = true, length = 50)
	public String getChucVu() {
		return chucVu;
	}
	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}
	
	@Column(name = "NoiDung", nullable = true)
	public String getNoiDung() {
		return noiDung;
	}
	public void setNoiDung(String noiDung) {
		this.noiDung = noiDung;
	}
	
	@Column(name = "facebook", nullable = true, length = 100)
	public String getFacebook() {
		return facebook;
	}
	public void setFacebook(String facebook) {
		this.facebook = facebook;
	}
	@Column(name = "email", nullable = true, length = 100)
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	
	@Column(name = "Anh", nullable = true, length = 500)
	public String getAnh() {
		return anh;
	}
	public void setAnh(String anh) {
		this.anh = anh;
	}

}
