package kotlinx.coroutines;

import java.util.concurrent.Future;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class z1 {
    public static final void a(@NotNull n<?> nVar, @NotNull Future<?> future) {
        q.c(nVar, new k(future));
    }

    @InternalCoroutinesApi
    @NotNull
    public static final c1 b(@NotNull v1 v1Var, @NotNull Future<?> future) {
        return JobKt__JobKt.B(v1Var, false, false, new l(future), 3, null);
    }
}
