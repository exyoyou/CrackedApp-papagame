package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.4.0, binary compatibility with earlier versions")
    public static final /* synthetic */ g a(int i10) {
        return d(i10, null, null, 6, null);
    }

    @NotNull
    public static final <E> g<E> b(int i10, @NotNull BufferOverflow bufferOverflow, @Nullable Function1<? super E, Unit> function1) {
        g<E> bufferedChannel;
        if (i10 != -2) {
            if (i10 == -1) {
                if (bufferOverflow == BufferOverflow.SUSPEND) {
                    return new n(1, BufferOverflow.DROP_OLDEST, function1);
                }
                throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
            }
            if (i10 != 0) {
                if (i10 != Integer.MAX_VALUE) {
                    return bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel(i10, function1) : new n(i10, bufferOverflow, function1);
                }
                return new BufferedChannel(Integer.MAX_VALUE, function1);
            }
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel<>(0, function1) : new n<>(1, bufferOverflow, function1);
        } else {
            bufferedChannel = bufferOverflow == BufferOverflow.SUSPEND ? new BufferedChannel<>(g.G1.a(), function1) : new n<>(1, bufferOverflow, function1);
        }
        return bufferedChannel;
    }

    public static /* synthetic */ g c(int i10, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        return a(i10);
    }

    public static /* synthetic */ g d(int i10, BufferOverflow bufferOverflow, Function1 function1, int i11, Object obj) {
        if ((i11 & 1) != 0) {
            i10 = 0;
        }
        if ((i11 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i11 & 4) != 0) {
            function1 = null;
        }
        return b(i10, bufferOverflow, function1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T e(@NotNull Object obj, @NotNull Function1<? super Throwable, ? extends T> function1) {
        return obj instanceof j.c ? function1.invoke(j.f(obj)) : obj;
    }

    @NotNull
    public static final <T> Object f(@NotNull Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        if (obj instanceof j.a) {
            function1.invoke(j.f(obj));
        }
        return obj;
    }

    @NotNull
    public static final <T> Object g(@NotNull Object obj, @NotNull Function1<? super Throwable, Unit> function1) {
        if (obj instanceof j.c) {
            function1.invoke(j.f(obj));
        }
        return obj;
    }

    @NotNull
    public static final <T> Object h(@NotNull Object obj, @NotNull Function1<? super T, Unit> function1) {
        if (!(obj instanceof j.c)) {
            function1.invoke(obj);
        }
        return obj;
    }
}
