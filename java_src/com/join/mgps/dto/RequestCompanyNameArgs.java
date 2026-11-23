package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestCompanyNameArgs {
    private String company_name;
    private int pn;

    public RequestCompanyNameArgs(int pn, String company_name) {
        this.pn = pn;
        this.company_name = company_name;
    }

    public String getCompany_name() {
        return this.company_name;
    }

    public int getPn() {
        return this.pn;
    }

    public void setCompany_name(String company_name) {
        this.company_name = company_name;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public String toString() {
        return "RequestCompanyNameArgs{pn=" + this.pn + ", company_name='" + this.company_name + "'}";
    }
}
