package kotlinx.coroutines.channels;

import java.util.concurrent.atomic.AtomicReferenceArray;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.f3;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.n0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BufferedChannel.kt\nkotlinx/coroutines/channels/ChannelSegment\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,3086:1\n1#2:3087\n*E\n"})
public final class k<E> extends n0<k<E>> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private final BufferedChannel<E> f92707f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final /* synthetic */ AtomicReferenceArray f92708g;

    public k(long j10, @Nullable k<E> kVar, @Nullable BufferedChannel<E> bufferedChannel, int i10) {
        super(j10, kVar, i10);
        this.f92707f = bufferedChannel;
        this.f92708g = new AtomicReferenceArray(BufferedChannelKt.f92425b * 2);
    }

    private final /* synthetic */ AtomicReferenceArray H() {
        return this.f92708g;
    }

    private final void M(int i10, Object obj) {
        H().set(i10 * 2, obj);
    }

    public final boolean D(int i10, @Nullable Object obj, @Nullable Object obj2) {
        return io.netty.util.a.a(H(), (i10 * 2) + 1, obj, obj2);
    }

    public final void E(int i10) {
        M(i10, null);
    }

    @Nullable
    public final Object F(int i10, @Nullable Object obj) {
        return H().getAndSet((i10 * 2) + 1, obj);
    }

    @NotNull
    public final BufferedChannel<E> G() {
        BufferedChannel<E> bufferedChannel = this.f92707f;
        Intrinsics.checkNotNull(bufferedChannel);
        return bufferedChannel;
    }

    public final E I(int i10) {
        return (E) H().get(i10 * 2);
    }

    @Nullable
    public final Object J(int i10) {
        return H().get((i10 * 2) + 1);
    }

    public final void K(int i10, boolean z10) {
        if (z10) {
            G().i2((this.f93516d * ((long) BufferedChannelKt.f92425b)) + ((long) i10));
        }
        A();
    }

    public final E L(int i10) {
        E eI = I(i10);
        E(i10);
        return eI;
    }

    public final void N(int i10, @Nullable Object obj) {
        H().set((i10 * 2) + 1, obj);
    }

    public final void O(int i10, E e10) {
        M(i10, e10);
    }

    @Override // kotlinx.coroutines.internal.n0
    public int y() {
        return BufferedChannelKt.f92425b;
    }

    @Override // kotlinx.coroutines.internal.n0
    public void z(int i10, @Nullable Throwable th, @NotNull CoroutineContext coroutineContext) {
        Function1<E, Unit> function1;
        Function1<E, Unit> function2;
        int i11 = BufferedChannelKt.f92425b;
        boolean z10 = i10 >= i11;
        if (z10) {
            i10 -= i11;
        }
        E eI = I(i10);
        while (true) {
            Object objJ = J(i10);
            if ((objJ instanceof f3) || (objJ instanceof t)) {
                if (D(i10, objJ, z10 ? BufferedChannelKt.f92435l : BufferedChannelKt.f92436m)) {
                    E(i10);
                    K(i10, !z10);
                    if (!z10 || (function1 = G().f92395c) == null) {
                        return;
                    }
                    OnUndeliveredElementKt.b(function1, eI, coroutineContext);
                    return;
                }
            } else {
                if (objJ == BufferedChannelKt.f92435l || objJ == BufferedChannelKt.f92436m) {
                    break;
                }
                if (objJ != BufferedChannelKt.f92432i && objJ != BufferedChannelKt.f92431h) {
                    if (objJ == BufferedChannelKt.f92434k || objJ == BufferedChannelKt.f92429f || objJ == BufferedChannelKt.z()) {
                        return;
                    }
                    throw new IllegalStateException(("unexpected state: " + objJ).toString());
                }
            }
        }
        E(i10);
        if (!z10 || (function2 = G().f92395c) == null) {
            return;
        }
        OnUndeliveredElementKt.b(function2, eI, coroutineContext);
    }
}
