package kotlinx.coroutines.channels;

import com.join.mgps.activity.QuarkInstallAppActivity_;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0}, l = {517}, m = QuarkInstallAppActivity_.COUNT_EXTRA, n = {QuarkInstallAppActivity_.COUNT_EXTRA, "$this$consume$iv$iv"}, s = {"L$0", "L$1"})
final class ChannelsKt__DeprecatedKt$count$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92482b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92483c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92484d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92485e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92486f;

    ChannelsKt__DeprecatedKt$count$1(Continuation<? super ChannelsKt__DeprecatedKt$count$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92485e = obj;
        this.f92486f |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.g(null, this);
    }
}
