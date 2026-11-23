package com.baidu.mobads.sdk.api;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public interface OauthCodeCallback {
    void onFailure(int i10, String str, JSONObject jSONObject);

    void onSuccess(String str, JSONObject jSONObject);
}
