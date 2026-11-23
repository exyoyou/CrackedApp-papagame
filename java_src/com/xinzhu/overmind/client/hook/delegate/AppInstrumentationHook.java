package com.xinzhu.overmind.client.hook.delegate;

import android.app.Activity;
import android.app.Application;
import android.app.Fragment;
import android.app.Instrumentation;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.PersistableBundle;
import android.os.UserHandle;
import com.xinzhu.haunted.android.app.g;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.client.f;
import com.xinzhu.overmind.client.hook.d;
import com.xinzhu.overmind.client.hook.fixer.ActivityFixer;
import com.xinzhu.overmind.client.hook.fixer.ContextFixer;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes8.dex */
public final class AppInstrumentationHook implements d {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static ActivityCallbackRecord f89302c = new ActivityCallbackRecord();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final String f89303d = AppInstrumentationHook.class.getSimpleName();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static AppInstrumentationHook f89304e;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ArrayList<b> f89305b = new ArrayList<>();

    private static class ActivityCallbackRecord {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Activity f89306a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ActionType f89307b;

        private enum ActionType {
            Create,
            Start,
            Resume,
            Pause,
            Stop,
            Destroy,
            ActivitySaveInstanceState
        }

        private ActivityCallbackRecord() {
        }

        public void a(Activity activity, ActionType actionType) {
            this.f89306a = activity;
            this.f89307b = actionType;
        }
    }

    public class b extends InstrumentationDelegate {
        public b() {
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callActivityOnCreate(Activity activity, Bundle bundle) {
            AppInstrumentationHook.this.f();
            String unused = AppInstrumentationHook.f89303d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("callActivityOnCreate: ");
            sb2.append(activity.getClass().getName());
            ActivityInfo activityInfoH = new com.xinzhu.haunted.android.app.a(activity).h();
            ContextFixer.fix(activity);
            ActivityFixer.fix(activity);
            int i10 = activityInfoH.theme;
            if (i10 != 0) {
                activity.setTheme(i10);
            }
            activity.setRequestedOrientation(activityInfoH.screenOrientation);
            super.callActivityOnCreate(activity, bundle);
            if (AppInstrumentationHook.this.f89305b.size() > 1 && AppInstrumentationHook.f89302c.f89306a == activity && AppInstrumentationHook.f89302c.f89307b == ActivityCallbackRecord.ActionType.Create) {
                return;
            }
            AppInstrumentationHook.f89302c.a(activity, ActivityCallbackRecord.ActionType.Create);
            Overmind.get().getActivityLifecycleCallback().onActivityCreated(activity, bundle);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callActivityOnDestroy(Activity activity) {
            super.callActivityOnDestroy(activity);
            if (AppInstrumentationHook.this.f89305b.size() > 1 && AppInstrumentationHook.f89302c.f89306a == activity && AppInstrumentationHook.f89302c.f89307b == ActivityCallbackRecord.ActionType.Destroy) {
                return;
            }
            AppInstrumentationHook.f89302c.a(activity, ActivityCallbackRecord.ActionType.Destroy);
            Overmind.get().getActivityLifecycleCallback().onActivityDestroyed(activity);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callActivityOnPause(Activity activity) {
            super.callActivityOnPause(activity);
            if (AppInstrumentationHook.this.f89305b.size() > 1 && AppInstrumentationHook.f89302c.f89306a == activity && AppInstrumentationHook.f89302c.f89307b == ActivityCallbackRecord.ActionType.Pause) {
                return;
            }
            AppInstrumentationHook.f89302c.a(activity, ActivityCallbackRecord.ActionType.Pause);
            Overmind.get().getActivityLifecycleCallback().onActivityPaused(activity);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callActivityOnResume(Activity activity) {
            super.callActivityOnResume(activity);
            if (AppInstrumentationHook.this.f89305b.size() > 1 && AppInstrumentationHook.f89302c.f89306a == activity && AppInstrumentationHook.f89302c.f89307b == ActivityCallbackRecord.ActionType.Resume) {
                return;
            }
            AppInstrumentationHook.f89302c.a(activity, ActivityCallbackRecord.ActionType.Resume);
            Overmind.get().getActivityLifecycleCallback().onActivityResumed(activity);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callActivityOnStart(Activity activity) {
            super.callActivityOnStart(activity);
            if (AppInstrumentationHook.this.f89305b.size() > 1 && AppInstrumentationHook.f89302c.f89306a == activity && AppInstrumentationHook.f89302c.f89307b == ActivityCallbackRecord.ActionType.Start) {
                return;
            }
            AppInstrumentationHook.f89302c.a(activity, ActivityCallbackRecord.ActionType.Start);
            Overmind.get().getActivityLifecycleCallback().onActivityStarted(activity);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callActivityOnStop(Activity activity) {
            super.callActivityOnStop(activity);
            if (AppInstrumentationHook.this.f89305b.size() > 1 && AppInstrumentationHook.f89302c.f89306a == activity && AppInstrumentationHook.f89302c.f89307b == ActivityCallbackRecord.ActionType.Stop) {
                return;
            }
            AppInstrumentationHook.f89302c.a(activity, ActivityCallbackRecord.ActionType.Stop);
            Overmind.get().getActivityLifecycleCallback().onActivityStopped(activity);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callApplicationOnCreate(Application application) {
            AppInstrumentationHook.this.f();
            super.callApplicationOnCreate(application);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
        public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i10, Bundle bundle) throws Throwable {
            return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i10, bundle);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public Activity newActivity(ClassLoader classLoader, String str, Intent intent) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
            try {
                return super.newActivity(classLoader, str, intent);
            } catch (ClassNotFoundException unused) {
                return this.root.newActivity(classLoader, str, intent);
            }
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public Application newApplication(ClassLoader classLoader, String str, Context context) throws IllegalAccessException, InstantiationException, ClassNotFoundException {
            ContextFixer.fix(context);
            f.getClient().loadXposed(context);
            return super.newApplication(classLoader, str, context);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
        public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, String str, Intent intent, int i10, Bundle bundle) throws Throwable {
            return super.execStartActivity(context, iBinder, iBinder2, str, intent, i10, bundle);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
        public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i10) throws Throwable {
            return super.execStartActivity(context, iBinder, iBinder2, fragment, intent, i10);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
        public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i10) throws Throwable {
            return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i10);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
        public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Fragment fragment, Intent intent, int i10, Bundle bundle) throws Throwable {
            return super.execStartActivity(context, iBinder, iBinder2, fragment, intent, i10, bundle);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate
        public Instrumentation.ActivityResult execStartActivity(Context context, IBinder iBinder, IBinder iBinder2, Activity activity, Intent intent, int i10, Bundle bundle, UserHandle userHandle) throws Throwable {
            return super.execStartActivity(context, iBinder, iBinder2, activity, intent, i10, bundle, userHandle);
        }

        @Override // com.xinzhu.overmind.client.hook.delegate.InstrumentationDelegate, android.app.Instrumentation
        public void callActivityOnCreate(Activity activity, Bundle bundle, PersistableBundle persistableBundle) {
            AppInstrumentationHook.this.f();
            String unused = AppInstrumentationHook.f89303d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("callActivityOnCreate: ");
            sb2.append(activity.getClass().getName());
            ActivityInfo activityInfoH = new com.xinzhu.haunted.android.app.a(activity).h();
            ContextFixer.fix(activity);
            ActivityFixer.fix(activity);
            int i10 = activityInfoH.theme;
            if (i10 != 0) {
                activity.setTheme(i10);
            }
            activity.setRequestedOrientation(activityInfoH.screenOrientation);
            super.callActivityOnCreate(activity, bundle);
            if (AppInstrumentationHook.this.f89305b.size() > 1 && AppInstrumentationHook.f89302c.f89306a == activity && AppInstrumentationHook.f89302c.f89307b == ActivityCallbackRecord.ActionType.Create) {
                return;
            }
            AppInstrumentationHook.f89302c.a(activity, ActivityCallbackRecord.ActionType.Create);
            Overmind.get().getActivityLifecycleCallback().onActivityCreated(activity, bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        com.xinzhu.overmind.client.hook.c.c().b(com.xinzhu.overmind.client.hook.proxies.app.b.class);
        com.xinzhu.overmind.client.hook.c.c().b(AppInstrumentationHook.class);
    }

    private b g(Instrumentation instrumentation) {
        for (b bVar : this.f89305b) {
            if (bVar.root == instrumentation) {
                return bVar;
            }
        }
        return null;
    }

    public static AppInstrumentationHook h() {
        if (f89304e == null) {
            synchronized (AppInstrumentationHook.class) {
                if (f89304e == null) {
                    f89304e = new AppInstrumentationHook();
                }
            }
        }
        return f89304e;
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public boolean b() {
        return !(i() instanceof b);
    }

    public Instrumentation i() {
        return new g(Overmind.mainThread()).X();
    }

    @Override // com.xinzhu.overmind.client.hook.d
    public void injectHook() {
        try {
            Instrumentation instrumentationI = i();
            if (instrumentationI instanceof b) {
                return;
            }
            StringBuilder sb2 = new StringBuilder();
            sb2.append("AppInstrumentation.injectHook() ");
            sb2.append(instrumentationI);
            b bVarG = g(instrumentationI);
            if (bVarG == null) {
                bVarG = new b();
                bVarG.root = instrumentationI;
                this.f89305b.add(bVarG);
            }
            new g(Overmind.mainThread()).o0(bVarG);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
