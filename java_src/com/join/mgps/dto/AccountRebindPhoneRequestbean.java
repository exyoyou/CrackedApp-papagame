package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountRebindPhoneRequestbean {
    private String new_code;
    private String new_mobile;
    private String old_code;
    private String token;
    private int uid;

    public String getNew_code() {
        return this.new_code;
    }

    public String getNew_mobile() {
        return this.new_mobile;
    }

    public String getOld_code() {
        return this.old_code;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("new_mobile", this.new_mobile);
        linkedMultiValueMap.add(Constants.TOKEN, this.token);
        linkedMultiValueMap.add("old_code", this.old_code);
        linkedMultiValueMap.add("new_code", this.new_code);
        return linkedMultiValueMap;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setNew_code(String new_code) {
        this.new_code = new_code;
    }

    public void setNew_mobile(String new_mobile) {
        this.new_mobile = new_mobile;
    }

    public void setOld_code(String old_code) {
        this.old_code = old_code;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }
}
