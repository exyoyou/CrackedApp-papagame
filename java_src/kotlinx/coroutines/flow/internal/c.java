package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class c<F> {
    public abstract boolean a(F f10);

    @NotNull
    public abstract Continuation<Unit>[] b(F f10);
}
