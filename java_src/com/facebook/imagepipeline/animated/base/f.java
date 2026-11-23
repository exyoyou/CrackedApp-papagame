package com.facebook.imagepipeline.animated.base;

import android.graphics.Bitmap;
import com.facebook.common.internal.i;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.List;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final d f27569a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f27570b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private CloseableReference<Bitmap> f27571c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private List<CloseableReference<Bitmap>> f27572d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private m4.a f27573e;

    f(g builder) {
        this.f27569a = (d) i.i(builder.e());
        this.f27570b = builder.d();
        this.f27571c = builder.f();
        this.f27572d = builder.c();
        this.f27573e = builder.b();
    }

    public static f b(d image) {
        return new f(image);
    }

    public static g i(d image) {
        return new g(image);
    }

    public synchronized void a() {
        CloseableReference.h(this.f27571c);
        this.f27571c = null;
        CloseableReference.i(this.f27572d);
        this.f27572d = null;
    }

    @Nullable
    public m4.a c() {
        return this.f27573e;
    }

    @Nullable
    public synchronized CloseableReference<Bitmap> d(int index) {
        List<CloseableReference<Bitmap>> list = this.f27572d;
        if (list == null) {
            return null;
        }
        return CloseableReference.f(list.get(index));
    }

    public int e() {
        return this.f27570b;
    }

    public d f() {
        return this.f27569a;
    }

    @Nullable
    public synchronized CloseableReference<Bitmap> g() {
        return CloseableReference.f(this.f27571c);
    }

    public synchronized boolean h(int index) {
        List<CloseableReference<Bitmap>> list;
        list = this.f27572d;
        return (list == null || list.get(index) == null) ? false : true;
    }

    private f(d image) {
        this.f27569a = (d) i.i(image);
        this.f27570b = 0;
    }
}
