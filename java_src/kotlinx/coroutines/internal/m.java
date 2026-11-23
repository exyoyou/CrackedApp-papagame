package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.d3;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.v2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n239#1,8:377\n251#1:385\n252#1,2:396\n254#1:400\n1#2:314\n1#2:320\n1#2:361\n293#3,5:315\n298#3,12:321\n310#3:355\n293#3,5:356\n298#3,12:362\n310#3:415\n196#4,3:333\n199#4,14:341\n196#4,3:374\n199#4,14:401\n91#5,5:336\n103#5,10:386\n114#5,2:398\n103#5,13:416\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n*L\n220#1:377,8\n221#1:385\n221#1:396,2\n221#1:400\n198#1:320\n219#1:361\n198#1:315,5\n198#1:321,12\n198#1:355\n219#1:356,5\n219#1:362,12\n219#1:415\n198#1:333,3\n198#1:341,14\n219#1:374,3\n219#1:401,14\n199#1:336,5\n221#1:386,10\n221#1:398,2\n251#1:416,13\n*E\n"})
public final class m<T> extends kotlinx.coroutines.w0<T> implements CoroutineStackFrame, Continuation<T> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93507i = AtomicReferenceFieldUpdater.newUpdater(m.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @JvmField
    @NotNull
    public final CoroutineDispatcher f93508e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Continuation<T> f93509f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @JvmField
    @Nullable
    public Object f93510g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Object f93511h;

    /* JADX WARN: Multi-variable type inference failed */
    public m(@NotNull CoroutineDispatcher coroutineDispatcher, @NotNull Continuation<? super T> continuation) {
        super(-1);
        this.f93508e = coroutineDispatcher;
        this.f93509f = continuation;
        this.f93510g = n.f93513a;
        this.f93511h = ThreadContextKt.b(get$context());
    }

    private final /* synthetic */ void D(Object obj) {
        this._reusableCancellableContinuation$volatile = obj;
    }

    private final kotlinx.coroutines.o<?> o() {
        Object obj = f93507i.get(this);
        if (obj instanceof kotlinx.coroutines.o) {
            return (kotlinx.coroutines.o) obj;
        }
        return null;
    }

    private final /* synthetic */ Object q() {
        return this._reusableCancellableContinuation$volatile;
    }

    public static /* synthetic */ void s() {
    }

    private final /* synthetic */ void v(Object obj, AtomicReferenceFieldUpdater atomicReferenceFieldUpdater, Function1<Object, Unit> function1) {
        while (true) {
            function1.invoke(atomicReferenceFieldUpdater.get(obj));
        }
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0029 A[DONT_GENERATE] */
    public final void A(@NotNull Object obj) {
        Continuation<T> continuation = this.f93509f;
        Object obj2 = this.f93511h;
        CoroutineContext context = continuation.get$context();
        Object objC = ThreadContextKt.c(context, obj2);
        d3<?> d3VarG = objC != ThreadContextKt.f93468a ? CoroutineContextKt.g(continuation, context, objC) : null;
        try {
            this.f93509f.resumeWith(obj);
            Unit unit = Unit.INSTANCE;
        } finally {
            InlineMarker.finallyStart(1);
            if (d3VarG == null || d3VarG.K1()) {
                ThreadContextKt.a(context, objC);
            }
            InlineMarker.finallyEnd(1);
        }
    }

    @Nullable
    public final Throwable G(@NotNull kotlinx.coroutines.n<?> nVar) {
        q0 q0Var;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93507i;
        do {
            Object obj = atomicReferenceFieldUpdater.get(this);
            q0Var = n.f93514b;
            if (obj != q0Var) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.a.a(f93507i, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.a.a(f93507i, this, q0Var, nVar));
        return null;
    }

    @Override // kotlinx.coroutines.w0
    public void d(@Nullable Object obj, @NotNull Throwable th) {
        if (obj instanceof kotlinx.coroutines.c0) {
            ((kotlinx.coroutines.c0) obj).f92360b.invoke(th);
        }
    }

    @Override // kotlinx.coroutines.w0
    @NotNull
    public Continuation<T> e() {
        return this;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public CoroutineStackFrame getCallerFrame() {
        Continuation<T> continuation = this.f93509f;
        if (continuation instanceof CoroutineStackFrame) {
            return (CoroutineStackFrame) continuation;
        }
        return null;
    }

    @Override // kotlin.coroutines.Continuation
    @NotNull
    /* JADX INFO: renamed from: getContext */
    public CoroutineContext get$context() {
        return this.f93509f.get$context();
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    @Nullable
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlinx.coroutines.w0
    @Nullable
    public Object k() {
        Object obj = this.f93510g;
        this.f93510g = n.f93513a;
        return obj;
    }

    public final void l() {
        while (f93507i.get(this) == n.f93514b) {
        }
    }

    @Nullable
    public final kotlinx.coroutines.o<T> m() {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93507i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (obj == null) {
                f93507i.set(this, n.f93514b);
                return null;
            }
            if (obj instanceof kotlinx.coroutines.o) {
                if (androidx.concurrent.futures.a.a(f93507i, this, obj, n.f93514b)) {
                    return (kotlinx.coroutines.o) obj;
                }
            } else if (obj != n.f93514b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final void n(@NotNull CoroutineContext coroutineContext, T t10) {
        this.f93510g = t10;
        this.f93842d = 1;
        this.f93508e.dispatchYield(coroutineContext, this);
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(@NotNull Object obj) {
        CoroutineContext context = this.f93509f.get$context();
        Object objD = kotlinx.coroutines.e0.d(obj, null, 1, null);
        if (this.f93508e.isDispatchNeeded(context)) {
            this.f93510g = objD;
            this.f93842d = 0;
            this.f93508e.dispatch(context, this);
            return;
        }
        g1 g1VarB = v2.f93840a.b();
        if (g1VarB.k0()) {
            this.f93510g = objD;
            this.f93842d = 0;
            g1VarB.e0(this);
            return;
        }
        g1VarB.g0(true);
        try {
            CoroutineContext context2 = get$context();
            Object objC = ThreadContextKt.c(context2, this.f93511h);
            try {
                this.f93509f.resumeWith(obj);
                Unit unit = Unit.INSTANCE;
                ThreadContextKt.a(context2, objC);
                while (g1VarB.n0()) {
                }
            } catch (Throwable th) {
                ThreadContextKt.a(context2, objC);
                throw th;
            }
        } catch (Throwable th2) {
            try {
                j(th2, null);
            } finally {
                g1VarB.z(true);
            }
        }
    }

    public final boolean t() {
        return f93507i.get(this) != null;
    }

    @NotNull
    public String toString() {
        return "DispatchedContinuation[" + this.f93508e + ", " + kotlinx.coroutines.o0.c(this.f93509f) + ']';
    }

    public final boolean w(@NotNull Throwable th) {
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f93507i;
        while (true) {
            Object obj = atomicReferenceFieldUpdater.get(this);
            q0 q0Var = n.f93514b;
            if (Intrinsics.areEqual(obj, q0Var)) {
                if (androidx.concurrent.futures.a.a(f93507i, this, q0Var, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (androidx.concurrent.futures.a.a(f93507i, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    public final void x() {
        l();
        kotlinx.coroutines.o<?> oVarO = o();
        if (oVarO != null) {
            oVarO.t();
        }
    }

    public final void y(@NotNull Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        boolean z10;
        Object objB = kotlinx.coroutines.e0.b(obj, function1);
        if (this.f93508e.isDispatchNeeded(get$context())) {
            this.f93510g = objB;
            this.f93842d = 1;
            this.f93508e.dispatch(get$context(), this);
            return;
        }
        g1 g1VarB = v2.f93840a.b();
        if (g1VarB.k0()) {
            this.f93510g = objB;
            this.f93842d = 1;
            g1VarB.e0(this);
            return;
        }
        g1VarB.g0(true);
        try {
            v1 v1Var = (v1) get$context().get(v1.F1);
            if (v1Var == null || v1Var.isActive()) {
                z10 = false;
            } else {
                CancellationException cancellationExceptionO = v1Var.O();
                d(objB, cancellationExceptionO);
                Result.Companion companion = Result.INSTANCE;
                resumeWith(Result.m50constructorimpl(ResultKt.createFailure(cancellationExceptionO)));
                z10 = true;
            }
            if (!z10) {
                Continuation<T> continuation = this.f93509f;
                Object obj2 = this.f93511h;
                CoroutineContext context = continuation.get$context();
                Object objC = ThreadContextKt.c(context, obj2);
                d3<?> d3VarG = objC != ThreadContextKt.f93468a ? CoroutineContextKt.g(continuation, context, objC) : null;
                try {
                    this.f93509f.resumeWith(obj);
                    Unit unit = Unit.INSTANCE;
                    InlineMarker.finallyStart(1);
                    if (d3VarG == null || d3VarG.K1()) {
                        ThreadContextKt.a(context, objC);
                    }
                    InlineMarker.finallyEnd(1);
                } finally {
                    InlineMarker.finallyStart(1);
                    if (d3VarG == null || d3VarG.K1()) {
                        ThreadContextKt.a(context, objC);
                    }
                    InlineMarker.finallyEnd(1);
                }
            }
            while (g1VarB.n0()) {
            }
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                j(th, null);
                InlineMarker.finallyStart(1);
            } finally {
                InlineMarker.finallyStart(1);
                g1VarB.z(true);
                InlineMarker.finallyEnd(1);
            }
        }
    }

    public final boolean z(@Nullable Object obj) {
        v1 v1Var = (v1) get$context().get(v1.F1);
        if (v1Var == null || v1Var.isActive()) {
            return false;
        }
        CancellationException cancellationExceptionO = v1Var.O();
        d(obj, cancellationExceptionO);
        Result.Companion companion = Result.INSTANCE;
        resumeWith(Result.m50constructorimpl(ResultKt.createFailure(cancellationExceptionO)));
        return true;
    }
}
