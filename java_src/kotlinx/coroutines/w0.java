package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.PublishedApi;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.ThreadContextKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
@SourceDebugExtension({"SMAP\nDispatchedTask.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 CoroutineContext.kt\nkotlinx/coroutines/CoroutineContextKt\n+ 4 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTaskKt\n+ 5 StackTraceRecovery.kt\nkotlinx/coroutines/internal/StackTraceRecoveryKt\n*L\n1#1,218:1\n1#2:219\n103#3,10:220\n114#3,2:234\n216#4:230\n217#4:233\n57#5,2:231\n*S KotlinDebug\n*F\n+ 1 DispatchedTask.kt\nkotlinx/coroutines/DispatchedTask\n*L\n86#1:220,10\n86#1:234,2\n99#1:230\n99#1:233\n99#1:231,2\n*E\n"})
public abstract class w0<T> extends kotlinx.coroutines.scheduling.j {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    public int f93842d;

    public w0(int i10) {
        this.f93842d = i10;
    }

    public void d(@Nullable Object obj, @NotNull Throwable th) {
    }

    @NotNull
    public abstract Continuation<T> e();

    @Nullable
    public Throwable g(@Nullable Object obj) {
        b0 b0Var = obj instanceof b0 ? (b0) obj : null;
        if (b0Var != null) {
            return b0Var.f92345a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T h(@Nullable Object obj) {
        return obj;
    }

    public final void j(@Nullable Throwable th, @Nullable Throwable th2) {
        if (th == null && th2 == null) {
            return;
        }
        if (th != null && th2 != null) {
            ExceptionsKt__ExceptionsKt.addSuppressed(th, th2);
        }
        if (th == null) {
            th = th2;
        }
        Intrinsics.checkNotNull(th);
        i0.b(e().get$context(), new CoroutinesInternalError("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th));
    }

    @Nullable
    public abstract Object k();

    @Override // java.lang.Runnable
    public final void run() {
        Object objM50constructorimpl;
        Object objM50constructorimpl2;
        kotlinx.coroutines.scheduling.k kVar = this.f93689c;
        try {
            Continuation<T> continuationE = e();
            Intrinsics.checkNotNull(continuationE, "null cannot be cast to non-null type kotlinx.coroutines.internal.DispatchedContinuation<T of kotlinx.coroutines.DispatchedTask>");
            kotlinx.coroutines.internal.m mVar = (kotlinx.coroutines.internal.m) continuationE;
            Continuation<T> continuation = mVar.f93509f;
            Object obj = mVar.f93511h;
            CoroutineContext context = continuation.get$context();
            Object objC = ThreadContextKt.c(context, obj);
            d3<?> d3VarG = objC != ThreadContextKt.f93468a ? CoroutineContextKt.g(continuation, context, objC) : null;
            try {
                CoroutineContext context2 = continuation.get$context();
                Object objK = k();
                Throwable thG = g(objK);
                v1 v1Var = (thG == null && x0.c(this.f93842d)) ? (v1) context2.get(v1.F1) : null;
                if (v1Var != null && !v1Var.isActive()) {
                    CancellationException cancellationExceptionO = v1Var.O();
                    d(objK, cancellationExceptionO);
                    Result.Companion companion = Result.INSTANCE;
                    continuation.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(cancellationExceptionO)));
                } else if (thG != null) {
                    Result.Companion companion2 = Result.INSTANCE;
                    continuation.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(thG)));
                } else {
                    Result.Companion companion3 = Result.INSTANCE;
                    continuation.resumeWith(Result.m50constructorimpl(h(objK)));
                }
                Unit unit = Unit.INSTANCE;
                if (d3VarG == null || d3VarG.K1()) {
                    ThreadContextKt.a(context, objC);
                }
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    kVar.j();
                    objM50constructorimpl2 = Result.m50constructorimpl(unit);
                } catch (Throwable th) {
                    Result.Companion companion5 = Result.INSTANCE;
                    objM50constructorimpl2 = Result.m50constructorimpl(ResultKt.createFailure(th));
                }
                j(null, Result.m53exceptionOrNullimpl(objM50constructorimpl2));
            } catch (Throwable th2) {
                if (d3VarG == null || d3VarG.K1()) {
                    ThreadContextKt.a(context, objC);
                }
                throw th2;
            }
        } catch (Throwable th3) {
            try {
                Result.Companion companion6 = Result.INSTANCE;
                kVar.j();
                objM50constructorimpl = Result.m50constructorimpl(Unit.INSTANCE);
            } catch (Throwable th4) {
                Result.Companion companion7 = Result.INSTANCE;
                objM50constructorimpl = Result.m50constructorimpl(ResultKt.createFailure(th4));
            }
            j(th3, Result.m53exceptionOrNullimpl(objM50constructorimpl));
        }
    }
}
