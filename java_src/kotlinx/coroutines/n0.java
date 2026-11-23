package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicLong;
import kotlin.PublishedApi;
import kotlin.internal.InlineOnly;
import kotlin.jvm.functions.Function0;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes.dex */
public final class n0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @NotNull
    public static final String f93595a = "kotlinx.coroutines.debug";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NotNull
    public static final String f93596b = "kotlinx.coroutines.stacktrace.recovery";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NotNull
    public static final String f93597c = "auto";

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NotNull
    public static final String f93598d = "on";

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NotNull
    public static final String f93599e = "off";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final boolean f93600f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final boolean f93601g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final boolean f93602h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NotNull
    private static final AtomicLong f93603i;

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0036, code lost:
    
        if (r0.equals(kotlinx.coroutines.n0.f93598d) != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x003f, code lost:
    
        if (r0.equals("") != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0041, code lost:
    
        r0 = true;
     */
    static {
        /*
            java.lang.String r0 = "kotlinx.coroutines.debug"
            java.lang.String r0 = kotlinx.coroutines.internal.t0.d(r0)
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L63
            int r3 = r0.hashCode()
            if (r3 == 0) goto L39
            r4 = 3551(0xddf, float:4.976E-42)
            if (r3 == r4) goto L30
            r4 = 109935(0x1ad6f, float:1.54052E-40)
            if (r3 == r4) goto L27
            r4 = 3005871(0x2dddaf, float:4.212122E-39)
            if (r3 != r4) goto L43
            java.lang.String r3 = "auto"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L43
            goto L63
        L27:
            java.lang.String r3 = "off"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L43
            goto L63
        L30:
            java.lang.String r3 = "on"
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L43
            goto L41
        L39:
            java.lang.String r3 = ""
            boolean r3 = r0.equals(r3)
            if (r3 == 0) goto L43
        L41:
            r0 = 1
            goto L64
        L43:
            java.lang.IllegalStateException r1 = new java.lang.IllegalStateException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "System property 'kotlinx.coroutines.debug' has unrecognized value '"
            r2.append(r3)
            r2.append(r0)
            r0 = 39
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            java.lang.String r0 = r0.toString()
            r1.<init>(r0)
            throw r1
        L63:
            r0 = 0
        L64:
            kotlinx.coroutines.n0.f93601g = r0
            if (r0 == 0) goto L71
            java.lang.String r0 = "kotlinx.coroutines.stacktrace.recovery"
            boolean r0 = kotlinx.coroutines.internal.t0.f(r0, r1)
            if (r0 == 0) goto L71
            goto L72
        L71:
            r1 = 0
        L72:
            kotlinx.coroutines.n0.f93602h = r1
            java.util.concurrent.atomic.AtomicLong r0 = new java.util.concurrent.atomic.AtomicLong
            r1 = 0
            r0.<init>(r1)
            kotlinx.coroutines.n0.f93603i = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.n0.<clinit>():void");
    }

    @InlineOnly
    private static final void a(Function0<Boolean> function0) {
    }

    public static final boolean b() {
        return f93600f;
    }

    @NotNull
    public static final AtomicLong c() {
        return f93603i;
    }

    public static final boolean d() {
        return f93601g;
    }

    public static final boolean e() {
        return f93602h;
    }

    @PublishedApi
    public static /* synthetic */ void f() {
    }

    public static final void g() {
        f93603i.set(0L);
    }
}
