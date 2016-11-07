package org.model;

/**
 * PhoneNum entity. @author MyEclipse Persistence Tools
 */

public class PhoneNum implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String type;
	private Float price;
	private String image;

	// Constructors

	/** default constructor */
	public PhoneNum() {
	}

	/** full constructor */
	public PhoneNum(String name, String type, Float price, String image) {
		this.name = name;
		this.type = type;
		this.price = price;
		this.image = image;
	}

	// Property accessors

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return this.type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public Float getPrice() {
		return this.price;
	}

	public void setPrice(Float price) {
		this.price = price;
	}

	public String getImage() {
		return this.image;
	}

	public void setImage(String image) {
		this.image = image;
	}

}