package kotlinx.coroutines.flow;

import com.join.mgps.activity.QuarkInstallAppActivity_;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CountKt", f = "Count.kt", i = {0}, l = {25}, m = QuarkInstallAppActivity_.COUNT_EXTRA, n = {"i"}, s = {"L$0"})
final class FlowKt__CountKt$count$3<T> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    /* synthetic */ Object f92863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92864d;

    FlowKt__CountKt$count$3(Continuation<? super FlowKt__CountKt$count$3> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92863c = obj;
        this.f92864d |= Integer.MIN_VALUE;
        return g.Z(null, null, this);
    }
}
