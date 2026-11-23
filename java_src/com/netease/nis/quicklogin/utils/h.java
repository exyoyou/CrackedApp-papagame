package com.netease.nis.quicklogin.utils;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import com.netease.nis.basesdk.Logger;

/* JADX INFO: loaded from: classes2.dex */
public class h {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile h f76166c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f76167a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Resources f76168b;

    private h(Context context) {
        this.f76167a = null;
        if (context != null) {
            this.f76167a = context.getApplicationContext();
        }
        if (context != null) {
            this.f76168b = context.getResources();
        }
        LayoutInflater.from(context);
    }

    public static h a(Context context) {
        if (f76166c == null) {
            try {
                f76166c = new h(context);
            } catch (Exception e10) {
                Logger.e(e10.getMessage());
            }
        }
        return f76166c;
    }

    public Drawable b(String str) {
        int identifier;
        Resources resources = this.f76168b;
        if (resources == null || str == null || (identifier = resources.getIdentifier(str, "drawable", this.f76167a.getPackageName())) == 0) {
            return null;
        }
        return this.f76168b.getDrawable(identifier);
    }

    public int c(String str) {
        Resources resources = this.f76168b;
        if (resources == null || str == null) {
            return 0;
        }
        return resources.getIdentifier(str, "drawable", this.f76167a.getPackageName());
    }

    public int d(String str) {
        Resources resources = this.f76168b;
        if (resources != null) {
            return resources.getIdentifier(str, "layout", this.f76167a.getPackageName());
        }
        return 0;
    }

    public int a(String str) {
        Resources resources = this.f76168b;
        if (resources == null || str == null) {
            return 0;
        }
        return resources.getIdentifier(str, "anim", this.f76167a.getPackageName());
    }
}
