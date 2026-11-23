package com.byazt.six;

import android.webkit.WebResourceResponse;
import androidx.constraintlayout.core.motion.utils.TypedValues;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, TypedValues.PositionType.TYPE_DRAWPATH, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WebResourceResponse f19800c;
    public int tt = -1;

    public WebResourceResponse c() {
        return this.f19800c;
    }

    public int getType() {
        return this.tt;
    }

    public void c(WebResourceResponse webResourceResponse) {
        this.f19800c = webResourceResponse;
    }

    public void c(int i10) {
        this.tt = i10;
    }
}
