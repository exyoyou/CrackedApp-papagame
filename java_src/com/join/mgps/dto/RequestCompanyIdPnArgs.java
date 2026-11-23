package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestCompanyIdPnArgs {
    private int company_id;
    private int pn;

    public RequestCompanyIdPnArgs(int company_id, int pn) {
        this.pn = pn;
        this.company_id = company_id;
    }

    public int getCompany_id() {
        return this.company_id;
    }

    public int getPn() {
        return this.pn;
    }

    public void setCompany_id(int company_id) {
        this.company_id = company_id;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }
}
