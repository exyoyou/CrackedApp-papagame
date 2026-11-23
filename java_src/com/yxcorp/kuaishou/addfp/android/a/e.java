package com.yxcorp.kuaishou.addfp.android.a;

import android.content.Context;
import android.content.SharedPreferences;

/* JADX INFO: loaded from: classes8.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private SharedPreferences f90323a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private SharedPreferences.Editor f90324b;

    public e(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences("kscfg_outdfp", 0);
            this.f90323a = sharedPreferences;
            this.f90324b = sharedPreferences.edit();
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(String str) {
        this.f90324b.putString("kwtk", str);
        this.f90324b.commit();
    }

    public String b() {
        return this.f90323a.getString("kwtk", "");
    }

    public boolean a() {
        return this.f90323a.getBoolean("xytk", true);
    }
}
