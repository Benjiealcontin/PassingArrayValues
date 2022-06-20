package com.Pasing.Operation;

public class Model {
	private int ID;
	private String Data;

	public Model() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Model(int iD, String data) {
		super();
		ID = iD;
		Data = data;
	}

	public Model(String data) {
		super();
		Data = data;
	}

	public int getID() {
		return ID;
	}

	public void setID(int iD) {
		ID = iD;
	}

	public String getData() {
		return Data;
	}

	public void setData(String data) {
		Data = data;
	}

}
