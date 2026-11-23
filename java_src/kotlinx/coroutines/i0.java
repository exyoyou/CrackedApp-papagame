package kotlinx.coroutines;

import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Unit;
import kotlin.coroutines.AbstractCoroutineContextElement;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.SourceDebugExtension;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class i0 {

    @SourceDebugExtension({"SMAP\nCoroutineExceptionHandler.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CoroutineExceptionHandler.kt\nkotlinx/coroutines/CoroutineExceptionHandlerKt$CoroutineExceptionHandler$1\n*L\n1#1,106:1\n*E\n"})
    public static final class a extends AbstractCoroutineContextElement implements h0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Function2<CoroutineContext, Throwable, Unit> f93450b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(Function2<? super CoroutineContext, ? super Throwable, Unit> function2, h0.b bVar) {
            super(bVar);
            this.f93450b = function2;
        }

        @Override // kotlinx.coroutines.h0
        public void t(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
            this.f93450b.invoke(coroutineContext, th);
        }
    }

    @NotNull
    public static final h0 a(@NotNull Function2<? super CoroutineContext, ? super Throwable, Unit> function2) {
        return new a(function2, h0.E1);
    }

    @InternalCoroutinesApi
    public static final void b(@NotNull CoroutineContext coroutineContext, @NotNull Throwable th) {
        try {
            h0 h0Var = (h0) coroutineContext.get(h0.E1);
            if (h0Var != null) {
                h0Var.t(coroutineContext, th);
            } else {
                kotlinx.coroutines.internal.k.a(coroutineContext, th);
            }
        } catch (Throwable th2) {
            kotlinx.coroutines.internal.k.a(coroutineContext, c(th, th2));
        }
    }

    @NotNull
    public static final Throwable c(@NotNull Throwable th, @NotNull Throwable th2) {
        if (th == th2) {
            return th;
        }
        RuntimeException runtimeException = new RuntimeException("Exception while trying to handle coroutine exception", th2);
        ExceptionsKt__ExceptionsKt.addSuppressed(runtimeException, th);
        return runtimeException;
    }
}
