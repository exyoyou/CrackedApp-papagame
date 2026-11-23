package com.facebook.imagepipeline.platform;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.MemoryFile;
import com.facebook.common.internal.DoNotStrip;
import com.facebook.common.internal.n;
import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder;
import com.facebook.infer.annotation.Nullsafe;
import java.io.FileDescriptor;
import java.io.IOException;
import java.io.OutputStream;
import java.lang.reflect.Method;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@DoNotStrip
@Nullsafe(Nullsafe.Mode.STRICT)
public class GingerbreadPurgeableDecoder extends DalvikPurgeableDecoder {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Method f28229d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final m3.b f28230c = m3.c.j();

    @DoNotStrip
    public GingerbreadPurgeableDecoder() {
    }

    private static MemoryFile j(CloseableReference<PooledByteBuffer> closeableReference, int i10, @Nullable byte[] bArr) throws Throwable {
        OutputStream outputStream;
        k3.a aVar;
        com.facebook.common.memory.h hVar = null;
        OutputStream outputStream2 = null;
        MemoryFile memoryFile = new MemoryFile(null, (bArr == null ? 0 : bArr.length) + i10);
        memoryFile.allowPurging(false);
        try {
            com.facebook.common.memory.h hVar2 = new com.facebook.common.memory.h(closeableReference.j());
            try {
                aVar = new k3.a(hVar2, i10);
                try {
                    outputStream2 = memoryFile.getOutputStream();
                    com.facebook.common.internal.b.a(aVar, outputStream2);
                    if (bArr != null) {
                        memoryFile.writeBytes(bArr, 0, i10, bArr.length);
                    }
                    CloseableReference.h(closeableReference);
                    com.facebook.common.internal.c.b(hVar2);
                    com.facebook.common.internal.c.b(aVar);
                    com.facebook.common.internal.c.a(outputStream2, true);
                    return memoryFile;
                } catch (Throwable th) {
                    th = th;
                    outputStream = outputStream2;
                    hVar = hVar2;
                    CloseableReference.h(closeableReference);
                    com.facebook.common.internal.c.b(hVar);
                    com.facebook.common.internal.c.b(aVar);
                    com.facebook.common.internal.c.a(outputStream, true);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                outputStream = null;
                aVar = null;
            }
        } catch (Throwable th3) {
            th = th3;
            outputStream = null;
            aVar = null;
        }
    }

    private Bitmap k(CloseableReference<PooledByteBuffer> bytesRef, int inputLength, @Nullable byte[] suffix, BitmapFactory.Options options) throws Throwable {
        MemoryFile memoryFile = null;
        try {
            try {
                MemoryFile memoryFileJ = j(bytesRef, inputLength, suffix);
                try {
                    FileDescriptor fileDescriptorM = m(memoryFileJ);
                    m3.b bVar = this.f28230c;
                    if (bVar == null) {
                        throw new IllegalStateException("WebpBitmapFactory is null");
                    }
                    Bitmap bitmap = (Bitmap) com.facebook.common.internal.i.j(bVar.e(fileDescriptorM, null, options), "BitmapFactory returned null");
                    if (memoryFileJ != null) {
                        memoryFileJ.close();
                    }
                    return bitmap;
                } catch (IOException e10) {
                    e = e10;
                    memoryFile = memoryFileJ;
                    throw n.d(e);
                } catch (Throwable th) {
                    th = th;
                    memoryFile = memoryFileJ;
                    if (memoryFile != null) {
                        memoryFile.close();
                    }
                    throw th;
                }
            } catch (IOException e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private synchronized Method l() {
        if (f28229d == null) {
            try {
                f28229d = MemoryFile.class.getDeclaredMethod("getFileDescriptor", new Class[0]);
            } catch (Exception e10) {
                throw n.d(e10);
            }
        }
        return f28229d;
    }

    private FileDescriptor m(MemoryFile memoryFile) {
        try {
            return (FileDescriptor) com.facebook.common.internal.i.i(l().invoke(memoryFile, new Object[0]));
        } catch (Exception e10) {
            throw n.d(e10);
        }
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap e(CloseableReference<PooledByteBuffer> bytesRef, BitmapFactory.Options options) {
        return k(bytesRef, bytesRef.j().size(), null, options);
    }

    @Override // com.facebook.imagepipeline.nativecode.DalvikPurgeableDecoder
    protected Bitmap f(CloseableReference<PooledByteBuffer> bytesRef, int length, BitmapFactory.Options options) {
        return k(bytesRef, length, DalvikPurgeableDecoder.g(bytesRef, length) ? null : DalvikPurgeableDecoder.f28212b, options);
    }
}
