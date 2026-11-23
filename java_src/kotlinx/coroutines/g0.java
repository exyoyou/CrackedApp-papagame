package kotlinx.coroutines;

import java.lang.Throwable;
import kotlinx.coroutines.g0;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@ExperimentalCoroutinesApi
public interface g0<T extends Throwable & g0<T>> {
    @Nullable
    T createCopy();
}
