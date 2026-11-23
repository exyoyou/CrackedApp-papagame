package kotlinx.coroutines.internal;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.d3;
import kotlinx.coroutines.g1;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.v2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nDispatchedContinuation.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n+ 2 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n*L\n1#1,313:1\n293#1,5:321\n298#1,12:327\n310#1:383\n297#1:385\n298#1,12:387\n310#1:416\n213#2,7:314\n220#2:342\n239#2,8:343\n221#2:351\n251#2:352\n252#2,2:363\n254#2:367\n223#2:368\n225#2:384\n1#3:326\n1#3:386\n1#3:417\n196#4,3:339\n199#4,14:369\n196#4,17:399\n196#4,17:418\n103#5,10:353\n114#5,2:365\n*S KotlinDebug\n*F\n+ 1 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuationKt\n*L\n278#1:321,5\n278#1:327,12\n278#1:383\n283#1:385\n283#1:387,12\n283#1:416\n278#1:314,7\n278#1:342\n278#1:343,8\n278#1:351\n278#1:352\n278#1:363,2\n278#1:367\n278#1:368\n278#1:384\n278#1:326\n283#1:386\n278#1:339,3\n278#1:369,14\n283#1:399,17\n309#1:418,17\n278#1:353,10\n278#1:365,2\n*E\n"})
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final q0 f93513a = new q0("UNDEFINED");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final q0 f93514b = new q0("REUSABLE_CLAIMED");

    private static final boolean b(m<?> mVar, Object obj, int i10, boolean z10, Function0<Unit> function0) {
        g1 g1VarB = v2.f93840a.b();
        if (z10 && g1VarB.l0()) {
            return false;
        }
        if (g1VarB.k0()) {
            mVar.f93510g = obj;
            mVar.f93842d = i10;
            g1VarB.e0(mVar);
            return true;
        }
        g1VarB.g0(true);
        try {
            function0.invoke();
            do {
            } while (g1VarB.n0());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                mVar.j(th, null);
                InlineMarker.finallyStart(1);
            } finally {
                InlineMarker.finallyStart(1);
                g1VarB.z(true);
                InlineMarker.finallyEnd(1);
            }
        }
        return false;
    }

    static /* synthetic */ boolean c(m mVar, Object obj, int i10, boolean z10, Function0 function0, int i11, Object obj2) {
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        g1 g1VarB = v2.f93840a.b();
        if (z10 && g1VarB.l0()) {
            return false;
        }
        if (g1VarB.k0()) {
            mVar.f93510g = obj;
            mVar.f93842d = i10;
            g1VarB.e0(mVar);
            return true;
        }
        g1VarB.g0(true);
        try {
            function0.invoke();
            do {
            } while (g1VarB.n0());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                mVar.j(th, null);
                InlineMarker.finallyStart(1);
            } finally {
                InlineMarker.finallyStart(1);
                g1VarB.z(true);
                InlineMarker.finallyEnd(1);
            }
        }
        return false;
    }

    @InternalCoroutinesApi
    public static final <T> void d(@NotNull Continuation<? super T> continuation, @NotNull Object obj, @Nullable Function1<? super Throwable, Unit> function1) {
        boolean z10;
        if (!(continuation instanceof m)) {
            continuation.resumeWith(obj);
            return;
        }
        m mVar = (m) continuation;
        Object objB = kotlinx.coroutines.e0.b(obj, function1);
        if (mVar.f93508e.isDispatchNeeded(mVar.get$context())) {
            mVar.f93510g = objB;
            mVar.f93842d = 1;
            mVar.f93508e.dispatch(mVar.get$context(), mVar);
            return;
        }
        g1 g1VarB = v2.f93840a.b();
        if (g1VarB.k0()) {
            mVar.f93510g = objB;
            mVar.f93842d = 1;
            g1VarB.e0(mVar);
            return;
        }
        g1VarB.g0(true);
        try {
            v1 v1Var = (v1) mVar.get$context().get(v1.F1);
            if (v1Var == null || v1Var.isActive()) {
                z10 = false;
            } else {
                CancellationException cancellationExceptionO = v1Var.O();
                mVar.d(objB, cancellationExceptionO);
                Result.Companion companion = Result.INSTANCE;
                mVar.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(cancellationExceptionO)));
                z10 = true;
            }
            if (!z10) {
                Continuation<T> continuation2 = mVar.f93509f;
                Object obj2 = mVar.f93511h;
                CoroutineContext context = continuation2.get$context();
                Object objC = ThreadContextKt.c(context, obj2);
                d3<?> d3VarG = objC != ThreadContextKt.f93468a ? CoroutineContextKt.g(continuation2, context, objC) : null;
                try {
                    mVar.f93509f.resumeWith(obj);
                    Unit unit = Unit.INSTANCE;
                    if (d3VarG == null || d3VarG.K1()) {
                        ThreadContextKt.a(context, objC);
                    }
                } catch (Throwable th) {
                    if (d3VarG == null || d3VarG.K1()) {
                        ThreadContextKt.a(context, objC);
                    }
                    throw th;
                }
            }
            while (g1VarB.n0()) {
            }
        } catch (Throwable th2) {
            try {
                mVar.j(th2, null);
            } finally {
                g1VarB.z(true);
            }
        }
    }

    public static /* synthetic */ void e(Continuation continuation, Object obj, Function1 function1, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        d(continuation, obj, function1);
    }

    public static final boolean f(@NotNull m<? super Unit> mVar) {
        Unit unit = Unit.INSTANCE;
        g1 g1VarB = v2.f93840a.b();
        if (g1VarB.l0()) {
            return false;
        }
        if (g1VarB.k0()) {
            mVar.f93510g = unit;
            mVar.f93842d = 1;
            g1VarB.e0(mVar);
            return true;
        }
        g1VarB.g0(true);
        try {
            mVar.run();
            do {
            } while (g1VarB.n0());
        } catch (Throwable th) {
            try {
                mVar.j(th, null);
            } finally {
                g1VarB.z(true);
            }
        }
        return false;
    }
}
