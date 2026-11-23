package com.umeng.analytics.pro;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.AnalyticsConfig;
import com.umeng.commonsdk.statistics.internal.PreferenceWrapper;
import com.umeng.commonsdk.utils.UMUtils;

/* JADX INFO: loaded from: classes9.dex */
class z implements y {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f84928a = AnalyticsConfig.kContinueSessionMillis;

    z() {
    }

    @Override // com.umeng.analytics.pro.y
    public void a(long j10) {
        this.f84928a = j10;
    }

    @Override // com.umeng.analytics.pro.y
    public long a() {
        return this.f84928a;
    }

    @Override // com.umeng.analytics.pro.y
    public String a(Context context) {
        String appkey = UMUtils.getAppkey(context);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (appkey != null) {
            return UMUtils.MD5(jCurrentTimeMillis + appkey + "02:00:00:00:00:00");
        }
        throw new RuntimeException("Appkey is null or empty, Please check!");
    }

    @Override // com.umeng.analytics.pro.y
    public boolean a(long j10, long j11) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        return (j10 == 0 || jCurrentTimeMillis - j10 >= this.f84928a) && j11 > 0 && jCurrentTimeMillis - j11 > this.f84928a;
    }

    @Override // com.umeng.analytics.pro.y
    public void a(Context context, String str) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            SharedPreferences.Editor editorEdit = PreferenceWrapper.getDefault(context).edit();
            editorEdit.putString("session_id", str);
            editorEdit.putLong(w.f84909b, 0L);
            editorEdit.putLong(w.f84912e, jCurrentTimeMillis);
            editorEdit.putLong(w.f84913f, 0L);
            editorEdit.commit();
        } catch (Exception unused) {
        }
    }
}
