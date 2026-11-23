package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class CollectionCommentRequest {
    private String collection_id;
    private int[] comment_type;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68032pc;
    private int pn;
    private int uid;

    public CollectionCommentRequest() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public int[] getComment_type() {
        return this.comment_type;
    }

    public int getPc() {
        return this.f68032pc;
    }

    public int getPn() {
        return this.pn;
    }

    public int getUid() {
        return this.uid;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setComment_type(int[] comment_type) {
        this.comment_type = comment_type;
    }

    public void setPc(int pc2) {
        this.f68032pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public CollectionCommentRequest(int[] comment_type, String collection_id, int pn, int pc2, int uid) {
        this.comment_type = comment_type;
        this.collection_id = collection_id;
        this.pn = pn;
        this.f68032pc = pc2;
        this.uid = uid;
    }
}
