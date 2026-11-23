package cn.fly.commons;

import android.app.Activity;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyHandlerThread;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.ActivityTracker;
import java.util.HashSet;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static m f1398a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile Handler f1400c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile long f1403f;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final HashSet<l> f1399b = new HashSet<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f1401d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile long f1402e = -1;

    private m() {
        String str = null;
        this.f1403f = 0L;
        this.f1403f = SystemClock.elapsedRealtime();
        if (!TextUtils.isEmpty("M-")) {
            str = "M-H-" + a("004Biehljmjh");
        }
        this.f1400c = FlyHandlerThread.newHandler(str, new Handler.Callback() { // from class: cn.fly.commons.m.1
            @Override // android.os.Handler.Callback
            public boolean handleMessage(Message message) {
                int i10 = message.what;
                if (i10 == 0) {
                    m.this.f1402e = SystemClock.elapsedRealtime();
                    m.this.a(false);
                    m.this.d();
                } else if (i10 == 1) {
                    m.this.a(true);
                } else if (i10 == 2) {
                    m.this.a(((Long) message.obj).longValue(), true);
                } else if (i10 == 3) {
                    try {
                        l lVar = (l) message.obj;
                        if (lVar != null) {
                            m.this.f1399b.add(lVar);
                            lVar.a(m.this.f1402e > 0, true, 0L);
                        }
                    } catch (Throwable th) {
                        FlyLog.getInstance().d(th);
                    }
                }
                return false;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        ActivityTracker.getInstance(FlySDK.getContext()).addTracker(new ActivityTracker.Tracker() { // from class: cn.fly.commons.FBManager$2
            @Override // cn.fly.tools.utils.ActivityTracker.Tracker
            public void onCreated(Activity activity, Bundle bundle) {
            }

            @Override // cn.fly.tools.utils.ActivityTracker.Tracker
            public void onDestroyed(Activity activity) {
                if (this.f914a.f1402e > 0) {
                    onStopped(activity);
                }
            }

            @Override // cn.fly.tools.utils.ActivityTracker.Tracker
            public void onPaused(Activity activity) {
            }

            @Override // cn.fly.tools.utils.ActivityTracker.Tracker
            public void onResumed(Activity activity) {
                try {
                    this.f914a.f1403f = SystemClock.elapsedRealtime();
                    if (this.f914a.f1402e == 0) {
                        this.f914a.f1402e = SystemClock.elapsedRealtime();
                        if (this.f914a.f1400c != null) {
                            this.f914a.f1400c.sendEmptyMessage(1);
                        }
                    }
                    this.f914a.f1401d = activity == null ? null : activity.toString();
                } catch (Throwable unused) {
                }
            }

            @Override // cn.fly.tools.utils.ActivityTracker.Tracker
            public void onSaveInstanceState(Activity activity, Bundle bundle) {
            }

            @Override // cn.fly.tools.utils.ActivityTracker.Tracker
            public void onStarted(Activity activity) {
            }

            @Override // cn.fly.tools.utils.ActivityTracker.Tracker
            public void onStopped(Activity activity) {
                try {
                    if (this.f914a.f1401d != null) {
                        if (!this.f914a.f1401d.equals(activity == null ? null : activity.toString())) {
                            return;
                        }
                    }
                    if (this.f914a.f1400c != null) {
                        long jElapsedRealtime = this.f914a.f1402e > 0 ? SystemClock.elapsedRealtime() - this.f914a.f1402e : 0L;
                        Message message = new Message();
                        message.what = 2;
                        message.obj = Long.valueOf(jElapsedRealtime);
                        this.f914a.f1400c.sendMessage(message);
                    }
                    this.f914a.f1402e = 0L;
                    this.f914a.f1401d = null;
                } catch (Throwable unused) {
                }
            }
        });
    }

    public long c() {
        return this.f1403f;
    }

    public boolean b() {
        return this.f1402e == 0;
    }

    public static synchronized m a() {
        if (f1398a == null) {
            m mVar = new m();
            f1398a = mVar;
            if (mVar.f1400c != null) {
                f1398a.f1400c.sendEmptyMessage(0);
            }
        }
        return f1398a;
    }

    public void a(l lVar) {
        if (lVar == null) {
            return;
        }
        synchronized (this.f1399b) {
            if (this.f1399b.contains(lVar)) {
                return;
            }
            if (this.f1400c != null) {
                Message message = new Message();
                message.what = 3;
                message.obj = lVar;
                this.f1400c.sendMessage(message);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z10) {
        if (z10) {
            a(true, false, 0L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(long j10, boolean z10) {
        if (z10) {
            a(false, false, j10);
        }
    }

    private void a(boolean z10, boolean z11, long j10) {
        synchronized (this.f1399b) {
            Iterator<l> it2 = this.f1399b.iterator();
            while (it2.hasNext()) {
                it2.next().a(z10, z11, j10);
            }
        }
    }

    public static String a(String str) {
        return C1293r.a(str, 101);
    }
}
