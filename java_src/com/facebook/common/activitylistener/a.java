package com.facebook.common.activitylistener;

import android.app.Activity;

/* JADX INFO: loaded from: classes9.dex */
public interface a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f26840a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f26841b = 10;

    void a(Activity activity);

    int getPriority();

    void onDestroy(Activity activity);

    void onPause(Activity activity);

    void onResume(Activity activity);

    void onStart(Activity activity);

    void onStop(Activity activity);
}
