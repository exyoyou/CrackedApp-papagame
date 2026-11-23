package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.producers.v;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
public interface l0<FETCH_STATE extends v> {

    public interface a {
        void a();

        void b(InputStream response, int responseLength) throws IOException;

        void onFailure(Throwable throwable);
    }

    void a(FETCH_STATE fetchState, int byteSize);

    FETCH_STATE b(Consumer<com.facebook.imagepipeline.image.e> consumer, ProducerContext producerContext);

    void c(FETCH_STATE fetchState, a callback);

    boolean d(FETCH_STATE fetchState);

    @Nullable
    Map<String, String> e(FETCH_STATE fetchState, int byteSize);
}
