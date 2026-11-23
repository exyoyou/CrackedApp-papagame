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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {41}, m = "consumeEach", n = {"action", "channel$iv"}, s = {"L$0", "L$1"})
@SourceDebugExtension({"SMAP\nDeprecated.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Deprecated.kt\nkotlinx/coroutines/channels/ChannelsKt__DeprecatedKt$consumeEach$1\n*L\n1#1,509:1\n*E\n"})
final class ChannelsKt__DeprecatedKt$consumeEach$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92475b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92476c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92477d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92478e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92479f;

    ChannelsKt__DeprecatedKt$consumeEach$1(Continuation<? super ChannelsKt__DeprecatedKt$consumeEach$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92478e = obj;
        this.f92479f |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.c(null, null, this);
    }
}
