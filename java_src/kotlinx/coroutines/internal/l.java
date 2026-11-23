package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public abstract class l {
    @NotNull
    public abstract Function1<Throwable, Throwable> a(@NotNull Class<? extends Throwable> cls);
}
