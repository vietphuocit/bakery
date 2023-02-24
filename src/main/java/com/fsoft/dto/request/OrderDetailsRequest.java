package com.fsoft.dto.request;

import java.util.ArrayList;

public class OrderDetailsRequest {
	private ArrayList<DetailRequest> detailRequests;

	public OrderDetailsRequest() {
		super();
	}

	public OrderDetailsRequest(ArrayList<DetailRequest> detailRequests) {
		super();
		this.detailRequests = detailRequests;
	}

	public ArrayList<DetailRequest> getDetailRequests() {
		return detailRequests;
	}

	public void setDetailRequests(ArrayList<DetailRequest> detailRequests) {
		this.detailRequests = detailRequests;
	}

	@Override
	public String toString() {
		return "OrderDetailsRequest [detailRequests=" + detailRequests + "]";
	}

}
