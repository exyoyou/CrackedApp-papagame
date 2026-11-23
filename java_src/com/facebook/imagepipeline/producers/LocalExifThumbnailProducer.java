package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.content.res.AssetFileDescriptor;
import android.media.ExifInterface;
import android.net.Uri;
import android.os.Build;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import com.baidu.mobads.sdk.internal.ax;
import com.facebook.common.internal.ImmutableMap;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.soloader.DoNotOptimize;
import java.io.File;
import java.io.FileDescriptor;
import java.io.IOException;
import java.util.Map;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class LocalExifThumbnailProducer implements g1<com.facebook.imagepipeline.image.e> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f28259d = 512;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final String f28260e = "LocalExifThumbnailProducer";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    static final String f28261f = "createdThumbnail";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f28262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.common.memory.g f28263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ContentResolver f28264c;

    @DoNotOptimize
    private class Api24Utils {
        private Api24Utils() {
        }

        @Nullable
        ExifInterface a(FileDescriptor fileDescriptor) throws IOException {
            if (Build.VERSION.SDK_INT >= 24) {
                return c0.a(fileDescriptor);
            }
            return null;
        }

        /* synthetic */ Api24Utils(LocalExifThumbnailProducer localExifThumbnailProducer, a aVar) {
            this();
        }
    }

    class a extends z0<com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        final /* synthetic */ ImageRequest f28266l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(Consumer consumer, t0 producerListener, ProducerContext producerContext, String producerName, final ImageRequest val$imageRequest) {
            super(consumer, producerListener, producerContext, producerName);
            this.f28266l = val$imageRequest;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0, com.facebook.common.executors.h
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public void b(@Nullable com.facebook.imagepipeline.image.e result) {
            com.facebook.imagepipeline.image.e.d(result);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.imagepipeline.producers.z0
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public Map<String, String> j(@Nullable final com.facebook.imagepipeline.image.e result) {
            return ImmutableMap.of(LocalExifThumbnailProducer.f28261f, Boolean.toString(result != null));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.facebook.common.executors.h
        @Nullable
        /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
        public com.facebook.imagepipeline.image.e c() throws Exception {
            ExifInterface exifInterfaceG = LocalExifThumbnailProducer.this.g(this.f28266l.w());
            if (exifInterfaceG == null || !exifInterfaceG.hasThumbnail()) {
                return null;
            }
            return LocalExifThumbnailProducer.this.e(LocalExifThumbnailProducer.this.f28263b.c((byte[]) com.facebook.common.internal.i.i(exifInterfaceG.getThumbnail())), exifInterfaceG);
        }
    }

    class b extends e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ z0 f28268a;

        b(final z0 val$cancellableProducerRunnable) {
            this.f28268a = val$cancellableProducerRunnable;
        }

        @Override // com.facebook.imagepipeline.producers.e, com.facebook.imagepipeline.producers.s0
        public void b() {
            this.f28268a.a();
        }
    }

    public LocalExifThumbnailProducer(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        this.f28262a = executor;
        this.f28263b = pooledByteBufferFactory;
        this.f28264c = contentResolver;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.facebook.imagepipeline.image.e e(PooledByteBuffer imageBytes, ExifInterface exifInterface) {
        Pair<Integer, Integer> pairB = com.facebook.imageutils.a.b(new com.facebook.common.memory.h(imageBytes));
        int iH = h(exifInterface);
        int iIntValue = pairB != null ? ((Integer) pairB.first).intValue() : -1;
        int iIntValue2 = pairB != null ? ((Integer) pairB.second).intValue() : -1;
        CloseableReference closeableReferenceQ = CloseableReference.q(imageBytes);
        try {
            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e((CloseableReference<PooledByteBuffer>) closeableReferenceQ);
            CloseableReference.h(closeableReferenceQ);
            eVar.g0(com.facebook.imageformat.b.f27532a);
            eVar.i0(iH);
            eVar.m0(iIntValue);
            eVar.f0(iIntValue2);
            return eVar;
        } catch (Throwable th) {
            CloseableReference.h(closeableReferenceQ);
            throw th;
        }
    }

    private int h(final ExifInterface exifInterface) {
        return com.facebook.imageutils.e.a(Integer.parseInt((String) com.facebook.common.internal.i.i(exifInterface.getAttribute("Orientation"))));
    }

    @Override // com.facebook.imagepipeline.producers.q0
    public void a(final Consumer<com.facebook.imagepipeline.image.e> consumer, final ProducerContext producerContext) {
        t0 t0VarD = producerContext.d();
        ImageRequest imageRequestA = producerContext.a();
        producerContext.j(ax.f7484a, "exif");
        a aVar = new a(consumer, t0VarD, producerContext, f28260e, imageRequestA);
        producerContext.i(new b(aVar));
        this.f28262a.execute(aVar);
    }

    @Override // com.facebook.imagepipeline.producers.g1
    public boolean b(@Nullable com.facebook.imagepipeline.common.e resizeOptions) {
        return h1.b(512, 512, resizeOptions);
    }

    @VisibleForTesting
    boolean f(String realPath) throws IOException {
        if (realPath == null) {
            return false;
        }
        File file = new File(realPath);
        return file.exists() && file.canRead();
    }

    @Nullable
    @VisibleForTesting
    ExifInterface g(Uri uri) throws Throwable {
        String strB = com.facebook.common.util.f.b(this.f28264c, uri);
        a aVar = null;
        if (strB == null) {
            return null;
        }
        try {
            if (f(strB)) {
                return new ExifInterface(strB);
            }
            AssetFileDescriptor assetFileDescriptorA = com.facebook.common.util.f.a(this.f28264c, uri);
            if (assetFileDescriptorA != null && Build.VERSION.SDK_INT >= 24) {
                ExifInterface exifInterfaceA = new Api24Utils(this, aVar).a(assetFileDescriptorA.getFileDescriptor());
                assetFileDescriptorA.close();
                return exifInterfaceA;
            }
            return null;
        } catch (IOException unused) {
        } catch (StackOverflowError unused2) {
            i3.a.q(LocalExifThumbnailProducer.class, "StackOverflowError in ExifInterface constructor");
        }
    }
}
