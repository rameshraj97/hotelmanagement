package com.chainsys.hotelManagement.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="employee")
public class Employee {
@Id
@Column(name="Emp_id")
private int empId;

@Column(name="F_name")
private String firstName;

@Column(name="L_name")
private String lastName;

@Column(name="Phone")
private int phone;

@Column(name="Dob")
private Date dob;

@Column(name="Address")
private String address;

@Column(name="Gender")
private  String gender;

@Column(name="Email")
private String email;

@Column(name="Qualification")
private String qualification;

@Column(name="Role")
private String role;

@Column(name="Date_of_joining")
private Date dateOfJoining;

@Column(name="Department")
private String department;

@Column(name="Manager") 
private String manager;

public int getEmpId() {
	return empId;
}

public void setEmpId(int empId) {
	this.empId = empId;
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

public int getPhone() {
	return phone;
}

public void setPhone(int phone) {
	this.phone = phone;
}

public Date getDob() {
	return dob;
}

public void setDob(Date dob) {
	this.dob = dob;
}

public String getAddress() {
	return address;
}

public void setAddress(String address) {
	this.address = address;
}

public String getGender() {
	return gender;
}

public void setGender(String gender) {
	this.gender = gender;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getQualification() {
	return qualification;
}

public void setQualification(String qualification) {
	this.qualification = qualification;
}

public String getRole() {
	return role;
}

public void setRole(String role) {
	this.role = role;
}

public Date getDateOfJoining() {
	return dateOfJoining;
}

public void setDateOfJoining(Date dateOfJoining) {
	this.dateOfJoining = dateOfJoining;
}

public String getDepartment() {
	return department;
}

public void setDepartment(String department) {
	this.department = department;
}

public String getManager() {
	return manager;
}

public void setManager(String manager) {
	this.manager = manager;
}

}
