package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class o<I, O> extends b<I> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Consumer<O> f28552h;

    public o(Consumer<O> consumer) {
        this.f28552h = consumer;
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void f() {
        this.f28552h.a();
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void g(Throwable t10) {
        this.f28552h.onFailure(t10);
    }

    @Override // com.facebook.imagepipeline.producers.b
    protected void i(float progress) {
        this.f28552h.c(progress);
    }

    public Consumer<O> p() {
        return this.f28552h;
    }
}
