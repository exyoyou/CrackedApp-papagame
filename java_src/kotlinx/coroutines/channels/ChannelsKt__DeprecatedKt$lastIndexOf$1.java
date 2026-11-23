package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 0}, l = {517}, m = "lastIndexOf", n = {"element", "lastIndex", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2", "L$3"})
final class ChannelsKt__DeprecatedKt$lastIndexOf$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92574d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f92575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    Object f92576f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    /* synthetic */ Object f92577g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f92578h;

    ChannelsKt__DeprecatedKt$lastIndexOf$1(Continuation<? super ChannelsKt__DeprecatedKt$lastIndexOf$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92577g = obj;
        this.f92578h |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.F(null, null, this);
    }
}
