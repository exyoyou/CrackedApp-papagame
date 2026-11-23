package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.DelayKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nOnTimeout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n*L\n1#1,62:1\n13#2:63\n*S KotlinDebug\n*F\n+ 1 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n52#1:63\n*E\n"})
final class OnTimeout {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f93716a;

    @SourceDebugExtension({"SMAP\nRunnable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Runnable.kt\nkotlinx/coroutines/RunnableKt$Runnable$1\n+ 2 OnTimeout.kt\nkotlinx/coroutines/selects/OnTimeout\n*L\n1#1,14:1\n53#2,2:15\n*E\n"})
    public static final class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ j f93717b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ OnTimeout f93718c;

        public a(j jVar, OnTimeout onTimeout) {
            this.f93717b = jVar;
            this.f93718c = onTimeout;
        }

        @Override // java.lang.Runnable
        public final void run() {
            this.f93717b.i(this.f93718c, Unit.INSTANCE);
        }
    }

    public OnTimeout(long j10) {
        this.f93716a = j10;
    }

    public static /* synthetic */ void c() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(j<?> jVar, Object obj) {
        if (this.f93716a <= 0) {
            jVar.f(Unit.INSTANCE);
            return;
        }
        a aVar = new a(jVar, this);
        Intrinsics.checkNotNull(jVar, "null cannot be cast to non-null type kotlinx.coroutines.selects.SelectImplementation<*>");
        CoroutineContext context = jVar.getContext();
        jVar.g(DelayKt.d(context).p(this.f93716a, aVar, context));
    }

    @NotNull
    public final c b() {
        OnTimeout$selectClause$1 onTimeout$selectClause$1 = OnTimeout$selectClause$1.f93719b;
        Intrinsics.checkNotNull(onTimeout$selectClause$1, "null cannot be cast to non-null type kotlin.Function3<@[ParameterName(name = 'clauseObject')] kotlin.Any, @[ParameterName(name = 'select')] kotlinx.coroutines.selects.SelectInstance<*>, @[ParameterName(name = 'param')] kotlin.Any?, kotlin.Unit>{ kotlinx.coroutines.selects.SelectKt.RegistrationFunction }");
        return new d(this, (Function3) TypeIntrinsics.beforeCheckcastToFunctionOfArity(onTimeout$selectClause$1, 3), null, 4, null);
    }
}
