package com.facebook.imagepipeline.producers;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class y extends x implements j4.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final j4.f f28701c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private final j4.e f28702d;

    public y(@Nullable j4.f requestListener, @Nullable j4.e requestListener2) {
        super(requestListener, requestListener2);
        this.f28701c = requestListener;
        this.f28702d = requestListener2;
    }

    @Override // j4.e
    public void c(ProducerContext producerContext) {
        j4.f fVar = this.f28701c;
        if (fVar != null) {
            fVar.e(producerContext.a(), producerContext.b(), producerContext.getId(), producerContext.o());
        }
        j4.e eVar = this.f28702d;
        if (eVar != null) {
            eVar.c(producerContext);
        }
    }

    @Override // j4.e
    public void e(ProducerContext producerContext) {
        j4.f fVar = this.f28701c;
        if (fVar != null) {
            fVar.b(producerContext.a(), producerContext.getId(), producerContext.o());
        }
        j4.e eVar = this.f28702d;
        if (eVar != null) {
            eVar.e(producerContext);
        }
    }

    @Override // j4.e
    public void g(ProducerContext producerContext) {
        j4.f fVar = this.f28701c;
        if (fVar != null) {
            fVar.k(producerContext.getId());
        }
        j4.e eVar = this.f28702d;
        if (eVar != null) {
            eVar.g(producerContext);
        }
    }

    @Override // j4.e
    public void i(ProducerContext producerContext, Throwable throwable) {
        j4.f fVar = this.f28701c;
        if (fVar != null) {
            fVar.j(producerContext.a(), producerContext.getId(), throwable, producerContext.o());
        }
        j4.e eVar = this.f28702d;
        if (eVar != null) {
            eVar.i(producerContext, throwable);
        }
    }
}
