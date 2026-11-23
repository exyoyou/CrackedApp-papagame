package kotlinx.coroutines;

import kotlin.jvm.JvmField;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes.dex */
public final class b2 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f92351e = -1;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final int f92352f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final int f92353g = 1;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    private static final kotlinx.coroutines.internal.q0 f92347a = new kotlinx.coroutines.internal.q0("COMPLETING_ALREADY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @JvmField
    @NotNull
    public static final kotlinx.coroutines.internal.q0 f92348b = new kotlinx.coroutines.internal.q0("COMPLETING_WAITING_CHILDREN");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    private static final kotlinx.coroutines.internal.q0 f92349c = new kotlinx.coroutines.internal.q0("COMPLETING_RETRY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    private static final kotlinx.coroutines.internal.q0 f92350d = new kotlinx.coroutines.internal.q0("TOO_LATE_TO_CANCEL");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NotNull
    private static final kotlinx.coroutines.internal.q0 f92354h = new kotlinx.coroutines.internal.q0("SEALED");

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private static final f1 f92355i = new f1(false);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NotNull
    private static final f1 f92356j = new f1(true);

    @Nullable
    public static final Object g(@Nullable Object obj) {
        return obj instanceof q1 ? new r1((q1) obj) : obj;
    }

    @Nullable
    public static final Object h(@Nullable Object obj) {
        q1 q1Var;
        r1 r1Var = obj instanceof r1 ? (r1) obj : null;
        return (r1Var == null || (q1Var = r1Var.f93631a) == null) ? obj : q1Var;
    }
}
