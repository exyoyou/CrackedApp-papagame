package androidx.lifecycle.viewmodel.internal;

import kotlin.Metadata;
import kotlin.NotImplementedError;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.s2;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\u001a\b\u0010\u0001\u001a\u00020\u0000H\u0000\u001a\f\u0010\u0003\u001a\u00020\u0000*\u00020\u0002H\u0000\"\u0014\u0010\u0005\u001a\u00020\u00048\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006¨\u0006\u0007"}, d2 = {"Landroidx/lifecycle/viewmodel/internal/CloseableCoroutineScope;", "createViewModelScope", "Lkotlinx/coroutines/l0;", "asCloseable", "", "VIEW_MODEL_SCOPE_KEY", "Ljava/lang/String;", "lifecycle-viewmodel_release"}, k = 2, mv = {1, 8, 0})
public final class CloseableCoroutineScopeKt {

    @NotNull
    public static final String VIEW_MODEL_SCOPE_KEY = "androidx.lifecycle.viewmodel.internal.ViewModelCoroutineScope.JOB_KEY";

    @NotNull
    public static final CloseableCoroutineScope asCloseable(@NotNull l0 l0Var) {
        Intrinsics.checkNotNullParameter(l0Var, "<this>");
        return new CloseableCoroutineScope(l0Var);
    }

    @NotNull
    public static final CloseableCoroutineScope createViewModelScope() {
        CoroutineContext coroutineContextZ;
        try {
            coroutineContextZ = z0.e().z();
        } catch (IllegalStateException unused) {
            coroutineContextZ = EmptyCoroutineContext.INSTANCE;
        } catch (NotImplementedError unused2) {
            coroutineContextZ = EmptyCoroutineContext.INSTANCE;
        }
        return new CloseableCoroutineScope(coroutineContextZ.plus(s2.c(null, 1, null)));
    }
}
