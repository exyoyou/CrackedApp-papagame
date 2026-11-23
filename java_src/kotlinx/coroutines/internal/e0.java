package kotlinx.coroutines.internal;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import kotlin.KotlinNothingValueException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.e2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@SourceDebugExtension({"SMAP\nMainDispatchers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MainDispatchers.kt\nkotlinx/coroutines/internal/MissingMainCoroutineDispatcher\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,130:1\n1#2:131\n*E\n"})
final class e0 extends e2 implements kotlinx.coroutines.t0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final Throwable f93492b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final String f93493c;

    public /* synthetic */ e0(Throwable th, String str, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(th, (i10 & 2) != 0 ? null : str);
    }

    /* JADX WARN: Code duplicated, block: B:8:0x0025  */
    private final Void e0() {
        String str;
        if (this.f93492b == null) {
            d0.e();
            throw new KotlinNothingValueException();
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Module with the Main dispatcher had failed to initialize");
        String str2 = this.f93493c;
        if (str2 != null) {
            str = ". " + str2;
            if (str == null) {
                str = "";
            }
        } else {
            str = "";
        }
        sb2.append(str);
        throw new IllegalStateException(sb2.toString(), this.f93492b);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
    public Void dispatch(@NotNull CoroutineContext coroutineContext, @NotNull Runnable runnable) {
        e0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
    public Void m(long j10, @NotNull kotlinx.coroutines.n<? super Unit> nVar) {
        e0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public boolean isDispatchNeeded(@NotNull CoroutineContext coroutineContext) {
        e0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.e2, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public CoroutineDispatcher limitedParallelism(int i10) {
        e0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.t0
    @NotNull
    public kotlinx.coroutines.c1 p(long j10, @NotNull Runnable runnable, @NotNull CoroutineContext coroutineContext) {
        e0();
        throw new KotlinNothingValueException();
    }

    @Override // kotlinx.coroutines.e2, kotlinx.coroutines.CoroutineDispatcher
    @NotNull
    public String toString() {
        String str;
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Dispatchers.Main[missing");
        if (this.f93492b != null) {
            str = ", cause=" + this.f93492b;
        } else {
            str = "";
        }
        sb2.append(str);
        sb2.append(']');
        return sb2.toString();
    }

    @Override // kotlinx.coroutines.t0
    @Deprecated(level = DeprecationLevel.ERROR, message = "Deprecated without replacement as an internal method never intended for public use")
    @Nullable
    public Object x(long j10, @NotNull Continuation<? super Unit> continuation) {
        return kotlinx.coroutines.t0.a.a(this, j10, continuation);
    }

    @Override // kotlinx.coroutines.e2
    @NotNull
    public e2 z() {
        return this;
    }

    public e0(@Nullable Throwable th, @Nullable String str) {
        this.f93492b = th;
        this.f93493c = str;
    }
}
