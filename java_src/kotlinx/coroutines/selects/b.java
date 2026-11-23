package kotlinx.coroutines.selects;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public interface b<R> {

    public static final class a {
        /* JADX WARN: Multi-variable type inference failed */
        public static <R, P, Q> void a(@NotNull b<? super R> bVar, @NotNull g<? super P, ? extends Q> gVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2) {
            bVar.d(gVar, null, function2);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Replaced with the same extension function", replaceWith = @ReplaceWith(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
        @LowPriorityInOverloadResolution
        @ExperimentalCoroutinesApi
        public static <R> void b(@NotNull b<? super R> bVar, long j10, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
            kotlinx.coroutines.selects.a.a(bVar, j10, function1);
        }
    }

    void b(@NotNull c cVar, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1);

    <P, Q> void d(@NotNull g<? super P, ? extends Q> gVar, P p10, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);

    @Deprecated(level = DeprecationLevel.ERROR, message = "Replaced with the same extension function", replaceWith = @ReplaceWith(expression = "onTimeout", imports = {"kotlinx.coroutines.selects.onTimeout"}))
    @LowPriorityInOverloadResolution
    @ExperimentalCoroutinesApi
    void e(long j10, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1);

    <P, Q> void h(@NotNull g<? super P, ? extends Q> gVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);

    <Q> void j(@NotNull e<? extends Q> eVar, @NotNull Function2<? super Q, ? super Continuation<? super R>, ? extends Object> function2);
}
