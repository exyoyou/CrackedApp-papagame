package kotlinx.coroutines.channels;

import kotlin.jvm.JvmField;
import kotlinx.coroutines.f3;
import kotlinx.coroutines.internal.n0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class r<E> implements f3 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @NotNull
    public final kotlinx.coroutines.o<j<? extends E>> f92714b;

    /* JADX WARN: Multi-variable type inference failed */
    public r(@NotNull kotlinx.coroutines.o<? super j<? extends E>> oVar) {
        this.f92714b = oVar;
    }

    @Override // kotlinx.coroutines.f3
    public void c(@NotNull n0<?> n0Var, int i10) {
        this.f92714b.c(n0Var, i10);
    }
}
