package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class GiftPackageDataOperationBean implements Serializable {
    private DetailResultBean game_info;
    private GiftPackageDataInfoBean gift_info;

    public DetailResultBean getGame_info() {
        return this.game_info;
    }

    public GiftPackageDataInfoBean getGift_info() {
        return this.gift_info;
    }

    public void setGame_info(DetailResultBean game_info) {
        this.game_info = game_info;
    }

    public void setGift_info(GiftPackageDataInfoBean gift_info) {
        this.gift_info = gift_info;
    }
}
