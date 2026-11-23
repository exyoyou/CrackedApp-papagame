package com.cloudplay.messagesdk.network;

import android.content.Context;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
public interface INetwork {
    void cancel(String str);

    void init(Context context);

    void postJson(String str, JSONObject jSONObject, HttpResultListener httpResultListener);
}
