package l4;

import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.STRICT)
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f93917a;

    public b(int transcodeStatus) {
        this.f93917a = transcodeStatus;
    }

    public int a() {
        return this.f93917a;
    }

    public String toString() {
        return String.format(null, "Status: %d", Integer.valueOf(this.f93917a));
    }
}
