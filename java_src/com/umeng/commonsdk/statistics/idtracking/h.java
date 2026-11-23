package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* JADX INFO: loaded from: classes9.dex */
public class h extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85410a = "mac";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f85411b;

    public h(Context context) {
        super(f85410a);
        this.f85411b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        try {
            return DeviceConfig.getMac(this.f85411b);
        } catch (Exception e10) {
            if (AnalyticsConstants.UM_DEBUG) {
                e10.printStackTrace();
            }
            UMCrashManager.reportCrash(this.f85411b, e10);
            return null;
        }
    }
}
