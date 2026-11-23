package cn.sharesdk.framework.a.b;

import android.text.TextUtils;
import android.util.Base64;
import cn.sharesdk.framework.utils.SSDKLog;
import com.mob.tools.utils.Data;

/* JADX INFO: loaded from: classes7.dex */
public class d extends e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static int f2530o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static long f2531p;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f2532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public String f2533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public String f2534c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f2535d;

    @Override // cn.sharesdk.framework.a.b.e
    protected String a() {
        return "[AUT]";
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int b() {
        return 5000;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected int c() {
        return 5;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long d() {
        return f2530o;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected long e() {
        return f2531p;
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void f() {
        f2530o++;
    }

    @Override // cn.sharesdk.framework.a.b.e
    public String toString() {
        StringBuilder sb2 = new StringBuilder(super.toString());
        sb2.append('|');
        sb2.append(this.f2532a);
        sb2.append('|');
        sb2.append(this.f2533b);
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2535d)) {
            try {
                String strEncodeToString = Base64.encodeToString(Data.AES128Encode(this.f2537f.substring(0, 16), this.f2535d), 0);
                if (!TextUtils.isEmpty(strEncodeToString) && strEncodeToString.contains("\n")) {
                    strEncodeToString = strEncodeToString.replace("\n", "");
                }
                sb2.append(strEncodeToString);
            } catch (Throwable th) {
                SSDKLog.b().a(th);
            }
        }
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2543l)) {
            sb2.append(this.f2543l);
        }
        sb2.append('|');
        if (!TextUtils.isEmpty(this.f2534c)) {
            sb2.append(this.f2534c);
        }
        return sb2.toString();
    }

    @Override // cn.sharesdk.framework.a.b.e
    protected void a(long j10) {
        f2531p = j10;
    }
}
