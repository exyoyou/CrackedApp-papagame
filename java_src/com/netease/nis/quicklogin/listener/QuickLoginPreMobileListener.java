package com.netease.nis.quicklogin.listener;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public abstract class QuickLoginPreMobileListener implements QuickLoginListener {
    @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
    public boolean onExtendMsg(JSONObject jSONObject) {
        return true;
    }

    @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
    public void onGetTokenError(String str, String str2) {
    }

    @Override // com.netease.nis.quicklogin.listener.QuickLoginListener
    public void onGetTokenSuccess(String str, String str2) {
    }
}
