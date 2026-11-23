package cc;

import java.time.Duration;
import java.time.temporal.ChronoUnit;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.FlowPreview;
import kotlinx.coroutines.TimeoutKt;
import kotlinx.coroutines.flow.g;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class f {
    private static final long a(Duration duration) {
        if (duration.compareTo(Duration.ZERO) <= 0) {
            return 0L;
        }
        if (duration.compareTo(ChronoUnit.MILLIS.getDuration()) <= 0) {
            return 1L;
        }
        if (duration.getSeconds() < 9223372036854775L || (duration.getSeconds() == 9223372036854775L && duration.getNano() < 807000000)) {
            return duration.toMillis();
        }
        return Long.MAX_VALUE;
    }

    @FlowPreview
    @NotNull
    public static final <T> kotlinx.coroutines.flow.e<T> b(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Duration duration) {
        return g.a0(eVar, a(duration));
    }

    @Nullable
    public static final Object c(@NotNull Duration duration, @NotNull Continuation<? super Unit> continuation) {
        Object objB = DelayKt.b(a(duration), continuation);
        return objB == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objB : Unit.INSTANCE;
    }

    public static final <R> void d(@NotNull kotlinx.coroutines.selects.b<? super R> bVar, @NotNull Duration duration, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        kotlinx.coroutines.selects.a.a(bVar, a(duration), function1);
    }

    @FlowPreview
    @NotNull
    public static final <T> kotlinx.coroutines.flow.e<T> e(@NotNull kotlinx.coroutines.flow.e<? extends T> eVar, @NotNull Duration duration) {
        return g.A1(eVar, a(duration));
    }

    @Nullable
    public static final <T> Object f(@NotNull Duration duration, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return TimeoutKt.c(a(duration), function2, continuation);
    }

    @Nullable
    public static final <T> Object g(@NotNull Duration duration, @NotNull Function2<? super l0, ? super Continuation<? super T>, ? extends Object> function2, @NotNull Continuation<? super T> continuation) {
        return TimeoutKt.e(a(duration), function2, continuation);
    }
}
