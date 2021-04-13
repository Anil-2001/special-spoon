package com.bijay.onlinevotingsystem.dto;

import java.sql.Blob;

public class Ballot {

	private int id;
	private int voterId;
	private byte[] partyName;
	private Blob blobPartyName;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getVoterId() {
		return voterId;
	}

	public void setVoterId(int voterId) {
		this.voterId = voterId;
	}

	public byte[] getPartyName() {
		return partyName;
	}

	public void setPartyName(byte[] castedVote) {
		this.partyName = castedVote;
	}
	
	public Blob getBlobPartyName() {
		return blobPartyName;
	}
	
	public void setBlobPartyName(Blob blob) {
		this.blobPartyName = blob;
	}

}