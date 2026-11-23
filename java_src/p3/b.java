package p3;

import com.facebook.infer.annotation.Nullsafe;
import javax.annotation.Nullable;
import q3.c;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f96179a = 1;

    @Override // q3.c
    public void a(String controllerId, int imageOrigin, boolean successful, @Nullable String ultimateProducerName) {
        this.f96179a = imageOrigin;
    }

    public int b() {
        return this.f96179a;
    }
}
