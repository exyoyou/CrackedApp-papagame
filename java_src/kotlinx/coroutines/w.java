package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface w<T> extends r0<T> {

    public static final class a {
        public static <T, R> R b(@NotNull w<T> wVar, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) r0.a.b(wVar, r10, function2);
        }

        @Nullable
        public static <T, E extends CoroutineContext.Element> E c(@NotNull w<T> wVar, @NotNull CoroutineContext.Key<E> key) {
            return (E) r0.a.c(wVar, key);
        }

        @NotNull
        public static <T> CoroutineContext d(@NotNull w<T> wVar, @NotNull CoroutineContext.Key<?> key) {
            return r0.a.d(wVar, key);
        }

        @NotNull
        public static <T> CoroutineContext e(@NotNull w<T> wVar, @NotNull CoroutineContext coroutineContext) {
            return r0.a.e(wVar, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static <T> v1 f(@NotNull w<T> wVar, @NotNull v1 v1Var) {
            return r0.a.f(wVar, v1Var);
        }
    }

    boolean c(@NotNull Throwable th);

    boolean q(T t10);
}
