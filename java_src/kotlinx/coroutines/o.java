package kotlinx.coroutines;

import com.bykv.vk.component.ttvideo.player.C;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.KotlinNothingValueException;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmName;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nCancellableContinuationImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImplKt\n+ 4 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,681:1\n226#1,10:685\n226#1,10:695\n226#1,10:706\n1#2:682\n20#3:683\n20#3:684\n18#3:705\n17#3:716\n18#3,3:717\n17#3:720\n18#3,3:721\n18#3:728\n17#3,4:729\n57#4,2:724\n57#4,2:726\n57#4,2:733\n*S KotlinDebug\n*F\n+ 1 CancellableContinuationImpl.kt\nkotlinx/coroutines/CancellableContinuationImpl\n*L\n242#1:685,10\n245#1:695,10\n250#1:706,10\n68#1:683\n154#1:684\n248#1:705\n273#1:716\n274#1:717,3\n283#1:720\n284#1:721,3\n385#1:728\n388#1:729,4\n325#1:724,2\n335#1:726,2\n605#1:733,2\n*E\n"})
public class o<T> extends w0<T> implements n<T>, CoroutineStackFrame, f3 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93605g = AtomicIntegerFieldUpdater.newUpdater(o.class, "_decisionAndIndex$volatile");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93606h = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_state$volatile");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93607i = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_parentHandle$volatile");
    private volatile /* synthetic */ int _decisionAndIndex$volatile;
    private volatile /* synthetic */ Object _parentHandle$volatile;
    private volatile /* synthetic */ Object _state$volatile;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final Continuation<T> f93608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NotNull
    private final CoroutineContext f93609f;

    /* JADX WARN: Multi-variable type inference failed */
    public o(@NotNull Continuation<? super T> continuation, int i10) {
        super(i10);
        this.f93608e = continuation;
        this.f93609f = continuation.get$context();
        this._decisionAndIndex$volatile = 536870911;
        this._state$volatile = d.f92716b;
    }

    private final String D() {
        Object objA = A();
        if (objA instanceof i2) {
            return "Active";
        }
        return objA instanceof r ? "Cancelled" : "Completed";
    }

    private final /* synthetic */ int G() {
        return this._decisionAndIndex$volatile;
    }

    private final /* synthetic */ Object J() {
        return this._parentHandle$volatile;
    }

    private final /* synthetic */ Object L() {
        return this._state$volatile;
    }

    private final c1 O() {
        v1 v1Var = (v1) get$context().get(v1.F1);
        if (v1Var == null) {
            return null;
        }
        c1 c1VarB = JobKt__JobKt.B(v1Var, true, false, new s(this), 2, null);
        androidx.concurrent.futures.a.a(f93607i, this, null, c1VarB);
        return c1VarB;
    }

    private final void P(Object obj) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93606h;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof d)) {
                if (obj2 instanceof m ? true : obj2 instanceof kotlinx.coroutines.internal.n0) {
                    V(obj, obj2);
                } else {
                    boolean z10 = obj2 instanceof b0;
                    if (z10) {
                        b0 b0Var = (b0) obj2;
                        if (!b0Var.d()) {
                            V(obj, obj2);
                        }
                        if (obj2 instanceof r) {
                            if (!z10) {
                                b0Var = null;
                            }
                            Throwable th = b0Var != null ? b0Var.f92345a : null;
                            if (obj instanceof m) {
                                m((m) obj, th);
                                return;
                            } else {
                                Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.internal.Segment<*>");
                                r((kotlinx.coroutines.internal.n0) obj, th);
                                return;
                            }
                        }
                        return;
                    }
                    if (obj2 instanceof a0) {
                        a0 a0Var = (a0) obj2;
                        if (a0Var.f92320b != null) {
                            V(obj, obj2);
                        }
                        if (obj instanceof kotlinx.coroutines.internal.n0) {
                            return;
                        }
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        m mVar = (m) obj;
                        if (a0Var.h()) {
                            m(mVar, a0Var.f92323e);
                            return;
                        } else {
                            if (androidx.concurrent.futures.a.a(f93606h, this, obj2, a0.g(a0Var, null, mVar, null, null, null, 29, null))) {
                                return;
                            }
                        }
                    } else {
                        if (obj instanceof kotlinx.coroutines.internal.n0) {
                            return;
                        }
                        Intrinsics.checkNotNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CancelHandler");
                        if (androidx.concurrent.futures.a.a(f93606h, this, obj2, new a0(obj2, (m) obj, null, null, null, 28, null))) {
                            return;
                        }
                    }
                }
            } else if (androidx.concurrent.futures.a.a(f93606h, this, obj2, obj)) {
                return;
            }
        }
    }

    private final boolean R() {
        if (x0.d(this.f93842d)) {
            Continuation<T> continuation = this.f93608e;
            Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
            if (((kotlinx.coroutines.internal.m) continuation).t()) {
                return true;
            }
        }
        return false;
    }

    private final /* synthetic */ void T(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    private final /* synthetic */ void U(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    private final void V(Object obj, Object obj2) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + obj + ", already has " + obj2).toString());
    }

    private final void a0(Object obj, int i10, Function1<? super Throwable, Unit> function1) {
        Object obj2;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93606h;
        do {
            obj2 = atomicReferenceFieldUpdater.get(this);
            if (!(obj2 instanceof i2)) {
                if (obj2 instanceof r) {
                    r rVar = (r) obj2;
                    if (rVar.h()) {
                        if (function1 != null) {
                            q(function1, rVar.f92345a);
                            return;
                        }
                        return;
                    }
                }
                l(obj);
                throw new KotlinNothingValueException();
            }
        } while (!androidx.concurrent.futures.a.a(f93606h, this, obj2, c0((i2) obj2, obj, i10, function1, null)));
        v();
        w(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void b0(o oVar, Object obj, int i10, Function1 function1, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        oVar.a0(obj, i10, function1);
    }

    private final Object c0(i2 i2Var, Object obj, int i10, Function1<? super Throwable, Unit> function1, Object obj2) {
        if (obj instanceof b0) {
            return obj;
        }
        if (!x0.c(i10) && obj2 == null) {
            return obj;
        }
        if (function1 == null && !(i2Var instanceof m) && obj2 == null) {
            return obj;
        }
        return new a0(obj, i2Var instanceof m ? (m) i2Var : null, function1, obj2, null, 16, null);
    }

    private final /* synthetic */ void d0(int i10) {
        this._decisionAndIndex$volatile = i10;
    }

    private final /* synthetic */ void e0(Object obj) {
        this._parentHandle$volatile = obj;
    }

    private final /* synthetic */ void f0(Object obj) {
        this._state$volatile = obj;
    }

    private final boolean g0() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93605g;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f93605g.compareAndSet(this, i10, 1073741824 + (536870911 & i10)));
        return true;
    }

    private final kotlinx.coroutines.internal.q0 h0(Object obj, Object obj2, Function1<? super Throwable, Unit> function1) {
        Object obj3;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93606h;
        do {
            obj3 = atomicReferenceFieldUpdater.get(this);
            if (!(obj3 instanceof i2)) {
                if ((obj3 instanceof a0) && obj2 != null && ((a0) obj3).f92322d == obj2) {
                    return p.f93617g;
                }
                return null;
            }
        } while (!androidx.concurrent.futures.a.a(f93606h, this, obj3, c0((i2) obj3, obj, this.f93842d, function1, obj2)));
        v();
        return p.f93617g;
    }

    private final boolean i0() {
        int i10;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93605g;
        do {
            i10 = atomicIntegerFieldUpdater.get(this);
            int i11 = i10 >> 29;
            if (i11 != 0) {
                if (i11 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f93605g.compareAndSet(this, i10, C.ENCODING_PCM_A_LAW + (536870911 & i10)));
        return true;
    }

    private final /* synthetic */ void j0(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Integer> function1) {
        int i10;
        do {
            i10 = atomicIntegerFieldUpdater.get(obj);
        } while (!atomicIntegerFieldUpdater.compareAndSet(obj, i10, function1.invoke(Integer.valueOf(i10)).intValue()));
    }

    private final Void l(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void n(s1 s1Var, Throwable th) {
        try {
            s1Var.a(th);
        } catch (Throwable th2) {
            i0.b(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final void o(Function0<Unit> function0) {
        try {
            function0.invoke();
        } catch (Throwable th) {
            i0.b(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th));
        }
    }

    private final void r(kotlinx.coroutines.internal.n0<?> n0Var, Throwable th) {
        int i10 = f93605g.get(this) & 536870911;
        if (!(i10 != 536870911)) {
            throw new IllegalStateException("The index for Segment.onCancellation(..) is broken".toString());
        }
        try {
            n0Var.z(i10, th, get$context());
        } catch (Throwable th2) {
            i0.b(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final boolean s(Throwable th) {
        if (!R()) {
            return false;
        }
        Continuation<T> continuation = this.f93608e;
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<*>");
        return ((kotlinx.coroutines.internal.m) continuation).w(th);
    }

    private final void v() {
        if (R()) {
            return;
        }
        t();
    }

    private final void w(int i10) {
        if (g0()) {
            return;
        }
        x0.a(this, i10);
    }

    private final c1 y() {
        return (c1) f93607i.get(this);
    }

    @Nullable
    public final Object A() {
        return f93606h.get(this);
    }

    @Override // kotlinx.coroutines.n
    public void B(@NotNull Object obj) {
        w(this.f93842d);
    }

    @Override // kotlinx.coroutines.n
    @Nullable
    public Object C(T t10, @Nullable Object obj) {
        return h0(t10, obj, null);
    }

    @Override // kotlinx.coroutines.n
    public void E(@NotNull Function1<? super Throwable, Unit> function1) {
        q.c(this, new m.a(function1));
    }

    @Override // kotlinx.coroutines.n
    @Nullable
    public Object F(@NotNull Throwable th) {
        return h0(new b0(th, false, 2, null), null, null);
    }

    @Override // kotlinx.coroutines.n
    @Nullable
    public Object H(T t10, @Nullable Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        return h0(t10, obj, function1);
    }

    @Override // kotlinx.coroutines.n
    public void N(@NotNull CoroutineDispatcher coroutineDispatcher, T t10) {
        Continuation<T> continuation = this.f93608e;
        kotlinx.coroutines.internal.m mVar = continuation instanceof kotlinx.coroutines.internal.m ? (kotlinx.coroutines.internal.m) continuation : null;
        b0(this, t10, (mVar != null ? mVar.f93508e : null) == coroutineDispatcher ? 4 : this.f93842d, null, 4, null);
    }

    public final void Q(@NotNull m mVar) {
        P(mVar);
    }

    @Override // kotlinx.coroutines.n
    public void S() {
        c1 c1VarO = O();
        if (c1VarO != null && isCompleted()) {
            c1VarO.dispose();
            f93607i.set(this, h2.f93449b);
        }
    }

    @NotNull
    protected String W() {
        return "CancellableContinuation";
    }

    public final void X(@NotNull Throwable th) {
        if (s(th)) {
            return;
        }
        a(th);
        v();
    }

    public final void Y() {
        Throwable thG;
        Continuation<T> continuation = this.f93608e;
        kotlinx.coroutines.internal.m mVar = continuation instanceof kotlinx.coroutines.internal.m ? (kotlinx.coroutines.internal.m) continuation : null;
        if (mVar == null || (thG = mVar.G(this)) == null) {
            return;
        }
        t();
        a(thG);
    }

    @JvmName(name = "resetStateReusable")
    public final boolean Z() {
        Object obj = f93606h.get(this);
        if ((obj instanceof a0) && ((a0) obj).f92322d != null) {
            t();
            return false;
        }
        f93605g.set(this, 536870911);
        f93606h.set(this, d.f92716b);
        return true;
    }

    @Override // kotlinx.coroutines.n
    public boolean a(@Nullable Throwable th) {
        Object obj;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93606h;
        do {
            obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof i2)) {
                return false;
            }
        } while (!androidx.concurrent.futures.a.a(f93606h, this, obj, new r(this, th, (obj instanceof m) || (obj instanceof kotlinx.coroutines.internal.n0))));
        i2 i2Var = (i2) obj;
        if (i2Var instanceof m) {
            m((m) obj, th);
        } else if (i2Var instanceof kotlinx.coroutines.internal.n0) {
            r((kotlinx.coroutines.internal.n0) obj, th);
        }
        v();
        w(this.f93842d);
        return true;
    }

    @Override // kotlinx.coroutines.f3
    public void c(@NotNull kotlinx.coroutines.internal.n0<?> n0Var, int i10) {
        int i11;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93605g;
        do {
            i11 = atomicIntegerFieldUpdater.get(this);
            if (!((i11 & 536870911) == 536870911)) {
                throw new IllegalStateException("invokeOnCancellation should be called at most once".toString());
            }
        } while (!atomicIntegerFieldUpdater.compareAndSet(this, i11, ((i11 >> 29) << 29) + i10));
        P(n0Var);
    }

    @Override // kotlinx.coroutines.w0
    public void d(@Nullable Object obj, @NotNull Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93606h;
        while (true) {
            Object obj2 = atomicReferenceFieldUpdater.get(this);
            if (obj2 instanceof i2) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof b0) {
                return;
            }
            if (obj2 instanceof a0) {
                a0 a0Var = (a0) obj2;
                if (!(!a0Var.h())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (androidx.concurrent.futures.a.a(f93606h, this, obj2, a0.g(a0Var, null, null, null, null, th, 15, null))) {
                    a0Var.i(this, th);
                    return;
                }
            } else if (androidx.concurrent.futures.a.a(f93606h, this, obj2, new a0(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    @Override // kotlinx.coroutines.w0
    @NotNull
    public final Continuation<T> e() {
        return this.f93608e;
    }

    @Override // kotlinx.coroutines.w0
    @Nullable
    public Throwable g(@Nullable Object obj) {
        Throwable thG = super.g(obj);
        if (thG != null) {
            return thG;
        }
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f93608e;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    /* JADX INFO: renamed from: getContext */
    public CoroutineContext get$context() {
        return this.f93609f;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.w0
    public <T> T h(@Nullable Object obj) {
        return obj instanceof a0 ? (T) ((a0) obj).f92319a : obj;
    }

    @Override // kotlinx.coroutines.n
    public void i(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Throwable th) {
        Continuation<T> continuation = this.f93608e;
        kotlinx.coroutines.internal.m mVar = continuation instanceof kotlinx.coroutines.internal.m ? (kotlinx.coroutines.internal.m) continuation : null;
        b0(this, new b0(th, false, 2, null), (mVar != null ? mVar.f93508e : null) == coroutineDispatcher ? 4 : this.f93842d, null, 4, null);
    }

    @Override // kotlinx.coroutines.n
    public boolean isActive() {
        return A() instanceof i2;
    }

    @Override // kotlinx.coroutines.n
    public boolean isCancelled() {
        return A() instanceof r;
    }

    @Override // kotlinx.coroutines.n
    public boolean isCompleted() {
        return !(A() instanceof i2);
    }

    @Override // kotlinx.coroutines.w0
    @Nullable
    public Object k() {
        return A();
    }

    public final void m(@NotNull m mVar, @Nullable Throwable th) {
        try {
            mVar.a(th);
        } catch (Throwable th2) {
            i0.b(get$context(), new CompletionHandlerException("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    @Override // kotlinx.coroutines.n
    public void p(T t10, @Nullable Function1<? super Throwable, Unit> function1) {
        a0(t10, this.f93842d, function1);
    }

    public final void q(@NotNull Function1<? super Throwable, Unit> function1, @NotNull Throwable th) {
        try {
            function1.invoke(th);
        } catch (Throwable th2) {
            i0.b(get$context(), new CompletionHandlerException("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        b0(this, e0.c(obj, this), this.f93842d, null, 4, null);
    }

    public final void t() {
        c1 c1VarY = y();
        if (c1VarY == null) {
            return;
        }
        c1VarY.dispose();
        f93607i.set(this, h2.f93449b);
    }

    @NotNull
    public String toString() {
        return W() + '(' + o0.c(this.f93608e) + "){" + D() + "}@" + o0.b(this);
    }

    @NotNull
    public Throwable x(@NotNull v1 v1Var) {
        return v1Var.O();
    }

    @PublishedApi
    @Nullable
    public final Object z() {
        v1 v1Var;
        boolean zR = R();
        if (i0()) {
            if (y() == null) {
                O();
            }
            if (zR) {
                Y();
            }
            return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        if (zR) {
            Y();
        }
        Object objA = A();
        if (objA instanceof b0) {
            throw ((b0) objA).f92345a;
        }
        if (!x0.c(this.f93842d) || (v1Var = (v1) get$context().get(v1.F1)) == null || v1Var.isActive()) {
            return h(objA);
        }
        CancellationException cancellationExceptionO = v1Var.O();
        d(objA, cancellationExceptionO);
        throw cancellationExceptionO;
    }
}
