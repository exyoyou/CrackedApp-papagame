package com.kwad.sdk.core.b.a;

import com.ksad.annotation.invoker.InvokeBy;
import com.kwad.components.ad.nativead.monitor.NativeAdMonitor;

/* JADX INFO: loaded from: classes2.dex */
public final class dd {
    @InvokeBy(invokerClass = hl.class, methodId = "registerHolder")
    public static void LS() {
        hl.LT().put(NativeAdMonitor.NativeReportMsg.class, new jg());
    }
}
