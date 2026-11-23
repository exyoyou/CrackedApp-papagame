package com.byazt.tjo;

import android.os.SystemClock;
import android.text.TextUtils;
import com.byazt.nr.m;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 516, 34})
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static long f20193a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f20194c;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f20195i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static long f20196n;
    public static long sp;
    public static long tt;
    public static long uj;
    public static long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static long f20197x;

    public static void c() {
        f20195i = true;
    }

    public static void c(JSONObject jSONObject, String str) {
        if (f20195i || jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.put(str, SystemClock.elapsedRealtime() - sp);
        } catch (JSONException e10) {
            m.c(e10);
        }
    }

    public static void c(JSONObject jSONObject, String str, long j10) {
        if (jSONObject == null || TextUtils.isEmpty(str)) {
            return;
        }
        try {
            jSONObject.put(str, SystemClock.elapsedRealtime() - j10);
        } catch (JSONException e10) {
            m.c(e10);
        }
    }
}
