package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.selects.j;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Metadata(k = 3, mv = {1, 9, 0}, xi = 48)
/* synthetic */ class MutexImpl$onLock$1 extends FunctionReferenceImpl implements Function3<MutexImpl, j<?>, Object, Unit> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final MutexImpl$onLock$1 f93795b = new MutexImpl$onLock$1();

    MutexImpl$onLock$1() {
        super(3, MutexImpl.class, "onLockRegFunction", "onLockRegFunction(Lkotlinx/coroutines/selects/SelectInstance;Ljava/lang/Object;)V", 0);
    }

    public final void a(@NotNull MutexImpl mutexImpl, @NotNull j<?> jVar, @Nullable Object obj) {
        mutexImpl.T(jVar, obj);
    }

    @Override // kotlin.jvm.functions.Function3
    public /* bridge */ /* synthetic */ Unit invoke(MutexImpl mutexImpl, j<?> jVar, Object obj) {
        a(mutexImpl, jVar, obj);
        return Unit.INSTANCE;
    }
}
