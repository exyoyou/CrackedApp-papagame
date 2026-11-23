package kotlinx.coroutines.channels;

import kotlin.jvm.JvmField;
import kotlinx.coroutines.f3;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
final class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final f3 f92715a;

    public t(@NotNull f3 f3Var) {
        this.f92715a = f3Var;
    }

    @NotNull
    public String toString() {
        return "WaiterEB(" + this.f92715a + ')';
    }
}
