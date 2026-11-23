package kotlinx.coroutines.channels;

import kotlin.Unit;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.KFunction;
import kotlinx.coroutines.internal.q0;
import kotlinx.coroutines.internal.v0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class BufferedChannelKt {
    private static final int B = 0;
    private static final int C = 1;
    private static final int D = 2;
    private static final int E = 3;
    private static final int F = 60;
    private static final long G = 1152921504606846975L;
    private static final long H = 4611686018427387904L;
    private static final long I = 4611686018427387903L;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final long f92427d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f92428e = Long.MAX_VALUE;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final int f92441r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int f92442s = 1;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final int f92443t = 2;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final int f92444u = 3;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f92445v = 4;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f92446w = 5;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final k<Object> f92424a = new k<>(-1, null, null, 0);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    public static final int f92425b = v0.e("kotlinx.coroutines.bufferedChannel.segmentSize", 32, 0, 0, 12, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f92426c = v0.e("kotlinx.coroutines.bufferedChannel.expandBufferCompletionWaitIterations", 10000, 0, 0, 12, null);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final q0 f92429f = new q0("BUFFERED");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NotNull
    private static final q0 f92430g = new q0("SHOULD_BUFFER");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private static final q0 f92431h = new q0("S_RESUMING_BY_RCV");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private static final q0 f92432i = new q0("RESUMING_BY_EB");

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private static final q0 f92433j = new q0("POISONED");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NotNull
    private static final q0 f92434k = new q0("DONE_RCV");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NotNull
    private static final q0 f92435l = new q0("INTERRUPTED_SEND");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NotNull
    private static final q0 f92436m = new q0("INTERRUPTED_RCV");

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NotNull
    private static final q0 f92437n = new q0("CHANNEL_CLOSED");

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotNull
    private static final q0 f92438o = new q0("SUSPEND");

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NotNull
    private static final q0 f92439p = new q0("SUSPEND_NO_WAITER");

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NotNull
    private static final q0 f92440q = new q0("FAILED");

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @NotNull
    private static final q0 f92447x = new q0("NO_RECEIVE_RESULT");

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    @NotNull
    private static final q0 f92448y = new q0("CLOSE_HANDLER_CLOSED");

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    @NotNull
    private static final q0 f92449z = new q0("CLOSE_HANDLER_INVOKED");

    @NotNull
    private static final q0 A = new q0("NO_CLOSE_CAUSE");

    private static final long A(long j10) {
        return j10 & 4611686018427387903L;
    }

    private static final boolean B(long j10) {
        return (j10 & H) != 0;
    }

    private static final int C(long j10) {
        return (int) (j10 >> 60);
    }

    private static final long D(long j10) {
        return j10 & G;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long E(int i10) {
        if (i10 == 0) {
            return 0L;
        }
        if (i10 != Integer.MAX_VALUE) {
            return i10;
        }
        return Long.MAX_VALUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> boolean F(kotlinx.coroutines.n<? super T> nVar, T t10, Function1<? super Throwable, Unit> function1) {
        Object objH = nVar.H(t10, null, function1);
        if (objH == null) {
            return false;
        }
        nVar.B(objH);
        return true;
    }

    static /* synthetic */ boolean G(kotlinx.coroutines.n nVar, Object obj, Function1 function1, int i10, Object obj2) {
        if ((i10 & 2) != 0) {
            function1 = null;
        }
        return F(nVar, obj, function1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long v(long j10, boolean z10) {
        return (z10 ? H : 0L) + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final long w(long j10, int i10) {
        return (((long) i10) << 60) + j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <E> k<E> x(long j10, k<E> kVar) {
        return new k<>(j10, kVar, kVar.G(), 0);
    }

    @NotNull
    public static final <E> KFunction<k<E>> y() {
        return BufferedChannelKt$createSegmentFunction$1.f92450b;
    }

    @NotNull
    public static final q0 z() {
        return f92437n;
    }
}
