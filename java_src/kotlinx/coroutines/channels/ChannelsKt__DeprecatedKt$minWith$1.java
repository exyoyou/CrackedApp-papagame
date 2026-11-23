package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0, 1, 1, 1, 1}, l = {464, 466}, m = "minWith", n = {"comparator", "$this$consume$iv", "iterator", "comparator", "$this$consume$iv", "iterator", "min"}, s = {"L$0", "L$1", "L$2", "L$0", "L$1", "L$2", "L$3"})
final class ChannelsKt__DeprecatedKt$minWith$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92605b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92606c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92607d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f92608e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f92609f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f92610g;

    ChannelsKt__DeprecatedKt$minWith$1(Continuation<? super ChannelsKt__DeprecatedKt$minWith$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92609f = obj;
        this.f92610g |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.Q(null, null, this);
    }
}
