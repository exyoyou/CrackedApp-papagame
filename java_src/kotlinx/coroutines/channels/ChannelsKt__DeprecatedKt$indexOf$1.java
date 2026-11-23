package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {517}, m = "indexOf", n = {"element", "index", "$this$consume$iv$iv"}, s = {"L$0", "L$1", "L$2"})
final class ChannelsKt__DeprecatedKt$indexOf$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92561b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92562c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92563d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f92564e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f92565f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f92566g;

    ChannelsKt__DeprecatedKt$indexOf$1(Continuation<? super ChannelsKt__DeprecatedKt$indexOf$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92565f = obj;
        this.f92566g |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.D(null, null, this);
    }
}
