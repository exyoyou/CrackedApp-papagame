package f3;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    private static c f91036a;

    private c() {
    }

    public static synchronized c c() {
        if (f91036a == null) {
            f91036a = new c();
        }
        return f91036a;
    }

    @Override // f3.b
    public void a(a trimmable) {
    }

    @Override // f3.b
    public void b(a trimmable) {
    }
}
