package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.pro.aw;
import com.umeng.commonsdk.config.FieldManager;

/* JADX INFO: loaded from: classes9.dex */
public class i extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f85412a = aw.b().b(aw.f84331l);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final String f85413b = "key_umeng_sp_oaid";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f85414c = "key_umeng_sp_oaid_required_time";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f85415d = "oaid";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f85416e;

    public i(Context context) {
        super(f85415d);
        this.f85416e = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        if (!FieldManager.allow(com.umeng.commonsdk.utils.d.G)) {
            return null;
        }
        try {
            SharedPreferences sharedPreferences = this.f85416e.getSharedPreferences(f85412a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getString(f85413b, "");
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }
}
