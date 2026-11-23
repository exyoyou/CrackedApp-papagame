package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlinx.coroutines.ObsoleteCoroutinesApi;
import kotlinx.coroutines.l0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@ObsoleteCoroutinesApi
public interface c<E> extends l0, ReceiveChannel<E> {

    public static final class a {
        @NotNull
        public static <E> kotlinx.coroutines.selects.e<E> b(@NotNull c<E> cVar) {
            return ReceiveChannel.DefaultImpls.d(cVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E c(@NotNull c<E> cVar) {
            return (E) ReceiveChannel.DefaultImpls.h(cVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @LowPriorityInOverloadResolution
        @Nullable
        public static <E> Object d(@NotNull c<E> cVar, @NotNull Continuation<? super E> continuation) {
            return ReceiveChannel.DefaultImpls.i(cVar, continuation);
        }
    }

    @NotNull
    g<E> getChannel();
}
