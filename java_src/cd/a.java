package cd;

import org.greenrobot.eventbus.f;
import org.greenrobot.eventbus.g;

/* JADX INFO: loaded from: classes10.dex */
public abstract class a {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a f549c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final f f550a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g f551b;

    static {
        f549c = b.c() ? b.b() : null;
    }

    public a(f fVar, g gVar) {
        this.f550a = fVar;
        this.f551b = gVar;
    }

    public static boolean a() {
        return f549c != null;
    }

    public static a b() {
        return f549c;
    }
}
