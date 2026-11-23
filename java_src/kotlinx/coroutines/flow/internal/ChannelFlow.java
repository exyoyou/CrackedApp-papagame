package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.Unit;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ReceiveChannel;
import kotlinx.coroutines.channels.q;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;
import kotlinx.coroutines.o0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
@SourceDebugExtension({"SMAP\nChannelFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChannelFlow.kt\nkotlinx/coroutines/flow/internal/ChannelFlow\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,241:1\n1#2:242\n*E\n"})
public abstract class ChannelFlow<T> implements i<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @NotNull
    public final CoroutineContext f93256b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    public final int f93257c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    @NotNull
    public final BufferOverflow f93258d;

    public ChannelFlow(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        this.f93256b = coroutineContext;
        this.f93257c = i10;
        this.f93258d = bufferOverflow;
    }

    static /* synthetic */ <T> Object h(ChannelFlow<T> channelFlow, kotlinx.coroutines.flow.f<? super T> fVar, Continuation<? super Unit> continuation) {
        Object objG = m0.g(new ChannelFlow$collect$2(fVar, channelFlow, null), continuation);
        return objG == IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED() ? objG : Unit.INSTANCE;
    }

    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull kotlinx.coroutines.flow.f<? super T> fVar, @NotNull Continuation<? super Unit> continuation) {
        return h(this, fVar, continuation);
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0013 A[PHI: r4
      0x0013: PHI (r4v5 int) = (r4v2 int), (r4v2 int), (r4v4 int) binds: [B:8:0x0011, B:13:0x0019, B:16:0x001d] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlinx.coroutines.flow.internal.i
    @NotNull
    public kotlinx.coroutines.flow.e<T> f(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow) {
        CoroutineContext coroutineContextPlus = coroutineContext.plus(this.f93256b);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i11 = this.f93257c;
            if (i11 != -3) {
                if (i10 == -3) {
                    i10 = i11;
                } else if (i11 != -2) {
                    if (i10 != -2 && (i11 = i11 + i10) < 0) {
                        i10 = Integer.MAX_VALUE;
                    } else {
                        i10 = i11;
                    }
                }
            }
            bufferOverflow = this.f93258d;
        }
        return (Intrinsics.areEqual(coroutineContextPlus, this.f93256b) && i10 == this.f93257c && bufferOverflow == this.f93258d) ? this : j(coroutineContextPlus, i10, bufferOverflow);
    }

    @Nullable
    protected String g() {
        return null;
    }

    @Nullable
    protected abstract Object i(@NotNull q<? super T> qVar, @NotNull Continuation<? super Unit> continuation);

    @NotNull
    protected abstract ChannelFlow<T> j(@NotNull CoroutineContext coroutineContext, int i10, @NotNull BufferOverflow bufferOverflow);

    @Nullable
    public kotlinx.coroutines.flow.e<T> k() {
        return null;
    }

    @NotNull
    public final Function2<q<? super T>, Continuation<? super Unit>, Object> l() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public final int m() {
        int i10 = this.f93257c;
        if (i10 == -3) {
            return -2;
        }
        return i10;
    }

    @NotNull
    public ReceiveChannel<T> n(@NotNull l0 l0Var) {
        return ProduceKt.h(l0Var, this.f93256b, m(), this.f93258d, CoroutineStart.ATOMIC, null, l(), 16, null);
    }

    @NotNull
    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strG = g();
        if (strG != null) {
            arrayList.add(strG);
        }
        if (this.f93256b != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + this.f93256b);
        }
        if (this.f93257c != -3) {
            arrayList.add("capacity=" + this.f93257c);
        }
        if (this.f93258d != BufferOverflow.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.f93258d);
        }
        return o0.a(this) + '[' + CollectionsKt___CollectionsKt.joinToString$default(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
