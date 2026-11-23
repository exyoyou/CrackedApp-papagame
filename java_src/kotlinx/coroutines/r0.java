package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface r0<T> extends v1 {

    public static final class a {
        public static <T, R> R b(@NotNull r0<? extends T> r0Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) v1.a.d(r0Var, r10, function2);
        }

        @Nullable
        public static <T, E extends CoroutineContext.Element> E c(@NotNull r0<? extends T> r0Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) v1.a.e(r0Var, key);
        }

        @NotNull
        public static <T> CoroutineContext d(@NotNull r0<? extends T> r0Var, @NotNull CoroutineContext.Key<?> key) {
            return v1.a.h(r0Var, key);
        }

        @NotNull
        public static <T> CoroutineContext e(@NotNull r0<? extends T> r0Var, @NotNull CoroutineContext coroutineContext) {
            return v1.a.i(r0Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static <T> v1 f(@NotNull r0<? extends T> r0Var, @NotNull v1 v1Var) {
            return v1.a.j(r0Var, v1Var);
        }
    }

    @ExperimentalCoroutinesApi
    @Nullable
    Throwable L();

    @NotNull
    kotlinx.coroutines.selects.e<T> Q();

    @ExperimentalCoroutinesApi
    T d();

    @Nullable
    Object g(@NotNull Continuation<? super T> continuation);
}
