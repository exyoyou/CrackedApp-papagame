package cd;

import android.os.Looper;
import org.greenrobot.eventbus.g;
import org.greenrobot.eventbus.k;

/* JADX INFO: loaded from: classes10.dex */
public class e implements g {
    @Override // org.greenrobot.eventbus.g
    public boolean a() {
        return Looper.getMainLooper() == Looper.myLooper();
    }

    @Override // org.greenrobot.eventbus.g
    public k b(org.greenrobot.eventbus.c cVar) {
        return new org.greenrobot.eventbus.e(cVar, Looper.getMainLooper(), 10);
    }
}
