package com.yxcorp.kuaishou.addfp;

import android.content.Context;
import android.os.Build;
import com.yxcorp.kuaishou.addfp.android.a.c;
import com.yxcorp.kuaishou.addfp.android.b.e;

/* JADX INFO: loaded from: classes8.dex */
class a implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ KWEGIDDFP f90311a;

    a(KWEGIDDFP kwegiddfp) {
        this.f90311a = kwegiddfp;
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            if (this.f90311a.mParamContext == null) {
                this.f90311a.mCallBack.onFailed(-3, "parameter error");
                return;
            }
            Context unused = this.f90311a.mParamContext;
            int i10 = e.f90331c;
            if (Build.VERSION.SDK_INT >= 28) {
                e.a();
            }
            KWEGIDDFP kwegiddfp = this.f90311a;
            kwegiddfp.mPkgName = kwegiddfp.mParamContext.getPackageName();
            c.c().b(this.f90311a.mPkgName);
            KWEGIDDFP kwegiddfp2 = this.f90311a;
            kwegiddfp2.getEGid(kwegiddfp2.mCallBack);
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }
}
