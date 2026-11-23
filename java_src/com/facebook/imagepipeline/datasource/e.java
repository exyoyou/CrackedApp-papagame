package com.facebook.imagepipeline.datasource;

import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.producers.ProducerContext;
import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.y0;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class e<T> extends a<CloseableReference<T>> {
    private e(q0<CloseableReference<T>> producer, y0 settableProducerContext, j4.e listener) {
        super(producer, settableProducerContext, listener);
    }

    public static <T> com.facebook.datasource.c<CloseableReference<T>> F(q0<CloseableReference<T>> producer, y0 settableProducerContext, j4.e listener) {
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.a("CloseableProducerToDataSourceAdapter#create");
        }
        e eVar = new e(producer, settableProducerContext, listener);
        if (com.facebook.imagepipeline.systrace.b.e()) {
            com.facebook.imagepipeline.systrace.b.c();
        }
        return eVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.datasource.AbstractDataSource
    /* JADX INFO: renamed from: E, reason: merged with bridge method [inline-methods] */
    public void g(CloseableReference<T> result) {
        CloseableReference.h(result);
    }

    @Override // com.facebook.datasource.AbstractDataSource, com.facebook.datasource.c
    @Nullable
    /* JADX INFO: renamed from: G, reason: merged with bridge method [inline-methods] */
    public CloseableReference<T> getResult() {
        return CloseableReference.f((CloseableReference) super.getResult());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.facebook.imagepipeline.datasource.a
    /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
    public void C(CloseableReference<T> result, int status, ProducerContext producerContext) {
        super.C(CloseableReference.f(result), status, producerContext);
    }
}
