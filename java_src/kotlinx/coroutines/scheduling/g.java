package kotlinx.coroutines.scheduling;

import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class g extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final g f93682a = new g();

    private g() {
    }

    @Override // kotlinx.coroutines.scheduling.i
    public long a() {
        return System.nanoTime();
    }
}
