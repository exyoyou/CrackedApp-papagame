package cn.fly.commons.cc;

import cn.fly.FlySDK;
import cn.fly.tools.utils.SharePrefrenceHelper;

/* JADX INFO: loaded from: classes7.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final SharePrefrenceHelper f1221a;

    public h(String str, int i10) {
        SharePrefrenceHelper sharePrefrenceHelper = new SharePrefrenceHelper(FlySDK.getContext());
        this.f1221a = sharePrefrenceHelper;
        sharePrefrenceHelper.open(str, i10);
    }

    public void a(String str, long j10) {
        this.f1221a.putLong(str, Long.valueOf(j10));
    }

    public long b(String str, long j10) {
        return this.f1221a.getLong(str, j10);
    }

    public void a(String str, int i10) {
        this.f1221a.putInt(str, Integer.valueOf(i10));
    }

    public int b(String str, int i10) {
        return this.f1221a.getInt(str, i10);
    }

    public void a(String str, boolean z10) {
        this.f1221a.putBoolean(str, Boolean.valueOf(z10));
    }

    public boolean b(String str, boolean z10) {
        return this.f1221a.getBoolean(str, z10);
    }

    public void a(String str, String str2) {
        if (str2 == null) {
            this.f1221a.remove(str);
        } else {
            this.f1221a.putString(str, str2);
        }
    }

    public String b(String str, String str2) {
        return this.f1221a.getString(str, str2);
    }

    public void a(String str, Object obj) {
        this.f1221a.put(str, obj);
    }

    public Object a(String str) {
        return this.f1221a.get(str);
    }

    public void a() {
        this.f1221a.clear();
    }
}
