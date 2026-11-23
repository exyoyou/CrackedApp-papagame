package sb;

import android.annotation.TargetApi;
import android.view.View;

/* JADX INFO: loaded from: classes.dex */
public class a extends rb.a {
    public a(View view) {
        super(view);
    }

    @Override // it.sephiroth.android.library.util.b.C1193b, it.sephiroth.android.library.util.b.a
    @TargetApi(16)
    public void b(Runnable action) {
        this.f91816a.postOnAnimation(action);
    }
}
