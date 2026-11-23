package kotlinx.coroutines.scheduling;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.JvmField;
import kotlin.ranges.RangesKt___RangesKt;
import kotlinx.coroutines.internal.t0;
import kotlinx.coroutines.internal.v0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f93698g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f93699h = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final String f93692a = t0.e("kotlinx.coroutines.scheduler.default.name", "DefaultDispatcher");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    public static final long f93693b = v0.f("kotlinx.coroutines.scheduler.resolution.ns", 100000, 0, 0, 12, null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @JvmField
    public static final int f93694c = v0.e("kotlinx.coroutines.scheduler.core.pool.size", RangesKt___RangesKt.coerceAtLeast(t0.a(), 2), 1, 0, 8, null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @JvmField
    public static final int f93695d = v0.e("kotlinx.coroutines.scheduler.max.pool.size", CoroutineScheduler.f93648w, 0, CoroutineScheduler.f93648w, 4, null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @JvmField
    public static final long f93696e = TimeUnit.SECONDS.toNanos(v0.f("kotlinx.coroutines.scheduler.keep.alive.sec", 60, 0, 0, 12, null));

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @JvmField
    @NotNull
    public static i f93697f = g.f93682a;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final k f93700i = new l(0);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final k f93701j = new l(1);

    public static final boolean a(@NotNull j jVar) {
        return jVar.f93689c.s() == 1;
    }
}
