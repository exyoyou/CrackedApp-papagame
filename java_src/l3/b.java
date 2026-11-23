package l3;

import android.os.SystemClock;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class b implements a {
    @Override // l3.a
    public long now() {
        return SystemClock.currentThreadTimeMillis();
    }
}
