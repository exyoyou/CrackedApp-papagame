package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RecomRequestAdIdArgs extends BaseDto {
    private String from_aid;
    private int is_anonymous;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f68087m;
    private int pn;
    private int uid;

    public RecomRequestAdIdArgs(int pn, int is_anonymous, int uid, String from_aid, String m10) {
        this.pn = pn;
        this.is_anonymous = is_anonymous;
        this.uid = uid;
        this.from_aid = from_aid;
        this.f68087m = m10;
    }

    public String getFrom_aid() {
        return this.from_aid;
    }

    public int getIs_anonymous() {
        return this.is_anonymous;
    }

    public String getM() {
        return this.f68087m;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public void setFrom_aid(String from_aid) {
        this.from_aid = from_aid;
    }

    public void setIs_anonymous(int is_anonymous) {
        this.is_anonymous = is_anonymous;
    }

    public void setM(String m10) {
        this.f68087m = m10;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
