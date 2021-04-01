package vn.com.stanford.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="ChuDe")
public class ChuDe implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = 9014326175037709579L;
	private String maChuDe, tenChuDe;
	
	@Id
	@Column(name = "MaChuDe", unique= true, nullable = false)
	public String getMaChuDe() {
		return maChuDe;
	}

	public void setMaChuDe(String maChuDe) {
		this.maChuDe = maChuDe;
	}
	
	@Column(name="TenChuDe", nullable = true)
	public String getTenChuDe() {
		return tenChuDe;
	}

	public void setTenChuDe(String tenChuDe) {
		this.tenChuDe = tenChuDe;
	}
}
