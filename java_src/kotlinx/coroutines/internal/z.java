package kotlinx.coroutines.internal;

import XI.K0.XI.XI;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nLockFreeTaskQueue.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n+ 2 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,304:1\n295#2,3:305\n295#2,3:308\n295#2,3:311\n295#2,3:314\n295#2,3:317\n295#2,3:321\n295#2,3:324\n1#3:320\n*S KotlinDebug\n*F\n+ 1 LockFreeTaskQueue.kt\nkotlinx/coroutines/internal/LockFreeTaskQueueCore\n*L\n87#1:305,3\n88#1:308,3\n103#1:311,3\n163#1:314,3\n196#1:317,3\n227#1:321,3\n243#1:324,3\n*E\n"})
public final class z<E> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f93549h = 8;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f93550i = 30;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final int f93551j = 1073741823;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f93552k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final long f93553l = 1073741823;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f93554m = 30;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final long f93555n = 1152921503533105152L;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final int f93556o = 60;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final long f93557p = 1152921504606846976L;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final int f93558q = 61;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final long f93559r = 2305843009213693952L;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final int f93560s = 1024;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final int f93562u = 0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f93563v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f93564w = 2;
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ long _state$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f93565a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f93566b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f93567c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f93568d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    public static final a f93546e = new a(null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93547f = AtomicReferenceFieldUpdater.newUpdater(z.class, Object.class, "_next$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f93548g = AtomicLongFieldUpdater.newUpdater(z.class, "_state$volatile");

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final q0 f93561t = new q0("REMOVE_FROZEN");

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int a(long j10) {
            return (j10 & z.f93559r) != 0 ? 2 : 1;
        }

        public final long b(long j10, int i10) {
            return e(j10, z.f93553l) | (((long) i10) << 0);
        }

        public final long c(long j10, int i10) {
            return e(j10, z.f93555n) | (((long) i10) << 30);
        }

        public final <T> T d(long j10, @NotNull Function2<? super Integer, ? super Integer, ? extends T> function2) {
            return function2.invoke(Integer.valueOf((int) ((z.f93553l & j10) >> 0)), Integer.valueOf((int) ((j10 & z.f93555n) >> 30)));
        }

        public final long e(long j10, long j11) {
            return j10 & (~j11);
        }

        private a() {
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @JvmField
        public final int f93569a;

        public b(int i10) {
            this.f93569a = i10;
        }
    }

    public z(int i10, boolean z10) {
        this.f93565a = i10;
        this.f93566b = z10;
        int i11 = i10 - 1;
        this.f93567c = i11;
        this.f93568d = new AtomicReferenceArray(i10);
        if (!(i11 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i10 & i11) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final z<E> b(long j10) {
        z<E> zVar = new z<>(this.f93565a * 2, this.f93566b);
        int i10 = (int) ((f93553l & j10) >> 0);
        int i11 = (int) ((f93555n & j10) >> 30);
        while (true) {
            int i12 = this.f93567c;
            if ((i10 & i12) == (i12 & i11)) {
                f93548g.set(zVar, f93546e.e(j10, f93557p));
                return zVar;
            }
            Object bVar = f().get(this.f93567c & i10);
            if (bVar == null) {
                bVar = new b(i10);
            }
            zVar.f().set(zVar.f93567c & i10, bVar);
            i10++;
        }
    }

    private final z<E> c(long j10) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93547f;
        while (true) {
            z<E> zVar = (z) atomicReferenceFieldUpdater.get(this);
            if (zVar != null) {
                return zVar;
            }
            androidx.concurrent.futures.a.a(f93547f, this, null, b(j10));
        }
    }

    private final z<E> e(int i10, E e10) {
        Object obj = f().get(this.f93567c & i10);
        if (!(obj instanceof b) || ((b) obj).f93569a != i10) {
            return null;
        }
        f().set(i10 & this.f93567c, e10);
        return this;
    }

    private final /* synthetic */ AtomicReferenceArray f() {
        return this.f93568d;
    }

    private final /* synthetic */ Object h() {
        return this._next$volatile;
    }

    private final /* synthetic */ long j() {
        return this._state$volatile;
    }

    private final /* synthetic */ void n(Object obj, AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Unit> function1) {
        while (true) {
            function1.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    private final /* synthetic */ void o(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final long q() {
        long j10;
        long j11;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93548g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & f93557p) != 0) {
                return j10;
            }
            j11 = j10 | f93557p;
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j11));
        return j11;
    }

    private final z<E> t(int i10, int i11) {
        long j10;
        int i12;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93548g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            i12 = (int) ((f93553l & j10) >> 0);
            if ((f93557p & j10) != 0) {
                return r();
            }
        } while (!f93548g.compareAndSet(this, j10, f93546e.b(j10, i11)));
        f().set(this.f93567c & i12, null);
        return null;
    }

    private final /* synthetic */ void u(Object obj) {
        this._next$volatile = obj;
    }

    private final /* synthetic */ void v(long j10) {
        this._state$volatile = j10;
    }

    private final /* synthetic */ void w(Object obj, AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Long> function1) {
        long j10;
        do {
            j10 = atomicLongFieldUpdater.get(obj);
        } while (!atomicLongFieldUpdater.compareAndSet(obj, j10, function1.invoke(Long.valueOf(j10)).longValue()));
    }

    private final /* synthetic */ long x(Object obj, AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Long> function1) {
        long j10;
        Long lInvoke;
        do {
            j10 = atomicLongFieldUpdater.get(obj);
            lInvoke = function1.invoke(Long.valueOf(j10));
        } while (!atomicLongFieldUpdater.compareAndSet(obj, j10, lInvoke.longValue()));
        return lInvoke.longValue();
    }

    public final int a(@NotNull E e10) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93548g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((3458764513820540928L & j10) != 0) {
                return f93546e.a(j10);
            }
            int i10 = (int) ((f93553l & j10) >> 0);
            int i11 = (int) ((f93555n & j10) >> 30);
            int i12 = this.f93567c;
            if (((i11 + 2) & i12) == (i10 & i12)) {
                return 1;
            }
            if (!this.f93566b && f().get(i11 & i12) != null) {
                int i13 = this.f93565a;
                if (i13 < 1024 || ((i11 - i10) & f93551j) > (i13 >> 1)) {
                    return 1;
                }
            } else if (f93548g.compareAndSet(this, j10, f93546e.c(j10, (i11 + 1) & f93551j))) {
                f().set(i11 & i12, e10);
                z<E> zVarE = this;
                while ((f93548g.get(zVarE) & f93557p) != 0 && (zVarE = zVarE.r().e(i11, e10)) != null) {
                }
                return 0;
            }
        }
    }

    public final boolean d() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93548g;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            if ((j10 & f93559r) != 0) {
                return true;
            }
            if ((f93557p & j10) != 0) {
                return false;
            }
        } while (!atomicLongFieldUpdater.compareAndSet(this, j10, j10 | f93559r));
        return true;
    }

    public final int g() {
        long j10 = f93548g.get(this);
        return 1073741823 & (((int) ((j10 & f93555n) >> 30)) - ((int) ((f93553l & j10) >> 0)));
    }

    public final boolean l() {
        return (f93548g.get(this) & f93559r) != 0;
    }

    public final boolean m() {
        long j10 = f93548g.get(this);
        return ((int) ((f93553l & j10) >> 0)) == ((int) ((j10 & f93555n) >> 30));
    }

    @NotNull
    public final <R> List<R> p(@NotNull Function1<? super E, ? extends R> function1) {
        ArrayList arrayList = new ArrayList(this.f93565a);
        long j10 = f93548g.get(this);
        int i10 = (int) ((f93553l & j10) >> 0);
        int i11 = (int) ((j10 & f93555n) >> 30);
        while (true) {
            int i12 = this.f93567c;
            if ((i10 & i12) == (i12 & i11)) {
                return arrayList;
            }
            XI.AbstractBinderC0002XI abstractBinderC0002XI = (Object) f().get(this.f93567c & i10);
            if (abstractBinderC0002XI != null && !(abstractBinderC0002XI instanceof b)) {
                arrayList.add(function1.invoke(abstractBinderC0002XI));
            }
            i10++;
        }
    }

    @NotNull
    public final z<E> r() {
        return c(q());
    }

    @Nullable
    public final Object s() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93548g;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            if ((f93557p & j10) != 0) {
                return f93561t;
            }
            int i10 = (int) ((f93553l & j10) >> 0);
            int i11 = (int) ((f93555n & j10) >> 30);
            int i12 = this.f93567c;
            if ((i11 & i12) == (i12 & i10)) {
                return null;
            }
            Object obj = f().get(this.f93567c & i10);
            if (obj == null) {
                if (this.f93566b) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                int i13 = (i10 + 1) & f93551j;
                if (f93548g.compareAndSet(this, j10, f93546e.b(j10, i13))) {
                    f().set(this.f93567c & i10, null);
                    return obj;
                }
                if (this.f93566b) {
                    z<E> zVarT = this;
                    do {
                        zVarT = zVarT.t(i10, i13);
                    } while (zVarT != null);
                    return obj;
                }
            }
        }
    }
}
