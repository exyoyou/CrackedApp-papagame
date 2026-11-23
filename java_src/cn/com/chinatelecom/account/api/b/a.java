package cn.com.chinatelecom.account.api.b;

import android.content.Context;
import android.net.Network;
import cn.com.chinatelecom.account.api.CtAuth;
import cn.com.chinatelecom.account.api.CtSetting;
import cn.com.chinatelecom.account.api.ResultListener;
import cn.com.chinatelecom.account.api.c.h;
import cn.com.chinatelecom.account.api.d.f;
import cn.com.chinatelecom.account.api.d.g;
import cn.com.chinatelecom.account.api.d.j;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import com.kuaishou.weapon.p0.t;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f739a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f740b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f741c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f742d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f743e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c f744f;

    /* JADX INFO: renamed from: cn.com.chinatelecom.account.api.b.a$2, reason: invalid class name */
    class AnonymousClass2 implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f753a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f754b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CtSetting f755c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ ResultListener f756d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f757e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ String f758f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ int f759g;

        AnonymousClass2(int i10, String str, CtSetting ctSetting, ResultListener resultListener, String str2, String str3, int i11) {
            this.f753a = i10;
            this.f754b = str;
            this.f755c = ctSetting;
            this.f756d = resultListener;
            this.f757e = str2;
            this.f758f = str3;
            this.f759g = i11;
        }

        @Override // cn.com.chinatelecom.account.api.b.b
        public void a() {
            a.this.a(80800, cn.com.chinatelecom.account.api.a.d.a(j.f896o), this.f757e, 2500L, "Switching network timeout (4.x)", this.f756d);
        }

        @Override // cn.com.chinatelecom.account.api.b.b
        public void a(long j10) {
            a.this.a(80801, cn.com.chinatelecom.account.api.a.d.a(j.f897p), this.f757e, j10, "Switching network failed (4.x)", this.f756d);
        }

        @Override // cn.com.chinatelecom.account.api.b.b
        public void a(Network network, long j10) {
            long j11 = ((long) this.f753a) - j10;
            if (j11 > 100) {
                a.this.a(this.f754b, this.f755c, null, this.f756d, j11, this.f757e, this.f758f, this.f759g);
            } else {
                CtAuth.postResultOnMainThread(this.f757e, j.c(), this.f756d);
            }
            f.a(this.f757e).b(j10);
        }
    }

    public a(Context context, String str, String str2) {
        this.f741c = context;
        this.f742d = str;
        this.f743e = str2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:26:0x00f2  */
    public JSONObject a(Context context, String str, String str2, String str3, CtSetting ctSetting, Network network, String str4, String str5, int i10) {
        String strB;
        String strB2;
        h hVar;
        boolean z10;
        try {
            long jA = cn.com.chinatelecom.account.api.d.a.a(context);
            if (i10 == cn.com.chinatelecom.account.api.a.f730d) {
                strB = g.l(context);
                strB2 = cn.com.chinatelecom.account.api.d.h.a(context, str, str2, str3, jA, "");
            } else {
                strB = cn.com.chinatelecom.account.api.d.h.b();
                strB2 = cn.com.chinatelecom.account.api.d.h.b(context, str, str2, str3, jA, "");
            }
            if (g.a() != null) {
                strB = strB.replace(cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f838f), g.a());
            }
            String str6 = strB;
            JSONObject jSONObject = new JSONObject(strB2);
            String strOptString = jSONObject.optString("p");
            String strOptString2 = jSONObject.optString(t.f74876a);
            cn.com.chinatelecom.account.api.c.g.a aVar = new cn.com.chinatelecom.account.api.c.g.a();
            aVar.a(str5);
            String strA = cn.com.chinatelecom.account.api.c.c.a();
            byte[] bArr = cn.com.chinatelecom.account.api.d.b.f838f;
            aVar.a(false, strA, cn.com.chinatelecom.account.api.a.d.a(bArr));
            aVar.b(str4);
            aVar.a(network);
            aVar.a(CtSetting.getConnTimeout(ctSetting));
            aVar.b(CtSetting.getReadTimeout(ctSetting));
            cn.com.chinatelecom.account.api.c.g gVarA = aVar.a();
            cn.com.chinatelecom.account.api.c.b bVar = new cn.com.chinatelecom.account.api.c.b(context);
            h hVarA = bVar.a(str6, strOptString, 1, gVarA, true);
            if (hVarA.f829d) {
                synchronized (this) {
                    z10 = this.f740b;
                }
                if (z10) {
                    hVar = hVarA;
                } else {
                    cn.com.chinatelecom.account.api.c.g gVarA2 = aVar.a(true).a(false, "", "").a();
                    String strA2 = cn.com.chinatelecom.account.api.d.h.a();
                    h hVarA2 = bVar.a(hVarA.f830e.equals("2") ? strA2.replace(cn.com.chinatelecom.account.api.a.d.a(bArr), cn.com.chinatelecom.account.api.a.d.a(cn.com.chinatelecom.account.api.d.b.f839g)) : strA2, strOptString, 1, gVarA2, false);
                    f.a(str4).b(1).b(g.f(context));
                    hVar = hVarA2;
                }
            } else {
                hVar = hVarA;
            }
            JSONObject jSONObjectA = cn.com.chinatelecom.account.api.d.a.a(context, hVar, strOptString2, network, true, str4);
            f.b(str4, jSONObjectA, strOptString);
            return jSONObjectA;
        } catch (Throwable th) {
            JSONObject jSONObjectF = j.f();
            f.a(str4).g("gpm ：" + th.getMessage()).b(g.f(context)).a(80102).e(cn.com.chinatelecom.account.api.a.d.a(j.f892k));
            CtAuth.warn(f739a, "GPM Throwable", th);
            return jSONObjectF;
        }
    }

    public void b(final String str, final CtSetting ctSetting, final int i10, final ResultListener resultListener) {
        final int totalTimeout = CtSetting.getTotalTimeout(ctSetting);
        final String strA = cn.com.chinatelecom.account.api.d.d.a();
        String strA2 = cn.com.chinatelecom.account.api.d.d.a(this.f741c);
        final String strA3 = cn.com.chinatelecom.account.api.d.a.a(i10);
        f.a(strA).a(strA2).c(strA3).b("BOTH").f(g.i(this.f741c));
        c cVar = new c(this.f741c);
        this.f744f = cVar;
        cVar.a(new b() { // from class: cn.com.chinatelecom.account.api.b.a.1
            @Override // cn.com.chinatelecom.account.api.b.b
            public void a() {
                a.this.a();
                a.this.a(80800, cn.com.chinatelecom.account.api.a.d.a(j.f896o), strA, 2500L, "", resultListener);
            }

            @Override // cn.com.chinatelecom.account.api.b.b
            public void a(long j10) {
                a.this.a();
                a.this.a(80801, cn.com.chinatelecom.account.api.a.d.a(j.f897p), strA, j10, "", resultListener);
            }

            @Override // cn.com.chinatelecom.account.api.b.b
            public void a(Network network, long j10) {
                long j11 = ((long) totalTimeout) - j10;
                if (j11 <= 100) {
                    a.this.a();
                    CtAuth.postResultOnMainThread(strA, j.c(), resultListener);
                } else {
                    a.this.a(str, ctSetting, network, resultListener, j11, strA, strA3, i10);
                }
                f.a(strA).b(j10);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        c cVar = this.f744f;
        if (cVar != null) {
            cVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i10, String str, String str2, long j10, String str3, ResultListener resultListener) {
        f.a(str2).a(i10).e(str).b(j10).g(str3).b(g.f(this.f741c));
        f.c(str2);
        String strA = j.a(i10, str, str2);
        if (resultListener != null) {
            resultListener.onResult(strA);
        }
    }

    public void a(String str, CtSetting ctSetting, int i10, ResultListener resultListener) {
        int totalTimeout = CtSetting.getTotalTimeout(ctSetting);
        String strA = cn.com.chinatelecom.account.api.d.d.a();
        String strA2 = cn.com.chinatelecom.account.api.d.d.a(this.f741c);
        String strA3 = cn.com.chinatelecom.account.api.d.a.a(i10);
        f.a(strA).a(strA2).c(strA3).b(g.e(this.f741c)).f(g.i(this.f741c));
        a(str, ctSetting, null, resultListener, totalTimeout, strA, strA3, i10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final String str, final CtSetting ctSetting, final Network network, final ResultListener resultListener, long j10, final String str2, final String str3, final int i10) {
        new d().a(new e(j10) { // from class: cn.com.chinatelecom.account.api.b.a.3
            @Override // cn.com.chinatelecom.account.api.b.e
            public void runTask() {
                a aVar = a.this;
                JSONObject jSONObjectA = aVar.a(aVar.f741c, a.this.f742d, a.this.f743e, str, ctSetting, network, str2, str3, i10);
                synchronized (this) {
                    if (!isCompleted()) {
                        setCompleted(true);
                        removeTimeoutTask();
                        CtAuth.postResultOnMainThread(str2, jSONObjectA, resultListener);
                    }
                }
                if (network != null) {
                    a.this.a();
                }
            }

            @Override // cn.com.chinatelecom.account.api.b.e
            public void timeout() {
                super.timeout();
                synchronized (a.this) {
                    a.this.f740b = true;
                }
                synchronized (this) {
                    if (!isCompleted()) {
                        setCompleted(true);
                        a.this.a(MediationConstant.ErrorCode.ADN_INIT_FAIL, cn.com.chinatelecom.account.api.a.d.a(j.f882a), str2, 0L, "", resultListener);
                    }
                }
                if (network != null) {
                    a.this.a();
                }
            }
        });
    }
}
