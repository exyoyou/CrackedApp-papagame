package com.kongzue.dialogx.impl;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.util.ArrayMap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.hv.TTDownloadField;
import com.kongzue.dialogx.DialogX;
import com.kongzue.dialogx.interfaces.BaseDialog;
import com.kongzue.dialogx.util.DialogXFloatingWindowActivity;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes3.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static a f74047c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Application f74048d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private InterfaceC0776a f74049b;

    /* JADX INFO: renamed from: com.kongzue.dialogx.impl.a$a, reason: collision with other inner class name */
    public interface InterfaceC0776a {
        void getActivity(Activity activity);
    }

    public a(InterfaceC0776a interfaceC0776a) {
        this.f74049b = interfaceC0776a;
    }

    private void a(Activity activity) {
        InterfaceC0776a interfaceC0776a;
        if (activity.isDestroyed() || activity.isFinishing() || (activity instanceof DialogXFloatingWindowActivity) || (interfaceC0776a = this.f74049b) == null) {
            return;
        }
        interfaceC0776a.getActivity(activity);
    }

    public static Application b() {
        Application application = f74048d;
        if (application != null) {
            return application;
        }
        try {
            try {
                try {
                    return (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
                } catch (Exception unused) {
                    return (Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, null);
                }
            } catch (Exception unused2) {
                Class<?> cls = Class.forName("android.app.ActivityThread");
                return (Application) cls.getDeclaredMethod("getApplication", new Class[0]).invoke(cls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
            }
        } catch (Exception unused3) {
            return null;
        }
    }

    public static Application c(Context context) {
        if (context != null) {
            return (Application) context.getApplicationContext();
        }
        try {
            try {
                try {
                    return (Application) Class.forName("android.app.ActivityThread").getMethod("currentApplication", new Class[0]).invoke(null, null);
                } catch (Exception unused) {
                    Class<?> cls = Class.forName("android.app.ActivityThread");
                    return (Application) cls.getDeclaredMethod("getApplication", new Class[0]).invoke(cls.getDeclaredMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]), new Object[0]);
                }
            } catch (Exception unused2) {
                DialogX.b("DialogX.init: 初始化异常，请确保init方法内传入的Context是有效的。");
                return null;
            }
        } catch (Exception unused3) {
            return (Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, null);
        }
    }

    public static Activity d() {
        try {
            Class<?> cls = Class.forName("android.app.ActivityThread");
            Object objInvoke = cls.getMethod("currentActivityThread", new Class[0]).invoke(null, new Object[0]);
            Field declaredField = cls.getDeclaredField("mActivities");
            declaredField.setAccessible(true);
            ArrayMap arrayMap = (ArrayMap) declaredField.get(objInvoke);
            if (arrayMap.size() < 1) {
                return null;
            }
            for (Object obj : arrayMap.values()) {
                Class<?> cls2 = obj.getClass();
                Field declaredField2 = cls2.getDeclaredField("paused");
                declaredField2.setAccessible(true);
                if (!declaredField2.getBoolean(obj)) {
                    Field declaredField3 = cls2.getDeclaredField(TTDownloadField.TT_ACTIVITY);
                    declaredField3.setAccessible(true);
                    return (Activity) declaredField3.get(obj);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        return null;
    }

    public static void e(Context context, InterfaceC0776a interfaceC0776a) {
        if (context == null) {
            Application application = f74048d;
            if (application != null) {
                e(application, interfaceC0776a);
                return;
            }
            return;
        }
        Application applicationC = c(context);
        if (applicationC == null) {
            DialogX.b("DialogX 未初始化(E1)。\n请检查是否在启动对话框前进行初始化操作，使用以下代码进行初始化：\nDialogX.init(context);\n\n另外建议您前往查看 DialogX 的文档进行使用：https://github.com/kongzue/DialogX");
            return;
        }
        f74048d = applicationC;
        a aVar = f74047c;
        if (aVar != null) {
            applicationC.unregisterActivityLifecycleCallbacks(aVar);
        }
        a aVar2 = new a(interfaceC0776a);
        f74047c = aVar2;
        applicationC.registerActivityLifecycleCallbacks(aVar2);
    }

    public static boolean f(Activity activity) {
        if (activity == null) {
            return true;
        }
        for (String str : DialogX.L) {
            if (activity.getClass().getName().contains(str)) {
                return true;
            }
        }
        return false;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(@NonNull Activity activity, @Nullable Bundle bundle) {
        InterfaceC0776a interfaceC0776a = this.f74049b;
        if (interfaceC0776a == null || (activity instanceof DialogXFloatingWindowActivity)) {
            return;
        }
        interfaceC0776a.getActivity(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(@NonNull Activity activity) {
        if (BaseDialog.X() == activity) {
            BaseDialog.k();
        }
        if (Build.VERSION.SDK_INT < 29) {
            BaseDialog.w0(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(@NonNull Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreDestroyed(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            BaseDialog.w0(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPreResumed(@NonNull Activity activity) {
        if (Build.VERSION.SDK_INT >= 29) {
            a(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(@NonNull Activity activity) {
        if (activity.isDestroyed() || activity.isFinishing() || (activity instanceof DialogXFloatingWindowActivity)) {
            return;
        }
        if (Build.VERSION.SDK_INT < 29) {
            a(activity);
        }
        BaseDialog.o0(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(@NonNull Activity activity, @NonNull Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(@NonNull Activity activity) {
        if (f74048d == null) {
            BaseDialog.b0(activity);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(@NonNull Activity activity) {
    }
}
