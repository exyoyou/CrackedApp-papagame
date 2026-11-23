package kotlinx.coroutines.flow;

import kotlin.time.Duration;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class s {
    @NotNull
    public static final r a(@NotNull r.a aVar, long j10, long j11) {
        return new StartedWhileSubscribed(Duration.m1399getInWholeMillisecondsimpl(j10), Duration.m1399getInWholeMillisecondsimpl(j11));
    }

    public static /* synthetic */ r b(r.a aVar, long j10, long j11, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            j10 = Duration.INSTANCE.m1479getZEROUwyO8pc();
        }
        if ((i10 & 2) != 0) {
            j11 = Duration.INSTANCE.m1477getINFINITEUwyO8pc();
        }
        return a(aVar, j10, j11);
    }
}
