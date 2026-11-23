package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicInteger;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class v {
    public static final int a(@NotNull AtomicInteger atomicInteger) {
        return atomicInteger.get();
    }

    public static final void b(@NotNull AtomicInteger atomicInteger, int i10) {
        atomicInteger.set(i10);
    }
}
