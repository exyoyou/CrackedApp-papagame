package dagger.hilt.android.internal.managers;

import android.content.ComponentCallbacks2;
import android.content.Context;

/* JADX INFO: loaded from: classes8.dex */
public final class g {
    private g() {
    }

    public static Object a(Context context) {
        ComponentCallbacks2 componentCallbacks2A = fb.a.a(context.getApplicationContext());
        jb.d.a(componentCallbacks2A instanceof jb.b, "Hilt BroadcastReceiver must be attached to an @HiltAndroidApp Application. Found: %s", componentCallbacks2A.getClass());
        return ((jb.b) componentCallbacks2A).generatedComponent();
    }
}
