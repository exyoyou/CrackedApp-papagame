package kotlinx.coroutines.debug.internal;

import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.q0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f92774a = -1640531527;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f92775b = 16;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final q0 f92776c = new q0("REHASH");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static final h f92777d = new h(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    private static final h f92778e = new h(Boolean.TRUE);

    /* JADX INFO: Access modifiers changed from: private */
    public static final h d(Object obj) {
        if (obj == null) {
            return f92777d;
        }
        return Intrinsics.areEqual(obj, Boolean.TRUE) ? f92778e : new h(obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Void e() {
        throw new UnsupportedOperationException("not implemented");
    }
}
