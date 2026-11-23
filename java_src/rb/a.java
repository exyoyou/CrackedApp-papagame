package rb;

import android.annotation.TargetApi;
import android.view.View;
import it.sephiroth.android.library.util.b;

/* JADX INFO: loaded from: classes.dex */
public class a extends b.C1193b {
    public a(View view) {
        super(view);
    }

    @Override // it.sephiroth.android.library.util.b.C1193b, it.sephiroth.android.library.util.b.a
    @TargetApi(11)
    public boolean a() {
        return this.f91816a.isHardwareAccelerated();
    }

    @Override // it.sephiroth.android.library.util.b.C1193b, it.sephiroth.android.library.util.b.a
    @TargetApi(14)
    public void c(int value) {
        this.f91816a.setScrollX(value);
    }
}
