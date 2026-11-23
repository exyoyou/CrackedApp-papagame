package com.sdk.x;

import com.sdk.base.api.CallBackTimeOut;
import com.sdk.base.framework.utils.log.LogUtils;
import com.sdk.base.module.manager.SDKManager;

/* JADX INFO: loaded from: classes2.dex */
public class b implements CallBackTimeOut<Object> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ a f78641a;

    public b(a aVar) {
        this.f78641a = aVar;
    }

    @Override // com.sdk.base.api.CallBackTimeOut
    public void timeout(int i10, int i11, String str) {
        a<T>.d dVar = this.f78641a.f78628d;
        dVar.f78637a.removeCallbacks(dVar);
        this.f78641a.a(1, 102001, "选择流量通道失败");
        LogUtils.d_yl(a.f78620h, "选择流量通道 超时 ", 0);
        SDKManager.releaseConnect(this.f78641a.f78626b);
    }
}
