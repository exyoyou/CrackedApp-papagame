package com.byazt.uj;

import android.app.Activity;
import android.util.SparseArray;
import com.byazt.nr.m;
import java.util.function.Function;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 15, 34})
public class a extends ve {
    public a(com.byazt.wn.tt ttVar, Function<SparseArray<Object>, Object> function) {
        super(ttVar, function);
    }

    @Override // com.byazt.yl.ve
    public void showAd(Activity activity, Object obj, String str) {
        try {
            showAd(activity);
        } catch (Exception e10) {
            m.c(e10);
        }
    }

    public void showAd(Activity activity) {
        com.byazt.wn.tt ttVar = ((ve) this).f20594x;
        if (ttVar != null) {
            ttVar.mediationCallShow();
        }
        if (((ve) this).f20593i != null) {
            ((ve) this).f20593i.apply(com.byazt.yxi.uj.c().c(8113).c(Void.class).c(20033, activity).tt());
        }
    }
}
