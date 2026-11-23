package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class x implements f<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @NotNull
    public final Throwable f93421b;

    public x(@NotNull Throwable th) {
        this.f93421b = th;
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object emit(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) throws Throwable {
        throw this.f93421b;
    }
}
