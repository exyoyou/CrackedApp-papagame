package kotlinx.coroutines.debug.internal;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
@DebugMetadata(c = "kotlinx.coroutines.debug.internal.DebugCoroutineInfoImpl", f = "DebugCoroutineInfoImpl.kt", i = {0, 0, 0}, l = {167}, m = "yieldFrames", n = {"this", "$this$yieldFrames", TypedValues.AttributesType.S_FRAME}, s = {"L$0", "L$1", "L$2"})
final class DebugCoroutineInfoImpl$yieldFrames$1 extends ContinuationImpl {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Object f92749b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Object f92750c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Object f92751d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    /* synthetic */ Object f92752e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final /* synthetic */ DebugCoroutineInfoImpl f92753f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f92754g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    DebugCoroutineInfoImpl$yieldFrames$1(DebugCoroutineInfoImpl debugCoroutineInfoImpl, Continuation<? super DebugCoroutineInfoImpl$yieldFrames$1> continuation) {
        super(continuation);
        this.f92753f = debugCoroutineInfoImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    @Nullable
    public final Object invokeSuspend(@NotNull Object obj) {
        this.f92752e = obj;
        this.f92754g |= Integer.MIN_VALUE;
        return this.f92753f.j(null, null, this);
    }
}
