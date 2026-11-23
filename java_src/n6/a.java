package n6;

import com.join.mgps.cloud.bean.ConfigInfo;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes3.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final a f94478a = new a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    private static String f94479b = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f94480c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private static ConfigInfo f94481d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Nullable
    private static Boolean f94482e;

    private a() {
    }

    @Nullable
    public final ConfigInfo a() {
        return f94481d;
    }

    @Nullable
    public final Boolean b() {
        return f94482e;
    }

    @NotNull
    public final String c() {
        return f94479b;
    }

    public final boolean d() {
        return f94480c;
    }

    public final void e(@Nullable ConfigInfo configInfo) {
        f94481d = configInfo;
    }

    public final void f(@Nullable Boolean bool) {
        f94482e = bool;
    }

    public final void g(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        f94479b = str;
    }

    public final void h(boolean z10) {
        f94480c = z10;
    }
}
