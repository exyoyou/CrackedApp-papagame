package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93611a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final int f93612b = 1;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final int f93613c = 2;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int f93614d = 29;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f93615e = 536870911;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f93616f = 536870911;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final kotlinx.coroutines.internal.q0 f93617g = new kotlinx.coroutines.internal.q0("RESUME_TOKEN");

    private static final int a(int i10, int i11) {
        return (i10 << 29) + i11;
    }

    private static final int b(int i10) {
        return i10 >> 29;
    }

    private static final int c(int i10) {
        return i10 & 536870911;
    }
}
