package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class SemaphoreImpl$addAcquireToQueue$createNewSegment$1 extends FunctionReferenceImpl implements Function2<Long, c, c> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SemaphoreImpl$addAcquireToQueue$createNewSegment$1 f93820b = new SemaphoreImpl$addAcquireToQueue$createNewSegment$1();

    SemaphoreImpl$addAcquireToQueue$createNewSegment$1() {
        super(2, SemaphoreKt.class, "createSegment", "createSegment(JLkotlinx/coroutines/sync/SemaphoreSegment;)Lkotlinx/coroutines/sync/SemaphoreSegment;", 1);
    }

    @NotNull
    public final c a(long j10, @Nullable c cVar) {
        return SemaphoreKt.j(j10, cVar);
    }

    @Override // kotlin.jvm.functions.Function2
    public /* bridge */ /* synthetic */ c invoke(Long l10, c cVar) {
        return a(l10.longValue(), cVar);
    }
}
