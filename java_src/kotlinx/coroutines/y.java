package kotlinx.coroutines;

import kotlin.Result;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nCompletableDeferred.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CompletableDeferred.kt\nkotlinx/coroutines/CompletableDeferredKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,91:1\n1#2:92\n*E\n"})
public final class y {
    @NotNull
    public static final <T> w<T> a(T t10) {
        x xVar = new x(null);
        xVar.q(t10);
        return xVar;
    }

    @NotNull
    public static final <T> w<T> b(@Nullable v1 v1Var) {
        return new x(v1Var);
    }

    public static /* synthetic */ w c(v1 v1Var, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            v1Var = null;
        }
        return b(v1Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean d(@NotNull w<T> wVar, @NotNull Object obj) {
        Throwable thM53exceptionOrNullimpl = Result.m53exceptionOrNullimpl(obj);
        return thM53exceptionOrNullimpl == null ? wVar.q(obj) : wVar.c(thM53exceptionOrNullimpl);
    }
}
