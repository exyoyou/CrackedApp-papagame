package com.netease.nis.quicklogin.listener;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public interface QuickLoginListener {
    boolean onExtendMsg(JSONObject jSONObject);

    void onGetMobileNumberError(String str, String str2);

    void onGetMobileNumberSuccess(String str, String str2);

    void onGetTokenError(String str, String str2);

    void onGetTokenSuccess(String str, String str2);
}
