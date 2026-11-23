package kotlinx.coroutines.internal;

import kotlin.jvm.JvmField;
import kotlin.text.Typography;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class q0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public final String f93527a;

    public q0(@NotNull String str) {
        this.f93527a = str;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <T> T a(@Nullable Object obj) {
        if (obj == this) {
            return null;
        }
        return obj;
    }

    @NotNull
    public String toString() {
        return Typography.less + this.f93527a + Typography.greater;
    }
}
