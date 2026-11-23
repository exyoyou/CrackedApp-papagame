package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlin.PublishedApi;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsKt;
import kotlin.jvm.JvmField;
import kotlin.jvm.functions.Function1;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public final class v0<T> extends kotlinx.coroutines.internal.m0<T> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f93838f = AtomicIntegerFieldUpdater.newUpdater(v0.class, "_decision$volatile");

    @JvmField
    private volatile /* synthetic */ int _decision$volatile;

    public v0(@NotNull CoroutineContext coroutineContext, @NotNull Continuation<? super T> continuation) {
        super(coroutineContext, continuation);
    }

    private final /* synthetic */ void M1(Object obj, AtomicIntegerFieldUpdater atomicIntegerFieldUpdater, Function1<? super Integer, Unit> function1) {
        while (true) {
            function1.invoke(Integer.valueOf(atomicIntegerFieldUpdater.get(obj)));
        }
    }

    private final boolean N1() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93838f;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f93838f.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean O1() {
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = f93838f;
        do {
            int i10 = atomicIntegerFieldUpdater.get(this);
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f93838f.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // kotlinx.coroutines.internal.m0, kotlinx.coroutines.a
    protected void F1(@Nullable Object obj) {
        if (N1()) {
            return;
        }
        kotlinx.coroutines.internal.n.e(IntrinsicsKt__IntrinsicsJvmKt.intercepted(this.f93512e), e0.a(obj, this.f93512e), null, 2, null);
    }

    @Nullable
    public final Object K1() {
        if (O1()) {
            return IntrinsicsKt__IntrinsicsKt.getCOROUTINE_SUSPENDED();
        }
        Object objH = b2.h(J0());
        if (objH instanceof b0) {
            throw ((b0) objH).f92345a;
        }
        return objH;
    }

    @Override // kotlinx.coroutines.internal.m0, kotlinx.coroutines.JobSupport
    protected void g0(@Nullable Object obj) {
        F1(obj);
    }
}
