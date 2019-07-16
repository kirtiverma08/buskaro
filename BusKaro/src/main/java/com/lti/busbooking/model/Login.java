package com.lti.busbooking.model;

import java.nio.charset.StandardCharsets;
import java.util.Base64;

import javax.persistence.Column;
import javax.persistence.Entity;

import javax.persistence.Table;

@Entity
@Table(name="signup")
public class Login {
	
	@Column(name="email")
	private String email;
	
	@Column(name="password")
	private String password;


	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		Base64.Encoder encoder=Base64.getEncoder();
		String normalString=password;
		String encodedString=encoder.encodeToString(normalString.getBytes(StandardCharsets.UTF_8));
		this.password = encodedString;

	}



	

	@Override
	public String toString() {
		return "User [email=" + email + ", password=" + password + "]";
	}
	

}
