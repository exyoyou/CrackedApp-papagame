package kotlinx.coroutines.flow.internal;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class k implements kotlinx.coroutines.flow.f<Object> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final k f93395b = new k();

    private k() {
    }

    @Override // kotlinx.coroutines.flow.f
    @Nullable
    public Object emit(@Nullable Object obj, @NotNull Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
