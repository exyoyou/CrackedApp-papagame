package kotlinx.coroutines.android;

import android.os.Handler;
import android.os.Looper;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import kotlin.time.DurationKt;
import kotlinx.coroutines.c1;
import kotlinx.coroutines.h2;
import kotlinx.coroutines.n;
import kotlinx.coroutines.t0;
import kotlinx.coroutines.y1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,212:1\n13#2:213\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n*L\n140#1:213\n*E\n"})
public final class HandlerContext extends d implements t0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private final Handler f92330b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final String f92331c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f92332d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private final HandlerContext f92333e;

    @SourceDebugExtension({"SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,14:1\n141#2:15\n142#2:17\n1#3:16\n*E\n"})
    public static final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n f92334b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ HandlerContext f92335c;

        public a(n nVar, HandlerContext handlerContext) {
            this.f92334b = nVar;
            this.f92335c = handlerContext;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f92334b.N(this.f92335c, Unit.INSTANCE);
        }
    }

    private HandlerContext(Handler handler, String str, boolean z10) {
        super(null);
        this.f92330b = handler;
        this.f92331c = str;
        this.f92332d = z10;
        this.f92333e = z10 ? this : new HandlerContext(handler, str, true);
    }

    private final void g0(CoroutineContext coroutineContext, Runnable runnable) {
        y1.f(coroutineContext, new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed"));
        z0.c().dispatch(coroutineContext, runnable);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j0(HandlerContext handlerContext, Runnable runnable) {
        handlerContext.f92330b.removeCallbacks(runnable);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        if (this.f92330b.post(runnable)) {
            return;
        }
        g0(coroutineContext, runnable);
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof HandlerContext) {
            HandlerContext handlerContext = (HandlerContext) obj;
            if (handlerContext.f92330b == this.f92330b && handlerContext.f92332d == this.f92332d) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return System.identityHashCode(this.f92330b) ^ (this.f92332d ? 1231 : 1237);
    }

    @Override // kotlinx.coroutines.e2
    @NotNull
    /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public HandlerContext z() {
        return this.f92333e;
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        return (this.f92332d && Intrinsics.areEqual(Looper.myLooper(), this.f92330b.getLooper())) ? false : true;
    }

    @Override // kotlinx.coroutines.t0
    public void m(long j10, @NotNull n<? super Unit> nVar) {
        final a aVar = new a(nVar, this);
        if (this.f92330b.postDelayed(aVar, RangesKt___RangesKt.coerceAtMost(j10, DurationKt.MAX_MILLIS))) {
            nVar.E(new Function1<Throwable, Unit>() { // from class: kotlinx.coroutines.android.HandlerContext$scheduleResumeAfterDelay$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public /* bridge */ /* synthetic */ Unit invoke(Throwable th) {
                    invoke2(th);
                    return Unit.INSTANCE;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2(@Nullable Throwable th) {
                    this.f92336b.f92330b.removeCallbacks(aVar);
                }
            });
        } else {
            g0(nVar.get$context(), aVar);
        }
    }

    @Override // kotlinx.coroutines.android.d, kotlinx.coroutines.t0
    @NotNull
    public c1 p(long j10, @NotNull final Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        if (this.f92330b.postDelayed(runnable, RangesKt___RangesKt.coerceAtMost(j10, DurationKt.MAX_MILLIS))) {
            return new c1() { // from class: kotlinx.coroutines.android.c
                @Override // kotlinx.coroutines.c1
                public final void dispose() {
                    HandlerContext.j0(this.f92338b, runnable);
                }
            };
        }
        g0(coroutineContext, runnable);
        return h2.f93449b;
    }

    @Override // kotlinx.coroutines.e2, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String strC0 = c0();
        if (strC0 != null) {
            return strC0;
        }
        String string = this.f92331c;
        if (string == null) {
            string = this.f92330b.toString();
        }
        if (!this.f92332d) {
            return string;
        }
        return string + ".immediate";
    }

    public /* synthetic */ HandlerContext(Handler handler, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(handler, (i10 & 2) != 0 ? null : str);
    }

    public HandlerContext(@NotNull Handler handler, @Nullable String str) {
        this(handler, str, false);
    }
}
