package com.join.mgps.dto;

import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class ThAdSwitchDataBean implements Serializable {
    private String fx_ad_id;
    private int fx_ad_switch;
    private String fx_sdk_key;
    private int type;

    public String getFx_ad_id() {
        return this.fx_ad_id;
    }

    public int getFx_ad_switch() {
        return this.fx_ad_switch;
    }

    public String getFx_sdk_key() {
        return this.fx_sdk_key;
    }

    public int getType() {
        return this.type;
    }

    public void setFx_ad_id(String fx_ad_id) {
        this.fx_ad_id = fx_ad_id;
    }

    public void setFx_ad_switch(int fx_ad_switch) {
        this.fx_ad_switch = fx_ad_switch;
    }

    public void setFx_sdk_key(String fx_sdk_key) {
        this.fx_sdk_key = fx_sdk_key;
    }

    public void setType(int type) {
        this.type = type;
    }
}
