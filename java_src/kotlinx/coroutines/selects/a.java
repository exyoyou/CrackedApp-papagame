package kotlinx.coroutines.selects;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class a {
    /* JADX WARN: Multi-variable type inference failed */
    @ExperimentalCoroutinesApi
    public static final <R> void a(@NotNull b<? super R> bVar, long j10, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        bVar.b(new OnTimeout(j10).b(), function1);
    }

    @ExperimentalCoroutinesApi
    public static final <R> void b(@NotNull b<? super R> bVar, long j10, @NotNull Function1<? super Continuation<? super R>, ? extends Object> function1) {
        a(bVar, DelayKt.e(j10), function1);
    }
}
