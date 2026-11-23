package kotlinx.coroutines;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.AwaitKt", f = "Await.kt", i = {0}, l = {47}, m = "joinAll", n = {"$this$forEach$iv"}, s = {"L$0"})
final class AwaitKt$joinAll$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92263b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f92264c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f92265d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92266e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f92267f;

    AwaitKt$joinAll$1(Continuation<? super AwaitKt$joinAll$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92266e = obj;
        this.f92267f |= Integer.MIN_VALUE;
        return AwaitKt.d(null, this);
    }
}
