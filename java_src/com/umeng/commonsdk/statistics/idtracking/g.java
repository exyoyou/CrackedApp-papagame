package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* JADX INFO: loaded from: classes9.dex */
public class g extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85408a = "imei";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f85409b;

    public g(Context context) {
        super(f85408a);
        this.f85409b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getImeiNew(this.f85409b);
    }
}
