package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.image.EncodedImageOrigin;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public interface ProducerContext {

    public @interface ExtraKeys {
        public static final String ENCODED_HEIGHT = "encoded_height";
        public static final String ENCODED_SIZE = "encoded_size";
        public static final String ENCODED_WIDTH = "encoded_width";
        public static final String IMAGE_FORMAT = "image_format";
        public static final String MULTIPLEX_BITMAP_COUNT = "multiplex_bmp_cnt";
        public static final String MULTIPLEX_ENCODED_COUNT = "multiplex_enc_cnt";
        public static final String NORMALIZED_URI = "uri_norm";
        public static final String ORIGIN = "origin";
        public static final String ORIGIN_SUBCATEGORY = "origin_sub";
        public static final String SOURCE_URI = "uri_source";
    }

    ImageRequest a();

    Object b();

    com.facebook.imagepipeline.core.i c();

    t0 d();

    @Nullable
    <E> E e(String key, @Nullable E valueIfNotFound);

    EncodedImageOrigin f();

    void g(@Nullable Map<String, ?> extras);

    @Nullable
    <E> E getExtra(String key);

    Map<String, Object> getExtras();

    String getId();

    Priority getPriority();

    <E> void h(String key, @Nullable E value);

    void i(s0 callbacks);

    void j(@Nullable String origin, @Nullable String subcategory);

    @Nullable
    String k();

    void l(@Nullable String origin);

    boolean m();

    void n(EncodedImageOrigin encodedImageOrigin);

    boolean o();

    ImageRequest.RequestLevel p();
}
