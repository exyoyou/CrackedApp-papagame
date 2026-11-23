package kwai.a;

import android.app.ActivityManager;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.byazt.hv.TTDownloadField;
import ec.c;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Application f93857a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f93858b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f93859c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f93860d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Handler f93861e;

    /* JADX INFO: renamed from: kwai.a.a$a, reason: collision with other inner class name */
    public class HandlerC1202a extends Handler {
        public HandlerC1202a(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            super.handleMessage(message);
            if (message.what == 4096) {
                a aVar = a.this;
                aVar.f93858b += 10000;
                aVar.a();
            }
        }
    }

    public enum b {
        INSTANCE;


        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f93865a = new a(null);

        b() {
        }
    }

    public /* synthetic */ a(HandlerC1202a handlerC1202a) {
        this();
    }

    public static boolean d(Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses;
        try {
            ActivityManager activityManager = (ActivityManager) context.getSystemService(TTDownloadField.TT_ACTIVITY);
            if (activityManager != null && (runningAppProcesses = activityManager.getRunningAppProcesses()) != null) {
                for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                    if (runningAppProcessInfo.uid == context.getApplicationInfo().uid && runningAppProcessInfo.importance == 100) {
                        return true;
                    }
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return false;
    }

    public final void a() {
        this.f93860d = true;
        this.f93861e.removeCallbacksAndMessages(null);
        Message messageObtain = Message.obtain();
        messageObtain.what = 4096;
        this.f93861e.sendMessageDelayed(messageObtain, 10000L);
        long j10 = this.f93858b;
        if (j10 >= 900000 && !this.f93859c) {
            fc.a aVar = new fc.a("EVENT_GAME_REPORT_15MIN_DURATION_AUTOMATIC");
            aVar.f91177c = j10;
            e.c.INSTANCE.f93885a.b(aVar);
            this.f93859c = true;
        }
        c.c(this.f93857a, "ks_active_duration", this.f93858b);
        kc.a.a("AutomaticManager", "activeTime:" + this.f93858b);
    }

    public void b(Context context) {
        try {
            fc.a aVar = new fc.a("EVENT_ACTIVE_AUTOMATIC");
            e.c cVar = e.c.INSTANCE;
            cVar.f93885a.b(aVar);
            c.b(this.f93857a);
            SharedPreferences sharedPreferences = c.f90893c;
            long j10 = sharedPreferences != null ? sharedPreferences.getLong("ks_active_duration", 0L) : 0L;
            if (j10 > 0) {
                fc.a aVar2 = new fc.a("EVENT_GAME_REPORT_DURATION_AUTOMATIC");
                aVar2.f91177c = j10;
                cVar.f93885a.b(aVar2);
            }
            if (context instanceof Application) {
                Application application = (Application) context;
                this.f93857a = application;
                application.registerActivityLifecycleCallbacks(new ec.a(this, context));
                if (!d(context) || this.f93860d) {
                    return;
                }
                kc.a.a("AutomaticManager", "走进兜底计时逻辑任务");
                a();
            }
        } catch (Exception e10) {
            kc.a.a("AutomaticManager", e10.getMessage());
        }
    }

    public a() {
        this.f93858b = 0L;
        this.f93859c = false;
        this.f93860d = false;
        this.f93861e = new HandlerC1202a(Looper.getMainLooper());
    }
}
