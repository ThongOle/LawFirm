package vn.com.stanford.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ChucNang")
public class ChucNang implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 499766240939535683L;
	private int id;
	private String tenChucNang, tenForm;
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "Id", unique = true, nullable = false)
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	@Column(name = "TenChucNang", nullable = true, length = 250)
	public String getTenChucNang() {
		return tenChucNang;
	}
	public void setTenChucNang(String tenChucNang) {
		this.tenChucNang = tenChucNang;
	}
	@Column(name = "TenForm", nullable = true, length = 100)
	public String getTenForm() {
		return tenForm;
	}
	public void setTenForm(String tenForm) {
		this.tenForm = tenForm;
	}
}
