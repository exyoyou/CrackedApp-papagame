package com.byazt.wz;

import android.app.Activity;
import android.content.Context;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.omf.or;
import com.bytedance.sdk.openadsdk.core.activity.base.TTNativePageActivity;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 65, 15})
public abstract class uj implements com.byazt.pop.ve {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public WeakReference<com.byazt.ua.c.InterfaceC0445c> f21755p;
    public boolean yv = true;

    private String x() {
        com.byazt.ua.c.InterfaceC0445c interfaceC0445c;
        com.byazt.ua.c videoModel;
        WeakReference<com.byazt.ua.c.InterfaceC0445c> weakReference = this.f21755p;
        if (weakReference == null || (interfaceC0445c = weakReference.get()) == null || (videoModel = interfaceC0445c.getVideoModel()) == null) {
            return null;
        }
        return videoModel.c().toString();
    }

    @Override // com.byazt.pop.ve
    public void c(Activity activity, boolean z10) {
    }

    public int gt() {
        return hashCode();
    }

    @Override // com.byazt.pop.ve
    public void c(boolean z10) {
        this.yv = z10;
    }

    @Override // com.byazt.pop.ve
    public void c(com.byazt.ua.c.InterfaceC0445c interfaceC0445c) {
        this.f21755p = new WeakReference<>(interfaceC0445c);
    }

    public boolean c(Context context, ic icVar, String str) {
        if (!this.yv || !com.byazt.aas.n.c(icVar) || !or.c(context, icVar, nb.uj(str), str, x())) {
            return false;
        }
        TTNativePageActivity.c(this);
        return true;
    }
}
