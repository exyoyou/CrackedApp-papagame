package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class v0 extends d0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28649d = "QualifiedResourceFetchProducer";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ContentResolver f28650c;

    public v0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        this.f28650c = contentResolver;
    }

    @Override // com.facebook.imagepipeline.producers.d0
    @Nullable
    protected com.facebook.imagepipeline.image.e d(final ImageRequest imageRequest) throws IOException {
        InputStream inputStreamOpenInputStream = this.f28650c.openInputStream(imageRequest.w());
        com.facebook.common.internal.i.j(inputStreamOpenInputStream, "ContentResolver returned null InputStream");
        return e(inputStreamOpenInputStream, -1);
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected String f() {
        return f28649d;
    }
}
