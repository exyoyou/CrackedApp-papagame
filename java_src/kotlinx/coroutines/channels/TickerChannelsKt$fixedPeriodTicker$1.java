package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.TickerChannelsKt", f = "TickerChannels.kt", i = {0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3}, l = {80, 84, 90, 92}, m = "fixedPeriodTicker", n = {"channel", "delayMillis", "deadline", "channel", "deadline", "delayNs", "channel", "deadline", "delayNs", "channel", "deadline", "delayNs"}, s = {"L$0", "J$0", "J$1", "L$0", "J$0", "J$1", "L$0", "J$0", "J$1", "L$0", "J$0", "J$1"})
final class TickerChannelsKt$fixedPeriodTicker$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f92682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    long f92683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92686f;

    TickerChannelsKt$fixedPeriodTicker$1(Continuation<? super TickerChannelsKt$fixedPeriodTicker$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92685e = obj;
        this.f92686f |= Integer.MIN_VALUE;
        return TickerChannelsKt.d(0L, 0L, null, this);
    }
}
