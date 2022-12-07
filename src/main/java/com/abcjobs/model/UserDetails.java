package com.abcjobs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "user_details")
public class UserDetails {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "user_details_id")
	private Long userDetailsId;
	
	@Column(name = "user_id")
	private String userId;
	
	@Column(name = "city_id")
	private String cityId;

	@Column(name = "first_name")
	private String firstName;
	
	@Column(name = "last_name")
	private String lastName;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "about")
	private String about;
	
	@Column(name = "company_name")
	private String companyName;
	
	@Column(name = "url")
	private String website;
	
	public UserDetails() {}
	public UserDetails(
			String userId, String cityId,
			String firstName, String lastName,
			String title, String about,
			String companyName, String website) {
		this.userId = userId;
		this.firstName = firstName;
		this.lastName = lastName;
		this.title = title;
		this.about = about;
		this.companyName = companyName;
		this.website = website;
	}
	
	public Long getUserDetailsId() {
		return userDetailsId;
	}
	public void setUserDetailsId(Long userDetailsId) {
		this.userDetailsId = userDetailsId;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getCityId() {
		return cityId;
	}
	public void setCityId(String cityId) {
		this.cityId = cityId;
	}
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAbout() {
		return about;
	}
	public void setAbout(String about) {
		this.about = about;
	}
	public String getCompanyName() {
		return companyName;
	}
	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}
	public String getWebsite() {
		return website;
	}
	public void setWebsite(String website) {
		this.website = website;
	}
}
