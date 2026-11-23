package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.pro.aw;
import com.umeng.commonsdk.config.FieldManager;

/* JADX INFO: loaded from: classes9.dex */
public class c extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f85388a = aw.b().b(aw.f84331l);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f85389b = "key_umeng_sp_honor_oaid";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f85390c = "honor_oaid";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f85391d;

    public c(Context context) {
        super(f85390c);
        this.f85391d = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        if (!FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = this.f85391d.getSharedPreferences(f85388a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString(f85389b, "");
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
