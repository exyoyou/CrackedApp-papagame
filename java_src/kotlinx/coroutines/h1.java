package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.DurationKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n+ 2 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n+ 3 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 4 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 5 EventLoop.kt\nkotlinx/coroutines/EventLoopKt\n+ 6 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n51#2:541\n52#2,7:547\n24#3,4:542\n16#4:546\n53#5:554\n1#6:555\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase\n*L\n266#1:541\n266#1:547,7\n266#1:542,4\n266#1:546\n277#1:554\n*E\n"})
public abstract class h1 extends i1 implements t0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93440e = AtomicReferenceFieldUpdater.newUpdater(h1.class, Object.class, "_queue$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93441f = AtomicReferenceFieldUpdater.newUpdater(h1.class, Object.class, "_delayed$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93442g = AtomicIntegerFieldUpdater.newUpdater(h1.class, "_isCompleted$volatile");
    private volatile /* synthetic */ Object _delayed$volatile;
    private volatile /* synthetic */ int _isCompleted$volatile = 0;
    private volatile /* synthetic */ Object _queue$volatile;

    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedResumeTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,540:1\n1#2:541\n*E\n"})
    private final class a extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NotNull
        private final n<Unit> f93443d;

        /* JADX WARN: Multi-variable type inference failed */
        public a(@NotNull long j10, n<? super Unit> nVar) {
            super(j10);
            this.f93443d = nVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f93443d.N(h1.this, Unit.INSTANCE);
        }

        @Override // kotlinx.coroutines.h1.c
        @NotNull
        public String toString() {
            return super.toString() + this.f93443d;
        }
    }

    private static final class b extends c {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @NotNull
        private final Runnable f93445d;

        public b(long j10, @NotNull Runnable runnable) {
            super(j10);
            this.f93445d = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f93445d.run();
        }

        @Override // kotlinx.coroutines.h1.c
        @NotNull
        public String toString() {
            return super.toString() + this.f93445d;
        }
    }

    @SourceDebugExtension({"SMAP\nEventLoop.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n+ 2 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 3 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 4 ThreadSafeHeap.kt\nkotlinx/coroutines/internal/ThreadSafeHeap\n*L\n1#1,540:1\n24#2,4:541\n24#2,4:547\n24#2,4:559\n16#3:545\n16#3:551\n16#3:563\n63#4:546\n64#4,7:552\n*S KotlinDebug\n*F\n+ 1 EventLoop.common.kt\nkotlinx/coroutines/EventLoopImplBase$DelayedTask\n*L\n434#1:541,4\n436#1:547,4\n476#1:559,4\n434#1:545\n436#1:551\n476#1:563\n436#1:546\n436#1:552,7\n*E\n"})
    public static abstract class c implements Runnable, Comparable<c>, c1, kotlinx.coroutines.internal.a1 {

        @Nullable
        private volatile Object _heap;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @JvmField
        public long f93446b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f93447c = -1;

        public c(long j10) {
            this.f93446b = j10;
        }

        @Override // kotlinx.coroutines.internal.a1
        public void c(@Nullable kotlinx.coroutines.internal.z0<?> z0Var) {
            if (!(this._heap != k1.f93580a)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            this._heap = z0Var;
        }

        @Override // kotlinx.coroutines.c1
        public final void dispose() {
            synchronized (this) {
                Object obj = this._heap;
                if (obj == k1.f93580a) {
                    return;
                }
                d dVar = obj instanceof d ? (d) obj : null;
                if (dVar != null) {
                    dVar.l(this);
                }
                this._heap = k1.f93580a;
                Unit unit = Unit.INSTANCE;
            }
        }

        @Override // kotlinx.coroutines.internal.a1
        @Nullable
        public kotlinx.coroutines.internal.z0<?> g() {
            Object obj = this._heap;
            if (obj instanceof kotlinx.coroutines.internal.z0) {
                return (kotlinx.coroutines.internal.z0) obj;
            }
            return null;
        }

        @Override // kotlinx.coroutines.internal.a1
        public int getIndex() {
            return this.f93447c;
        }

        @Override // kotlinx.coroutines.internal.a1
        public void h(int i10) {
            this.f93447c = i10;
        }

        @Override // java.lang.Comparable
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public int compareTo(@NotNull c cVar) {
            long j10 = this.f93446b - cVar.f93446b;
            if (j10 > 0) {
                return 1;
            }
            return j10 < 0 ? -1 : 0;
        }

        public final int j(long j10, @NotNull d dVar, @NotNull h1 h1Var) {
            synchronized (this) {
                if (this._heap == k1.f93580a) {
                    return 2;
                }
                synchronized (dVar) {
                    c cVarE = dVar.e();
                    if (h1Var.isCompleted()) {
                        return 1;
                    }
                    if (cVarE == null) {
                        dVar.f93448c = j10;
                    } else {
                        long j11 = cVarE.f93446b;
                        if (j11 - j10 < 0) {
                            j10 = j11;
                        }
                        if (j10 - dVar.f93448c > 0) {
                            dVar.f93448c = j10;
                        }
                    }
                    long j12 = this.f93446b;
                    long j13 = dVar.f93448c;
                    if (j12 - j13 < 0) {
                        this.f93446b = j13;
                    }
                    dVar.a(this);
                    return 0;
                }
            }
        }

        public final boolean k(long j10) {
            return j10 - this.f93446b >= 0;
        }

        @NotNull
        public String toString() {
            return "Delayed[nanos=" + this.f93446b + ']';
        }
    }

    public static final class d extends kotlinx.coroutines.internal.z0<c> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @JvmField
        public long f93448c;

        public d(long j10) {
            this.f93448c = j10;
        }
    }

    private final /* synthetic */ Object B0() {
        return this._queue$volatile;
    }

    private final /* synthetic */ void D0(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final void E0() {
        c cVarO;
        kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f92358a;
        long jB = bVar != null ? bVar.b() : System.nanoTime();
        while (true) {
            d dVar = (d) f93441f.get(this);
            if (dVar == null || (cVarO = dVar.o()) == null) {
                return;
            } else {
                q0(jB, cVarO);
            }
        }
    }

    private final int H0(long j10, c cVar) {
        if (isCompleted()) {
            return 1;
        }
        d dVar = (d) f93441f.get(this);
        if (dVar == null) {
            androidx.concurrent.futures.a.a(f93441f, this, null, new d(j10));
            Object obj = f93441f.get(this);
            Intrinsics.checkNotNull(obj);
            dVar = (d) obj;
        }
        return cVar.j(j10, dVar, this);
    }

    private final void J0(boolean z10) {
        f93442g.set(this, z10 ? 1 : 0);
    }

    private final /* synthetic */ void K0(Object obj) {
        this._delayed$volatile = obj;
    }

    private final /* synthetic */ void L0(int i10) {
        this._isCompleted$volatile = i10;
    }

    private final /* synthetic */ void M0(Object obj) {
        this._queue$volatile = obj;
    }

    private final boolean N0(c cVar) {
        d dVar = (d) f93441f.get(this);
        return (dVar != null ? dVar.j() : null) == cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean isCompleted() {
        return f93442g.get(this) != 0;
    }

    private final void t0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93440e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f93440e, this, null, k1.f93587h)) {
                    return;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.z) {
                ((kotlinx.coroutines.internal.z) obj).d();
                return;
            } else {
                if (obj == k1.f93587h) {
                    return;
                }
                kotlinx.coroutines.internal.z zVar = new kotlinx.coroutines.internal.z(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                zVar.a((Runnable) obj);
                if (androidx.concurrent.futures.a.a(f93440e, this, obj, zVar)) {
                    return;
                }
            }
        }
    }

    private final Runnable u0() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93440e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                return null;
            }
            if (obj instanceof kotlinx.coroutines.internal.z) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                kotlinx.coroutines.internal.z zVar = (kotlinx.coroutines.internal.z) obj;
                Object objS = zVar.s();
                if (objS != kotlinx.coroutines.internal.z.f93561t) {
                    return (Runnable) objS;
                }
                androidx.concurrent.futures.a.a(f93440e, this, obj, zVar.r());
            } else {
                if (obj == k1.f93587h) {
                    return null;
                }
                if (androidx.concurrent.futures.a.a(f93440e, this, obj, null)) {
                    Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                    return (Runnable) obj;
                }
            }
        }
    }

    private final boolean w0(Runnable runnable) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93440e;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (isCompleted()) {
                return false;
            }
            if (obj == null) {
                if (androidx.concurrent.futures.a.a(f93440e, this, null, runnable)) {
                    return true;
                }
            } else if (obj instanceof kotlinx.coroutines.internal.z) {
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.LockFreeTaskQueueCore<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }>{ kotlinx.coroutines.EventLoop_commonKt.Queue<java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }> }");
                kotlinx.coroutines.internal.z zVar = (kotlinx.coroutines.internal.z) obj;
                int iA = zVar.a(runnable);
                if (iA == 0) {
                    return true;
                }
                if (iA == 1) {
                    androidx.concurrent.futures.a.a(f93440e, this, obj, zVar.r());
                } else if (iA == 2) {
                    return false;
                }
            } else {
                if (obj == k1.f93587h) {
                    return false;
                }
                kotlinx.coroutines.internal.z zVar2 = new kotlinx.coroutines.internal.z(8, true);
                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type java.lang.Runnable{ kotlinx.coroutines.RunnableKt.Runnable }");
                zVar2.a((Runnable) obj);
                zVar2.a(runnable);
                if (androidx.concurrent.futures.a.a(f93440e, this, obj, zVar2)) {
                    return true;
                }
            }
        }
    }

    private final /* synthetic */ Object x0() {
        return this._delayed$volatile;
    }

    private final /* synthetic */ int z0() {
        return this._isCompleted$volatile;
    }

    protected final void F0() {
        f93440e.set(this, null);
        f93441f.set(this, null);
    }

    public final void G0(long j10, @NotNull c cVar) {
        int iH0 = H0(j10, cVar);
        if (iH0 == 0) {
            if (N0(cVar)) {
                r0();
            }
        } else if (iH0 == 1) {
            q0(j10, cVar);
        } else if (iH0 != 2) {
            throw new IllegalStateException("unexpected result".toString());
        }
    }

    @NotNull
    protected final c1 I0(long j10, @NotNull Runnable runnable) {
        long jD = k1.d(j10);
        if (jD >= DurationKt.MAX_MILLIS) {
            return h2.f93449b;
        }
        kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f92358a;
        long jB = bVar != null ? bVar.b() : System.nanoTime();
        b bVar2 = new b(jD + jB, runnable);
        G0(jB, bVar2);
        return bVar2;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        v0(runnable);
    }

    @Override // kotlinx.coroutines.g1
    protected long f0() {
        c cVarJ;
        if (super.f0() == 0) {
            return 0L;
        }
        Object obj = f93440e.get(this);
        if (obj != null) {
            if (!(obj instanceof kotlinx.coroutines.internal.z)) {
                return obj == k1.f93587h ? Long.MAX_VALUE : 0L;
            }
            if (!((kotlinx.coroutines.internal.z) obj).m()) {
                return 0L;
            }
        }
        d dVar = (d) f93441f.get(this);
        if (dVar == null || (cVarJ = dVar.j()) == null) {
            return Long.MAX_VALUE;
        }
        long j10 = cVarJ.f93446b;
        kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f92358a;
        return RangesKt___RangesKt.coerceAtLeast(j10 - (bVar != null ? bVar.b() : System.nanoTime()), 0L);
    }

    @Override // kotlinx.coroutines.g1
    protected boolean j0() {
        if (!l0()) {
            return false;
        }
        d dVar = (d) f93441f.get(this);
        if (dVar != null && !dVar.i()) {
            return false;
        }
        Object obj = f93440e.get(this);
        if (obj != null) {
            if (obj instanceof kotlinx.coroutines.internal.z) {
                return ((kotlinx.coroutines.internal.z) obj).m();
            }
            if (obj != k1.f93587h) {
                return false;
            }
        }
        return true;
    }

    @Override // kotlinx.coroutines.t0
    public void m(long j10, @NotNull n<? super Unit> nVar) {
        long jD = k1.d(j10);
        if (jD < DurationKt.MAX_MILLIS) {
            kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f92358a;
            long jB = bVar != null ? bVar.b() : System.nanoTime();
            a aVar = new a(jD + jB, nVar);
            G0(jB, aVar);
            q.a(nVar, aVar);
        }
    }

    @Override // kotlinx.coroutines.g1
    public long m0() {
        c cVarM;
        if (n0()) {
            return 0L;
        }
        d dVar = (d) f93441f.get(this);
        if (dVar != null && !dVar.i()) {
            kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f92358a;
            long jB = bVar != null ? bVar.b() : System.nanoTime();
            do {
                synchronized (dVar) {
                    c cVarE = dVar.e();
                    cVarM = null;
                    if (cVarE != null) {
                        c cVar = cVarE;
                        cVarM = cVar.k(jB) ? w0(cVar) : false ? dVar.m(0) : null;
                    }
                }
            } while (cVarM != null);
        }
        Runnable runnableU0 = u0();
        if (runnableU0 == null) {
            return f0();
        }
        runnableU0.run();
        return 0L;
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    public c1 p(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        return t0.a.b(this, j10, runnable, coroutineContext);
    }

    @Override // kotlinx.coroutines.g1
    public void shutdown() {
        v2.f93840a.c();
        J0(true);
        t0();
        while (m0() <= 0) {
        }
        E0();
    }

    public void v0(@NotNull Runnable runnable) {
        if (w0(runnable)) {
            r0();
        } else {
            p0.f93618h.v0(runnable);
        }
    }

    @Override // kotlinx.coroutines.t0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object x(long j10, @NotNull Continuation<? super Unit> continuation) {
        return t0.a.a(this, j10, continuation);
    }
}
