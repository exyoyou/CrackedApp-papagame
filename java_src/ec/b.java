package ec;

import android.app.Activity;
import android.text.TextUtils;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Map<String, Long> f90889a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static long f90890b = 0;

    public static void a() {
        f90890b = System.currentTimeMillis();
    }

    public static void b(Activity activity) {
        if (activity == null) {
            kc.a.b("GameDurationHelper", "activity is null");
            return;
        }
        String name = activity.getClass().getName();
        if (TextUtils.isEmpty(name)) {
            kc.a.b("GameDurationHelper", "pageName is empty:" + name);
            return;
        }
        Long l10 = f90889a.get(name);
        if (l10 == null) {
            kc.a.a("GameDurationHelper", "lastTime is null in pageName:" + name);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis() - l10.longValue();
        if (jCurrentTimeMillis < BaseCloudFileManager.ACK_TIMEOUT) {
            kc.a.a("GameDurationHelper", "ignore this time while duration is less than 3s");
            return;
        }
        fc.a aVar = new fc.a("EVENT_GAME_REPORT_DURATION");
        aVar.f91177c = jCurrentTimeMillis;
        kwai.a.e.c.INSTANCE.f93885a.b(aVar);
    }

    public static void c(Activity activity) {
        if (activity == null) {
            kc.a.b("GameDurationHelper", "activity is null");
            return;
        }
        String name = activity.getClass().getName();
        if (!TextUtils.isEmpty(name)) {
            f90889a.put(name, Long.valueOf(System.currentTimeMillis()));
            return;
        }
        kc.a.b("GameDurationHelper", "pageName is empty:" + name);
    }
}
