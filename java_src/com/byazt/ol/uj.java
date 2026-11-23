package com.byazt.ol;

import android.webkit.JavascriptInterface;
import com.byazt.pct.zm;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 41, 15})
public class uj {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<zm> f17902c;

    public uj(zm zmVar) {
        this.f17902c = new WeakReference<>(zmVar);
    }

    public void c(zm zmVar) {
        this.f17902c = new WeakReference<>(zmVar);
    }

    @JavascriptInterface
    public void invokeMethod(String str) {
        WeakReference<zm> weakReference = this.f17902c;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.f17902c.get().invokeMethod(str);
    }
}
