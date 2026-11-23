package com.facebook.imagepipeline.producers;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import com.facebook.imagepipeline.request.ImageRequest;
import java.io.IOException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes9.dex */
public class z extends d0 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final String f28703d = "LocalAssetFetchProducer";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final AssetManager f28704c;

    public z(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, AssetManager assetManager) {
        super(executor, pooledByteBufferFactory);
        this.f28704c = assetManager;
    }

    private static String g(ImageRequest imageRequest) {
        return imageRequest.w().getPath().substring(1);
    }

    private int h(ImageRequest imageRequest) {
        AssetFileDescriptor assetFileDescriptorOpenFd = null;
        try {
            assetFileDescriptorOpenFd = this.f28704c.openFd(g(imageRequest));
            int length = (int) assetFileDescriptorOpenFd.getLength();
            try {
                assetFileDescriptorOpenFd.close();
            } catch (IOException unused) {
            }
            return length;
        } catch (IOException unused2) {
            if (assetFileDescriptorOpenFd == null) {
                return -1;
            }
            try {
                assetFileDescriptorOpenFd.close();
                return -1;
            } catch (IOException unused3) {
                return -1;
            }
        } catch (Throwable th) {
            if (assetFileDescriptorOpenFd != null) {
                try {
                    assetFileDescriptorOpenFd.close();
                } catch (IOException unused4) {
                }
            }
            throw th;
        }
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        return e(this.f28704c.open(g(imageRequest), 2), h(imageRequest));
    }

    @Override // com.facebook.imagepipeline.producers.d0
    protected String f() {
        return f28703d;
    }
}
