package com.beizi.ad.internal;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.HashSet;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static HashSet<String> f8743a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f8745c;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private WeakReference<Context> f8755m;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f f8744b = f.PREFETCH;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8746d = 3;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f8747e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8748f = -1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f8749g = -1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8750h = -1;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8751i = -1;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f8752j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f8753k = false;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f8754l = false;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f8756n = "";

    public b(Context context) {
        this.f8755m = new WeakReference<>(context);
    }

    public void a(String str) {
        this.f8756n = str;
    }

    public void b(String str) {
        this.f8745c = str;
    }

    public void a(f fVar) {
        this.f8744b = fVar;
    }

    public f a() {
        return this.f8744b;
    }
}
