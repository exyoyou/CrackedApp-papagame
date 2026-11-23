package com.bytedance.sdk.openadsdk.mediation;

import android.os.Bundle;
import com.byazt.hj.z;
import com.byazt.ifq.tt;
import com.byazt.zqa.c;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdSdk;

/* JADX INFO: loaded from: classes9.dex */
@c(c = {0, 80, 81, 82, 83, 1830})
public class MediationManagerVisitor {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile MediationManagerVisitor f23497c;
    private static volatile Object tt;
    private tt ve;

    private MediationManagerVisitor() {
    }

    public static MediationManagerVisitor getInstance() {
        if (f23497c == null) {
            synchronized (MediationManagerVisitor.class) {
                if (f23497c == null) {
                    f23497c = new MediationManagerVisitor();
                }
            }
        }
        return f23497c;
    }

    public synchronized IMediationManager getMediationManager() {
        Bundle bundle = new Bundle();
        bundle.putString("mediation_manager", "mediation_manager");
        TTAdManager adManager = TTAdSdk.getAdManager();
        Object obj = tt;
        if (adManager != null) {
            tt = adManager.getExtra(null, bundle);
        }
        if (tt == null) {
            return null;
        }
        if (this.ve == null) {
            this.ve = new tt(z.c(tt));
        } else if (obj != tt) {
            this.ve.c(z.c(tt));
        }
        return this.ve;
    }
}
