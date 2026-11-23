package com.umeng.commonsdk;

import android.content.Context;
import android.content.SharedPreferences;
import com.umeng.analytics.pro.aw;
import com.umeng.commonsdk.framework.UMEnvelopeBuild;
import com.umeng.commonsdk.utils.onMessageSendListener;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes9.dex */
public class UMConfigureImpl {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final int f85057e = 1000;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ScheduledExecutorService f85058f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Context f85059g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f85053a = aw.b().b(aw.f84334o);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static CopyOnWriteArrayList<onMessageSendListener> f85054b = new CopyOnWriteArrayList<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f85055c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f85056d = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static int f85060h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static Runnable f85061i = new Runnable() { // from class: com.umeng.commonsdk.UMConfigureImpl.1
        @Override // java.lang.Runnable
        public void run() {
            try {
                if (UMConfigureImpl.f85055c == 0 || UMConfigureImpl.f85060h >= 10) {
                    if (!UMConfigureImpl.f85056d) {
                        boolean unused = UMConfigureImpl.f85056d = true;
                        UMConfigureImpl.b(UMConfigureImpl.f85059g);
                    }
                    if (UMConfigureImpl.f85058f != null) {
                        UMConfigureImpl.f85058f.shutdown();
                        ScheduledExecutorService unused2 = UMConfigureImpl.f85058f = null;
                    }
                }
                UMConfigureImpl.f();
            } catch (Exception unused3) {
            }
        }
    };

    static /* synthetic */ int f() {
        int i10 = f85060h;
        f85060h = i10 + 1;
        return i10;
    }

    public static void init(Context context) {
        if (context == null) {
            return;
        }
        f85059g = context;
        try {
            if (f85055c < 1 || d(context)) {
                UMEnvelopeBuild.setTransmissionSendFlag(true);
            } else {
                UMEnvelopeBuild.setTransmissionSendFlag(false);
                c(context);
                if (f85058f == null) {
                    ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1);
                    f85058f = scheduledExecutorServiceNewScheduledThreadPool;
                    scheduledExecutorServiceNewScheduledThreadPool.scheduleAtFixedRate(f85061i, 0L, 100L, TimeUnit.MILLISECONDS);
                }
            }
        } catch (Exception unused) {
        }
    }

    public static synchronized void registerInterruptFlag() {
        try {
            f85055c++;
        } catch (Exception unused) {
        }
    }

    public static synchronized void registerMessageSendListener(onMessageSendListener onmessagesendlistener) {
        CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList;
        try {
            CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList2 = f85054b;
            if (copyOnWriteArrayList2 != null) {
                copyOnWriteArrayList2.add(onmessagesendlistener);
            }
            if (UMEnvelopeBuild.getTransmissionSendFlag() && (copyOnWriteArrayList = f85054b) != null && copyOnWriteArrayList.size() > 0) {
                Iterator<onMessageSendListener> it2 = f85054b.iterator();
                while (it2.hasNext()) {
                    it2.next().onMessageSend();
                }
            }
        } catch (Exception unused) {
        }
    }

    public static synchronized void removeInterruptFlag() {
        try {
            f85055c--;
        } catch (Exception unused) {
        }
    }

    public static synchronized void removeMessageSendListener(onMessageSendListener onmessagesendlistener) {
        try {
            CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList = f85054b;
            if (copyOnWriteArrayList != null) {
                copyOnWriteArrayList.remove(onmessagesendlistener);
            }
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static synchronized void b(Context context) {
        try {
            UMEnvelopeBuild.setTransmissionSendFlag(true);
            CopyOnWriteArrayList<onMessageSendListener> copyOnWriteArrayList = f85054b;
            if (copyOnWriteArrayList != null && copyOnWriteArrayList.size() > 0) {
                Iterator<onMessageSendListener> it2 = f85054b.iterator();
                while (it2.hasNext()) {
                    it2.next().onMessageSend();
                }
            }
        } catch (Exception unused) {
        }
    }

    private static void c(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f85053a, 0);
            if (sharedPreferences != null) {
                SharedPreferences.Editor editorEdit = sharedPreferences.edit();
                editorEdit.putBoolean(f85053a, true);
                editorEdit.commit();
            }
        } catch (Throwable unused) {
        }
    }

    private static boolean d(Context context) {
        try {
            SharedPreferences sharedPreferences = context.getSharedPreferences(f85053a, 0);
            if (sharedPreferences != null) {
                return sharedPreferences.getBoolean(f85053a, false);
            }
            return false;
        } catch (Throwable unused) {
            return false;
        }
    }
}
