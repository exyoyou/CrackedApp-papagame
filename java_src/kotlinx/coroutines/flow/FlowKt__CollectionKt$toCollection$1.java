package kotlinx.coroutines.flow;

import io.netty.handler.codec.rtsp.RtspHeaders;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__CollectionKt", f = "Collection.kt", i = {0}, l = {22}, m = "toCollection", n = {RtspHeaders.Values.DESTINATION}, s = {"L$0"})
final class FlowKt__CollectionKt$toCollection$1<T, C extends Collection<? super T>> extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92855b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    /* synthetic */ Object f92856c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92857d;

    FlowKt__CollectionKt$toCollection$1(Continuation<? super FlowKt__CollectionKt$toCollection$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92856c = obj;
        this.f92857d |= Integer.MIN_VALUE;
        return g.W1(null, null, this);
    }
}
