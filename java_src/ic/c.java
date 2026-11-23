package ic;

import android.os.Bundle;
import com.umeng.analytics.pro.bb;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public C1177c f91541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f91542b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f91543c = new b();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final CountDownLatch f91544d = new CountDownLatch(2);

    public class a extends jc.b.a {
        public a() {
        }

        @Override // jc.b.a
        public void a(int i10, long j10, boolean z10, float f10, double d10, String str) {
        }

        @Override // jc.b.a
        public void a(int i10, Bundle bundle) {
            kc.a.a("HONORDeviceIDHelper", "OAIDCallBack handleResult retCode = " + i10 + " retInfo = " + bundle);
            if (i10 == 0) {
                try {
                    C1177c c1177c = c.this.f91541a;
                    if (c1177c != null) {
                        c1177c.f91547a = bundle.getString(bb.c.f84371b);
                        kc.a.a("HONORDeviceIDHelper", "OAIDCallBack handleResult success");
                    }
                } catch (Throwable th) {
                    kc.a.a("HONORDeviceIDHelper", "OAIDCallBack handleResult error: " + th.getMessage());
                    return;
                }
            }
            c.a(c.this);
        }
    }

    public class b extends jc.b.a {
        public b() {
        }

        @Override // jc.b.a
        public void a(int i10, long j10, boolean z10, float f10, double d10, String str) {
        }

        @Override // jc.b.a
        public void a(int i10, Bundle bundle) {
            kc.a.a("HONORDeviceIDHelper", "OAIDLimitCallback handleResult retCode=" + i10 + " retInfo= " + bundle);
            if (i10 == 0) {
                try {
                    if (c.this.f91541a != null) {
                        boolean z10 = bundle.getBoolean("oa_id_limit_state");
                        c.this.f91541a.f91548b = z10;
                        kc.a.a("HONORDeviceIDHelper", "OAIDLimitCallback handleResult success  isLimit=" + z10);
                    }
                } catch (Throwable th) {
                    kc.a.a("HONORDeviceIDHelper", "OAIDLimitCallback handleResult error:  " + th.getMessage());
                    return;
                }
            }
            c.a(c.this);
        }
    }

    /* JADX INFO: renamed from: ic.c$c, reason: collision with other inner class name */
    public static final class C1177c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f91547a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public boolean f91548b;
    }

    public static void a(c cVar) {
        try {
            cVar.f91544d.countDown();
        } catch (Exception e10) {
            kc.a.a("HONORDeviceIDHelper", "doCountDown  error:  " + e10.getMessage());
        }
    }
}
