package kotlinx.coroutines.scheduling;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.locks.LockSupport;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.enums.EnumEntries;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.l0;
import kotlinx.coroutines.internal.q0;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 2 Tasks.kt\nkotlinx/coroutines/scheduling/TasksKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 5 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 6 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 7 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n1#1,1051:1\n281#1:1054\n279#1:1055\n279#1:1056\n281#1:1057\n276#1:1063\n277#1,5:1064\n287#1:1070\n279#1:1071\n280#1:1072\n279#1:1078\n280#1:1079\n276#1:1080\n284#1:1081\n279#1:1082\n279#1:1085\n280#1:1086\n281#1:1087\n89#2:1052\n89#2:1069\n1#3:1053\n24#4,4:1058\n24#4,4:1073\n16#5:1062\n16#5:1077\n86#6:1083\n617#7:1084\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n*L\n277#1:1054\n284#1:1055\n285#1:1056\n294#1:1057\n343#1:1063\n372#1:1064,5\n395#1:1070\n442#1:1071\n443#1:1072\n479#1:1078\n480#1:1079\n486#1:1080\n495#1:1081\n495#1:1082\n576#1:1085\n577#1:1086\n578#1:1087\n115#1:1052\n392#1:1069\n343#1:1058,4\n475#1:1073,4\n343#1:1062\n475#1:1077\n512#1:1083\n519#1:1084\n*E\n"})
public final class CoroutineScheduler implements Executor, Closeable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    public static final a f93634i = new a(null);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f93635j = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "parkedWorkersStack$volatile");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f93636k = AtomicLongFieldUpdater.newUpdater(CoroutineScheduler.class, "controlState$volatile");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93637l = AtomicIntegerFieldUpdater.newUpdater(CoroutineScheduler.class, "_isTerminated$volatile");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final q0 f93638m = new q0("NOT_IN_STACK");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f93639n = -1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final int f93640o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final int f93641p = 1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final int f93642q = 21;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final long f93643r = 2097151;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final long f93644s = 4398044413952L;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f93645t = 42;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final long f93646u = 9223367638808264704L;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final int f93647v = 1;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final int f93648w = 2097150;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final long f93649x = 2097151;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static final long f93650y = -2097152;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static final long f93651z = 2097152;
    private volatile /* synthetic */ int _isTerminated$volatile;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    public final int f93652b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    public final int f93653c;
    private volatile /* synthetic */ long controlState$volatile;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    public final long f93654d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @JvmField
    @NotNull
    public final String f93655e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public final e f93656f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @JvmField
    @NotNull
    public final e f93657g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @JvmField
    @NotNull
    public final l0<c> f93658h;
    private volatile /* synthetic */ long parkedWorkersStack$volatile;

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0007\b\u0086\u0081\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007¨\u0006\b"}, d2 = {"Lkotlinx/coroutines/scheduling/CoroutineScheduler$WorkerState;", "", "(Ljava/lang/String;I)V", "CPU_ACQUIRED", "BLOCKING", "PARKING", "DORMANT", "TERMINATED", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
    public enum WorkerState {
        CPU_ACQUIRED,
        BLOCKING,
        PARKING,
        DORMANT,
        TERMINATED;

        private static final /* synthetic */ EnumEntries $ENTRIES = EnumEntriesKt.enumEntries(values());

        @NotNull
        public static EnumEntries<WorkerState> getEntries() {
            return $ENTRIES;
        }
    }

    public static final class a {
        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private a() {
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[WorkerState.values().length];
            try {
                iArr[WorkerState.PARKING.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[WorkerState.BLOCKING.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[WorkerState.CPU_ACQUIRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[WorkerState.DORMANT.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[WorkerState.TERMINATED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public CoroutineScheduler(int i10, int i11, long j10, @NotNull String str) {
        this.f93652b = i10;
        this.f93653c = i11;
        this.f93654d = j10;
        this.f93655e = str;
        if (!(i10 >= 1)) {
            throw new IllegalArgumentException(("Core pool size " + i10 + " should be at least 1").toString());
        }
        if (!(i11 >= i10)) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should be greater than or equals to core pool size " + i10).toString());
        }
        if (!(i11 <= 2097150)) {
            throw new IllegalArgumentException(("Max pool size " + i11 + " should not exceed maximal supported number of threads 2097150").toString());
        }
        if (!(j10 > 0)) {
            throw new IllegalArgumentException(("Idle worker keep alive time " + j10 + " must be positive").toString());
        }
        this.f93656f = new e();
        this.f93657g = new e();
        this.f93658h = new l0<>((i10 + 1) * 2);
        this.controlState$volatile = ((long) i10) << 42;
        this._isTerminated$volatile = 0;
    }

    private final /* synthetic */ int J() {
        return this._isTerminated$volatile;
    }

    private final long L() {
        return f93636k.addAndGet(this, 2097152L);
    }

    private final int M() {
        return (int) (f93636k.incrementAndGet(this) & 2097151);
    }

    private final /* synthetic */ void O(Object obj, AtomicLongFieldUpdater atomicLongFieldUpdater, Function1<? super Long, Unit> function1) {
        while (true) {
            function1.invoke(Long.valueOf(atomicLongFieldUpdater.get(obj)));
        }
    }

    private final int P(c cVar) {
        Object objK = cVar.k();
        while (objK != f93638m) {
            if (objK == null) {
                return 0;
            }
            c cVar2 = (c) objK;
            int iJ = cVar2.j();
            if (iJ != 0) {
                return iJ;
            }
            objK = cVar2.k();
        }
        return -1;
    }

    private final c Q() {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93635j;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            c cVarB = this.f93658h.b((int) (2097151 & j10));
            if (cVarB == null) {
                return null;
            }
            long j11 = (2097152 + j10) & f93650y;
            int iP = P(cVarB);
            if (iP >= 0 && f93635j.compareAndSet(this, j10, ((long) iP) | j11)) {
                cVarB.y(f93638m);
                return cVarB;
            }
        }
    }

    private final boolean c(j jVar) {
        return jVar.f93689c.s() == 1 ? this.f93657g.a(jVar) : this.f93656f.a(jVar);
    }

    private final long c0() {
        return q().addAndGet(this, 4398046511104L);
    }

    private final int e(long j10) {
        return (int) ((j10 & f93644s) >> 21);
    }

    private final /* synthetic */ void e0(long j10) {
        this.controlState$volatile = j10;
    }

    private final int f() {
        synchronized (this.f93658h) {
            if (isTerminated()) {
                return -1;
            }
            long j10 = f93636k.get(this);
            int i10 = (int) (j10 & 2097151);
            int iCoerceAtLeast = RangesKt___RangesKt.coerceAtLeast(i10 - ((int) ((j10 & f93644s) >> 21)), 0);
            if (iCoerceAtLeast >= this.f93652b) {
                return 0;
            }
            if (i10 >= this.f93653c) {
                return 0;
            }
            int i11 = ((int) (q().get(this) & 2097151)) + 1;
            if (!(i11 > 0 && this.f93658h.b(i11) == null)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            c cVar = new c(this, i11);
            this.f93658h.c(i11, cVar);
            if (!(i11 == ((int) (2097151 & f93636k.incrementAndGet(this))))) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            int i12 = iCoerceAtLeast + 1;
            cVar.start();
            return i12;
        }
    }

    private final /* synthetic */ void f0(long j10) {
        this.parkedWorkersStack$volatile = j10;
    }

    private final /* synthetic */ void g0(int i10) {
        this._isTerminated$volatile = i10;
    }

    private final int h(long j10) {
        return (int) (j10 & 2097151);
    }

    private final c j() {
        Thread threadCurrentThread = Thread.currentThread();
        c cVar = threadCurrentThread instanceof c ? (c) threadCurrentThread : null;
        if (cVar == null || !Intrinsics.areEqual(CoroutineScheduler.this, this)) {
            return null;
        }
        return cVar;
    }

    private final void j0(long j10, boolean z10) {
        if (z10 || p0() || n0(j10)) {
            return;
        }
        p0();
    }

    private final void k() {
        q().addAndGet(this, f93650y);
    }

    private final int l() {
        return (int) (q().getAndDecrement(this) & 2097151);
    }

    private final j l0(c cVar, j jVar, boolean z10) {
        if (cVar == null || cVar.f93662d == WorkerState.TERMINATED) {
            return jVar;
        }
        if (jVar.f93689c.s() == 0 && cVar.f93662d == WorkerState.BLOCKING) {
            return jVar;
        }
        cVar.f93666h = true;
        return cVar.f93660b.a(jVar, z10);
    }

    private final boolean m0() {
        long j10;
        AtomicLongFieldUpdater atomicLongFieldUpdaterQ = q();
        do {
            j10 = atomicLongFieldUpdaterQ.get(this);
            if (((int) ((f93646u & j10) >> 42)) == 0) {
                return false;
            }
        } while (!q().compareAndSet(this, j10, j10 - 4398046511104L));
        return true;
    }

    public static /* synthetic */ void n(CoroutineScheduler coroutineScheduler, Runnable runnable, k kVar, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            kVar = n.f93700i;
        }
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        coroutineScheduler.m(runnable, kVar, z10);
    }

    private final boolean n0(long j10) {
        if (RangesKt___RangesKt.coerceAtLeast(((int) (2097151 & j10)) - ((int) ((j10 & f93644s) >> 21)), 0) < this.f93652b) {
            int iF = f();
            if (iF == 1 && this.f93652b > 1) {
                f();
            }
            if (iF > 0) {
                return true;
            }
        }
        return false;
    }

    private final int o() {
        return (int) ((f93636k.get(this) & f93646u) >> 42);
    }

    static /* synthetic */ boolean o0(CoroutineScheduler coroutineScheduler, long j10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = f93636k.get(coroutineScheduler);
        }
        return coroutineScheduler.n0(j10);
    }

    private final /* synthetic */ long p() {
        return this.controlState$volatile;
    }

    private final boolean p0() {
        c cVarQ;
        do {
            cVarQ = Q();
            if (cVarQ == null) {
                return false;
            }
        } while (!c.f93659j.compareAndSet(cVarQ, -1, 0));
        LockSupport.unpark(cVarQ);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final /* synthetic */ AtomicLongFieldUpdater q() {
        return f93636k;
    }

    private final int s() {
        return (int) (q().get(this) & 2097151);
    }

    private final /* synthetic */ long z() {
        return this.parkedWorkersStack$volatile;
    }

    public final boolean R(@NotNull c cVar) {
        long j10;
        long j11;
        int iJ;
        if (cVar.k() != f93638m) {
            return false;
        }
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93635j;
        do {
            j10 = atomicLongFieldUpdater.get(this);
            j11 = (2097152 + j10) & f93650y;
            iJ = cVar.j();
            cVar.y(this.f93658h.b((int) (2097151 & j10)));
        } while (!f93635j.compareAndSet(this, j10, j11 | ((long) iJ)));
        return true;
    }

    public final void a0(@NotNull c cVar, int i10, int i11) {
        AtomicLongFieldUpdater atomicLongFieldUpdater = f93635j;
        while (true) {
            long j10 = atomicLongFieldUpdater.get(this);
            int iP = (int) (2097151 & j10);
            long j11 = (2097152 + j10) & f93650y;
            if (iP == i10) {
                iP = i11 == 0 ? P(cVar) : i11;
            }
            if (iP >= 0 && f93635j.compareAndSet(this, j10, j11 | ((long) iP))) {
                return;
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws InterruptedException {
        i0(10000L);
    }

    public final int d(long j10) {
        return (int) ((j10 & f93646u) >> 42);
    }

    public final void d0(@NotNull j jVar) {
        kotlinx.coroutines.b bVar;
        try {
            jVar.run();
            bVar = kotlinx.coroutines.c.f92358a;
            if (bVar == null) {
                return;
            }
        } catch (Throwable th) {
            try {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, th);
                bVar = kotlinx.coroutines.c.f92358a;
                if (bVar == null) {
                    return;
                }
            } catch (Throwable th2) {
                kotlinx.coroutines.b bVar2 = kotlinx.coroutines.c.f92358a;
                if (bVar2 != null) {
                    bVar2.f();
                }
                throw th2;
            }
        }
        bVar.f();
    }

    @Override // java.util.concurrent.Executor
    public void execute(@NotNull Runnable runnable) {
        n(this, runnable, null, false, 6, null);
    }

    @NotNull
    public final j g(@NotNull Runnable runnable, @NotNull k kVar) {
        long jA = n.f93697f.a();
        if (!(runnable instanceof j)) {
            return new m(runnable, jA, kVar);
        }
        j jVar = (j) runnable;
        jVar.f93688b = jA;
        jVar.f93689c = kVar;
        return jVar;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x005f  */
    public final void i0(long j10) throws InterruptedException {
        int i10;
        j jVarJ;
        if (f93637l.compareAndSet(this, 0, 1)) {
            c cVarJ = j();
            synchronized (this.f93658h) {
                i10 = (int) (q().get(this) & 2097151);
            }
            if (1 <= i10) {
                int i11 = 1;
                while (true) {
                    c cVarB = this.f93658h.b(i11);
                    Intrinsics.checkNotNull(cVarB);
                    c cVar = cVarB;
                    if (cVar != cVarJ) {
                        while (cVar.getState() != Thread.State.TERMINATED) {
                            LockSupport.unpark(cVar);
                            cVar.join(j10);
                        }
                        cVar.f93660b.o(this.f93657g);
                    }
                    if (i11 == i10) {
                        break;
                    } else {
                        i11++;
                    }
                }
            }
            this.f93657g.b();
            this.f93656f.b();
            while (true) {
                if (cVarJ == null) {
                    jVarJ = this.f93656f.j();
                    if (jVarJ == null && (jVarJ = this.f93657g.j()) == null) {
                        break;
                    }
                } else {
                    jVarJ = cVarJ.i(true);
                    if (jVarJ == null) {
                        jVarJ = this.f93656f.j();
                        if (jVarJ == null) {
                            continue;
                        }
                    } else {
                        continue;
                    }
                }
                d0(jVarJ);
            }
            if (cVarJ != null) {
                cVarJ.C(WorkerState.TERMINATED);
            }
            f93635j.set(this, 0L);
            f93636k.set(this, 0L);
        }
    }

    public final boolean isTerminated() {
        return f93637l.get(this) != 0;
    }

    public final void k0() {
        if (p0() || o0(this, 0L, 1, null)) {
            return;
        }
        p0();
    }

    public final void m(@NotNull Runnable runnable, @NotNull k kVar, boolean z10) {
        kotlinx.coroutines.b bVar = kotlinx.coroutines.c.f92358a;
        if (bVar != null) {
            bVar.e();
        }
        j jVarG = g(runnable, kVar);
        boolean z11 = false;
        boolean z12 = jVarG.f93689c.s() == 1;
        long jAddAndGet = z12 ? f93636k.addAndGet(this, 2097152L) : 0L;
        c cVarJ = j();
        j jVarL0 = l0(cVarJ, jVarG, z10);
        if (jVarL0 != null && !c(jVarL0)) {
            throw new RejectedExecutionException(this.f93655e + " was terminated");
        }
        if (z10 && cVarJ != null) {
            z11 = true;
        }
        if (z12) {
            j0(jAddAndGet, z11);
        } else {
            if (z11) {
                return;
            }
            k0();
        }
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList();
        int iA = this.f93658h.a();
        int i10 = 0;
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        int i14 = 0;
        for (int i15 = 1; i15 < iA; i15++) {
            c cVarB = this.f93658h.b(i15);
            if (cVarB != null) {
                int iN = cVarB.f93660b.n();
                int i16 = b.$EnumSwitchMapping$0[cVarB.f93662d.ordinal()];
                if (i16 == 1) {
                    i12++;
                } else if (i16 == 2) {
                    i11++;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(iN);
                    sb2.append('b');
                    arrayList.add(sb2.toString());
                } else if (i16 == 3) {
                    i10++;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(iN);
                    sb3.append('c');
                    arrayList.add(sb3.toString());
                } else if (i16 == 4) {
                    i13++;
                    if (iN > 0) {
                        StringBuilder sb4 = new StringBuilder();
                        sb4.append(iN);
                        sb4.append('d');
                        arrayList.add(sb4.toString());
                    }
                } else if (i16 == 5) {
                    i14++;
                }
            }
        }
        long j10 = f93636k.get(this);
        return this.f93655e + '@' + o0.b(this) + "[Pool Size {core = " + this.f93652b + ", max = " + this.f93653c + "}, Worker States {CPU = " + i10 + ", blocking = " + i11 + ", parked = " + i12 + ", dormant = " + i13 + ", terminated = " + i14 + "}, running workers queues = " + arrayList + ", global CPU queue size = " + this.f93656f.c() + ", global blocking queue size = " + this.f93657g.c() + ", Control State {created workers= " + ((int) (2097151 & j10)) + ", blocking tasks = " + ((int) ((f93644s & j10) >> 21)) + ", CPUs acquired = " + (this.f93652b - ((int) ((f93646u & j10) >> 42))) + "}]";
    }

    @SourceDebugExtension({"SMAP\nCoroutineScheduler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n+ 2 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 Tasks.kt\nkotlinx/coroutines/scheduling/Task\n+ 5 Synchronized.common.kt\nkotlinx/coroutines/internal/Synchronized_commonKt\n+ 6 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n*L\n1#1,1051:1\n293#2,2:1052\n281#2:1054\n295#2,4:1055\n300#2:1059\n290#2,2:1060\n290#2,2:1064\n276#2:1071\n285#2:1072\n279#2:1073\n276#2:1074\n1#3:1062\n86#4:1063\n24#5,4:1066\n16#6:1070\n*S KotlinDebug\n*F\n+ 1 CoroutineScheduler.kt\nkotlinx/coroutines/scheduling/CoroutineScheduler$Worker\n*L\n682#1:1052,2\n682#1:1054\n682#1:1055,4\n697#1:1059\n771#1:1060,2\n825#1:1064,2\n873#1:1071\n899#1:1072\n899#1:1073\n981#1:1074\n808#1:1063\n869#1:1066,4\n869#1:1070\n*E\n"})
    public final class c extends Thread {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f93659j = AtomicIntegerFieldUpdater.newUpdater(c.class, "workerCtl$volatile");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @JvmField
        @NotNull
        public final p f93660b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @NotNull
        private final Ref.ObjectRef<j> f93661c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @JvmField
        @NotNull
        public WorkerState f93662d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f93663e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f93664f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f93665g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @JvmField
        public boolean f93666h;
        private volatile int indexInArray;

        @Nullable
        private volatile Object nextParkedWorker;
        private volatile /* synthetic */ int workerCtl$volatile;

        private c() {
            setDaemon(true);
            setContextClassLoader(CoroutineScheduler.this.getClass().getClassLoader());
            this.f93660b = new p();
            this.f93661c = new Ref.ObjectRef<>();
            this.f93662d = WorkerState.DORMANT;
            this.nextParkedWorker = CoroutineScheduler.f93638m;
            int iNanoTime = (int) System.nanoTime();
            this.f93665g = iNanoTime == 0 ? 42 : iNanoTime;
        }

        private final boolean A() {
            boolean z10;
            if (this.f93662d == WorkerState.CPU_ACQUIRED) {
                return true;
            }
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            AtomicLongFieldUpdater atomicLongFieldUpdaterQ = CoroutineScheduler.q();
            while (true) {
                long j10 = atomicLongFieldUpdaterQ.get(coroutineScheduler);
                if (((int) ((CoroutineScheduler.f93646u & j10) >> 42)) == 0) {
                    z10 = false;
                    break;
                }
                if (CoroutineScheduler.q().compareAndSet(coroutineScheduler, j10, j10 - 4398046511104L)) {
                    z10 = true;
                    break;
                }
            }
            if (!z10) {
                return false;
            }
            this.f93662d = WorkerState.CPU_ACQUIRED;
            return true;
        }

        private final void B() {
            if (!p()) {
                CoroutineScheduler.this.R(this);
                return;
            }
            f93659j.set(this, -1);
            while (p() && f93659j.get(this) == -1 && !CoroutineScheduler.this.isTerminated() && this.f93662d != WorkerState.TERMINATED) {
                C(WorkerState.PARKING);
                Thread.interrupted();
                s();
            }
        }

        private final j D(int i10) {
            int i11 = (int) (CoroutineScheduler.q().get(CoroutineScheduler.this) & 2097151);
            if (i11 < 2) {
                return null;
            }
            int iR = r(i11);
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            long jMin = Long.MAX_VALUE;
            for (int i12 = 0; i12 < i11; i12++) {
                iR++;
                if (iR > i11) {
                    iR = 1;
                }
                c cVarB = coroutineScheduler.f93658h.b(iR);
                if (cVarB != null && cVarB != this) {
                    long jB = cVarB.f93660b.B(i10, this.f93661c);
                    if (jB == -1) {
                        Ref.ObjectRef<j> objectRef = this.f93661c;
                        j jVar = objectRef.element;
                        objectRef.element = null;
                        return jVar;
                    }
                    if (jB > 0) {
                        jMin = Math.min(jMin, jB);
                    }
                }
            }
            if (jMin == Long.MAX_VALUE) {
                jMin = 0;
            }
            this.f93664f = jMin;
            return null;
        }

        private final void E() {
            CoroutineScheduler coroutineScheduler = CoroutineScheduler.this;
            synchronized (coroutineScheduler.f93658h) {
                if (coroutineScheduler.isTerminated()) {
                    return;
                }
                if (((int) (CoroutineScheduler.q().get(coroutineScheduler) & 2097151)) <= coroutineScheduler.f93652b) {
                    return;
                }
                if (f93659j.compareAndSet(this, -1, 1)) {
                    int i10 = this.indexInArray;
                    x(0);
                    coroutineScheduler.a0(this, i10, 0);
                    int andDecrement = (int) (CoroutineScheduler.q().getAndDecrement(coroutineScheduler) & 2097151);
                    if (andDecrement != i10) {
                        c cVarB = coroutineScheduler.f93658h.b(andDecrement);
                        Intrinsics.checkNotNull(cVarB);
                        c cVar = cVarB;
                        coroutineScheduler.f93658h.c(i10, cVar);
                        cVar.x(i10);
                        coroutineScheduler.a0(cVar, andDecrement, i10);
                    }
                    coroutineScheduler.f93658h.c(andDecrement, null);
                    Unit unit = Unit.INSTANCE;
                    this.f93662d = WorkerState.TERMINATED;
                }
            }
        }

        private final void b(int i10) {
            if (i10 == 0) {
                return;
            }
            CoroutineScheduler.q().addAndGet(CoroutineScheduler.this, CoroutineScheduler.f93650y);
            if (this.f93662d != WorkerState.TERMINATED) {
                this.f93662d = WorkerState.DORMANT;
            }
        }

        private final void c(int i10) {
            if (i10 != 0 && C(WorkerState.BLOCKING)) {
                CoroutineScheduler.this.k0();
            }
        }

        private final void d(j jVar) {
            int iS = jVar.f93689c.s();
            o(iS);
            c(iS);
            CoroutineScheduler.this.d0(jVar);
            b(iS);
        }

        private final j e(boolean z10) {
            j jVarT;
            j jVarT2;
            if (z10) {
                boolean z11 = r(CoroutineScheduler.this.f93652b * 2) == 0;
                if (z11 && (jVarT2 = t()) != null) {
                    return jVarT2;
                }
                j jVarP = this.f93660b.p();
                if (jVarP != null) {
                    return jVarP;
                }
                if (!z11 && (jVarT = t()) != null) {
                    return jVarT;
                }
            } else {
                j jVarT3 = t();
                if (jVarT3 != null) {
                    return jVarT3;
                }
            }
            return D(3);
        }

        private final j g() {
            j jVarQ = this.f93660b.q();
            if (jVarQ != null) {
                return jVarQ;
            }
            j jVarJ = CoroutineScheduler.this.f93657g.j();
            return jVarJ == null ? D(1) : jVarJ;
        }

        private final j h() {
            j jVarS = this.f93660b.s();
            if (jVarS != null) {
                return jVarS;
            }
            j jVarJ = CoroutineScheduler.this.f93657g.j();
            return jVarJ == null ? D(2) : jVarJ;
        }

        private final /* synthetic */ int m() {
            return this.workerCtl$volatile;
        }

        private final void o(int i10) {
            this.f93663e = 0L;
            if (this.f93662d == WorkerState.PARKING) {
                this.f93662d = WorkerState.BLOCKING;
            }
        }

        private final boolean p() {
            return this.nextParkedWorker != CoroutineScheduler.f93638m;
        }

        private final void s() {
            if (this.f93663e == 0) {
                this.f93663e = System.nanoTime() + CoroutineScheduler.this.f93654d;
            }
            LockSupport.parkNanos(CoroutineScheduler.this.f93654d);
            if (System.nanoTime() - this.f93663e >= 0) {
                this.f93663e = 0L;
                E();
            }
        }

        private final j t() {
            if (r(2) == 0) {
                j jVarJ = CoroutineScheduler.this.f93656f.j();
                return jVarJ != null ? jVarJ : CoroutineScheduler.this.f93657g.j();
            }
            j jVarJ2 = CoroutineScheduler.this.f93657g.j();
            return jVarJ2 != null ? jVarJ2 : CoroutineScheduler.this.f93656f.j();
        }

        private final void w() {
            loop0: while (true) {
                boolean z10 = false;
                while (true) {
                    if (CoroutineScheduler.this.isTerminated() || this.f93662d == WorkerState.TERMINATED) {
                        break loop0;
                    }
                    j jVarI = i(this.f93666h);
                    if (jVarI != null) {
                        this.f93664f = 0L;
                        d(jVarI);
                        break;
                    }
                    this.f93666h = false;
                    if (this.f93664f == 0) {
                        B();
                    } else {
                        if (z10) {
                            C(WorkerState.PARKING);
                            Thread.interrupted();
                            LockSupport.parkNanos(this.f93664f);
                            this.f93664f = 0L;
                            break;
                        }
                        z10 = true;
                    }
                }
            }
            C(WorkerState.TERMINATED);
        }

        private final /* synthetic */ void z(int i10) {
            this.workerCtl$volatile = i10;
        }

        public final boolean C(@NotNull WorkerState workerState) {
            WorkerState workerState2 = this.f93662d;
            boolean z10 = workerState2 == WorkerState.CPU_ACQUIRED;
            if (z10) {
                CoroutineScheduler.q().addAndGet(CoroutineScheduler.this, 4398046511104L);
            }
            if (workerState2 != workerState) {
                this.f93662d = workerState;
            }
            return z10;
        }

        @Nullable
        public final j i(boolean z10) {
            return A() ? e(z10) : g();
        }

        public final int j() {
            return this.indexInArray;
        }

        @Nullable
        public final Object k() {
            return this.nextParkedWorker;
        }

        @NotNull
        public final CoroutineScheduler l() {
            return CoroutineScheduler.this;
        }

        public final boolean q() {
            return this.f93662d == WorkerState.BLOCKING;
        }

        public final int r(int i10) {
            int i11 = this.f93665g;
            int i12 = i11 ^ (i11 << 13);
            int i13 = i12 ^ (i12 >> 17);
            int i14 = i13 ^ (i13 << 5);
            this.f93665g = i14;
            int i15 = i10 - 1;
            return (i15 & i10) == 0 ? i14 & i15 : (i14 & Integer.MAX_VALUE) % i10;
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            w();
        }

        public final long v() {
            boolean z10 = this.f93662d == WorkerState.CPU_ACQUIRED;
            j jVarH = z10 ? h() : g();
            if (jVarH == null) {
                long j10 = this.f93664f;
                if (j10 == 0) {
                    return -1L;
                }
                return j10;
            }
            CoroutineScheduler.this.d0(jVarH);
            if (!z10) {
                CoroutineScheduler.q().addAndGet(CoroutineScheduler.this, CoroutineScheduler.f93650y);
            }
            return 0L;
        }

        public final void x(int i10) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(CoroutineScheduler.this.f93655e);
            sb2.append("-worker-");
            sb2.append(i10 == 0 ? "TERMINATED" : String.valueOf(i10));
            setName(sb2.toString());
            this.indexInArray = i10;
        }

        public final void y(@Nullable Object obj) {
            this.nextParkedWorker = obj;
        }

        public c(CoroutineScheduler coroutineScheduler, int i10) {
            this();
            x(i10);
        }
    }

    public /* synthetic */ CoroutineScheduler(int i10, int i11, long j10, String str, int i12, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, i11, (i12 & 4) != 0 ? n.f93696e : j10, (i12 & 8) != 0 ? n.f93692a : str);
    }
}
