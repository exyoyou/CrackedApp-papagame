package com.join.mgps.dto;

import com.czhj.sdk.common.Constants;
import java.util.HashMap;
import java.util.Map;
import u.b;

/* JADX INFO: loaded from: classes3.dex */
public class PayGameDataRequest {
    private String app_key;
    private String app_ver;
    private String console_app_key;
    private String device_id;
    private String pay_type;
    private String token;
    private String uid;

    public String getApp_key() {
        return this.app_key;
    }

    public String getApp_ver() {
        return this.app_ver;
    }

    public Map<String, String> getArgs() {
        HashMap map = new HashMap();
        map.put("console_app_key", this.console_app_key);
        map.put(Constant.PAY_TYPE, this.pay_type);
        map.put("uid", this.uid);
        map.put("device_id", this.device_id);
        map.put("app_ver", this.app_ver);
        return map;
    }

    public Map<String, String> getArgsCheck() {
        HashMap map = new HashMap();
        map.put("console_app_key", this.console_app_key);
        map.put("uid", this.uid);
        map.put("device_id", this.device_id);
        map.put(Constants.TOKEN, this.token);
        return map;
    }

    public Map<String, String> getArgsCheck2() {
        HashMap map = new HashMap();
        map.put(b.f97422h, this.app_key);
        map.put("uid", this.uid);
        map.put("device_id", this.device_id);
        map.put(Constants.TOKEN, this.token);
        return map;
    }

    public String getConsole_app_key() {
        return this.console_app_key;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public String getPay_type() {
        return this.pay_type;
    }

    public String getToken() {
        return this.token;
    }

    public String getUid() {
        return this.uid;
    }

    public void setApp_key(String app_key) {
        this.app_key = app_key;
    }

    public void setApp_ver(String app_ver) {
        this.app_ver = app_ver;
    }

    public void setConsole_app_key(String console_app_key) {
        this.console_app_key = console_app_key;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setPay_type(String pay_type) {
        this.pay_type = pay_type;
    }

    public void setToken(String token) {
        this.token = token;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
