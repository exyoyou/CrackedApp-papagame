package cn.fly;

import cn.fly.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
public class RHolder implements PublicMemberKeeper {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile RHolder f905d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected int f906a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected int f907b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected int f908c;

    protected RHolder() {
    }

    public static RHolder getInstance() {
        if (f905d == null) {
            synchronized (RHolder.class) {
                if (f905d == null) {
                    f905d = new RHolder();
                }
            }
        }
        return f905d;
    }

    public int getActivityThemeId() {
        return this.f906a;
    }

    public int getDialogLayoutId() {
        return this.f907b;
    }

    public int getDialogThemeId() {
        return this.f908c;
    }

    public RHolder setActivityThemeId(int i10) {
        this.f906a = i10;
        return f905d;
    }

    public RHolder setDialogLayoutId(int i10) {
        this.f907b = i10;
        return f905d;
    }

    public RHolder setDialogThemeId(int i10) {
        this.f908c = i10;
        return f905d;
    }
}
