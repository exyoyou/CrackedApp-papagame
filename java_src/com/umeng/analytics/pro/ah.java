package com.umeng.analytics.pro;

import android.content.SharedPreferences;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;

/* JADX INFO: loaded from: classes9.dex */
public class ah implements ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f84254a;

    public ah(int i10) {
        this.f84254a = i10;
    }

    @Override // com.umeng.analytics.pro.ac
    public boolean a() {
        long j10 = 0;
        try {
            SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA != null) {
                j10 = sharedPreferencesA.getLong(at.f84308a, 0L);
                if (j10 >= this.f84254a) {
                    return true;
                }
            }
        } catch (Throwable unused) {
        }
        UMRTLog.i(UMRTLog.RTLOG_TAG, "launch times skipped. times: " + j10 + " ; config: " + this.f84254a);
        return false;
    }

    @Override // com.umeng.analytics.pro.ac
    public boolean b() {
        return !a();
    }

    @Override // com.umeng.analytics.pro.ac
    public long c() {
        return 0L;
    }
}
