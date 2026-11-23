package kotlinx.coroutines.flow;

import kotlin.Unit;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final class d implements e {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final d f93254b = new d();

    private d() {
    }

    @Override // kotlinx.coroutines.flow.e
    @Nullable
    public Object a(@NotNull f<?> fVar, @NotNull Continuation<? super Unit> continuation) {
        return Unit.INSTANCE;
    }
}
