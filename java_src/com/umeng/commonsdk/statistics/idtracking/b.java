package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import com.umeng.commonsdk.statistics.common.DeviceConfig;

/* JADX INFO: loaded from: classes9.dex */
public class b extends a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85386a = "android_id";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f85387b;

    public b(Context context) {
        super(f85386a);
        this.f85387b = context;
    }

    @Override // com.umeng.commonsdk.statistics.idtracking.a
    public String f() {
        return DeviceConfig.getAndroidId(this.f85387b);
    }
}
