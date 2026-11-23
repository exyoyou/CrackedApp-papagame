package kotlinx.coroutines.channels;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.Boxing;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Reflection;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.internal.OnUndeliveredElementKt;
import kotlinx.coroutines.internal.UndeliveredElementException;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nConflatedBufferedChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,94:1\n556#2,5:95\n522#2,6:100\n522#2,6:106\n556#2,5:112\n*S KotlinDebug\n*F\n+ 1 ConflatedBufferedChannel.kt\nkotlinx/coroutines/channels/ConflatedBufferedChannel\n*L\n37#1:95,5\n49#1:100,6\n81#1:106,6\n84#1:112,5\n*E\n"})
public class n<E> extends BufferedChannel<E> {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final int f92711n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NotNull
    private final BufferOverflow f92712o;

    public /* synthetic */ n(int i10, BufferOverflow bufferOverflow, Function1 function1, int i11, DefaultConstructorMarker defaultConstructorMarker) {
        this(i10, bufferOverflow, (i11 & 4) != 0 ? null : function1);
    }

    static /* synthetic */ <E> Object j2(n<E> nVar, E e10, Continuation<? super Unit> continuation) throws Throwable {
        UndeliveredElementException undeliveredElementExceptionD;
        Object objM2 = nVar.m2(e10, true);
        if (!(objM2 instanceof j.a)) {
            return Unit.INSTANCE;
        }
        j.f(objM2);
        Function1<E, Unit> function1 = nVar.f92395c;
        if (function1 == null || (undeliveredElementExceptionD = OnUndeliveredElementKt.d(function1, e10, null, 2, null)) == null) {
            throw nVar.z0();
        }
        ExceptionsKt__ExceptionsKt.addSuppressed(undeliveredElementExceptionD, nVar.z0());
        throw undeliveredElementExceptionD;
    }

    static /* synthetic */ <E> Object k2(n<E> nVar, E e10, Continuation<? super Boolean> continuation) {
        Object objM2 = nVar.m2(e10, true);
        if (objM2 instanceof j.c) {
            return Boxing.boxBoolean(false);
        }
        return Boxing.boxBoolean(true);
    }

    private final Object l2(E e10, boolean z10) {
        Function1<E, Unit> function1;
        UndeliveredElementException undeliveredElementExceptionD;
        Object objS = super.s(e10);
        if (j.m(objS) || j.k(objS)) {
            return objS;
        }
        if (!z10 || (function1 = this.f92395c) == null || (undeliveredElementExceptionD = OnUndeliveredElementKt.d(function1, e10, null, 2, null)) == null) {
            return j.f92703b.c(Unit.INSTANCE);
        }
        throw undeliveredElementExceptionD;
    }

    private final Object m2(E e10, boolean z10) {
        return this.f92712o == BufferOverflow.DROP_LATEST ? l2(e10, z10) : Y1(e10);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    @Nullable
    public Object E1(E e10, @NotNull Continuation<? super Boolean> continuation) {
        return k2(this, e10, continuation);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected boolean R0() {
        return this.f92712o == BufferOverflow.DROP_OLDEST;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel
    public boolean U1() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    @Nullable
    public Object V(E e10, @NotNull Continuation<? super Unit> continuation) {
        return j2(this, e10, continuation);
    }

    @Override // kotlinx.coroutines.channels.BufferedChannel, kotlinx.coroutines.channels.s
    @NotNull
    public Object s(E e10) {
        return m2(e10, false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.channels.BufferedChannel
    protected void y1(@NotNull kotlinx.coroutines.selects.j<?> jVar, @Nullable Object obj) {
        Object objS = s(obj);
        if (!(objS instanceof j.c)) {
            jVar.f(Unit.INSTANCE);
        } else {
            if (!(objS instanceof j.a)) {
                throw new IllegalStateException("unreachable".toString());
            }
            j.f(objS);
            jVar.f(BufferedChannelKt.z());
        }
    }

    public n(int i10, @NotNull BufferOverflow bufferOverflow, @Nullable Function1<? super E, Unit> function1) {
        super(i10, function1);
        this.f92711n = i10;
        this.f92712o = bufferOverflow;
        if (!(bufferOverflow != BufferOverflow.SUSPEND)) {
            throw new IllegalArgumentException(("This implementation does not support suspension for senders, use " + Reflection.getOrCreateKotlinClass(BufferedChannel.class).getSimpleName() + " instead").toString());
        }
        if (i10 >= 1) {
            return;
        }
        throw new IllegalArgumentException(("Buffered channel capacity must be at least 1, but " + i10 + " was specified").toString());
    }
}
