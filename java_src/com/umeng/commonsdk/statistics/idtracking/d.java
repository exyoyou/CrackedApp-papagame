package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* JADX INFO: loaded from: classes9.dex */
public class d extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85392a = "idfa";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f85393b;

    public d(Context context) {
        super(f85392a);
        this.f85393b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getIdfa(this.f85393b);
    }
}
