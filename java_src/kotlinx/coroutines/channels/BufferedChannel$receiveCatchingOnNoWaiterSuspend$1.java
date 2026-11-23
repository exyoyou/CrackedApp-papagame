package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.BufferedChannel", f = "BufferedChannel.kt", i = {0, 0, 0, 0}, l = {3087}, m = "receiveCatchingOnNoWaiterSuspend-GKJJFZk", n = {"this", "segment", "index", "r"}, s = {"L$0", "L$1", "I$0", "J$0"})
final class BufferedChannel$receiveCatchingOnNoWaiterSuspend$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f92420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    /* synthetic */ Object f92421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final /* synthetic */ BufferedChannel<E> f92422g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    int f92423h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    BufferedChannel$receiveCatchingOnNoWaiterSuspend$1(BufferedChannel<E> bufferedChannel, Continuation<? super BufferedChannel$receiveCatchingOnNoWaiterSuspend$1> continuation) {
        super(continuation);
        this.f92422g = bufferedChannel;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92421f = obj;
        this.f92423h |= Integer.MIN_VALUE;
        Object objS1 = this.f92422g.s1(null, 0, 0L, this);
        return objS1 == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objS1 : j.b(objS1);
    }
}
