package com.facebook.imagepipeline.datasource;

import com.facebook.imagepipeline.producers.q0;
import com.facebook.imagepipeline.producers.y0;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.concurrent.ThreadSafe;

/* JADX INFO: loaded from: classes9.dex */
@ThreadSafe
@Nullsafe(Nullsafe.Mode.STRICT)
public class g<T> extends a<T> {
    private g(q0<T> producer, y0 settableProducerContext, j4.e listener) {
        super(producer, settableProducerContext, listener);
    }

    public static <T> com.facebook.datasource.c<T> E(q0<T> producer, y0 settableProducerContext, j4.e listener) {
        return new g(producer, settableProducerContext, listener);
    }
}
