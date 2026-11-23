package kotlinx.coroutines.internal;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.InlineMarker;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class r0 {
    @InternalCoroutinesApi
    public static /* synthetic */ void a() {
    }

    @InternalCoroutinesApi
    public static final <T> T b(@NotNull Object obj, @NotNull Function0<? extends T> function0) {
        T tInvoke;
        synchronized (obj) {
            try {
                tInvoke = function0.invoke();
                InlineMarker.finallyStart(1);
            } finally {
                InlineMarker.finallyStart(1);
                InlineMarker.finallyEnd(1);
            }
        }
        return tInvoke;
    }
}
