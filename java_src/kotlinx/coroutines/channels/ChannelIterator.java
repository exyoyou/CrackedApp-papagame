package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmName;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface ChannelIterator<E> {

    public static final class DefaultImpls {
        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
        @JvmName(name = "next")
        public static /* synthetic */ Object a(ChannelIterator channelIterator, Continuation continuation) {
            ChannelIterator$next0$1 channelIterator$next0$1;
            if (continuation instanceof ChannelIterator$next0$1) {
                channelIterator$next0$1 = (ChannelIterator$next0$1) continuation;
                int i10 = channelIterator$next0$1.f92453d;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    channelIterator$next0$1.f92453d = i10 - Integer.MIN_VALUE;
                } else {
                    channelIterator$next0$1 = new ChannelIterator$next0$1(continuation);
                }
            } else {
                channelIterator$next0$1 = new ChannelIterator$next0$1(continuation);
            }
            Object objB = channelIterator$next0$1.f92452c;
            Object coroutine_suspended = IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
            int i11 = channelIterator$next0$1.f92453d;
            if (i11 == 0) {
                ResultKt.throwOnFailure(objB);
                channelIterator$next0$1.f92451b = channelIterator;
                channelIterator$next0$1.f92453d = 1;
                objB = channelIterator.b(channelIterator$next0$1);
                if (objB == coroutine_suspended) {
                    return coroutine_suspended;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                channelIterator = (ChannelIterator) channelIterator$next0$1.f92451b;
                ResultKt.throwOnFailure(objB);
            }
            if (((Boolean) objB).booleanValue()) {
                return channelIterator.next();
            }
            throw new ClosedReceiveChannelException(l.f92709a);
        }
    }

    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Since 1.3.0, binary compatibility with versions <= 1.2.x")
    @JvmName(name = "next")
    /* synthetic */ Object a(Continuation continuation);

    @Nullable
    Object b(@NotNull Continuation<? super Boolean> continuation);

    E next();
}
