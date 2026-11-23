package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageInfoArgs extends BaseDto {
    private int gift_package_id;
    private int uid;

    public GiftPackageInfoArgs() {
    }

    public int getGift_package_id() {
        return this.gift_package_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGift_package_id(int gift_package_id) {
        this.gift_package_id = gift_package_id;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public GiftPackageInfoArgs(int uid, int gift_package_id) {
        this.uid = uid;
        this.gift_package_id = gift_package_id;
    }
}
