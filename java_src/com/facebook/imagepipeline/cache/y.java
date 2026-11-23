package com.facebook.imagepipeline.cache;

import com.facebook.common.memory.PooledByteBuffer;
import com.facebook.common.references.CloseableReference;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class y {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Class<?> f27755b = y.class;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private Map<com.facebook.cache.common.c, com.facebook.imagepipeline.image.e> f27756a = new HashMap();

    private y() {
    }

    public static y d() {
        return new y();
    }

    private synchronized void e() {
        i3.a.V(f27755b, "Count = %d", Integer.valueOf(this.f27756a.size()));
    }

    public void a() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList(this.f27756a.values());
            this.f27756a.clear();
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            com.facebook.imagepipeline.image.e eVar = (com.facebook.imagepipeline.image.e) arrayList.get(i10);
            if (eVar != null) {
                eVar.close();
            }
        }
    }

    public synchronized boolean b(com.facebook.cache.common.c key) {
        com.facebook.common.internal.i.i(key);
        if (!this.f27756a.containsKey(key)) {
            return false;
        }
        com.facebook.imagepipeline.image.e eVar = this.f27756a.get(key);
        synchronized (eVar) {
            if (com.facebook.imagepipeline.image.e.P(eVar)) {
                return true;
            }
            this.f27756a.remove(key);
            i3.a.m0(f27755b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(eVar)), key.a(), Integer.valueOf(System.identityHashCode(key)));
            return false;
        }
    }

    @Nullable
    public synchronized com.facebook.imagepipeline.image.e c(final com.facebook.cache.common.c key) {
        com.facebook.common.internal.i.i(key);
        com.facebook.imagepipeline.image.e eVarC = this.f27756a.get(key);
        if (eVarC != null) {
            synchronized (eVarC) {
                if (!com.facebook.imagepipeline.image.e.P(eVarC)) {
                    this.f27756a.remove(key);
                    i3.a.m0(f27755b, "Found closed reference %d for key %s (%d)", Integer.valueOf(System.identityHashCode(eVarC)), key.a(), Integer.valueOf(System.identityHashCode(key)));
                    return null;
                }
                eVarC = com.facebook.imagepipeline.image.e.c(eVarC);
            }
        }
        return eVarC;
    }

    public synchronized void f(final com.facebook.cache.common.c key, final com.facebook.imagepipeline.image.e encodedImage) {
        com.facebook.common.internal.i.i(key);
        com.facebook.common.internal.i.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.P(encodedImage)));
        com.facebook.imagepipeline.image.e.d(this.f27756a.put(key, com.facebook.imagepipeline.image.e.c(encodedImage)));
        e();
    }

    public boolean g(final com.facebook.cache.common.c key) {
        com.facebook.imagepipeline.image.e eVarRemove;
        com.facebook.common.internal.i.i(key);
        synchronized (this) {
            eVarRemove = this.f27756a.remove(key);
        }
        if (eVarRemove == null) {
            return false;
        }
        try {
            return eVarRemove.O();
        } finally {
            eVarRemove.close();
        }
    }

    public synchronized boolean h(final com.facebook.cache.common.c key, final com.facebook.imagepipeline.image.e encodedImage) {
        com.facebook.common.internal.i.i(key);
        com.facebook.common.internal.i.i(encodedImage);
        com.facebook.common.internal.i.d(Boolean.valueOf(com.facebook.imagepipeline.image.e.P(encodedImage)));
        com.facebook.imagepipeline.image.e eVar = this.f27756a.get(key);
        if (eVar == null) {
            return false;
        }
        CloseableReference<PooledByteBuffer> closeableReferenceF = eVar.f();
        CloseableReference<PooledByteBuffer> closeableReferenceF2 = encodedImage.f();
        if (closeableReferenceF != null && closeableReferenceF2 != null) {
            try {
                if (closeableReferenceF.j() == closeableReferenceF2.j()) {
                    this.f27756a.remove(key);
                    CloseableReference.h(closeableReferenceF2);
                    CloseableReference.h(closeableReferenceF);
                    com.facebook.imagepipeline.image.e.d(eVar);
                    e();
                    return true;
                }
            } catch (Throwable th) {
                CloseableReference.h(closeableReferenceF2);
                CloseableReference.h(closeableReferenceF);
                com.facebook.imagepipeline.image.e.d(eVar);
                throw th;
            }
        }
        CloseableReference.h(closeableReferenceF2);
        CloseableReference.h(closeableReferenceF);
        com.facebook.imagepipeline.image.e.d(eVar);
        return false;
    }
}
