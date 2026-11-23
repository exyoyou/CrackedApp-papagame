package com.sigmob.sdk.mraid;

import android.content.Context;
import android.graphics.Rect;
import com.czhj.sdk.common.utils.Dips;

/* JADX INFO: loaded from: classes3.dex */
public class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f81059a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Rect f81060b = new Rect();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Rect f81061c = new Rect();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f81062d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f81063e = new Rect();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Rect f81064f = new Rect();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Rect f81065g = new Rect();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Rect f81066h = new Rect();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final Rect f81067i = new Rect();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final float f81068j;

    public q(Context context, float density) {
        this.f81059a = context.getApplicationContext();
        this.f81068j = density;
    }

    public float a() {
        return this.f81068j;
    }

    Rect b() {
        return this.f81060b;
    }

    public Rect c() {
        return this.f81061c;
    }

    Rect d() {
        return this.f81062d;
    }

    public Rect e() {
        return this.f81063e;
    }

    Rect f() {
        return this.f81064f;
    }

    public Rect g() {
        return this.f81065g;
    }

    Rect h() {
        return this.f81066h;
    }

    public Rect i() {
        return this.f81067i;
    }

    public void a(int width, int height) {
        this.f81060b.set(0, 0, width, height);
        a(this.f81060b, this.f81061c);
    }

    public void b(int x10, int y10, int width, int height) {
        this.f81064f.set(x10, y10, width + x10, height + y10);
        a(this.f81064f, this.f81065g);
    }

    public void c(int x10, int y10, int width, int height) {
        this.f81066h.set(x10, y10, width + x10, height + y10);
        a(this.f81066h, this.f81067i);
    }

    public void a(int x10, int y10, int width, int height) {
        this.f81062d.set(x10, y10, width + x10, height + y10);
        a(this.f81062d, this.f81063e);
    }

    private void a(Rect sourceRect, Rect outRect) {
        outRect.set(Dips.pixelsToIntDips(sourceRect.left, this.f81059a), Dips.pixelsToIntDips(sourceRect.top, this.f81059a), Dips.pixelsToIntDips(sourceRect.right, this.f81059a), Dips.pixelsToIntDips(sourceRect.bottom, this.f81059a));
    }
}
