package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface z extends v1 {

    public static final class a {
        public static <R> R b(@NotNull z zVar, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) v1.a.d(zVar, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E c(@NotNull z zVar, @NotNull CoroutineContext.Key<E> key) {
            return (E) v1.a.e(zVar, key);
        }

        @NotNull
        public static CoroutineContext d(@NotNull z zVar, @NotNull CoroutineContext.Key<?> key) {
            return v1.a.h(zVar, key);
        }

        @NotNull
        public static CoroutineContext e(@NotNull z zVar, @NotNull CoroutineContext coroutineContext) {
            return v1.a.i(zVar, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static v1 f(@NotNull z zVar, @NotNull v1 v1Var) {
            return v1.a.j(zVar, v1Var);
        }
    }

    boolean c(@NotNull Throwable th);

    boolean complete();
}
