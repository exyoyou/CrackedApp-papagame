package com.alipay.security.mobile.module.a;

import com.alipay.tscenter.biz.rpc.vkeydfp.request.DeviceDataReportRequest;
import com.alipay.tscenter.biz.rpc.vkeydfp.result.DeviceDataReportResult;

/* JADX INFO: loaded from: classes7.dex */
final class c implements Runnable {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ DeviceDataReportRequest f7269b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ b f7270c;

    c(b bVar, DeviceDataReportRequest deviceDataReportRequest) {
        this.f7270c = bVar;
        this.f7269b = deviceDataReportRequest;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            DeviceDataReportResult unused = b.f7263g = this.f7270c.f7267d.a(this.f7269b);
        } catch (Throwable th) {
            DeviceDataReportResult unused2 = b.f7263g = new DeviceDataReportResult();
            b.f7263g.success = false;
            b.f7263g.resultCode = "static data rpc upload error, " + c0.d.e(th);
            c0.d.e(th);
        }
    }
}
