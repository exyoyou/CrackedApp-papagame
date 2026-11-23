package bc;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.internal.n;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCancellable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n1#1,64:1\n45#1,6:65\n45#1,6:71\n45#1,6:77\n*S KotlinDebug\n*F\n+ 1 Cancellable.kt\nkotlinx/coroutines/intrinsics/CancellableKt\n*L\n13#1:65,6\n25#1:71,6\n34#1:77,6\n*E\n"})
public final class a {
    private static final void a(Continuation<?> continuation, Throwable th) throws Throwable {
        Result.Companion companion = Result.INSTANCE;
        continuation.resumeWith(Result.m50constructorimpl(ResultKt.createFailure(th)));
        throw th;
    }

    private static final void b(Continuation<?> continuation, Function0<Unit> function0) throws Throwable {
        try {
            function0.invoke();
        } catch (Throwable th) {
            a(continuation, th);
        }
    }

    public static final void c(@NotNull Continuation<? super Unit> continuation, @NotNull Continuation<?> continuation2) throws Throwable {
        try {
            Continuation continuationIntercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(continuation);
            Result.Companion companion = Result.INSTANCE;
            n.e(continuationIntercepted, Result.m50constructorimpl(Unit.INSTANCE), null, 2, null);
        } catch (Throwable th) {
            a(continuation2, th);
        }
    }

    @InternalCoroutinesApi
    public static final <T> void d(@NotNull Function1<? super Continuation<? super T>, ? extends Object> function1, @NotNull Continuation<? super T> continuation) throws Throwable {
        try {
            Continuation continuationIntercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function1, continuation));
            Result.Companion companion = Result.INSTANCE;
            n.e(continuationIntercepted, Result.m50constructorimpl(Unit.INSTANCE), null, 2, null);
        } catch (Throwable th) {
            a(continuation, th);
        }
    }

    public static final <R, T> void e(@NotNull Function2<? super R, ? super Continuation<? super T>, ? extends Object> function2, R r10, @NotNull Continuation<? super T> continuation, @Nullable Function1<? super Throwable, Unit> function1) throws Throwable {
        try {
            Continuation continuationIntercepted = IntrinsicsKt__IntrinsicsJvmKt.intercepted(IntrinsicsKt__IntrinsicsJvmKt.createCoroutineUnintercepted(function2, r10, continuation));
            Result.Companion companion = Result.INSTANCE;
            n.d(continuationIntercepted, Result.m50constructorimpl(Unit.INSTANCE), function1);
        } catch (Throwable th) {
            a(continuation, th);
        }
    }

    public static /* synthetic */ void f(Function2 function2, Object obj, Continuation continuation, Function1 function1, int i10, Object obj2) throws Throwable {
        if ((i10 & 4) != 0) {
            function1 = null;
        }
        e(function2, obj, continuation, function1);
    }
}
