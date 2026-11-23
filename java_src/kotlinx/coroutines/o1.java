package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
@DelicateCoroutinesApi
public final class o1 implements l0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final o1 f93610b = new o1();

    private o1() {
    }

    @Override // kotlinx.coroutines.l0
    @NotNull
    public CoroutineContext getCoroutineContext() {
        return EmptyCoroutineContext.INSTANCE;
    }
}
