package com.umeng.analytics.filter;

import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;

/* JADX INFO: loaded from: classes9.dex */
public class b extends EventList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f84220a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f84221b;

    public b(String str, String str2) {
        super(str, str2);
        this.f84221b = new Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    protected void eventListChange() {
        if (TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.f84221b) {
            this.f84220a = null;
            this.f84220a = new d(true, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(String str) {
        boolean zA;
        if (TextUtils.isEmpty(this.mEventList)) {
            return true;
        }
        synchronized (this.f84221b) {
            if (this.f84220a == null) {
                this.f84220a = new d(true, this.mEventList);
            }
            zA = this.f84220a.a(str);
        }
        return zA;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z10) {
        AnalyticsConfig.CLEAR_EKV_WL = z10;
    }
}
