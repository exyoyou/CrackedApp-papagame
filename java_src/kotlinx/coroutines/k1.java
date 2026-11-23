package kotlinx.coroutines;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class k1 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f93581b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f93582c = 1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f93583d = 2;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final long f93584e = 1000000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final long f93585f = 9223372036854L;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final long f93586g = 4611686018427387903L;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final kotlinx.coroutines.internal.q0 f93580a = new kotlinx.coroutines.internal.q0("REMOVED_TASK");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private static final kotlinx.coroutines.internal.q0 f93587h = new kotlinx.coroutines.internal.q0("CLOSED_EMPTY");

    public static final long c(long j10) {
        return j10 / 1000000;
    }

    public static final long d(long j10) {
        if (j10 <= 0) {
            return 0L;
        }
        if (j10 >= f93585f) {
            return Long.MAX_VALUE;
        }
        return 1000000 * j10;
    }
}
