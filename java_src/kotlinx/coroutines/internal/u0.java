package kotlinx.coroutines.internal;

import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
final /* synthetic */ class u0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f93536a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f93536a;
    }

    @Nullable
    public static final String b(@NotNull String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
