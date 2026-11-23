package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class u implements c1 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28643a;

    public u(Executor executor) {
        this.f28643a = (Executor) com.facebook.common.internal.i.i(executor);
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public void a() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public void b(Runnable runnable) {
        this.f28643a.execute(runnable);
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public void c() {
        throw new UnsupportedOperationException();
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public boolean d() {
        return false;
    }

    @Override // com.facebook.imagepipeline.producers.c1
    public void remove(Runnable runnable) {
    }
}
