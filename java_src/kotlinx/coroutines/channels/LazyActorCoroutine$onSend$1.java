package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class LazyActorCoroutine$onSend$1 extends FunctionReferenceImpl implements Function3<LazyActorCoroutine<?>, kotlinx.coroutines.selects.j<?>, Object, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final LazyActorCoroutine$onSend$1 f92669b = new LazyActorCoroutine$onSend$1();

    LazyActorCoroutine$onSend$1() {
        super(3, LazyActorCoroutine.class, "onSendRegFunction", "onSendRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void a(@NotNull LazyActorCoroutine<?> lazyActorCoroutine, @NotNull kotlinx.coroutines.selects.j<?> jVar, @Nullable Object obj) throws Throwable {
        lazyActorCoroutine.N1(jVar, obj);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(LazyActorCoroutine<?> lazyActorCoroutine, kotlinx.coroutines.selects.j<?> jVar, Object obj) throws Throwable {
        a(lazyActorCoroutine, jVar, obj);
        return Unit.INSTANCE;
    }
}
