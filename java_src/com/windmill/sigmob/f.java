package com.windmill.sigmob;

import com.sigmob.windad.natives.WindNativeUnifiedAd;
import com.windmill.sdk.custom.WMCustomNativeAdapter;
import com.windmill.sdk.natives.WMNativeAdData;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public final class f extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    WindNativeUnifiedAd f87638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final List<WMNativeAdData> f87639b = new ArrayList();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final d.a f87640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final WMCustomNativeAdapter f87641d;

    public f(WMCustomNativeAdapter wMCustomNativeAdapter, d.a aVar) {
        this.f87641d = wMCustomNativeAdapter;
        this.f87640c = aVar;
    }
}
