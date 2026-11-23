package kotlinx.coroutines.flow;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ChannelsKt", f = "Channels.kt", i = {0, 0, 0, 1, 1, 1}, l = {32, 33}, m = "emitAllImpl$FlowKt__ChannelsKt", n = {"$this$emitAllImpl", "channel", "consume", "$this$emitAllImpl", "channel", "consume"}, s = {"L$0", "L$1", "Z$0", "L$0", "L$1", "Z$0"})
final class FlowKt__ChannelsKt$emitAllImpl$1<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92843b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92844c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92845d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    boolean f92846e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f92847f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f92848g;

    FlowKt__ChannelsKt$emitAllImpl$1(Continuation<? super FlowKt__ChannelsKt$emitAllImpl$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92847f = obj;
        this.f92848g |= Integer.MIN_VALUE;
        return FlowKt__ChannelsKt.e(null, null, false, this);
    }
}
