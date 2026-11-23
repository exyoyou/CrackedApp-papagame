package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.a1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
@SourceDebugExtension({"SMAP\nThreadSafeHeap.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,159:1\n24#2,4:160\n24#2,4:165\n24#2,4:170\n24#2,4:175\n24#2,4:180\n24#2,4:185\n24#2,4:190\n16#3:164\n16#3:169\n16#3:174\n16#3:179\n16#3:184\n16#3:189\n16#3:194\n1#4:195\n*S KotlinDebug\n*F\n+ 1 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n33#1:160,4\n41#1:165,4\n43#1:170,4\n51#1:175,4\n60#1:180,4\n63#1:185,4\n72#1:190,4\n33#1:164\n41#1:169\n43#1:174\n51#1:179\n60#1:184\n63#1:189\n72#1:194\n*E\n"})
public class z0<T extends a1 & Comparable<? super T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93570b = AtomicIntegerFieldUpdater.newUpdater(z0.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private T[] f93571a;

    private final /* synthetic */ int g() {
        return this._size$volatile;
    }

    private final T[] k() {
        T[] tArr = this.f93571a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new a1[4];
            this.f93571a = tArr2;
            return tArr2;
        }
        if (f() < tArr.length) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, f() * 2);
        Intrinsics.checkNotNullExpressionValue(objArrCopyOf, "copyOf(...)");
        T[] tArr3 = (T[]) ((a1[]) objArrCopyOf);
        this.f93571a = tArr3;
        return tArr3;
    }

    private final void p(int i10) {
        f93570b.set(this, i10);
    }

    private final /* synthetic */ void q(int i10) {
        this._size$volatile = i10;
    }

    private final void r(int i10) {
        while (true) {
            int i11 = (i10 * 2) + 1;
            if (i11 >= f()) {
                return;
            }
            T[] tArr = this.f93571a;
            Intrinsics.checkNotNull(tArr);
            int i12 = i11 + 1;
            if (i12 < f()) {
                T t10 = tArr[i12];
                Intrinsics.checkNotNull(t10);
                T t11 = tArr[i11];
                Intrinsics.checkNotNull(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    i11 = i12;
                }
            }
            T t12 = tArr[i10];
            Intrinsics.checkNotNull(t12);
            T t13 = tArr[i11];
            Intrinsics.checkNotNull(t13);
            if (((Comparable) t12).compareTo(t13) <= 0) {
                return;
            }
            t(i10, i11);
            i10 = i11;
        }
    }

    private final void s(int i10) {
        while (i10 > 0) {
            T[] tArr = this.f93571a;
            Intrinsics.checkNotNull(tArr);
            int i11 = (i10 - 1) / 2;
            T t10 = tArr[i11];
            Intrinsics.checkNotNull(t10);
            T t11 = tArr[i10];
            Intrinsics.checkNotNull(t11);
            if (((Comparable) t10).compareTo(t11) <= 0) {
                return;
            }
            t(i10, i11);
            i10 = i11;
        }
    }

    private final void t(int i10, int i11) {
        T[] tArr = this.f93571a;
        Intrinsics.checkNotNull(tArr);
        T t10 = tArr[i11];
        Intrinsics.checkNotNull(t10);
        T t11 = tArr[i10];
        Intrinsics.checkNotNull(t11);
        tArr[i10] = t10;
        tArr[i11] = t11;
        t10.h(i10);
        t11.h(i11);
    }

    @PublishedApi
    public final void a(@NotNull T t10) {
        t10.c(this);
        a1[] a1VarArrK = k();
        int iF = f();
        p(iF + 1);
        a1VarArrK[iF] = t10;
        t10.h(iF);
        s(iF);
    }

    public final void b(@NotNull T t10) {
        synchronized (this) {
            a(t10);
            Unit unit = Unit.INSTANCE;
        }
    }

    public final boolean c(@NotNull T t10, @NotNull Function1<? super T, Boolean> function1) {
        boolean z10;
        synchronized (this) {
            try {
                if (function1.invoke(e()).booleanValue()) {
                    a(t10);
                    z10 = true;
                } else {
                    z10 = false;
                }
                InlineMarker.finallyStart(1);
            } catch (Throwable th) {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
                throw th;
            }
        }
        InlineMarker.finallyEnd(1);
        return z10;
    }

    @Nullable
    public final T d(@NotNull Function1<? super T, Boolean> function1) {
        T t10;
        synchronized (this) {
            int iF = f();
            int i10 = 0;
            while (true) {
                t10 = null;
                if (i10 >= iF) {
                    break;
                }
                T[] tArr = this.f93571a;
                if (tArr != null) {
                    t10 = (Object) tArr[i10];
                }
                Intrinsics.checkNotNull(t10);
                if (function1.invoke(t10).booleanValue()) {
                    break;
                }
                i10++;
            }
        }
        return t10;
    }

    @PublishedApi
    @Nullable
    public final T e() {
        T[] tArr = this.f93571a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int f() {
        return f93570b.get(this);
    }

    public final boolean i() {
        return f() == 0;
    }

    @Nullable
    public final T j() {
        T t10;
        synchronized (this) {
            t10 = (T) e();
        }
        return t10;
    }

    public final boolean l(@NotNull T t10) {
        boolean z10;
        synchronized (this) {
            if (t10.g() == null) {
                z10 = false;
            } else {
                m(t10.getIndex());
                z10 = true;
            }
        }
        return z10;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x003a  */
    @PublishedApi
    @NotNull
    public final T m(int i10) {
        T[] tArr = this.f93571a;
        Intrinsics.checkNotNull(tArr);
        p(f() - 1);
        if (i10 < f()) {
            t(i10, f());
            int i11 = (i10 - 1) / 2;
            if (i10 > 0) {
                T t10 = tArr[i10];
                Intrinsics.checkNotNull(t10);
                T t11 = tArr[i11];
                Intrinsics.checkNotNull(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    t(i10, i11);
                    s(i11);
                } else {
                    r(i10);
                }
            } else {
                r(i10);
            }
        }
        T t12 = tArr[f()];
        Intrinsics.checkNotNull(t12);
        t12.c(null);
        t12.h(-1);
        tArr[f()] = null;
        return t12;
    }

    @Nullable
    public final T n(@NotNull Function1<? super T, Boolean> function1) {
        synchronized (this) {
            int i10 = 1;
            try {
                a1 a1VarE = e();
                T t10 = null;
                if (a1VarE == null) {
                    InlineMarker.finallyStart(2);
                    return null;
                }
                if (function1.invoke(a1VarE).booleanValue()) {
                    t10 = (T) m(0);
                }
                InlineMarker.finallyStart(i10);
                return t10;
            } finally {
                InlineMarker.finallyStart(i10);
                InlineMarker.finallyEnd(i10);
            }
        }
    }

    @Nullable
    public final T o() {
        T t10;
        synchronized (this) {
            t10 = f() > 0 ? (T) m(0) : null;
        }
        return t10;
    }
}
