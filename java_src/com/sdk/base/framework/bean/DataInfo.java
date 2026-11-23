package com.sdk.base.framework.bean;

import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class DataInfo extends JSONObject {
    public JSONObject putData(String str, Object obj) {
        try {
            return super.put(str, obj);
        } catch (Exception unused) {
            return this;
        }
    }
}
