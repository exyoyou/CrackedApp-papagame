package com.czhj.sdk.common.utils;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.logger.SigmobLog;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes9.dex */
public class AdLifecycleManager {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static AdLifecycleManager f25579b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<WeakReference<LifecycleListener>> f25580a = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25581c;

    public interface LifecycleListener {
        void onCreate(Activity activity);

        void onDestroy(Activity activity);

        void onPause(Activity activity);

        void onResume(Activity activity);

        void onStart(Activity activity);

        void onStop(Activity activity);
    }

    AdLifecycleManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void a(Activity activity) {
        try {
            Iterator it2 = new CopyOnWriteArraySet(this.f25580a).iterator();
            while (it2.hasNext()) {
                LifecycleListener lifecycleListener = (LifecycleListener) ((WeakReference) it2.next()).get();
                if (lifecycleListener != null) {
                    lifecycleListener.onCreate(activity);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized WeakReference<LifecycleListener> b(LifecycleListener lifecycleListener) {
        try {
            for (WeakReference<LifecycleListener> weakReference : new CopyOnWriteArraySet(this.f25580a)) {
                if (weakReference.get() == lifecycleListener) {
                    return weakReference;
                }
            }
        } catch (Throwable unused) {
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void c(Activity activity) {
        try {
            Iterator it2 = new CopyOnWriteArraySet(this.f25580a).iterator();
            while (it2.hasNext()) {
                LifecycleListener lifecycleListener = (LifecycleListener) ((WeakReference) it2.next()).get();
                if (lifecycleListener != null) {
                    lifecycleListener.onPause(activity);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d(Activity activity) {
        try {
            Iterator it2 = new CopyOnWriteArraySet(this.f25580a).iterator();
            while (it2.hasNext()) {
                LifecycleListener lifecycleListener = (LifecycleListener) ((WeakReference) it2.next()).get();
                if (lifecycleListener != null) {
                    lifecycleListener.onResume(activity);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void e(Activity activity) {
        try {
            Iterator it2 = new CopyOnWriteArraySet(this.f25580a).iterator();
            while (it2.hasNext()) {
                LifecycleListener lifecycleListener = (LifecycleListener) ((WeakReference) it2.next()).get();
                if (lifecycleListener != null) {
                    lifecycleListener.onStop(activity);
                }
            }
        } catch (Throwable unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void f(Activity activity) {
        try {
            Iterator it2 = new CopyOnWriteArraySet(this.f25580a).iterator();
            while (it2.hasNext()) {
                LifecycleListener lifecycleListener = (LifecycleListener) ((WeakReference) it2.next()).get();
                if (lifecycleListener != null) {
                    lifecycleListener.onDestroy(activity);
                }
            }
        } catch (Throwable unused) {
        }
    }

    public static AdLifecycleManager getInstance() {
        if (f25579b == null) {
            synchronized (AdLifecycleManager.class) {
                if (f25579b == null) {
                    f25579b = new AdLifecycleManager();
                }
            }
        }
        return f25579b;
    }

    public void addLifecycleListener(LifecycleListener lifecycleListener) {
        if (lifecycleListener == null || this.f25580a == null || a(lifecycleListener)) {
            return;
        }
        this.f25580a.add(new WeakReference<>(lifecycleListener));
    }

    public void initialize(Application application) {
        try {
            if (this.f25581c) {
                return;
            }
            a(application);
            this.f25581c = true;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public void removeLifecycleListener(LifecycleListener lifecycleListener) {
        WeakReference<LifecycleListener> weakReferenceB;
        if (lifecycleListener == null || this.f25580a == null || (weakReferenceB = b(lifecycleListener)) == null) {
            return;
        }
        this.f25580a.remove(weakReferenceB);
    }

    private void a(Application application) {
        if (application == null) {
            SigmobLog.e("activityCallBack error, application is null.");
        } else {
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.czhj.sdk.common.utils.AdLifecycleManager.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle bundle) {
                    SigmobLog.d("onActivityCreated() called with: activity = [" + activity + "], savedInstanceState = [" + bundle + "]");
                    AdLifecycleManager.this.a(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    SigmobLog.d("onActivityDestroyed() called with: activity = [" + activity + "]");
                    AdLifecycleManager.this.f(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    SigmobLog.d("onActivityPaused() called with: activity = [" + activity + "]");
                    AdLifecycleManager.this.c(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    SigmobLog.d("onActivityResumed() called with: activity = [" + activity + "]");
                    if (Build.VERSION.SDK_INT >= 23) {
                        ClientMetadata.getInstance().setWindInsets(activity.getWindow().getDecorView().getRootWindowInsets());
                    }
                    AdLifecycleManager.this.d(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
                    SigmobLog.d("onActivitySaveInstanceState() called with: activity = [" + activity + "], outState = [" + bundle + "]");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    SigmobLog.d("onActivityStarted() called with: activity = [" + activity + "]");
                    AdLifecycleManager.this.b(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    SigmobLog.d("onActivityStopped() called with: activity = [" + activity + "]");
                    AdLifecycleManager.this.e(activity);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b(Activity activity) {
        try {
            Iterator it2 = new CopyOnWriteArraySet(this.f25580a).iterator();
            while (it2.hasNext()) {
                LifecycleListener lifecycleListener = (LifecycleListener) ((WeakReference) it2.next()).get();
                if (lifecycleListener != null) {
                    lifecycleListener.onStart(activity);
                }
            }
        } catch (Throwable unused) {
        }
    }

    private synchronized boolean a(LifecycleListener lifecycleListener) {
        return b(lifecycleListener) != null;
    }
}
