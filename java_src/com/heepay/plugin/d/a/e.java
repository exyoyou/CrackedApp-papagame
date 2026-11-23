package com.heepay.plugin.d.a;

import android.webkit.WebView;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes5.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f34312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f34313b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private WeakReference<WebView> f34314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f34315d;

    public e(WebView webView, String str, int i10) {
        this.f34314c = new WeakReference<>(webView);
        this.f34315d = str;
        this.f34312a = i10;
    }
}
