package kotlinx.coroutines.internal;

import java.util.List;
import kotlinx.coroutines.InternalCoroutinesApi;
import kotlinx.coroutines.e2;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public interface b0 {

    public static final class a {
        @Nullable
        public static String a(@NotNull b0 b0Var) {
            return null;
        }
    }

    int a();

    @Nullable
    String b();

    @NotNull
    e2 c(@NotNull List<? extends b0> list);
}
