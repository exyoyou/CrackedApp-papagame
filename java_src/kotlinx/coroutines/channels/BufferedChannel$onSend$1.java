package kotlinx.coroutines.channels;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class BufferedChannel$onSend$1 extends FunctionReferenceImpl implements Function3<BufferedChannel<?>, kotlinx.coroutines.selects.j<?>, Object, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final BufferedChannel$onSend$1 f92408b = new BufferedChannel$onSend$1();

    BufferedChannel$onSend$1() {
        super(3, BufferedChannel.class, "registerSelectForSend", "registerSelectForSend(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void a(@NotNull BufferedChannel<?> bufferedChannel, @NotNull kotlinx.coroutines.selects.j<?> jVar, @Nullable Object obj) {
        bufferedChannel.y1(jVar, obj);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(BufferedChannel<?> bufferedChannel, kotlinx.coroutines.selects.j<?> jVar, Object obj) {
        a(bufferedChannel, jVar, obj);
        return Unit.INSTANCE;
    }
}
