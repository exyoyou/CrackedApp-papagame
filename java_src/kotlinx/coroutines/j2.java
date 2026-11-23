package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@InternalCoroutinesApi
public interface j2 extends v1 {

    public static final class a {
        public static <R> R b(@NotNull j2 j2Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) v1.a.d(j2Var, r10, function2);
        }

        @Nullable
        public static <E extends CoroutineContext.Element> E c(@NotNull j2 j2Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) v1.a.e(j2Var, key);
        }

        @NotNull
        public static CoroutineContext d(@NotNull j2 j2Var, @NotNull CoroutineContext.Key<?> key) {
            return v1.a.h(j2Var, key);
        }

        @NotNull
        public static CoroutineContext e(@NotNull j2 j2Var, @NotNull CoroutineContext coroutineContext) {
            return v1.a.i(j2Var, coroutineContext);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Operator '+' on two Job objects is meaningless. Job is a coroutine context element and `+` is a set-sum operator for coroutine contexts. The job to the right of `+` just replaces the job the left of `+`.")
        @NotNull
        public static v1 f(@NotNull j2 j2Var, @NotNull v1 v1Var) {
            return v1.a.j(j2Var, v1Var);
        }
    }

    @InternalCoroutinesApi
    @NotNull
    CancellationException P();
}
