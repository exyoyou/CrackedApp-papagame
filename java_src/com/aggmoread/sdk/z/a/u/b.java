package com.aggmoread.sdk.z.a.u;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f4078a = "com.aggmoread.sdk.a.adcomm.amsdk.AMAdVideoViewActivity";

    public static void a(Activity activity, Bundle bundle) {
        try {
            Intent intent = new Intent(activity, Class.forName(f4078a));
            intent.putExtra("data", bundle);
            activity.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void a(k kVar) {
        try {
            Class.forName(f4078a).getMethod("setActivityPresenter", k.class).invoke(null, kVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
