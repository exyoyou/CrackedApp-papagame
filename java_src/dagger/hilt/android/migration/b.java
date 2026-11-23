package dagger.hilt.android.migration;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.view.View;
import androidx.activity.ComponentActivity;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import jb.d;

/* JADX INFO: loaded from: classes8.dex */
public final class b {
    private b() {
    }

    private static boolean a(@NonNull Object obj) {
        d.b(obj);
        d.a(obj instanceof hb.b, "'%s' is not an optionally injected android entry point. Check that you have annotated the class with both @AndroidEntryPoint and @OptionalInject.", obj.getClass());
        return ((hb.b) obj).a();
    }

    public static boolean b(@NonNull Service service) {
        return a(service);
    }

    public static boolean c(@NonNull BroadcastReceiver broadcastReceiver) {
        return a(broadcastReceiver);
    }

    public static boolean d(@NonNull View view) {
        return a(view);
    }

    public static boolean e(@NonNull ComponentActivity activity) {
        return a(activity);
    }

    public static boolean f(@NonNull Fragment fragment) {
        return a(fragment);
    }
}
