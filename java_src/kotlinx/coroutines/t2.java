package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface t2<S> extends CoroutineContext.Element {

    public static final class a {
        public static <S, R> R a(@NotNull t2<S> t2Var, R r10, @NotNull Function2<? super R, ? super CoroutineContext.Element, ? extends R> function2) {
            return (R) CoroutineContext.Element.DefaultImpls.fold(t2Var, r10, function2);
        }

        @Nullable
        public static <S, E extends CoroutineContext.Element> E b(@NotNull t2<S> t2Var, @NotNull CoroutineContext.Key<E> key) {
            return (E) CoroutineContext.Element.DefaultImpls.get(t2Var, key);
        }

        @NotNull
        public static <S> CoroutineContext c(@NotNull t2<S> t2Var, @NotNull CoroutineContext.Key<?> key) {
            return CoroutineContext.Element.DefaultImpls.minusKey(t2Var, key);
        }

        @NotNull
        public static <S> CoroutineContext d(@NotNull t2<S> t2Var, @NotNull CoroutineContext coroutineContext) {
            return CoroutineContext.Element.DefaultImpls.plus(t2Var, coroutineContext);
        }
    }

    S a0(@NotNull CoroutineContext coroutineContext);

    void n(@NotNull CoroutineContext coroutineContext, S s10);
}
