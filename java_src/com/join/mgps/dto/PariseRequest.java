package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class PariseRequest {
    private String collection_id;
    private String comment_id;
    private String information_id;
    private int uid;

    public PariseRequest() {
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getComment_id() {
        return this.comment_id;
    }

    public String getInformation_id() {
        return this.information_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setComment_id(String comment_id) {
        this.comment_id = comment_id;
    }

    public void setInformation_id(String information_id) {
        this.information_id = information_id;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public PariseRequest(String information_id, String comment_id, int uid) {
        this.information_id = information_id;
        this.comment_id = comment_id;
        this.uid = uid;
    }
}
