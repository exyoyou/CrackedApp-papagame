package com.byazt.ga;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 256, 195})
public class gt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<String, String> f14374c;
    public final LottieAnimationView tt;
    public boolean uj;
    public final x ve;

    public gt() {
        this.f14374c = new HashMap();
        this.uj = true;
        this.tt = null;
        this.ve = null;
    }

    public String c(String str) {
        return str;
    }

    public void tt(String str, String str2) {
        this.f14374c.put(str, str2);
        c();
    }

    public final String ve(String str, String str2) {
        if (this.uj && this.f14374c.containsKey(str2)) {
            return this.f14374c.get(str2);
        }
        String strC = c(str, str2);
        if (this.uj) {
            this.f14374c.put(str2, strC);
        }
        return strC;
    }

    public String c(String str, String str2) {
        return c(str2);
    }

    private void c() {
        LottieAnimationView lottieAnimationView = this.tt;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        x xVar = this.ve;
        if (xVar != null) {
            xVar.invalidateSelf();
        }
    }

    public gt(LottieAnimationView lottieAnimationView) {
        this.f14374c = new HashMap();
        this.uj = true;
        this.tt = lottieAnimationView;
        this.ve = null;
    }
}
