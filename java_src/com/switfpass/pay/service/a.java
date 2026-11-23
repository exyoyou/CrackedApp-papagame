package com.switfpass.pay.service;

import com.switfpass.pay.enmu.LocalRetCode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LocalRetCode f82646a = LocalRetCode.ERR_OTHER;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f82647b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f82648c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f82649d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f82650e;

    public void a(String str) {
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("access_token")) {
                    this.f82647b = jSONObject.getString("access_token");
                    this.f82648c = jSONObject.getInt("expires_in");
                    this.f82646a = LocalRetCode.ERR_OK;
                    return;
                } else {
                    this.f82649d = jSONObject.getInt("errcode");
                    this.f82650e = jSONObject.getString("errmsg");
                    this.f82646a = LocalRetCode.ERR_JSON;
                    return;
                }
            } catch (Exception unused) {
            }
        }
        this.f82646a = LocalRetCode.ERR_JSON;
    }
}
