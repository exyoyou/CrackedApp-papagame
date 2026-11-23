package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.commonsdk.config.FieldManager;

/* JADX INFO: loaded from: classes9.dex */
public class k extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85418a = "utdid";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f85419b;

    public k(Context context) {
        super("utdid");
        this.f85419b = context;
    }

    private String g() {
        try {
            return this.f85419b.getSharedPreferences("Alvin2", 0).getString("UTDID2", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    private String h() {
        try {
            return this.f85419b.getSharedPreferences("um_push_ut", 0).getString("d_id", null);
        } catch (Throwable unused) {
            return null;
        }
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            if (FieldManager.allow(com.umeng.commonsdk.utils.d.f85589u)) {
                String strH = h();
                return TextUtils.isEmpty(strH) ? g() : strH;
            }
        } catch (Throwable unused) {
        }
        return null;
    }
}
