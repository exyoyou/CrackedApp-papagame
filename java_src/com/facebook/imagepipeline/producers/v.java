package com.facebook.imagepipeline.producers;

import android.net.Uri;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Consumer<com.facebook.imagepipeline.image.e> f28644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ProducerContext f28645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f28646c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f28647d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private com.facebook.imagepipeline.common.a f28648e;

    public v(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext context) {
        this.f28644a = consumer;
        this.f28645b = context;
    }

    public Consumer<com.facebook.imagepipeline.image.e> a() {
        return this.f28644a;
    }

    public String b() {
        return this.f28645b.getId();
    }

    public long c() {
        return this.f28646c;
    }

    public t0 d() {
        return this.f28645b.d();
    }

    public int e() {
        return this.f28647d;
    }

    @Nullable
    public com.facebook.imagepipeline.common.a f() {
        return this.f28648e;
    }

    public Uri g() {
        return this.f28645b.a().w();
    }

    public ProducerContext getContext() {
        return this.f28645b;
    }

    public void h(long lastIntermediateResultTimeMs) {
        this.f28646c = lastIntermediateResultTimeMs;
    }

    public void i(int onNewResultStatusFlags) {
        this.f28647d = onNewResultStatusFlags;
    }

    public void j(@Nullable com.facebook.imagepipeline.common.a bytesRange) {
        this.f28648e = bytesRange;
    }
}
