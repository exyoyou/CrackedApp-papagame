package sa;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import com.byazt.quv.AbsServerManager;

/* JADX INFO: loaded from: classes8.dex */
public class s {
    public static IBinder a(Intent intent, String str) {
        Bundle bundleExtra = intent.getBundleExtra(str);
        if (bundleExtra != null) {
            return b(bundleExtra, AbsServerManager.BUNDLE_BINDER);
        }
        return null;
    }

    public static IBinder b(Bundle bundle, String str) {
        return bundle.getBinder(str);
    }

    public static void c(Intent intent, String str, IBinder iBinder) {
        Bundle bundle = new Bundle();
        d(bundle, AbsServerManager.BUNDLE_BINDER, iBinder);
        intent.putExtra(str, bundle);
    }

    public static void d(Bundle bundle, String str, IBinder iBinder) {
        bundle.putBinder(str, iBinder);
    }
}
