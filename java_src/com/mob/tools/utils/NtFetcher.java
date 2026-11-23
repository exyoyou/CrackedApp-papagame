package com.mob.tools.utils;

import android.content.Context;
import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
public class NtFetcher implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static NtFetcher f75549a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f75550b;

    protected NtFetcher(Context context) {
        this.f75550b = context;
    }

    public static NtFetcher getInstance(Context context) {
        if (f75549a == null) {
            synchronized (NtFetcher.class) {
                if (f75549a == null) {
                    f75549a = new NtFetcher(context);
                }
            }
        }
        return f75549a;
    }

    public int getDtNtType() {
        return cn.fly.tools.utils.NtFetcher.getInstance(this.f75550b).getDtNtType();
    }

    public String getNetworkTypeDesensitized() {
        return cn.fly.tools.utils.NtFetcher.getInstance(this.f75550b).getNetworkTypeDesensitized();
    }

    public String getNtType() {
        return cn.fly.tools.utils.NtFetcher.getInstance(this.f75550b).getNtType(false);
    }

    public void recycle() {
        cn.fly.tools.utils.NtFetcher.getInstance(this.f75550b).recycle();
    }
}
