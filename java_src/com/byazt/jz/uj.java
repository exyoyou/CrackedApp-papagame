package com.byazt.jz;

import android.content.Context;
import com.byazt.mg.da;
import com.byazt.mg.i;
import com.byazt.rx.sp;
import com.byazt.uy.x;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 232, 15})
public final class uj implements Runnable {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Context f16042c;

    private uj(Context context) {
        this.f16042c = context;
    }

    public static void c(Context context, int i10) {
        try {
            if (!x.c().uj().equals(context.getPackageName())) {
                return;
            }
        } catch (Exception unused) {
        }
        sp.tt().postDelayed(new uj(context), i10);
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            new com.byazt.rx.ve(this.f16042c).c(i.tt(this.f16042c));
        } catch (Throwable th) {
            try {
                da.tt(th);
            } finally {
                com.byazt.vr.ve.c(sp.tt(), this.f16042c).c();
            }
        }
    }

    public static void c(Context context) {
        c(context, 0);
    }
}
