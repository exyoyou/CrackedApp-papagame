package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class RequestCollectionArgs extends BaseDto {
    private String belong_to_tag;
    private String collection_id;
    private String game_type;

    /* JADX INFO: renamed from: pc, reason: collision with root package name */
    private int f68092pc;
    private int pn;

    public RequestCollectionArgs() {
    }

    public String getBelong_to_tag() {
        return this.belong_to_tag;
    }

    public String getCollection_id() {
        return this.collection_id;
    }

    public String getGame_type() {
        return this.game_type;
    }

    public int getPc() {
        return this.f68092pc;
    }

    public int getPn() {
        return this.pn;
    }

    public void setBelong_to_tag(String belong_to_tag) {
        this.belong_to_tag = belong_to_tag;
    }

    public void setCollection_id(String collection_id) {
        this.collection_id = collection_id;
    }

    public void setGame_type(String game_type) {
        this.game_type = game_type;
    }

    public void setPc(int pc2) {
        this.f68092pc = pc2;
    }

    public void setPn(int pn) {
        this.pn = pn;
    }

    public RequestCollectionArgs(String collection_id, int pn, int pc2, String game_type, String belong_to_tag) {
        this.collection_id = collection_id;
        this.pn = pn;
        this.f68092pc = pc2;
        this.game_type = game_type;
        this.belong_to_tag = belong_to_tag;
    }
}
