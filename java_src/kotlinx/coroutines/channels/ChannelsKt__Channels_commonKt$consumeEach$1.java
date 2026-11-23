package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 176)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt", f = "Channels.common.kt", i = {0, 0}, l = {82}, m = "consumeEach", n = {"action", "$this$consume$iv"}, s = {"L$0", "L$1"})
@SourceDebugExtension({"SMAP\nChannels.common.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.common.kt\nkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1\n*L\n1#1,104:1\n*E\n"})
final class ChannelsKt__Channels_commonKt$consumeEach$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92461b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92462c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92463d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92464e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92465f;

    ChannelsKt__Channels_commonKt$consumeEach$1(Continuation<? super ChannelsKt__Channels_commonKt$consumeEach$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92464e = obj;
        this.f92465f |= Integer.MIN_VALUE;
        return ChannelsKt__Channels_commonKt.c(null, null, this);
    }
}
