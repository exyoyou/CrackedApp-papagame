package com.join.mgps.dto;

import com.join.mgps.Util.k2;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class BluetoothHandleBlackListRequestBean {
    private String device_id;
    private String sign;

    public String getDevice_id() {
        return this.device_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, k2.g(this));
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
