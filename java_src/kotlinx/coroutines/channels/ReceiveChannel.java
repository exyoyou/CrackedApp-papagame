package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.DelicateCoroutinesApi;
import kotlinx.coroutines.ExperimentalCoroutinesApi;
import kotlinx.coroutines.internal.p0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface ReceiveChannel<E> {

    public static final class DefaultImpls {
        public static /* synthetic */ void b(ReceiveChannel receiveChannel, CancellationException cancellationException, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                cancellationException = null;
            }
            receiveChannel.b(cancellationException);
        }

        public static /* synthetic */ boolean c(ReceiveChannel receiveChannel, Throwable th, int i10, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i10 & 1) != 0) {
                th = null;
            }
            return receiveChannel.a(th);
        }

        @NotNull
        public static <E> kotlinx.coroutines.selects.e<E> d(@NotNull ReceiveChannel<? extends E> receiveChannel) {
            Intrinsics.checkNotNull(receiveChannel, "null cannot be cast to non-null type kotlinx.coroutines.channels.BufferedChannel<E of kotlinx.coroutines.channels.ReceiveChannel>");
            return ((BufferedChannel) receiveChannel).w();
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of onReceiveCatching extension", replaceWith = @ReplaceWith(expression = "onReceiveCatching", imports = {}))
        public static /* synthetic */ void e() {
        }

        @DelicateCoroutinesApi
        public static /* synthetic */ void f() {
        }

        @ExperimentalCoroutinesApi
        public static /* synthetic */ void g() {
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E h(@NotNull ReceiveChannel<? extends E> receiveChannel) throws Throwable {
            Object objX = receiveChannel.x();
            if (j.m(objX)) {
                return (E) j.i(objX);
            }
            Throwable thF = j.f(objX);
            if (thF == null) {
                return null;
            }
            throw p0.o(thF);
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @LowPriorityInOverloadResolution
        @Nullable
        public static <E> Object i(@NotNull ReceiveChannel<? extends E> receiveChannel, @NotNull Continuation<? super E> continuation) {
            ReceiveChannel$receiveOrNull$1 receiveChannel$receiveOrNull$1;
            Object objZ;
            if (continuation instanceof ReceiveChannel$receiveOrNull$1) {
                receiveChannel$receiveOrNull$1 = (ReceiveChannel$receiveOrNull$1) continuation;
                int i10 = receiveChannel$receiveOrNull$1.f92677c;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    receiveChannel$receiveOrNull$1.f92677c = i10 - Integer.MIN_VALUE;
                } else {
                    receiveChannel$receiveOrNull$1 = new ReceiveChannel$receiveOrNull$1(continuation);
                }
            } else {
                receiveChannel$receiveOrNull$1 = new ReceiveChannel$receiveOrNull$1(continuation);
            }
            Object obj = receiveChannel$receiveOrNull$1.f92676b;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i11 = receiveChannel$receiveOrNull$1.f92677c;
            if (i11 == 0) {
                ResultKt.throwOnFailure(obj);
                receiveChannel$receiveOrNull$1.f92677c = 1;
                objZ = receiveChannel.z(receiveChannel$receiveOrNull$1);
                if (objZ == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                ResultKt.throwOnFailure(obj);
                objZ = ((j) obj).o();
            }
            return j.h(objZ);
        }
    }

    boolean D();

    @NotNull
    kotlinx.coroutines.selects.e<E> G();

    @Nullable
    Object T(@NotNull Continuation<? super E> continuation);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ boolean a(Throwable th);

    void b(@Nullable CancellationException cancellationException);

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.2.0, binary compatibility with versions <= 1.1.x")
    /* synthetic */ void cancel();

    boolean isEmpty();

    @NotNull
    ChannelIterator<E> iterator();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
    @Nullable
    E poll();

    @NotNull
    kotlinx.coroutines.selects.e<j<E>> v();

    @NotNull
    kotlinx.coroutines.selects.e<E> w();

    @NotNull
    Object x();

    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
    @LowPriorityInOverloadResolution
    @Nullable
    Object y(@NotNull Continuation<? super E> continuation);

    @Nullable
    Object z(@NotNull Continuation<? super j<? extends E>> continuation);
}
