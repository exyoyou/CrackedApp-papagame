package com.byazt.ete;

import android.text.TextUtils;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 8, TypedValues.PositionType.TYPE_CURVE_FIT})
public class yf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f13974a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f13975c;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f13976n;
    public String tt;
    public String uj;
    public String ve;

    public yf(String str, String str2, String str3, String str4) {
        this.f13975c = str3;
        this.tt = str2;
        this.uj = str;
        this.ve = str4;
    }

    public void c(String str, String str2, String str3, String str4) {
        this.f13975c = str3;
        this.tt = str2;
        this.uj = str;
        this.ve = str4;
    }

    public String toString() {
        JSONObject jSONObjectVe = ve();
        return jSONObjectVe.length() > 0 ? jSONObjectVe.toString() : "";
    }

    public String tt() {
        return this.f13975c;
    }

    public JSONObject ve() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("tk", this.f13975c).put("vd", this.uj).put("cr", this.ve).put(NotificationCompat.CATEGORY_ERROR, this.tt);
            if (!TextUtils.isEmpty(this.ve) && this.ve.equals("2")) {
                if (!TextUtils.isEmpty(this.f13976n)) {
                    jSONObject.put("i6", this.f13976n);
                }
                if (!TextUtils.isEmpty(this.f13974a)) {
                    jSONObject.put("prov", this.f13974a);
                }
            }
        } catch (Exception unused) {
        }
        return jSONObject;
    }

    public void tt(String str) {
        this.f13974a = str;
    }

    public String c() {
        return this.tt;
    }

    public void c(String str) {
        this.f13976n = str;
    }
}
