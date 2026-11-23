package com.mob;

import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public class RHolder implements PublicMemberKeeper {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile RHolder f75452d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f75453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f75454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f75455c;

    protected RHolder() {
    }

    public static RHolder getInstance() {
        if (f75452d == null) {
            synchronized (RHolder.class) {
                if (f75452d == null) {
                    f75452d = new RHolder();
                }
            }
        }
        return f75452d;
    }

    public int getActivityThemeId() {
        return this.f75453a;
    }

    public int getDialogLayoutId() {
        return this.f75454b;
    }

    public int getDialogThemeId() {
        return this.f75455c;
    }

    public RHolder setActivityThemeId(int i10) {
        this.f75453a = i10;
        return f75452d;
    }

    public RHolder setDialogLayoutId(int i10) {
        this.f75454b = i10;
        return f75452d;
    }

    public RHolder setDialogThemeId(int i10) {
        this.f75455c = i10;
        return f75452d;
    }
}
