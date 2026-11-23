package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
@SourceDebugExtension({"SMAP\nAtomic.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Atomic.kt\nkotlinx/coroutines/internal/AtomicOp\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,76:1\n1#2:77\n*E\n"})
public abstract class b<T> extends i0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f93476a = AtomicReferenceFieldUpdater.newUpdater(b.class, Object.class, "_consensus$volatile");
    private volatile /* synthetic */ Object _consensus$volatile = a.f93475a;

    private final Object d(Object obj) {
        Object obj2 = f93476a.get(this);
        Object obj3 = a.f93475a;
        if (obj2 != obj3) {
            return obj2;
        }
        return androidx.concurrent.futures.a.a(f93476a, this, obj3, obj) ? obj : f93476a.get(this);
    }

    private final /* synthetic */ Object e() {
        return this._consensus$volatile;
    }

    private final /* synthetic */ void h(Object obj) {
        this._consensus$volatile = obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.i0
    @NotNull
    public b<?> a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.i0
    @Nullable
    public final Object b(@Nullable Object obj) {
        Object objD = f93476a.get(this);
        if (objD == a.f93475a) {
            objD = d(g(obj));
        }
        c(obj, objD);
        return objD;
    }

    public abstract void c(T t10, @Nullable Object obj);

    @Nullable
    public abstract Object g(T t10);
}
