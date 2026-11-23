package com.switfpass.pay.service;

import com.switfpass.pay.enmu.LocalRetCode;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public LocalRetCode f82651a = LocalRetCode.ERR_OTHER;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f82652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f82653c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f82654d;

    public void a(String str) {
        LocalRetCode localRetCode;
        if (str != null && str.length() > 0) {
            try {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("prepayid")) {
                    this.f82652b = jSONObject.getString("prepayid");
                    localRetCode = LocalRetCode.ERR_OK;
                } else {
                    localRetCode = LocalRetCode.ERR_JSON;
                }
                this.f82651a = localRetCode;
                this.f82653c = jSONObject.getInt("errcode");
                this.f82654d = jSONObject.getString("errmsg");
                return;
            } catch (Exception unused) {
            }
        }
        this.f82651a = LocalRetCode.ERR_JSON;
    }
}
