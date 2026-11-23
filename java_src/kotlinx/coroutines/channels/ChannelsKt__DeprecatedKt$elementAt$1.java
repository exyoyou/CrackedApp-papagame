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
@DebugMetadata(c = "kotlinx.coroutines.channels.ChannelsKt__DeprecatedKt", f = "Deprecated.kt", i = {0, 0, 0}, l = {68}, m = "elementAt", n = {"$this$consume$iv", "index", QuarkInstallAppActivity_.COUNT_EXTRA}, s = {"L$0", "I$0", "I$1"})
final class ChannelsKt__DeprecatedKt$elementAt$1<E> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f92508b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f92509c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92510d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    Object f92511e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f92512f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f92513g;

    ChannelsKt__DeprecatedKt$elementAt$1(Continuation<? super ChannelsKt__DeprecatedKt$elementAt$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92512f = obj;
        this.f92513g |= Integer.MIN_VALUE;
        return ChannelsKt__DeprecatedKt.o(null, 0, this);
    }
}
