package com.umeng.analytics.filter;

import android.text.TextUtils;
import com.umeng.analytics.AnalyticsConfig;

/* JADX INFO: loaded from: classes9.dex */
public class a extends EventList {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private d f84218a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Object f84219b;

    public a(String str, String str2) {
        super(str, str2);
        this.f84219b = new Object();
    }

    @Override // com.umeng.analytics.filter.EventList
    protected void eventListChange() {
        if (TextUtils.isEmpty(this.mEventList)) {
            return;
        }
        synchronized (this.f84219b) {
            this.f84218a = null;
            this.f84218a = new d(false, this.mEventList);
        }
    }

    @Override // com.umeng.analytics.filter.EventList
    public boolean matchHit(String str) {
        boolean zA;
        if (TextUtils.isEmpty(this.mEventList)) {
            return false;
        }
        synchronized (this.f84219b) {
            if (this.f84218a == null) {
                this.f84218a = new d(false, this.mEventList);
            }
            zA = this.f84218a.a(str);
        }
        return zA;
    }

    @Override // com.umeng.analytics.filter.EventList
    public void setMD5ClearFlag(boolean z10) {
        AnalyticsConfig.CLEAR_EKV_BL = z10;
    }
}
