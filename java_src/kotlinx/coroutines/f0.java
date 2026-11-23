package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@DelicateCoroutinesApi
@ExperimentalCoroutinesApi
public interface f0<S> extends t2<S> {

    public static final class a {
        public static <S, R> R a(@NotNull f0<S> f0Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) t2.a.a(f0Var, r10, function2);
        }

        @Nullable
        public static <S, E extends CoroutineContext.Element> E b(@NotNull f0<S> f0Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) t2.a.b(f0Var, key);
        }

        @NotNull
        public static <S> CoroutineContext c(@NotNull f0<S> f0Var, @NotNull CoroutineContext.Key<?> key) {
            return t2.a.c(f0Var, key);
        }

        @NotNull
        public static <S> CoroutineContext d(@NotNull f0<S> f0Var, @NotNull CoroutineContext coroutineContext) {
            return t2.a.d(f0Var, coroutineContext);
        }
    }

    @NotNull
    CoroutineContext e(@NotNull CoroutineContext.Element element);

    @NotNull
    f0<S> o();
}
