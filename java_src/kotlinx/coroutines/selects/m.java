package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.InlineMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class m {
    @Nullable
    public static final <R> Object a(@NotNull Function1<? super b<? super R>, Unit> function1, @NotNull Continuation<? super R> continuation) {
        n nVar = new n(continuation.getContext());
        function1.invoke(nVar);
        return nVar.w(continuation);
    }

    private static final <R> Object b(Function1<? super b<? super R>, Unit> function1, Continuation<? super R> continuation) {
        InlineMarker.mark(3);
        throw null;
    }
}
