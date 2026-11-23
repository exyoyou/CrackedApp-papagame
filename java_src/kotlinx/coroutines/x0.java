package kotlinx.coroutines;

import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 DispatchedContinuation.kt\nkotlinx/coroutines/internal/DispatchedContinuation\n+ 4 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,218:1\n196#1,17:236\n1#2:219\n251#3:220\n252#3,2:231\n254#3:235\n103#4,10:221\n114#4,2:233\n57#5,2:253\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n*L\n186#1:236,17\n174#1:220\n174#1:231,2\n174#1:235\n174#1:221,10\n174#1:233,2\n216#1:253,2\n*E\n"})
public final class x0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f93843a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f93844b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f93845c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f93846d = 4;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f93847e = -1;

    public static final <T> void a(@NotNull w0<? super T> w0Var, int i10) {
        Continuation<? super T> continuationE = w0Var.e();
        boolean z10 = i10 == 4;
        if (z10 || !(continuationE instanceof kotlinx.coroutines.internal.m) || c(i10) != c(w0Var.f93842d)) {
            e(w0Var, continuationE, z10);
            return;
        }
        CoroutineDispatcher coroutineDispatcher = ((kotlinx.coroutines.internal.m) continuationE).f93508e;
        CoroutineContext coroutineContext = continuationE.get$context();
        if (coroutineDispatcher.isDispatchNeeded(coroutineContext)) {
            coroutineDispatcher.dispatch(coroutineContext, w0Var);
        } else {
            f(w0Var);
        }
    }

    @PublishedApi
    public static /* synthetic */ void b() {
    }

    public static final boolean c(int i10) {
        return i10 == 1 || i10 == 2;
    }

    public static final boolean d(int i10) {
        return i10 == 2;
    }

    public static final <T> void e(@NotNull w0<? super T> w0Var, @NotNull Continuation<? super T> continuation, boolean z10) {
        Object objH;
        Object objK = w0Var.k();
        Throwable thG = w0Var.g(objK);
        if (thG != null) {
            Result.Companion companion = Result.INSTANCE;
            objH = ResultKt.createFailure(thG);
        } else {
            Result.Companion companion2 = Result.INSTANCE;
            objH = w0Var.h(objK);
        }
        Object objM50constructorimpl = Result.m50constructorimpl(objH);
        if (!z10) {
            continuation.resumeWith(objM50constructorimpl);
            return;
        }
        Intrinsics.checkNotNull(continuation, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTaskKt.resume>");
        kotlinx.coroutines.internal.m mVar = (kotlinx.coroutines.internal.m) continuation;
        Continuation<T> continuation2 = mVar.f93509f;
        Object obj = mVar.f93511h;
        CoroutineContext coroutineContext = continuation2.get$context();
        Object objC = ThreadContextKt.c(coroutineContext, obj);
        d3<?> d3VarG = objC != ThreadContextKt.f93468a ? CoroutineContextKt.g(continuation2, coroutineContext, objC) : null;
        try {
            mVar.f93509f.resumeWith(objM50constructorimpl);
            Unit unit = Unit.INSTANCE;
        } finally {
            if (d3VarG == null || d3VarG.K1()) {
                ThreadContextKt.a(coroutineContext, objC);
            }
        }
    }

    private static final void f(w0<?> w0Var) {
        g1 g1VarB = v2.f93840a.b();
        if (g1VarB.k0()) {
            g1VarB.e0(w0Var);
            return;
        }
        g1VarB.g0(true);
        try {
            e(w0Var, w0Var.e(), true);
            do {
            } while (g1VarB.n0());
        } catch (Throwable th) {
            try {
                w0Var.j(th, null);
            } finally {
                g1VarB.z(true);
            }
        }
    }

    public static final void g(@NotNull Continuation<?> continuation, @NotNull Throwable th) {
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
    }

    public static final void h(@NotNull w0<?> w0Var, @NotNull g1 g1Var, @NotNull Function0<Unit> function0) {
        g1Var.g0(true);
        try {
            function0.invoke();
            do {
            } while (g1Var.n0());
            InlineMarker.finallyStart(1);
        } catch (Throwable th) {
            try {
                w0Var.j(th, null);
                InlineMarker.finallyStart(1);
            } finally {
                InlineMarker.finallyStart(1);
                g1Var.z(true);
                InlineMarker.finallyEnd(1);
            }
        }
    }
}
