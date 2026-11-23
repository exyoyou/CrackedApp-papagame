package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e0 extends d0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f28358c = "LocalFileFetchProducer";

    public e0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory) {
        super(executor, pooledByteBufferFactory);
    }

    @Override // com.facebook.imagepipeline.producers.d0
    @Nullable
    protected com.facebook.imagepipeline.image.e d(final ImageRequest imageRequest) throws IOException {
        return e(new FileInputStream(imageRequest.v().toString()), (int) imageRequest.v().length());
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected String f() {
        return f28358c;
    }
}
