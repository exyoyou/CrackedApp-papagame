package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import java.io.Serializable;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountBindThirdwaiRequestBean implements Serializable {
    private String sign;
    private int type;
    private int uid;
    private String unique_id = "";
    private String token = "";

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("unique_id", this.unique_id);
        linkedMultiValueMap.add("type", this.type + "");
        linkedMultiValueMap.add(Constant.MD5, this.sign + "");
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add(Constants.TOKEN, this.token);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public int getType() {
        return this.type;
    }

    public int getUid() {
        return this.uid;
    }

    public String getUnique_id() {
        return this.unique_id;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setType(int type) {
        this.type = type;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public void setUnique_id(String unique_id) {
        this.unique_id = unique_id;
    }
}
