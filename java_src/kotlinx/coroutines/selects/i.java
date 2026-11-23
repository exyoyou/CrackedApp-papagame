package kotlinx.coroutines.selects;

import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.InternalCoroutinesApi;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
@InternalCoroutinesApi
public interface i {
    @Nullable
    Function3<j<?>, Object, Object, Function1<Throwable, Unit>> a();

    @NotNull
    Function3<Object, Object, Object, Object> b();

    @NotNull
    Function3<Object, j<?>, Object, Unit> c();

    @NotNull
    Object d();
}
