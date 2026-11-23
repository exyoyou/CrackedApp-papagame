package com.kuaishou.weapon.p0;

import android.content.Context;
import android.text.TextUtils;
import com.kuaishou.weapon.p0.jni.Engine;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class av {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private JSONObject f74472a;

    public av(Context context, int i10) {
        if (Engine.loadSuccess) {
            try {
                String strPqr = Engine.getInstance(context).pqr(Integer.valueOf(ci.f74596d).intValue(), 4, i10, "");
                if (TextUtils.isEmpty(strPqr)) {
                    return;
                }
                this.f74472a = new JSONObject(strPqr);
            } catch (Throwable unused) {
            }
        }
    }

    public String a(String str) {
        JSONObject jSONObject = this.f74472a;
        if (jSONObject == null) {
            return null;
        }
        try {
            String string = jSONObject.getString(str);
            if (TextUtils.isEmpty(string) || string.length() <= 2) {
                return null;
            }
            return string;
        } catch (Exception unused) {
            return null;
        }
    }
}
