package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.channels.ProduceKt", f = "Produce.kt", i = {0, 0}, l = {150}, m = "awaitClose", n = {"$this$awaitClose", "block"}, s = {"L$0", "L$1"})
final class ProduceKt$awaitClose$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    /* synthetic */ Object f92672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f92673e;

    ProduceKt$awaitClose$1(Continuation<? super ProduceKt$awaitClose$1> continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92672d = obj;
        this.f92673e |= Integer.MIN_VALUE;
        return ProduceKt.a(null, null, this);
    }
}
