package cn.fly.tcp.e;

import android.text.TextUtils;
import cn.fly.commons.ae;
import cn.fly.mgs.OnIdChangeListener;
import java.util.UUID;

/* JADX INFO: loaded from: classes7.dex */
@Deprecated
class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private OnIdChangeListener f1652a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f1653b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f1654c;

    e() {
    }

    String a() {
        c();
        return this.f1653b;
    }

    long b() {
        c();
        return this.f1654c;
    }

    void c() {
        if (TextUtils.isEmpty(this.f1653b) || this.f1654c <= 0) {
            String strB = ae.b().b("suid", "");
            long jB = ae.b().b("create_suid_time", 0L);
            if (TextUtils.isEmpty(strB)) {
                strB = UUID.randomUUID().toString();
            }
            if (jB <= 0) {
                jB = System.currentTimeMillis();
            }
            a(strB, jB);
        }
    }

    private void a(String str, long j10) {
        String str2;
        OnIdChangeListener onIdChangeListener;
        synchronized (this) {
            str2 = this.f1653b;
            boolean z10 = !String.valueOf(str2).equals(str);
            this.f1653b = str;
            this.f1654c = j10;
            ae.b().a("suid", this.f1653b);
            ae.b().a("create_suid_time", this.f1654c);
            onIdChangeListener = z10 ? this.f1652a : null;
        }
        if (onIdChangeListener != null) {
            try {
                onIdChangeListener.onChanged(str2, str);
            } catch (Throwable th) {
                cn.fly.tcp.f.c.a().a(th);
            }
        }
    }

    void a(OnIdChangeListener onIdChangeListener) {
        this.f1652a = onIdChangeListener;
    }
}
