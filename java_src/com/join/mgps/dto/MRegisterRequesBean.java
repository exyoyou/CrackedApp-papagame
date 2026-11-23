package com.join.mgps.dto;

import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes3.dex */
public class MRegisterRequesBean {
    private String account;
    private String mobile;
    private String sign;

    public MRegisterRequesBean() {
    }

    public String getAccount() {
        return this.account;
    }

    public String getMobile() {
        return this.mobile;
    }

    public LinkedMultiValueMap<String, String> getParams() {
        LinkedMultiValueMap<String, String> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add(GrantCredentialsPermissionActivity.f89265g, this.account);
        linkedMultiValueMap.add("mobile", this.mobile);
        linkedMultiValueMap.add(Constant.MD5, this.sign);
        return linkedMultiValueMap;
    }

    public String getSign() {
        return this.sign;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public void setSign(String sign) {
        this.sign = sign;
    }

    public MRegisterRequesBean(String account, String mobile, String sign) {
        this.account = account;
        this.mobile = mobile;
        this.sign = sign;
    }
}
