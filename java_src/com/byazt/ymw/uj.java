package com.byazt.ymw;

import android.os.Bundle;
import com.byazt.nr.m;
import com.byazt.omf.z;
import com.switfpass.pay.thread.f;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, f.f82695o, 15})
public class uj extends z.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.tn.tt f22365c;

    public uj(com.byazt.tn.tt ttVar) {
        this.f22365c = ttVar;
    }

    @Override // com.byazt.omf.z
    public Bundle c(int i10) {
        com.byazt.tn.tt ttVar = this.f22365c;
        final Bundle bundle = new Bundle();
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        if (ttVar != null) {
            ttVar.c(i10, new com.byazt.ed.c() { // from class: com.byazt.ymw.uj.1
                @Override // com.byazt.ed.c
                public void onConditionReturn(Bundle bundle2) {
                    bundle.putAll(bundle2);
                    countDownLatch.countDown();
                }
            });
        }
        try {
            countDownLatch.await(10L, TimeUnit.SECONDS);
        } catch (InterruptedException e10) {
            m.c(e10);
        }
        return bundle;
    }
}
