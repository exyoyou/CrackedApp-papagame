package com.join.mgps.dto;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageOperationArgs extends BaseDto {
    private String game_id;
    private int gift_package_id;
    private int uid;

    public GiftPackageOperationArgs() {
    }

    public String getGame_id() {
        return this.game_id;
    }

    public int getGift_package_id() {
        return this.gift_package_id;
    }

    public int getUid() {
        return this.uid;
    }

    public void setGame_id(String game_id) {
        this.game_id = game_id;
    }

    public void setGift_package_id(int gift_package_id) {
        this.gift_package_id = gift_package_id;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public GiftPackageOperationArgs(int uid, int gift_package_id, String game_id) {
        this.uid = uid;
        this.gift_package_id = gift_package_id;
        this.game_id = game_id;
    }
}
