package com.umeng.analytics.pro;

import android.content.SharedPreferences;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.service.UMGlobalContext;

/* JADX INFO: loaded from: classes9.dex */
public class ag implements ac {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f84252a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f84253b;

    public ag(String str, long j10) {
        this.f84252a = str;
        this.f84253b = j10;
    }

    @Override // com.umeng.analytics.pro.ac
    public boolean a() {
        try {
            String str = at.f84309b + this.f84252a;
            SharedPreferences sharedPreferencesA = at.a(UMGlobalContext.getAppContext());
            if (sharedPreferencesA == null) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis() - sharedPreferencesA.getLong(str, 0L);
            if (jCurrentTimeMillis > this.f84253b * 1000) {
                return true;
            }
            UMRTLog.i(UMRTLog.RTLOG_TAG, "internal period skipped. elapse: " + jCurrentTimeMillis + "; config: " + (this.f84253b * 1000));
            return false;
        } catch (Throwable unused) {
            return false;
        }
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
