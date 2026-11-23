package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class z0<T> extends com.facebook.common.executors.h<T> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Consumer<T> f28705h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final t0 f28706i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final String f28707j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final ProducerContext f28708k;

    public z0(Consumer<T> consumer, t0 producerListener, ProducerContext producerContext, String producerName) {
        this.f28705h = consumer;
        this.f28706i = producerListener;
        this.f28707j = producerName;
        this.f28708k = producerContext;
        producerListener.b(producerContext, producerName);
    }

    @Override // com.facebook.common.executors.h
    protected abstract void b(@Nullable T result);

    @Override // com.facebook.common.executors.h
    protected void d() {
        t0 t0Var = this.f28706i;
        ProducerContext producerContext = this.f28708k;
        String str = this.f28707j;
        t0Var.d(producerContext, str, t0Var.f(producerContext, str) ? h() : null);
        this.f28705h.a();
    }

    @Override // com.facebook.common.executors.h
    protected void e(Exception e10) {
        t0 t0Var = this.f28706i;
        ProducerContext producerContext = this.f28708k;
        String str = this.f28707j;
        t0Var.k(producerContext, str, e10, t0Var.f(producerContext, str) ? i(e10) : null);
        this.f28705h.onFailure(e10);
    }

    @Override // com.facebook.common.executors.h
    protected void g(@Nullable T result) {
        t0 t0Var = this.f28706i;
        ProducerContext producerContext = this.f28708k;
        String str = this.f28707j;
        t0Var.j(producerContext, str, t0Var.f(producerContext, str) ? j(result) : null);
        this.f28705h.b(result, 1);
    }

    @Nullable
    protected Map<String, String> h() {
        return null;
    }

    @Nullable
    protected Map<String, String> i(Exception exception) {
        return null;
    }

    @Nullable
    protected Map<String, String> j(@Nullable T result) {
        return null;
    }
}
