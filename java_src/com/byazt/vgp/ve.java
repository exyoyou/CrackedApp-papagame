package com.byazt.vgp;

import android.content.Context;
import com.byazt.el.SSWebView;
import com.byazt.zb.x;
import java.util.Set;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1713, 54})
public class ve {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public x f21199c;
    public com.byazt.zb.c tt;

    public x c(Context context, SSWebView sSWebView, com.byazt.zb.ve veVar, com.byazt.zb.c cVar, Set<String> set, x.c cVar2) {
        if (this.f21199c == null) {
            x xVarC = x.c(context, sSWebView, veVar, cVar, set, cVar2, true);
            this.f21199c = xVarC;
            xVarC.uj(false);
        }
        this.tt = cVar;
        return this.f21199c;
    }
}
