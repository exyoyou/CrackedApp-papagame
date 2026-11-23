package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface e<T> {
    @Nullable
    Object a(@NotNull f<? super T> fVar, @NotNull Continuation<? super Unit> continuation);
}
