package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class ModifyPasswordRequestBean {
    private String device_id;
    private String new_passwd;
    private String old_passwd;
    private String sign;
    private String token;
    private int uid;

    public ModifyPasswordRequestBean() {
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getNew_passwd() {
        return this.new_passwd;
    }

    public String getOld_passwd() {
        return this.old_passwd;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(Constants.TOKEN, this.token);
        linkedMultiValueMap.add("uid", this.uid + "");
        linkedMultiValueMap.add("new_passwd", this.new_passwd);
        linkedMultiValueMap.add("old_passwd", this.old_passwd);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public String getToken() {
        return this.token;
    }

    public int getUid() {
        return this.uid;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setNew_passwd(String new_passwd) {
        this.new_passwd = new_passwd;
    }

    public void setOld_passwd(String old_passwd) {
        this.old_passwd = old_passwd;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(int uid) {
        this.uid = uid;
    }

    public ModifyPasswordRequestBean(String token, int uid, String new_passwd, String old_passwd, String device_id, String sign) {
        this.token = token;
        this.uid = uid;
        this.new_passwd = new_passwd;
        this.old_passwd = old_passwd;
        this.device_id = device_id;
        this.sign = sign;
    }
}
