package kotlinx.coroutines;

import kotlin.Deprecated;
import kotlin.DeprecationLevel;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@Deprecated(level = DeprecationLevel.ERROR, message = "This is internal API and may be removed in the future releases")
@InternalCoroutinesApi
public interface t extends c1 {

    public static final class a {
        @InternalCoroutinesApi
        public static /* synthetic */ void a() {
        }
    }

    @InternalCoroutinesApi
    boolean e(@NotNull Throwable th);

    @Nullable
    v1 getParent();
}
