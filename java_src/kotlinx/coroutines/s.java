package kotlinx.coroutines;

import kotlin.PublishedApi;
import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@PublishedApi
public final class s extends w1 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public final o<?> f93632f;

    public s(@NotNull o<?> oVar) {
        this.f93632f = oVar;
    }

    @Override // kotlinx.coroutines.s1
    public void a(@Nullable Throwable th) {
        o<?> oVar = this.f93632f;
        oVar.X(oVar.x(H()));
    }
}
