package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public interface u0 extends t0 {

    public static final class a {
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
        @Nullable
        public static Object a(@NotNull u0 u0Var, long j10, @NotNull Continuation<? super Unit> continuation) {
            Object objA = t0.a.a(u0Var, j10, continuation);
            return objA == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objA : Unit.INSTANCE;
        }

        @NotNull
        public static c1 b(@NotNull u0 u0Var, long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
            return t0.a.b(u0Var, j10, runnable, coroutineContext);
        }
    }

    @NotNull
    String i(long j10);
}
