package kotlinx.coroutines.sync;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugProbesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.f3;
import kotlinx.coroutines.internal.f;
import kotlinx.coroutines.internal.n0;
import kotlinx.coroutines.internal.o0;
import kotlinx.coroutines.n;
import kotlinx.coroutines.o;
import kotlinx.coroutines.q;
import kotlinx.coroutines.selects.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nSemaphore.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuation.kt\nkotlinx/coroutines/CancellableContinuationKt\n+ 4 ConcurrentLinkedList.kt\nkotlinx/coroutines/internal/ConcurrentLinkedListKt\n+ 5 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreSegment\n*L\n1#1,392:1\n200#1,10:406\n200#1,10:416\n1#2:393\n336#3,12:394\n68#4,3:426\n42#4,8:429\n68#4,3:440\n42#4,8:443\n370#5:437\n370#5:438\n362#5:439\n373#5:451\n362#5:452\n370#5:453\n*S KotlinDebug\n*F\n+ 1 Semaphore.kt\nkotlinx/coroutines/sync/SemaphoreImpl\n*L\n192#1:406,10\n216#1:416,10\n182#1:394,12\n284#1:426,3\n284#1:429,8\n317#1:440,3\n317#1:443,8\n288#1:437\n294#1:438\n308#1:439\n323#1:451\n329#1:452\n332#1:453\n*E\n"})
public class SemaphoreImpl implements b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93813c = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "head$volatile");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f93814d = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "deqIdx$volatile");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93815e = AtomicReferenceFieldUpdater.newUpdater(SemaphoreImpl.class, Object.class, "tail$volatile");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicLongFieldUpdater f93816f = AtomicLongFieldUpdater.newUpdater(SemaphoreImpl.class, "enqIdx$volatile");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93817g = AtomicIntegerFieldUpdater.newUpdater(SemaphoreImpl.class, "_availablePermits$volatile");
    private volatile /* synthetic */ int _availablePermits$volatile;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f93818a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Function1<Throwable, Unit> f93819b;
    private volatile /* synthetic */ long deqIdx$volatile;
    private volatile /* synthetic */ long enqIdx$volatile;
    private volatile /* synthetic */ Object head$volatile;
    private volatile /* synthetic */ Object tail$volatile;

    public SemaphoreImpl(int i10, int i11) {
        this.f93818a = i10;
        if (!(i10 > 0)) {
            throw new IllegalArgumentException(("Semaphore should have at least 1 permit, but had " + i10).toString());
        }
        if (!(i11 >= 0 && i11 <= i10)) {
            throw new IllegalArgumentException(("The number of acquired permits should be in 0.." + i10).toString());
        }
        c cVar = new c(0L, null, 2);
        this.head$volatile = cVar;
        this.tail$volatile = cVar;
        this._availablePermits$volatile = i10 - i11;
        this.f93819b = new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.sync.SemaphoreImpl$onCancellationRelease$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                invoke2(th);
                return Unit.INSTANCE;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(@NotNull Throwable th) {
                this.f93821b.release();
            }
        };
    }

    private final /* synthetic */ int A() {
        return this._availablePermits$volatile;
    }

    private final /* synthetic */ void D(long j10) {
        this.deqIdx$volatile = j10;
    }

    private final /* synthetic */ void E(long j10) {
        this.enqIdx$volatile = j10;
    }

    private final /* synthetic */ void F(Object obj) {
        this.head$volatile = obj;
    }

    private final /* synthetic */ void G(Object obj) {
        this.tail$volatile = obj;
    }

    private final /* synthetic */ void H(int i10) {
        this._availablePermits$volatile = i10;
    }

    private final boolean I(Object obj) {
        if (!(obj instanceof n)) {
            if (obj instanceof j) {
                return ((j) obj).i(this, Unit.INSTANCE);
            }
            throw new IllegalStateException(("unexpected: " + obj).toString());
        }
        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
        n nVar = (n) obj;
        Object objH = nVar.H(Unit.INSTANCE, null, this.f93819b);
        if (objH == null) {
            return false;
        }
        nVar.B(objH);
        return true;
    }

    private final boolean J() {
        Object objG;
        boolean z10;
        c cVar = (c) f93813c.get(this);
        long andIncrement = f93814d.getAndIncrement(this);
        long j10 = andIncrement / ((long) SemaphoreKt.f93828f);
        SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 semaphoreImpl$tryResumeNextFromQueue$createNewSegment$1 = SemaphoreImpl$tryResumeNextFromQueue$createNewSegment$1.f93822b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93813c;
        do {
            objG = f.g(cVar, j10, semaphoreImpl$tryResumeNextFromQueue$createNewSegment$1);
            if (o0.h(objG)) {
                break;
            }
            n0 n0VarF = o0.f(objG);
            while (true) {
                n0 n0Var = (n0) atomicReferenceFieldUpdater.get(this);
                if (n0Var.f93516d < n0VarF.f93516d) {
                    if (!n0VarF.C()) {
                        z10 = false;
                        break;
                    }
                    if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, n0Var, n0VarF)) {
                        if (n0Var.v()) {
                            n0Var.q();
                        }
                    } else if (n0VarF.v()) {
                        n0VarF.q();
                    }
                }
                z10 = true;
                break;
            }
        } while (!z10);
        c cVar2 = (c) o0.f(objG);
        cVar2.c();
        if (cVar2.f93516d > j10) {
            return false;
        }
        int i10 = (int) (andIncrement % ((long) SemaphoreKt.f93828f));
        Object andSet = cVar2.F().getAndSet(i10, SemaphoreKt.f93824b);
        if (andSet != null) {
            if (andSet == SemaphoreKt.f93827e) {
                return false;
            }
            return I(andSet);
        }
        int i11 = SemaphoreKt.f93823a;
        for (int i12 = 0; i12 < i11; i12++) {
            if (cVar2.F().get(i10) == SemaphoreKt.f93825c) {
                return true;
            }
        }
        return !io.netty.util.a.a(cVar2.F(), i10, SemaphoreKt.f93824b, SemaphoreKt.f93826d);
    }

    private final <W> void l(W w10, Function1<? super W, Boolean> function1, Function1<? super W, Unit> function2) {
        while (r() <= 0) {
            if (function1.invoke(w10).booleanValue()) {
                return;
            }
        }
        function2.invoke(w10);
    }

    static /* synthetic */ Object n(SemaphoreImpl semaphoreImpl, Continuation<? super Unit> continuation) {
        if (semaphoreImpl.r() > 0) {
            return Unit.INSTANCE;
        }
        Object objO = semaphoreImpl.o(continuation);
        return objO == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objO : Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object o(Continuation<? super Unit> continuation) {
        o oVarB = q.b(IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation));
        try {
            if (!p(oVarB)) {
                m(oVarB);
            }
            Object objZ = oVarB.z();
            if (objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED()) {
                DebugProbesKt.probeCoroutineSuspended(continuation);
            }
            return objZ == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objZ : Unit.INSTANCE;
        } catch (Throwable th) {
            oVarB.Y();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean p(f3 f3Var) {
        Object objG;
        boolean z10;
        c cVar = (c) f93815e.get(this);
        long andIncrement = f93816f.getAndIncrement(this);
        SemaphoreImpl$addAcquireToQueue$createNewSegment$1 semaphoreImpl$addAcquireToQueue$createNewSegment$1 = SemaphoreImpl$addAcquireToQueue$createNewSegment$1.f93820b;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93815e;
        long j10 = andIncrement / ((long) SemaphoreKt.f93828f);
        do {
            objG = f.g(cVar, j10, semaphoreImpl$addAcquireToQueue$createNewSegment$1);
            if (!o0.h(objG)) {
                n0 n0VarF = o0.f(objG);
                while (true) {
                    n0 n0Var = (n0) atomicReferenceFieldUpdater.get(this);
                    if (n0Var.f93516d < n0VarF.f93516d) {
                        if (!n0VarF.C()) {
                            z10 = false;
                            break;
                        }
                        if (androidx.concurrent.futures.a.a(atomicReferenceFieldUpdater, this, n0Var, n0VarF)) {
                            if (n0Var.v()) {
                                n0Var.q();
                            }
                        } else if (n0VarF.v()) {
                            n0VarF.q();
                        }
                    }
                    z10 = true;
                    break;
                }
            } else {
                break;
            }
        } while (!z10);
        c cVar2 = (c) o0.f(objG);
        int i10 = (int) (andIncrement % ((long) SemaphoreKt.f93828f));
        if (io.netty.util.a.a(cVar2.F(), i10, null, f3Var)) {
            f3Var.c(cVar2, i10);
            return true;
        }
        if (!io.netty.util.a.a(cVar2.F(), i10, SemaphoreKt.f93824b, SemaphoreKt.f93825c)) {
            return false;
        }
        if (f3Var instanceof n) {
            Intrinsics.checkNotNull(f3Var, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Unit>");
            ((n) f3Var).p(Unit.INSTANCE, this.f93819b);
            return true;
        }
        if (f3Var instanceof j) {
            ((j) f3Var).f(Unit.INSTANCE);
            return true;
        }
        throw new IllegalStateException(("unexpected: " + f3Var).toString());
    }

    private final void q() {
        int i10;
        do {
            i10 = f93817g.get(this);
            if (i10 <= this.f93818a) {
                return;
            }
        } while (!f93817g.compareAndSet(this, i10, this.f93818a));
    }

    private final int r() {
        int andDecrement;
        do {
            andDecrement = f93817g.getAndDecrement(this);
        } while (andDecrement > this.f93818a);
        return andDecrement;
    }

    private final /* synthetic */ long s() {
        return this.deqIdx$volatile;
    }

    private final /* synthetic */ long u() {
        return this.enqIdx$volatile;
    }

    private final /* synthetic */ Object w() {
        return this.head$volatile;
    }

    private final /* synthetic */ Object y() {
        return this.tail$volatile;
    }

    protected final void C(@NotNull j<?> jVar, @Nullable Object obj) {
        while (r() <= 0) {
            Intrinsics.checkNotNull(jVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (p((f3) jVar)) {
                return;
            }
        }
        jVar.f(Unit.INSTANCE);
    }

    @Override // kotlinx.coroutines.sync.b
    public boolean a() {
        while (true) {
            int i10 = f93817g.get(this);
            if (i10 > this.f93818a) {
                q();
            } else {
                if (i10 <= 0) {
                    return false;
                }
                if (f93817g.compareAndSet(this, i10, i10 - 1)) {
                    return true;
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.b
    public int f() {
        return Math.max(f93817g.get(this), 0);
    }

    @Override // kotlinx.coroutines.sync.b
    @Nullable
    public Object g(@NotNull Continuation<? super Unit> continuation) {
        return n(this, continuation);
    }

    protected final void m(@NotNull n<? super Unit> nVar) {
        while (r() <= 0) {
            Intrinsics.checkNotNull(nVar, "null cannot be cast to non-null type kotlinx.coroutines.Waiter");
            if (p((f3) nVar)) {
                return;
            }
        }
        nVar.p(Unit.INSTANCE, this.f93819b);
    }

    @Override // kotlinx.coroutines.sync.b
    public void release() {
        do {
            int andIncrement = f93817g.getAndIncrement(this);
            if (andIncrement >= this.f93818a) {
                q();
                throw new IllegalStateException(("The number of released permits cannot be greater than " + this.f93818a).toString());
            }
            if (andIncrement >= 0) {
                return;
            }
        } while (!J());
    }
}
