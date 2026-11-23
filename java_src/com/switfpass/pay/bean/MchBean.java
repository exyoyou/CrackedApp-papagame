package com.switfpass.pay.bean;

import java.io.Serializable;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
public class MchBean implements Serializable {
    private Integer bU;
    private Integer bV;
    private String bW;
    private String bX;
    private String bY;
    private Integer bZ;

    /* JADX INFO: renamed from: ca, reason: collision with root package name */
    private Integer f82641ca;

    /* JADX INFO: renamed from: cb, reason: collision with root package name */
    private Integer f82642cb;

    /* JADX INFO: renamed from: cc, reason: collision with root package name */
    private Integer f82643cc;

    /* JADX INFO: renamed from: cd, reason: collision with root package name */
    private Date f82644cd;
    private Date ce;
    private String tokenId;

    public Integer getBillRate() {
        return this.bZ;
    }

    public String getCenterId() {
        return this.bX;
    }

    public Date getCreatedAt() {
        return this.f82644cd;
    }

    public Integer getDayLimit() {
        return this.f82643cc;
    }

    public String getEnabled() {
        return this.bY;
    }

    public Integer getId() {
        return this.bU;
    }

    public Integer getMchId() {
        return this.bV;
    }

    public Integer getPreLimit() {
        return this.f82641ca;
    }

    public Integer getPreMinLimit() {
        return this.f82642cb;
    }

    public String getTokenId() {
        return this.tokenId;
    }

    public String getTradeType() {
        return this.bW;
    }

    public Date getUpdatedAt() {
        return this.ce;
    }

    public void setBillRate(Integer num) {
        this.bZ = num;
    }

    public void setCenterId(String str) {
        this.bX = str;
    }

    public void setCreatedAt(Date date) {
        this.f82644cd = date;
    }

    public void setDayLimit(Integer num) {
        this.f82643cc = num;
    }

    public void setEnabled(String str) {
        this.bY = str;
    }

    public void setId(Integer num) {
        this.bU = num;
    }

    public void setMchId(Integer num) {
        this.bV = num;
    }

    public void setPreLimit(Integer num) {
        this.f82641ca = num;
    }

    public void setPreMinLimit(Integer num) {
        this.f82642cb = num;
    }

    public void setTokenId(String str) {
        this.tokenId = str;
    }

    public void setTradeType(String str) {
        this.bW = str;
    }

    public void setUpdatedAt(Date date) {
        this.ce = date;
    }
}
