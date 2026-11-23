package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class InterruptibleKt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f92281a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f92282b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f92283c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f92284d = 3;

    @Nullable
    public static final <T> Object b(@NotNull CoroutineContext coroutineContext, @NotNull Function0<? extends T> function0, @NotNull Continuation<? super T> continuation) {
        return h.h(coroutineContext, new InterruptibleKt$runInterruptible$2(function0, null), continuation);
    }

    public static /* synthetic */ Object c(CoroutineContext coroutineContext, Function0 function0, Continuation continuation, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        return b(coroutineContext, function0, continuation);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T> T d(CoroutineContext coroutineContext, Function0<? extends T> function0) throws Throwable {
        try {
            a3 a3Var = new a3(y1.B(coroutineContext));
            a3Var.h();
            try {
                return function0.invoke();
            } finally {
                a3Var.b();
            }
        } catch (InterruptedException e10) {
            throw new CancellationException("Blocking call was interrupted due to parent cancellation").initCause(e10);
        }
    }
}
