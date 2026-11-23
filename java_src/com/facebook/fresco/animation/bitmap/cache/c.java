package com.facebook.fresco.animation.bitmap.cache;

import android.graphics.Bitmap;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class c implements u3.a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f27424d = -1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f27425a = -1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private u3.a.InterfaceC1250a f27426b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @GuardedBy("this")
    @Nullable
    private CloseableReference<Bitmap> f27427c;

    private synchronized void i() {
        int i10;
        u3.a.InterfaceC1250a interfaceC1250a = this.f27426b;
        if (interfaceC1250a != null && (i10 = this.f27425a) != -1) {
            interfaceC1250a.a(this, i10);
        }
        CloseableReference.h(this.f27427c);
        this.f27427c = null;
        this.f27425a = -1;
    }

    @Override // u3.a
    public synchronized int a() {
        CloseableReference<Bitmap> closeableReference;
        closeableReference = this.f27427c;
        return closeableReference == null ? 0 : com.facebook.imageutils.a.g(closeableReference.j());
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0036 A[Catch: all -> 0x003d, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:10:0x001b, B:12:0x0024, B:14:0x0029, B:15:0x002c, B:17:0x0036, B:18:0x0039), top: B:24:0x0003 }] */
    @Override // u3.a
    public synchronized void b(int frameNumber, CloseableReference<Bitmap> bitmapReference, int frameType) {
        u3.a.InterfaceC1250a interfaceC1250a;
        u3.a.InterfaceC1250a interfaceC1250a2;
        int i10;
        if (bitmapReference == null) {
            CloseableReference.h(this.f27427c);
            interfaceC1250a = this.f27426b;
            if (interfaceC1250a != null) {
                interfaceC1250a.a(this, i10);
            }
            this.f27427c = CloseableReference.f(bitmapReference);
            interfaceC1250a2 = this.f27426b;
            if (interfaceC1250a2 != null) {
                interfaceC1250a2.b(this, frameNumber);
            }
            this.f27425a = frameNumber;
            return;
        }
        if (this.f27427c != null && bitmapReference.j().equals(this.f27427c.j())) {
            return;
        }
        CloseableReference.h(this.f27427c);
        interfaceC1250a = this.f27426b;
        if (interfaceC1250a != null && (i10 = this.f27425a) != -1) {
            interfaceC1250a.a(this, i10);
        }
        this.f27427c = CloseableReference.f(bitmapReference);
        interfaceC1250a2 = this.f27426b;
        if (interfaceC1250a2 != null) {
            interfaceC1250a2.b(this, frameNumber);
        }
        this.f27425a = frameNumber;
        return;
        throw th;
    }

    @Override // u3.a
    @Nullable
    public synchronized CloseableReference<Bitmap> c(int frameNumber) {
        return CloseableReference.f(this.f27427c);
    }

    @Override // u3.a
    public synchronized void clear() {
        i();
    }

    @Override // u3.a
    public void d(u3.a.InterfaceC1250a frameCacheListener) {
        this.f27426b = frameCacheListener;
    }

    @Override // u3.a
    public synchronized boolean e(int frameNumber) {
        return frameNumber == this.f27425a && CloseableReference.p(this.f27427c);
    }

    @Override // u3.a
    @Nullable
    public synchronized CloseableReference<Bitmap> f(int frameNumber) {
        if (this.f27425a != frameNumber) {
            return null;
        }
        return CloseableReference.f(this.f27427c);
    }

    @Override // u3.a
    public void g(int frameNumber, CloseableReference<Bitmap> bitmapReference, int frameType) {
    }

    @Override // u3.a
    @Nullable
    public synchronized CloseableReference<Bitmap> h(int frameNumber, int width, int height) {
        CloseableReference<Bitmap> closeableReferenceF;
        try {
            closeableReferenceF = CloseableReference.f(this.f27427c);
            i();
        } catch (Throwable th) {
            i();
            throw th;
        }
        return closeableReferenceF;
    }
}
