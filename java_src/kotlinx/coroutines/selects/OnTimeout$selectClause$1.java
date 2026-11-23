package kotlinx.coroutines.selects;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class OnTimeout$selectClause$1 extends FunctionReferenceImpl implements Function3<OnTimeout, j<?>, Object, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final OnTimeout$selectClause$1 f93719b = new OnTimeout$selectClause$1();

    OnTimeout$selectClause$1() {
        super(3, OnTimeout.class, "register", "register(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void a(@NotNull OnTimeout onTimeout, @NotNull j<?> jVar, @Nullable Object obj) {
        onTimeout.d(jVar, obj);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(OnTimeout onTimeout, j<?> jVar, Object obj) {
        a(onTimeout, jVar, obj);
        return Unit.INSTANCE;
    }
}
