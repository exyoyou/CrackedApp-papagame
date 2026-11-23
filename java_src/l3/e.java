package l3;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class e implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final e f93914b = new e();

    private e() {
    }

    public static e a() {
        return f93914b;
    }

    @Override // l3.a
    public long now() {
        return System.currentTimeMillis();
    }
}
