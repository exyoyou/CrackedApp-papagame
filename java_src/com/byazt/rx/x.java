package com.byazt.rx;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 152, 71})
public final class x {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedPreferences f19557c;

    public x(Context context) {
        this.f19557c = com.byazt.nys.tt.tt(context, "npth", 0);
    }

    public void c(String str) {
        this.f19557c.edit().putString("device_id", str).apply();
    }

    public String c() {
        String strN = com.byazt.uy.x.c().n();
        return (TextUtils.isEmpty(strN) || "0".equals(strN)) ? this.f19557c.getString("device_id", "0") : strN;
    }
}
