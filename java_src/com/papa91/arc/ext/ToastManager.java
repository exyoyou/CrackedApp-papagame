package com.papa91.arc.ext;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.widget.Toast;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes2.dex */
public class ToastManager {
    private static volatile Toast lastToast;
    private static volatile WeakReference<Toast> lastUserToast;
    private static Context source;
    private static final Object lastMonitor = new Object();
    private static final Object lastUserMonitor = new Object();

    public static void cancel(final Toast toast) {
        if (toast != null) {
            ThreadManager.runOnUiThread(new Runnable() { // from class: com.papa91.arc.ext.ToastManager.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        toast.cancel();
                    } catch (Throwable th) {
                        Log.w("Toast cancel", th);
                    }
                }
            });
        }
    }

    public static Toast fixToast(Toast toast) {
        try {
            Field declaredField = Toast.class.getDeclaredField("mTN");
            declaredField.setAccessible(true);
            Object obj = declaredField.get(toast);
            for (Field field : obj.getClass().getDeclaredFields()) {
                String name = field.getName();
                if (name.equals("mShow") || name.equals("mHide")) {
                    field.setAccessible(true);
                    Object obj2 = field.get(obj);
                    if (obj2 instanceof Runnable) {
                        field.set(obj, Tools.RunnableWrapper.wrap((Runnable) obj2));
                    }
                } else if (name.equals("mHandler")) {
                    field.setAccessible(true);
                    Object obj3 = field.get(obj);
                    if (obj3 instanceof Handler) {
                        field.set(obj, Tools.HandlerWrapper.wrap((Handler) obj3));
                    }
                }
            }
        } catch (Throwable th) {
            Log.badImplementation(th);
        }
        return toast;
    }

    public static void init(Context context) {
        source = context.getApplicationContext();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void lambda$show$0(Toast toast) {
        try {
            fixToast(toast).show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void show(CharSequence charSequence) {
        show(charSequence, 1);
    }

    public static void show(final CharSequence charSequence, final int i10) {
        if (Thread.currentThread() == Looper.getMainLooper().getThread()) {
            show(Toast.makeText(source, charSequence, i10));
        } else {
            ThreadManager.getHandlerUiThread().post(new Runnable() { // from class: com.papa91.arc.ext.ToastManager.1
                @Override // java.lang.Runnable
                public void run() {
                    ToastManager.show(Toast.makeText(ToastManager.source, charSequence, i10));
                }
            });
        }
    }

    public static void show(final Toast toast) {
        Toast toast2;
        Toast toast3;
        Object obj = lastUserMonitor;
        synchronized (obj) {
            WeakReference<Toast> weakReference = lastUserToast;
            toast2 = weakReference == null ? null : weakReference.get();
            lastUserToast = null;
        }
        Runnable runnable = new Runnable() { // from class: com.papa91.arc.ext.a
            @Override // java.lang.Runnable
            public final void run() {
                ToastManager.lambda$show$0(toast);
            }
        };
        synchronized (obj) {
            lastUserToast = new WeakReference<>(toast);
        }
        synchronized (lastMonitor) {
            toast3 = lastToast;
            lastToast = null;
        }
        cancel(toast3);
        cancel(toast2);
        ThreadManager.getHandlerUiThread().post(runnable);
    }
}
