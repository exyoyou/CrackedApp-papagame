package com.xinzhu.overmind.client.hook.delegate;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.IBinder;

/* JADX INFO: loaded from: classes8.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static a f89309b = new C1101a();

    /* JADX INFO: renamed from: com.xinzhu.overmind.client.hook.delegate.a$a, reason: collision with other inner class name */
    class C1101a extends a {
        C1101a() {
        }
    }

    private IBinder a(Activity activity) {
        return new com.xinzhu.haunted.android.app.a(activity).l();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
    }
}
