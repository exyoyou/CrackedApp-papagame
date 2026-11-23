package com.facebook.common.references;

import android.graphics.Bitmap;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.i;
import com.facebook.infer.annotation.FalseOnNull;
import com.facebook.infer.annotation.Nullsafe;
import com.facebook.infer.annotation.PropagatesNullable;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public abstract class CloseableReference<T> implements Cloneable, Closeable {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f26901f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f26902g = 1;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f26903h = 2;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f26904i = 3;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @CloseableRefType
    private static int f26906k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @GuardedBy("this")
    protected boolean f26909b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected final SharedReference<T> f26910c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected final c f26911d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    protected final Throwable f26912e;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static Class<CloseableReference> f26905j = CloseableReference.class;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final g<Closeable> f26907l = new a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final c f26908m = new b();

    public @interface CloseableRefType {
    }

    static class a implements g<Closeable> {
        a() {
        }

        @Override // com.facebook.common.references.g
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void release(Closeable value) {
            try {
                com.facebook.common.internal.c.a(value, true);
            } catch (IOException unused) {
            }
        }
    }

    static class b implements c {
        b() {
        }

        @Override // com.facebook.common.references.CloseableReference.c
        public boolean a() {
            return false;
        }

        @Override // com.facebook.common.references.CloseableReference.c
        public void b(SharedReference<Object> reference, @Nullable Throwable stacktrace) {
            Object objH = reference.h();
            Class cls = CloseableReference.f26905j;
            Object[] objArr = new Object[3];
            objArr[0] = Integer.valueOf(System.identityHashCode(this));
            objArr[1] = Integer.valueOf(System.identityHashCode(reference));
            objArr[2] = objH == null ? null : objH.getClass().getName();
            i3.a.m0(cls, "Finalized without closing: %x %x (type = %s)", objArr);
        }
    }

    public interface c {
        boolean a();

        void b(SharedReference<Object> reference, @Nullable Throwable stacktrace);
    }

    protected CloseableReference(SharedReference<T> sharedReference, c leakHandler, @Nullable Throwable stacktrace) {
        this.f26910c = (SharedReference) i.i(sharedReference);
        sharedReference.b();
        this.f26911d = leakHandler;
        this.f26912e = stacktrace;
    }

    @Nullable
    public static <T> CloseableReference<T> f(@Nullable CloseableReference<T> ref) {
        if (ref != null) {
            return ref.e();
        }
        return null;
    }

    public static <T> List<CloseableReference<T>> g(@PropagatesNullable Collection<CloseableReference<T>> refs) {
        if (refs == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList(refs.size());
        Iterator<CloseableReference<T>> it2 = refs.iterator();
        while (it2.hasNext()) {
            arrayList.add(f(it2.next()));
        }
        return arrayList;
    }

    public static void h(@Nullable CloseableReference<?> ref) {
        if (ref != null) {
            ref.close();
        }
    }

    public static void i(@Nullable Iterable<? extends CloseableReference<?>> references) {
        if (references != null) {
            Iterator<? extends CloseableReference<?>> it2 = references.iterator();
            while (it2.hasNext()) {
                h(it2.next());
            }
        }
    }

    @FalseOnNull
    public static boolean p(@Nullable CloseableReference<?> ref) {
        return ref != null && ref.o();
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;)Lcom/facebook/common/references/CloseableReference<TT;>; */
    public static CloseableReference q(@PropagatesNullable Closeable t10) {
        return t(t10, f26907l);
    }

    /* JADX WARN: Incorrect types in method signature: <T::Ljava/io/Closeable;>(TT;Lcom/facebook/common/references/CloseableReference$c;)Lcom/facebook/common/references/CloseableReference<TT;>; */
    public static CloseableReference s(@PropagatesNullable Closeable t10, c leakHandler) {
        if (t10 == null) {
            return null;
        }
        return v(t10, f26907l, leakHandler, leakHandler.a() ? new Throwable() : null);
    }

    public static <T> CloseableReference<T> t(@PropagatesNullable T t10, g<T> resourceReleaser) {
        return u(t10, resourceReleaser, f26908m);
    }

    public static <T> CloseableReference<T> u(@PropagatesNullable T t10, g<T> resourceReleaser, c leakHandler) {
        if (t10 == null) {
            return null;
        }
        return v(t10, resourceReleaser, leakHandler, leakHandler.a() ? new Throwable() : null);
    }

    public static <T> CloseableReference<T> v(@PropagatesNullable T t10, g<T> resourceReleaser, c leakHandler, @Nullable Throwable stacktrace) {
        if (t10 == null) {
            return null;
        }
        if ((t10 instanceof Bitmap) || (t10 instanceof com.facebook.common.references.c)) {
            int i10 = f26906k;
            if (i10 == 1) {
                return new com.facebook.common.references.b(t10, resourceReleaser, leakHandler, stacktrace);
            }
            if (i10 == 2) {
                return new f(t10, resourceReleaser, leakHandler, stacktrace);
            }
            if (i10 == 3) {
                return new d(t10, resourceReleaser, leakHandler, stacktrace);
            }
        }
        return new com.facebook.common.references.a(t10, resourceReleaser, leakHandler, stacktrace);
    }

    public static void y(@CloseableRefType int bitmapCloseableRefType) {
        f26906k = bitmapCloseableRefType;
    }

    public static boolean z() {
        return f26906k == 3;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (this.f26909b) {
                return;
            }
            this.f26909b = true;
            this.f26910c.e();
        }
    }

    @Override // 
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public abstract CloseableReference<T> clone();

    @Nullable
    public synchronized CloseableReference<T> e() {
        if (!o()) {
            return null;
        }
        return clone();
    }

    public synchronized T j() {
        i.o(!this.f26909b);
        return (T) i.i(this.f26910c.h());
    }

    @VisibleForTesting
    public synchronized SharedReference<T> k() {
        return this.f26910c;
    }

    public int l() {
        if (o()) {
            return System.identityHashCode(this.f26910c.h());
        }
        return 0;
    }

    public synchronized boolean o() {
        return !this.f26909b;
    }

    protected CloseableReference(T t10, g<T> resourceReleaser, c leakHandler, @Nullable Throwable stacktrace) {
        this.f26910c = new SharedReference<>(t10, resourceReleaser);
        this.f26911d = leakHandler;
        this.f26912e = stacktrace;
    }
}
