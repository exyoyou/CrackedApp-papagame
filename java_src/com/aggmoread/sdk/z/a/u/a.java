package com.aggmoread.sdk.z.a.u;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;

/* JADX INFO: loaded from: classes7.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f4077a = "com.aggmoread.sdk.a.adcomm.amsdk.AMAppActivity";

    public static void a(Activity activity, Bundle bundle) {
        try {
            Intent intent = new Intent(activity, Class.forName(f4077a));
            intent.putExtra("data", bundle);
            activity.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void a(k kVar) {
        try {
            Class.forName(f4077a).getMethod("setActivityPresenter", k.class).invoke(null, kVar);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
