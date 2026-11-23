package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.Unit;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nChannels.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n+ 2 Channel.kt\nkotlinx/coroutines/channels/ChannelKt\n*L\n1#1,61:1\n522#2,6:62\n*S KotlinDebug\n*F\n+ 1 Channels.kt\nkotlinx/coroutines/channels/ChannelsKt__ChannelsKt\n*L\n37#1:62,6\n*E\n"})
final /* synthetic */ class ChannelsKt__ChannelsKt {
    @Deprecated(level = DeprecationLevel.HIDDEN, message = "Deprecated in the favour of 'trySendBlocking'. Consider handling the result of 'trySendBlocking' explicitly and rethrow exception if necessary", replaceWith = @ReplaceWith(expression = "trySendBlocking(element)", imports = {}))
    public static final /* synthetic */ void a(s sVar, Object obj) throws InterruptedException {
        if (j.m(sVar.s(obj))) {
            return;
        }
        kotlinx.coroutines.i.b(null, new ChannelsKt__ChannelsKt$sendBlocking$1(sVar, obj, null), 1, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @NotNull
    public static final <E> Object b(@NotNull s<? super E> sVar, E e10) {
        Object objS = sVar.s(e10);
        if (objS instanceof j.c) {
            return ((j) kotlinx.coroutines.i.b(null, new ChannelsKt__ChannelsKt$trySendBlocking$2(sVar, e10, null), 1, null)).o();
        }
        return j.f92703b.c(Unit.INSTANCE);
    }
}
