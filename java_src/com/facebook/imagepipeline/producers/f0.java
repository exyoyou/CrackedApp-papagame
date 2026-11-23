package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class f0 extends d0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28370d = "LocalResourceFetchProducer";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Resources f28371c;

    public f0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, Resources resources) {
        super(executor, pooledByteBufferFactory);
        this.f28371c = resources;
    }

    private int g(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = null;
        try {
            assetFileDescriptorOpenRawResourceFd = this.f28371c.openRawResourceFd(h(imageRequest));
            int length = (int) assetFileDescriptorOpenRawResourceFd.getLength();
            try {
                assetFileDescriptorOpenRawResourceFd.close();
            } catch (IOException unused) {
            }
            return length;
        } catch (Resources.NotFoundException unused2) {
            if (assetFileDescriptorOpenRawResourceFd == null) {
                return -1;
            }
            try {
                assetFileDescriptorOpenRawResourceFd.close();
                return -1;
            } catch (IOException unused3) {
                return -1;
            }
        } catch (Throwable th) {
            if (assetFileDescriptorOpenRawResourceFd != null) {
                try {
                    assetFileDescriptorOpenRawResourceFd.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    private static int h(ImageRequest imageRequest) {
        String path = imageRequest.w().getPath();
        com.facebook.common.internal.i.i(path);
        return Integer.parseInt(path.substring(1));
    }

    @Override // com.facebook.imagepipeline.producers.d0
    @Nullable
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        return e(this.f28371c.openRawResource(h(imageRequest)), g(imageRequest));
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected String f() {
        return f28370d;
    }
}
