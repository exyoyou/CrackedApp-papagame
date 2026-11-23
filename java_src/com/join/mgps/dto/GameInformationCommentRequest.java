package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GameInformationCommentRequest {
    private int[] comment_type;
    private String information_id;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68064pc;
    private int pn;
    private int uid;

    public GameInformationCommentRequest() {
    }

    public int[] getComment_type() {
        return this.comment_type;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public int getPc() {
        return this.f68064pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public void setComment_type(int[] comment_type) {
        this.comment_type = comment_type;
    }

    public void setInformation_id(String information_id) {
        this.information_id = information_id;
    }

    public void setPc(int pc2) {
        this.f68064pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public GameInformationCommentRequest(int[] comment_type, String information_id, int pn, int pc2) {
        this.comment_type = comment_type;
        this.information_id = information_id;
        this.pn = pn;
        this.f68064pc = pc2;
    }
}
