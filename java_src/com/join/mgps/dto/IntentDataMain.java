package com.join.mgps.dto;

import com.join.mgps.Util.IntentDateBean;
import java.io.Serializable;

/* JADX INFO: loaded from: classes3.dex */
public class IntentDataMain implements Serializable {
    private AccountBean accountBean;
    private String appkey;
    private String data;
    private IntentDateBean intentDateBean;
    private String packageName;

    public AccountBean getAccountBean() {
        return this.accountBean;
    }

    public String getAppkey() {
        return this.appkey;
    }

    public String getData() {
        return this.data;
    }

    public IntentDateBean getIntentDateBean() {
        return this.intentDateBean;
    }

    public String getPackageName() {
        return this.packageName;
    }

    public void setAccountBean(AccountBean accountBean) {
        this.accountBean = accountBean;
    }

    public void setAppkey(String appkey) {
        this.appkey = appkey;
    }

    public void setData(String data) {
        this.data = data;
    }

    public void setIntentDateBean(IntentDateBean intentDateBean) {
        this.intentDateBean = intentDateBean;
    }

    public void setPackageName(String packageName) {
        this.packageName = packageName;
    }
}
