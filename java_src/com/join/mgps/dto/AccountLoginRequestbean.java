package com.join.mgps.dto;

import com.join.mgps.activity.arena.GameRoomActivity_;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class AccountLoginRequestbean {
    private String account;
    private String device_id;
    private String password;
    private String sign;

    public String getAccount() {
        return this.account;
    }

    public String getDevice_id() {
        return this.device_id;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f89265g, this.account);
        linkedMultiValueMap.add(GameRoomActivity_.PASSWORD_EXTRA, this.password);
        linkedMultiValueMap.add("device_id", this.device_id);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getPassword() {
        return this.password;
    }

    public String getSign() {
        return this.sign;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setDevice_id(String device_id) {
        this.device_id = device_id;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }
}
