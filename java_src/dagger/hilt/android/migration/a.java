package dagger.hilt.android.migration;

import android.app.Application;
import androidx.annotation.NonNull;
import jb.d;

/* JADX INFO: loaded from: classes8.dex */
public final class a {
    private a() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(@NonNull Application app2) {
        d.b(app2);
        d.a(app2 instanceof hb.a, "'%s' is not a custom inject application. Check that you have annotated the application with both @HiltAndroidApp and @CustomInject.", app2.getClass());
        ((hb.a) app2).a();
    }
}
