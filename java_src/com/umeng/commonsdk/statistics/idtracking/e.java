package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* JADX INFO: loaded from: classes9.dex */
public class e extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85394a = "idmd5";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f85395b;

    public e(Context context) {
        super("idmd5");
        this.f85395b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getDeviceIdUmengMD5(this.f85395b);
    }
}
