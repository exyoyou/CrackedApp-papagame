package kotlinx.coroutines.channels;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.ReplaceWith;
import kotlin.coroutines.Continuation;
import kotlin.internal.LowPriorityInOverloadResolution;
import kotlinx.coroutines.internal.t0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public interface g<E> extends s<E>, ReceiveChannel<E> {

    @NotNull
    public static final b G1 = b.f92694a;
    public static final int H1 = Integer.MAX_VALUE;
    public static final int I1 = 0;
    public static final int J1 = -1;
    public static final int K1 = -2;
    public static final int M1 = -3;

    @NotNull
    public static final String N1 = "kotlinx.coroutines.channels.defaultBuffer";

    public static final class a {
        @NotNull
        public static <E> kotlinx.coroutines.selects.e<E> b(@NotNull g<E> gVar) {
            return ReceiveChannel.DefaultImpls.d(gVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'trySend' method", replaceWith = @ReplaceWith(expression = "trySend(element).isSuccess", imports = {}))
        public static <E> boolean c(@NotNull g<E> gVar, E e10) {
            return s.a.c(gVar, e10);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in the favour of 'tryReceive'. Please note that the provided replacement does not rethrow channel's close cause as 'poll' did, for the precise replacement please refer to the 'poll' documentation", replaceWith = @ReplaceWith(expression = "tryReceive().getOrNull()", imports = {}))
        @Nullable
        public static <E> E d(@NotNull g<E> gVar) {
            return (E) ReceiveChannel.DefaultImpls.h(gVar);
        }

        @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated in favor of 'receiveCatching'. Please note that the provided replacement does not rethrow channel's close cause as 'receiveOrNull' did, for the detailed replacement please refer to the 'receiveOrNull' documentation", replaceWith = @ReplaceWith(expression = "receiveCatching().getOrNull()", imports = {}))
        @LowPriorityInOverloadResolution
        @Nullable
        public static <E> Object e(@NotNull g<E> gVar, @NotNull Continuation<? super E> continuation) {
            return ReceiveChannel.DefaultImpls.i(gVar, continuation);
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f92695b = Integer.MAX_VALUE;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f92696c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f92697d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f92698e = -2;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f92699f = -3;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @NotNull
        public static final String f92700g = "kotlinx.coroutines.channels.defaultBuffer";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ b f92694a = new b();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final int f92701h = t0.b("kotlinx.coroutines.channels.defaultBuffer", 64, 1, 2147483646);

        private b() {
        }

        public final int a() {
            return f92701h;
        }
    }
}
