package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final Class<?> f27666h = e.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.facebook.cache.disk.h f27667a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.facebook.common.memory.g f27668b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final com.facebook.common.memory.j f27669c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Executor f27670d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f27671e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final y f27672f = y.d();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f27673g;

    class a implements Callable<Boolean> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27674b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f27675c;

        a(final Object val$key, final com.facebook.cache.common.c val$token) {
            this.f27674b = val$key;
            this.f27675c = val$token;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            Object objE = i4.a.e(this.f27674b, null);
            try {
                Boolean boolValueOf = Boolean.valueOf(e.this.j(this.f27675c));
                i4.a.f(objE);
                return boolValueOf;
            } catch (Throwable th) {
                try {
                    i4.a.c(this.f27674b, th);
                    throw th;
                } catch (Throwable th2) {
                    i4.a.f(objE);
                    throw th2;
                }
            }
        }
    }

    class b implements Callable<Void> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27677b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f27678c;

        b(final Object val$key, final com.facebook.cache.common.c val$token) {
            this.f27677b = val$key;
            this.f27678c = val$token;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            Object objE = i4.a.e(this.f27677b, null);
            try {
                e.this.f27667a.b(this.f27678c);
                return null;
            } finally {
                i4.a.f(objE);
            }
        }
    }

    class c implements Callable<com.facebook.imagepipeline.image.e> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27680b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ AtomicBoolean f27681c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f27682d;

        c(final Object val$key, final AtomicBoolean val$isCancelled, final com.facebook.cache.common.c val$token) {
            this.f27680b = val$key;
            this.f27681c = val$isCancelled;
            this.f27682d = val$token;
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // java.util.concurrent.Callable
        @Nullable
        public com.facebook.imagepipeline.image.e call() throws Exception {
            Object objE = i4.a.e(this.f27680b, null);
            try {
                if (this.f27681c.get()) {
                    throw new CancellationException();
                }
                com.facebook.imagepipeline.image.e eVarC = e.this.f27672f.c(this.f27682d);
                if (eVarC != null) {
                    i3.a.V(e.f27666h, "Found image for %s in staging area", this.f27682d.a());
                    e.this.f27673g.h(this.f27682d);
                } else {
                    i3.a.V(e.f27666h, "Did not find image for %s in staging area", this.f27682d.a());
                    e.this.f27673g.d(this.f27682d);
                    try {
                        PooledByteBuffer pooledByteBufferV = e.this.v(this.f27682d);
                        if (pooledByteBufferV == null) {
                            i4.a.f(objE);
                            return null;
                        }
                        CloseableReference closeableReferenceQ = CloseableReference.q(pooledByteBufferV);
                        try {
                            com.facebook.imagepipeline.image.e eVar = new com.facebook.imagepipeline.image.e((CloseableReference<PooledByteBuffer>) closeableReferenceQ);
                            CloseableReference.h(closeableReferenceQ);
                            eVarC = eVar;
                        } catch (Throwable th) {
                            CloseableReference.h(closeableReferenceQ);
                            throw th;
                        }
                    } catch (Exception unused) {
                        i4.a.f(objE);
                        return null;
                    }
                }
                if (!Thread.interrupted()) {
                    i4.a.f(objE);
                    return eVarC;
                }
                i3.a.U(e.f27666h, "Host thread was interrupted, decreasing reference count");
                eVarC.close();
                throw new InterruptedException();
            } catch (Throwable th2) {
                try {
                    i4.a.c(this.f27680b, th2);
                    throw th2;
                } catch (Throwable th3) {
                    i4.a.f(objE);
                    throw th3;
                }
            }
        }
    }

    class d implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f27685c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f27686d;

        d(final Object val$finalEncodedImage, final com.facebook.cache.common.c val$key, final com.facebook.imagepipeline.image.e val$token) {
            this.f27684b = val$finalEncodedImage;
            this.f27685c = val$key;
            this.f27686d = val$token;
        }

        @Override // java.lang.Runnable
        public void run() {
            Object objE = i4.a.e(this.f27684b, null);
            try {
                e.this.x(this.f27685c, this.f27686d);
                e.this.f27672f.h(this.f27685c, this.f27686d);
                com.facebook.imagepipeline.image.e.d(this.f27686d);
                i4.a.f(objE);
            } catch (Throwable th) {
                try {
                    i4.a.c(this.f27684b, th);
                    throw th;
                } catch (Throwable th2) {
                    e.this.f27672f.h(this.f27685c, this.f27686d);
                    com.facebook.imagepipeline.image.e.d(this.f27686d);
                    i4.a.f(objE);
                    throw th2;
                }
            }
        }
    }

    /* JADX INFO: renamed from: com.facebook.imagepipeline.cache.e$e, reason: collision with other inner class name */
    class CallableC0570e implements Callable<Void> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27688b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.facebook.cache.common.c f27689c;

        CallableC0570e(final Object val$key, final com.facebook.cache.common.c val$token) {
            this.f27688b = val$key;
            this.f27689c = val$token;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            Object objE = i4.a.e(this.f27688b, null);
            try {
                e.this.f27672f.g(this.f27689c);
                e.this.f27667a.i(this.f27689c);
                i4.a.f(objE);
                return null;
            } catch (Throwable th) {
                try {
                    i4.a.c(this.f27688b, th);
                    throw th;
                } catch (Throwable th2) {
                    i4.a.f(objE);
                    throw th2;
                }
            }
        }
    }

    class f implements Callable<Void> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f27691b;

        f(final Object val$token) {
            this.f27691b = val$token;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            Object objE = i4.a.e(this.f27691b, null);
            try {
                e.this.f27672f.a();
                e.this.f27667a.clearAll();
                i4.a.f(objE);
                return null;
            } catch (Throwable th) {
                try {
                    i4.a.c(this.f27691b, th);
                    throw th;
                } catch (Throwable th2) {
                    i4.a.f(objE);
                    throw th2;
                }
            }
        }
    }

    class g implements com.facebook.cache.common.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.facebook.imagepipeline.image.e f27693a;

        g(final com.facebook.imagepipeline.image.e val$encodedImage) {
            this.f27693a = val$encodedImage;
        }

        @Override // com.facebook.cache.common.k
        public void a(OutputStream os) throws IOException {
            InputStream inputStreamP = this.f27693a.p();
            com.facebook.common.internal.i.i(inputStreamP);
            e.this.f27669c.a(inputStreamP, os);
        }
    }

    public e(com.facebook.cache.disk.h fileCache, com.facebook.common.memory.g pooledByteBufferFactory, com.facebook.common.memory.j pooledByteStreams, Executor readExecutor, Executor writeExecutor, p imageCacheStatsTracker) {
        this.f27667a = fileCache;
        this.f27668b = pooledByteBufferFactory;
        this.f27669c = pooledByteStreams;
        this.f27670d = readExecutor;
        this.f27671e = writeExecutor;
        this.f27673g = imageCacheStatsTracker;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j(final com.facebook.cache.common.c key) {
        com.facebook.imagepipeline.image.e eVarC = this.f27672f.c(key);
        if (eVarC != null) {
            eVarC.close();
            i3.a.V(f27666h, "Found image for %s in staging area", key.a());
            this.f27673g.h(key);
            return true;
        }
        i3.a.V(f27666h, "Did not find image for %s in staging area", key.a());
        this.f27673g.d(key);
        try {
            return this.f27667a.g(key);
        } catch (Exception unused) {
            return false;
        }
    }

    private bolts.h<Boolean> m(final com.facebook.cache.common.c key) {
        try {
            return bolts.h.call(new a(i4.a.d("BufferedDiskCache_containsAsync"), key), this.f27670d);
        } catch (Exception e10) {
            i3.a.n0(f27666h, e10, "Failed to schedule disk-cache read for %s", key.a());
            return bolts.h.y(e10);
        }
    }

    private bolts.h<com.facebook.imagepipeline.image.e> p(com.facebook.cache.common.c key, com.facebook.imagepipeline.image.e pinnedImage) {
        i3.a.V(f27666h, "Found image for %s in staging area", key.a());
        this.f27673g.h(key);
        return bolts.h.z(pinnedImage);
    }

    private bolts.h<com.facebook.imagepipeline.image.e> r(final com.facebook.cache.common.c key, final AtomicBoolean isCancelled) {
        try {
            return bolts.h.call(new c(i4.a.d("BufferedDiskCache_getAsync"), isCancelled, key), this.f27670d);
        } catch (Exception e10) {
            i3.a.n0(f27666h, e10, "Failed to schedule disk-cache read for %s", key.a());
            return bolts.h.y(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @Nullable
    public PooledByteBuffer v(final com.facebook.cache.common.c key) throws IOException {
        try {
            Class<?> cls = f27666h;
            i3.a.V(cls, "Disk cache read for %s", key.a());
            d3.a aVarC = this.f27667a.c(key);
            if (aVarC == null) {
                i3.a.V(cls, "Disk cache miss for %s", key.a());
                this.f27673g.b(key);
                return null;
            }
            i3.a.V(cls, "Found entry in disk cache for %s", key.a());
            this.f27673g.k(key);
            InputStream inputStreamA = aVarC.a();
            try {
                PooledByteBuffer pooledByteBufferE = this.f27668b.e(inputStreamA, (int) aVarC.size());
                inputStreamA.close();
                i3.a.V(cls, "Successful read from disk cache for %s", key.a());
                return pooledByteBufferE;
            } catch (Throwable th) {
                inputStreamA.close();
                throw th;
            }
        } catch (IOException e10) {
            i3.a.n0(f27666h, e10, "Exception reading from cache for %s", key.a());
            this.f27673g.n(key);
            throw e10;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(final com.facebook.cache.common.c key, final com.facebook.imagepipeline.image.e encodedImage) {
        Class<?> cls = f27666h;
        i3.a.V(cls, "About to write to disk-cache for key %s", key.a());
        try {
            this.f27667a.insert(key, new g(encodedImage));
            this.f27673g.c(key);
            i3.a.V(cls, "Successful disk-cache write for key %s", key.a());
        } catch (IOException e10) {
            i3.a.n0(f27666h, e10, "Failed to write to disk-cache for key %s", key.a());
        }
    }

    public void i(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.i.i(key);
        this.f27667a.b(key);
    }

    public bolts.h<Void> k() {
        this.f27672f.a();
        try {
            return bolts.h.call(new f(i4.a.d("BufferedDiskCache_clearAll")), this.f27671e);
        } catch (Exception e10) {
            i3.a.n0(f27666h, e10, "Failed to schedule disk-cache clear", new Object[0]);
            return bolts.h.y(e10);
        }
    }

    public bolts.h<Boolean> l(final com.facebook.cache.common.c key) {
        return n(key) ? bolts.h.z(Boolean.TRUE) : m(key);
    }

    public boolean n(com.facebook.cache.common.c key) {
        return this.f27672f.b(key) || this.f27667a.e(key);
    }

    public boolean o(final com.facebook.cache.common.c key) {
        if (n(key)) {
            return true;
        }
        return j(key);
    }

    public bolts.h<com.facebook.imagepipeline.image.e> q(com.facebook.cache.common.c key, AtomicBoolean isCancelled) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#get");
            }
            com.facebook.imagepipeline.image.e eVarC = this.f27672f.c(key);
            return eVarC != null ? p(key, eVarC) : r(key, isCancelled);
        } finally {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        }
    }

    public long s() {
        return this.f27667a.getSize();
    }

    public bolts.h<Void> t(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.i.i(key);
        try {
            return bolts.h.call(new b(i4.a.d("BufferedDiskCache_probe"), key), this.f27671e);
        } catch (Exception e10) {
            i3.a.n0(f27666h, e10, "Failed to schedule disk-cache probe for %s", key.a());
            return bolts.h.y(e10);
        }
    }

    public void u(final com.facebook.cache.common.c key, com.facebook.imagepipeline.image.e encodedImage) {
        try {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.a("BufferedDiskCache#put");
            }
            com.facebook.common.internal.i.i(key);
            com.facebook.common.internal.i.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.P(encodedImage)));
            this.f27672f.f(key, encodedImage);
            com.facebook.imagepipeline.image.e eVarC = com.facebook.imagepipeline.image.e.c(encodedImage);
            try {
                this.f27671e.execute(new d(i4.a.d("BufferedDiskCache_putAsync"), key, eVarC));
            } catch (Exception e10) {
                i3.a.n0(f27666h, e10, "Failed to schedule disk-cache write for %s", key.a());
                this.f27672f.h(key, encodedImage);
                com.facebook.imagepipeline.image.e.d(eVarC);
            }
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
        } catch (Throwable th) {
            if (com.facebook.imagepipeline.systrace.b.e()) {
                com.facebook.imagepipeline.systrace.b.c();
            }
            throw th;
        }
    }

    public bolts.h<Void> w(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.i.i(key);
        this.f27672f.g(key);
        try {
            return bolts.h.call(new CallableC0570e(i4.a.d("BufferedDiskCache_remove"), key), this.f27671e);
        } catch (Exception e10) {
            i3.a.n0(f27666h, e10, "Failed to schedule disk-cache remove for %s", key.a());
            return bolts.h.y(e10);
        }
    }
}
