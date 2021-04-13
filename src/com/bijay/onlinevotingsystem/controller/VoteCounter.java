package com.bijay.onlinevotingsystem.controller;

import java.nio.charset.StandardCharsets;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bijay.onlinevotingsystem.dto.Ballot;
import java.sql.Blob;

public class VoteCounter {

	RSA rsa = new RSA();

	private byte[] convertBlobtoByteArray(Blob blob) throws SQLException {

		int blobLength = (int) blob.length();
		byte[] blobAsBytes = blob.getBytes(1, blobLength);
		return blobAsBytes;

		// release the blob and free up memory. (since JDBC 4.0)
//		blob.free();
	}

	public List<Integer> getVotesCount(List<Ballot> ballots) throws SQLException {
		List<Integer> countVotes = new ArrayList<>();
		int ncp = 12;
		int nc = 2;
		int rpp = 4;
		int ns = 1;
		for (Ballot ballot : ballots) {
			System.out.println(ballot.getPartyName());
			System.out.println(
					new String(rsa.decrypt(convertBlobtoByteArray(ballot.getBlobPartyName())), StandardCharsets.UTF_8));

			if (new String(rsa.decrypt(convertBlobtoByteArray(ballot.getBlobPartyName())), StandardCharsets.UTF_8)
					.equals("ncp")) {
				ncp += 1;
			} else if (new String(rsa.decrypt(convertBlobtoByteArray(ballot.getBlobPartyName())),
					StandardCharsets.UTF_8).equals("nc")) {
				nc += 1;
			} else if (new String(rsa.decrypt(convertBlobtoByteArray(ballot.getBlobPartyName())),
					StandardCharsets.UTF_8).equals("rpp")) {
				rpp += 1;
			} else {
				ns += 1;
			}
		}
		countVotes.add(ncp);
		countVotes.add(nc);
		countVotes.add(rpp);
		countVotes.add(ns);
		return countVotes;
	}

}
