package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 1, 1, 1}, l = {153, 156}, m = "lastOrNull", n = {"$this$consume$iv", "iterator", "$this$consume$iv", "iterator", "last"}, s = {"L$0", "L$1", "L$0", "L$1", "L$2"})
final class ChannelsKt__DeprecatedKt$lastOrNull$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92579b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92580c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92581d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92582e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92583f;

    ChannelsKt__DeprecatedKt$lastOrNull$1(Continuation<? super ChannelsKt__DeprecatedKt$lastOrNull$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92582e = obj;
        this.f92583f |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.G(null, this);
    }
}
