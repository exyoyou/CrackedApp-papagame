package com.windmill.sdk.utils;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.os.Bundle;
import com.czhj.sdk.common.ClientMetadata;
import com.czhj.sdk.logger.SigmobLog;
import java.lang.ref.WeakReference;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes8.dex */
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static a f87342b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<WeakReference<InterfaceC1083a>> f87343a = Collections.synchronizedSet(new HashSet());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f87344c;

    /* JADX INFO: renamed from: com.windmill.sdk.utils.a$a, reason: collision with other inner class name */
    public interface InterfaceC1083a {
        void onCreate(Activity activity);

        void onDestroy(Activity activity);

        void onPause(Activity activity);

        void onResume(Activity activity);

        void onStart(Activity activity);

        void onStop(Activity activity);
    }

    a() {
    }

    private void b(final Application application) {
        if (application == null) {
            SigmobLog.e("activityCallBack error, application is null");
        } else {
            application.registerActivityLifecycleCallbacks(new Application.ActivityLifecycleCallbacks() { // from class: com.windmill.sdk.utils.a.1
                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityCreated(Activity activity, Bundle savedInstanceState) {
                    SigmobLog.d("onActivityCreated() called with: activity = [" + activity + "], savedInstanceState = [" + savedInstanceState + "]");
                    a.this.a(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityDestroyed(Activity activity) {
                    SigmobLog.d("onActivityDestroyed() called with: activity = [" + activity + "]");
                    a.this.f(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityPaused(Activity activity) {
                    SigmobLog.d("onActivityPaused() called with: activity = [" + activity + "]");
                    a.this.c(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityResumed(Activity activity) {
                    SigmobLog.d("onActivityResumed() called with: activity = [" + activity + "]");
                    if (Build.VERSION.SDK_INT >= 23) {
                        ClientMetadata.getInstance().setWindInsets(activity.getWindow().getDecorView().getRootWindowInsets());
                    }
                    a.this.d(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivitySaveInstanceState(Activity activity, Bundle outState) {
                    SigmobLog.d("onActivitySaveInstanceState() called with: activity = [" + activity + "], outState = [" + outState + "]");
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStarted(Activity activity) {
                    SigmobLog.d("onActivityStarted() called with: activity = [" + activity + "]");
                    a.this.b(activity);
                }

                @Override // android.app.Application.ActivityLifecycleCallbacks
                public void onActivityStopped(Activity activity) {
                    SigmobLog.d("onActivityStopped() called with: activity = [" + activity + "]");
                    a.this.e(activity);
                }
            });
        }
    }

    private boolean c(InterfaceC1083a listener) {
        HashSet hashSet;
        try {
            synchronized (this.f87343a) {
                hashSet = new HashSet(this.f87343a);
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                if (((WeakReference) it2.next()).get() == listener) {
                    return true;
                }
            }
            return false;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private WeakReference<InterfaceC1083a> d(InterfaceC1083a listener) {
        for (WeakReference<InterfaceC1083a> weakReference : new CopyOnWriteArraySet(this.f87343a)) {
            if (weakReference.get() == listener) {
                return weakReference;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e(final Activity activity) {
        HashSet hashSet;
        try {
            synchronized (this.f87343a) {
                hashSet = new HashSet(this.f87343a);
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                InterfaceC1083a interfaceC1083a = (InterfaceC1083a) ((WeakReference) it2.next()).get();
                if (interfaceC1083a != null) {
                    interfaceC1083a.onStop(activity);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f(final Activity activity) {
        HashSet hashSet;
        try {
            synchronized (this.f87343a) {
                hashSet = new HashSet(this.f87343a);
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                InterfaceC1083a interfaceC1083a = (InterfaceC1083a) ((WeakReference) it2.next()).get();
                if (interfaceC1083a != null) {
                    interfaceC1083a.onDestroy(activity);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(final Application application) {
        try {
            if (this.f87344c) {
                return;
            }
            b(application);
            this.f87344c = true;
        } catch (Throwable th) {
            SigmobLog.e(th.getMessage());
        }
    }

    public void b(InterfaceC1083a listener) {
        if (listener == null) {
            return;
        }
        try {
            Iterator<WeakReference<InterfaceC1083a>> it2 = this.f87343a.iterator();
            while (it2.hasNext()) {
                if (it2.next().get() == listener) {
                    it2.remove();
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(final Activity activity) {
        HashSet hashSet;
        try {
            synchronized (this.f87343a) {
                hashSet = new HashSet(this.f87343a);
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                InterfaceC1083a interfaceC1083a = (InterfaceC1083a) ((WeakReference) it2.next()).get();
                if (interfaceC1083a != null) {
                    interfaceC1083a.onResume(activity);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static a a() {
        if (f87342b == null) {
            synchronized (a.class) {
                if (f87342b == null) {
                    f87342b = new a();
                }
            }
        }
        return f87342b;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(final Activity activity) {
        HashSet hashSet;
        try {
            synchronized (this.f87343a) {
                hashSet = new HashSet(this.f87343a);
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                InterfaceC1083a interfaceC1083a = (InterfaceC1083a) ((WeakReference) it2.next()).get();
                if (interfaceC1083a != null) {
                    interfaceC1083a.onPause(activity);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final Activity activity) {
        HashSet hashSet;
        try {
            synchronized (this.f87343a) {
                hashSet = new HashSet(this.f87343a);
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                InterfaceC1083a interfaceC1083a = (InterfaceC1083a) ((WeakReference) it2.next()).get();
                if (interfaceC1083a != null) {
                    interfaceC1083a.onStart(activity);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(InterfaceC1083a listener) {
        if (listener == null) {
            return;
        }
        try {
            if (c(listener)) {
                return;
            }
            this.f87343a.add(new WeakReference<>(listener));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final Activity activity) {
        HashSet hashSet;
        try {
            synchronized (this.f87343a) {
                hashSet = new HashSet(this.f87343a);
            }
            Iterator it2 = hashSet.iterator();
            while (it2.hasNext()) {
                InterfaceC1083a interfaceC1083a = (InterfaceC1083a) ((WeakReference) it2.next()).get();
                if (interfaceC1083a != null) {
                    interfaceC1083a.onCreate(activity);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
