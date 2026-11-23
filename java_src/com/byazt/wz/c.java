package com.byazt.wz;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.SparseArray;
import com.byazt.aas.nb;
import com.byazt.aas.zb;
import com.byazt.dna.qp;
import com.byazt.eia.i;
import com.byazt.ete.ic;
import com.byazt.nr.d;
import com.byazt.nr.h;
import com.byazt.nr.m;
import com.byazt.nr.rh;
import com.byazt.omf.gt;
import com.byazt.omf.nu;
import com.byazt.omf.or;
import com.byazt.omf.p;
import com.byazt.omf.yp;
import com.byazt.tk.AdBaseConstants;
import com.byazt.xs.da;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import com.umeng.commonsdk.framework.UMModuleRegister;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 65, 20})
public abstract class c extends uj implements qp.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public WeakReference<Context> f21704c;
    public boolean gt;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public com.byazt.pop.uj f21708i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public volatile Runnable f21709m;
    public volatile com.byazt.yzg.ve md;
    public volatile boolean my;
    public String qy;
    public Function<SparseArray<Object>, Object> rh;
    public boolean rl;
    public final String sl;
    public com.byazt.ete.n tt;
    public String uj;
    public ic ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public HashSet<Integer> f21713x;
    public yp yp;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AtomicInteger f21710n = new AtomicInteger(1);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f21703a = false;
    public final AtomicBoolean sp = new AtomicBoolean(false);

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final d f21706da = new d(Looper.getMainLooper(), this);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f21711t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public volatile boolean f21712u = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public C0478c f21714z = new C0478c();
    public int nu = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<nu> f21707h = new CopyOnWriteArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public AtomicBoolean f21705d = new AtomicBoolean(false);
    public final com.byazt.wrq.tt gu = new com.byazt.wrq.tt() { // from class: com.byazt.wz.c.1
        @Override // com.byazt.wrq.tt
        public void onDownloadActive(long j10, long j11, String str) {
            if (c.this.f21705d.get()) {
                c.this.f21705d.set(false);
                com.byazt.rgb.c.ve(c.this.gu(), 2);
            }
            c.this.f21710n.set(3);
            if (com.byazt.ue.tt.c()) {
                c cVar = c.this;
                cVar.c("onDownloadActive", j10, j11, str, cVar.tt.ve());
                return;
            }
            c cVar2 = c.this;
            com.byazt.pop.uj ujVar = cVar2.f21708i;
            if (ujVar != null) {
                ujVar.c(j10, j11, str, cVar2.tt.ve());
            }
        }

        @Override // com.byazt.wrq.tt
        public void onDownloadFailed(long j10, long j11, String str) {
            com.byazt.rgb.c.uj(c.this.gu(), 1);
            c.this.f21710n.set(5);
            if (com.byazt.ue.tt.c()) {
                c cVar = c.this;
                cVar.c("onDownloadFailed", j10, j11, str, cVar.tt.ve());
                return;
            }
            c cVar2 = c.this;
            com.byazt.pop.uj ujVar = cVar2.f21708i;
            if (ujVar != null) {
                ujVar.ve(j10, j11, str, cVar2.tt.ve());
            }
        }

        @Override // com.byazt.wrq.tt
        public void onDownloadFinished(long j10, long j11, String str) {
            com.byazt.rgb.c.n(c.this.gu());
            c.this.f21710n.set(6);
            if (com.byazt.ue.tt.c()) {
                c cVar = c.this;
                cVar.c("onDownloadFinished", j10, j11, str, cVar.tt.ve());
                return;
            }
            c cVar2 = c.this;
            com.byazt.pop.uj ujVar = cVar2.f21708i;
            if (ujVar != null) {
                ujVar.c(j10, str, cVar2.tt.ve());
            }
        }

        @Override // com.byazt.wrq.tt
        public void onDownloadPaused(long j10, long j11, String str) {
            com.byazt.rgb.c.ve(c.this.gu());
            c.this.f21705d.set(true);
            c.this.f21710n.set(4);
            if (com.byazt.ue.tt.c()) {
                c cVar = c.this;
                cVar.c("onDownloadPaused", j10, j11, str, cVar.tt.ve());
                return;
            }
            c cVar2 = c.this;
            com.byazt.pop.uj ujVar = cVar2.f21708i;
            if (ujVar != null) {
                ujVar.tt(j10, j11, str, cVar2.tt.ve());
            }
        }

        @Override // com.byazt.wrq.tt
        public void onDownloadStart() {
            com.byazt.rgb.c.ve(c.this.gu(), 1);
            c.this.f21710n.set(2);
            if (com.byazt.ue.tt.c()) {
                c.this.c("onIdle", 0L, 0L, (String) null, (String) null);
                return;
            }
            com.byazt.pop.uj ujVar = c.this.f21708i;
            if (ujVar != null) {
                ujVar.c();
            }
        }

        @Override // com.byazt.su.DownloadStatusChangeListener
        public void onIdle() {
            c.this.f21710n.set(1);
            if (com.byazt.ue.tt.c()) {
                c.this.c("onIdle", 0L, 0L, (String) null, (String) null);
                return;
            }
            com.byazt.pop.uj ujVar = c.this.f21708i;
            if (ujVar != null) {
                ujVar.c();
            }
        }

        @Override // com.byazt.wrq.tt
        public void onInstalled(long j10, long j11, String str) {
            com.byazt.rgb.c.n(c.this.gu(), 1);
            c.this.f21710n.set(7);
            if (TextUtils.isEmpty(str)) {
                str = "";
            }
            String str2 = str;
            if (com.byazt.ue.tt.c()) {
                c cVar = c.this;
                cVar.c("onInstalled", j10, j11, str2, cVar.tt.ve());
                return;
            }
            c cVar2 = c.this;
            com.byazt.pop.uj ujVar = cVar2.f21708i;
            if (ujVar != null) {
                ujVar.c(str2, cVar2.tt.ve());
            }
        }
    };
    public com.byazt.aas.c.tt gr = new com.byazt.aas.c.tt() { // from class: com.byazt.wz.c.5
        @Override // com.byazt.aas.c.tt
        public void onAppBackground() {
        }

        @Override // com.byazt.aas.c.tt
        public void onAppExit() {
        }

        @Override // com.byazt.aas.c.tt
        public void onAppForeground() {
            if (com.byazt.omf.x.m().d()) {
                return;
            }
            com.byazt.rgb.c.tt(c.this.gu());
            com.byazt.omf.x.m().ve().tt(c.this.gr);
        }

        @Override // com.byazt.aas.c.tt
        public void onAppStart() {
        }
    };
    public final com.byazt.su.tt zm = new com.byazt.su.tt() { // from class: com.byazt.wz.c.6
        @Override // com.byazt.su.tt
        public void c() {
            com.byazt.rgb.c.tt(c.this.gu(), 1);
            com.byazt.omf.x.m().ve().c(c.this.gr);
        }

        @Override // com.byazt.su.tt
        public void tt() {
            com.byazt.rgb.c.tt(c.this.gu(), 2);
        }
    };

    /* JADX INFO: renamed from: com.byazt.wz.c$c, reason: collision with other inner class name */
    @com.byazt.zqa.c(c = {0, 1, 65, 44})
    public class C0478c extends com.byazt.bwm.sp {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f21728c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public String f21729n;
        public long tt;
        public String uj;
        public long ve;

        public C0478c() {
            super("DownloadCallbackRunnable");
        }

        public void c(String str) {
            this.f21728c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                c.this.i().c(c.this.sl, this.f21728c, this.tt, this.ve, this.uj, this.f21729n);
            } catch (Throwable unused) {
            }
        }

        public void tt(long j10) {
            this.ve = j10;
        }

        public void ve(String str) {
            this.f21729n = str;
        }

        public void c(long j10) {
            this.tt = j10;
        }

        public void tt(String str) {
            this.uj = str;
        }

        public C0478c(String str, long j10, long j11, String str2, String str3) {
            super("DownloadCallbackRunnable");
            this.f21728c = str;
            this.tt = j10;
            this.ve = j11;
            this.uj = str2;
            this.f21729n = str3;
        }
    }

    public c(Context context, ic icVar, String str, String str2) {
        this.qy = str2;
        this.f21704c = new WeakReference<>(context);
        this.ve = icVar;
        this.tt = icVar.z();
        str = TextUtils.isEmpty(str) ? nb.tt(icVar) : str;
        this.uj = TextUtils.isEmpty(str) ? com.byazt.dyf.tt.AD_TAG_FEED : str;
        this.sl = icVar.hashCode() + icVar.qy();
        this.rh = com.byazt.omf.x.m().nb();
        if (this.tt == null && TextUtils.isEmpty(this.qy)) {
            return;
        }
        if (this.tt == null) {
            com.byazt.ete.n nVar = new com.byazt.ete.n();
            this.tt = nVar;
            nVar.tt(this.qy);
        }
        if (gt.getContext() == null) {
            gt.c(context);
        }
        this.f21708i = new com.byazt.pop.uj();
        c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String gu() {
        ic icVar = this.ve;
        if (icVar == null) {
            return null;
        }
        return icVar.zm();
    }

    private void qy() {
        if (this.f21711t) {
            return;
        }
        this.f21711t = true;
        c(4, new com.byazt.dk.ve.c() { // from class: com.byazt.wz.c.2
            @Override // com.byazt.dk.ve.c
            public boolean c(int i10, String str, String str2, String str3, Object obj) {
                if (i10 == 4 && !TextUtils.isEmpty(str3)) {
                    str3.hashCode();
                    if (!str3.equals("market_click_open") && !str3.equals("applink_click")) {
                        return true;
                    }
                    com.byazt.omf.tt.c().put("save_jump_success_time", System.currentTimeMillis());
                    com.byazt.omf.tt.c().put("save_jump_success_ad_tag", str2);
                    com.byazt.omf.tt.c().put("save_dpl_success_materialmeta", str);
                }
                return true;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void rl() {
        if (com.byazt.ue.tt.c()) {
            com.byazt.bwm.n.ve().execute(new Runnable() { // from class: com.byazt.wz.c.8
                @Override // java.lang.Runnable
                public void run() {
                    yp ypVarC = yp.c.c(com.byazt.wzi.c.c(gt.getContext()).c(3));
                    try {
                        synchronized (c.this.f21707h) {
                            if (ypVarC != null) {
                                if (c.this.f21707h.size() > 0) {
                                    Iterator it2 = c.this.f21707h.iterator();
                                    while (it2.hasNext()) {
                                        ypVarC.tt(c.this.sl, (nu) it2.next());
                                    }
                                    c.this.f21707h.clear();
                                }
                            }
                        }
                    } catch (RemoteException e10) {
                        m.c(e10);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void sp(final JSONObject jSONObject, final boolean z10) {
        HashMap map = new HashMap();
        map.put("material_meta", this.ve);
        int iC = com.byazt.apd.tt.c().c(this.ve, new com.byazt.ysz.ve() { // from class: com.byazt.wz.c.3
            @Override // com.byazt.ysz.ve
            public void c(int i10) {
                c.this.x(jSONObject, z10);
            }
        }, this.uj, map);
        if (iC == 1 || iC == 2) {
            return;
        }
        x(jSONObject, z10);
    }

    public void a(boolean z10) {
        this.f21712u = z10;
    }

    public void da() {
        if (this.f21704c == null) {
            return;
        }
        Context context = getContext();
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity == null || !com.byazt.omf.x.m().c(activity)) {
            rl();
        } else {
            c(activity);
        }
    }

    public void finalize() throws Throwable {
        super.finalize();
        com.byazt.rgb.c.n(gu(), 2);
    }

    public Context getContext() {
        try {
            WeakReference<Context> weakReference = this.f21704c;
            if (weakReference == null) {
                return gt.getContext();
            }
            Context context = weakReference.get();
            return context == null ? gt.getContext() : context;
        } catch (Throwable unused) {
            return gt.getContext();
        }
    }

    public void handleMsg(Message message) {
        if (message.what != 9) {
            return;
        }
        if (com.byazt.omf.x.m() == null || com.byazt.omf.x.m().c()) {
            n(true);
            return;
        }
        n(false);
        Object obj = message.obj;
        tt(nb.qy(this.ve), obj instanceof Boolean ? ((Boolean) obj).booleanValue() : false);
    }

    public yp i() {
        if (this.yp == null) {
            this.yp = yp.c.c(com.byazt.wzi.c.c(gt.getContext()).c(3));
        }
        return this.yp;
    }

    public com.byazt.yzg.c m() {
        if (uj()) {
            return new com.byazt.yzg.n();
        }
        return this.f21712u ? new com.byazt.yzg.uj() : new com.byazt.yzg.tt();
    }

    public abstract void my();

    public void n(boolean z10) {
        if (z10) {
            com.byazt.ddx.uj.tt(this.ve, this.uj, "quickapp_success");
        } else {
            com.byazt.ddx.uj.tt(this.ve, this.uj, "quickapp_fail");
        }
    }

    public boolean nu() {
        ic icVar = this.ve;
        return (icVar == null || this.tt == null || com.byazt.ete.gt.a(icVar) != 3 || this.tt.c() == null) ? false : true;
    }

    public abstract void rh();

    public boolean sl() {
        if (this.ve.yp() != null) {
            String strTt = this.ve.yp().tt();
            if (TextUtils.isEmpty(strTt)) {
                t();
            } else {
                com.byazt.ete.nu.c((String) null);
                Uri uri = Uri.parse(strTt);
                Intent intent = new Intent("android.intent.action.VIEW");
                intent.setData(uri);
                nb.ve(intent);
                HashMap map = new HashMap();
                map.put("source", "AbsDMLibManager");
                map.put("scheme", nb.c(strTt));
                com.byazt.ddx.uj.c(this.ve, this.uj, map, this.f21712u);
                if (nb.c(intent)) {
                    try {
                        nb.c(this.f21712u, this.ve, this.uj, sp());
                        com.byazt.nr.tt.startActivity(getContext(), intent, TextUtils.equals(p.f18095x, UMModuleRegister.INNER));
                        com.byazt.ddx.uj.c(this.ve, this.uj, (Throwable) null, this.f21712u, true);
                        com.byazt.ddx.x.c().c(this.ve, this.uj, this.f21712u, sp(), null);
                        return true;
                    } catch (Throwable th) {
                        if (!TextUtils.isEmpty(this.ve.x())) {
                            com.byazt.ddx.uj.x(this.ve, this.uj, "open_fallback_url", null);
                            or.c(getContext(), this.ve.x(), this.ve, this.uj, sp());
                        }
                        com.byazt.ddx.uj.c(this.ve, this.uj, th, this.f21712u, false);
                        return false;
                    }
                }
                com.byazt.ddx.uj.c(this.ve, this.uj, (Throwable) null, this.f21712u, false);
            }
        }
        return false;
    }

    public void t() {
        JSONObject jSONObject = new JSONObject();
        ic icVar = this.ve;
        if (icVar != null) {
            String strQy = icVar.qy();
            String strUj = this.ve.uj();
            try {
                jSONObject.putOpt("reqId", strQy);
                jSONObject.putOpt("cid", strUj);
            } catch (JSONException unused) {
            }
        }
        com.byazt.ukr.yp.c().c("deeplink_url_null", jSONObject, (Throwable) null);
    }

    public abstract void u();

    @Override // com.byazt.pop.ve
    public abstract boolean uj();

    public com.byazt.yzg.ve x() {
        if (this.md == null) {
            synchronized (this) {
                if (this.md == null) {
                    this.md = new com.byazt.yzg.ve(getContext(), this.ve);
                }
            }
        }
        return this.md;
    }

    public int yp() {
        return this.f21710n.get();
    }

    public boolean z() {
        if (this.rh == null || com.byazt.ete.gt.m(this.ve) == 1) {
            return true;
        }
        if (gt.tt().jg()) {
            String str = "已下载%d%%，可在通知栏暂停或取消";
            try {
                str = String.format("已下载%d%%，可在通知栏暂停或取消", Integer.valueOf(this.gu.getCurrentPercent()));
            } catch (Exception unused) {
            }
            return c(str, true);
        }
        ic icVar = this.ve;
        if (com.byazt.ete.gt.da(icVar)) {
            return true;
        }
        x.tt(icVar, "adm");
        return c("应用正在下载...", false);
    }

    private void a(JSONObject jSONObject, boolean z10) {
        c(jSONObject, z10);
    }

    public void uj(JSONObject jSONObject, boolean z10) {
        a(jSONObject, z10);
    }

    public boolean ve(JSONObject jSONObject, boolean z10) {
        if (this.f21710n.get() != 1) {
            if (nb.yv()) {
                nb.c(this.f21712u, this.ve, this.uj, sp());
            }
            c(jSONObject, z10);
            return false;
        }
        if (rh.ve(getContext()) == 0) {
            try {
                h.c(getContext(), "\"无网络，请稍后再试\"", 0);
            } catch (Exception unused) {
            }
        } else {
            if (nb.yv()) {
                nb.c(this.f21712u, this.ve, this.uj, sp());
            }
            uj(jSONObject, z10);
        }
        return true;
    }

    @Override // com.byazt.pop.ve
    public Map<String, Object> a() {
        return new HashMap();
    }

    @Override // com.byazt.pop.ve
    public void c() {
        my();
        rh();
    }

    public void n(JSONObject jSONObject, boolean z10) {
        if (sl()) {
            return;
        }
        if (!this.f21712u && this.ve.z() == null && this.ve.x() != null && !this.ve.B_()) {
            or.c(getContext(), this.ve.x(), this.ve, this.uj, sp());
        } else {
            if (sp(z10) || this.ve.B_()) {
                return;
            }
            tt(jSONObject, z10);
        }
    }

    public void tt(final com.byazt.pop.c cVar) {
        if (!com.byazt.ue.tt.c() || cVar == null) {
            return;
        }
        com.byazt.bwm.n.ve().execute(new Runnable() { // from class: com.byazt.wz.c.9
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.wzi.c cVarC = com.byazt.wzi.c.c(gt.getContext());
                com.byazt.ymw.a aVar = new com.byazt.ymw.a(cVar);
                yp ypVarC = yp.c.c(cVarC.c(3));
                if (ypVarC != null) {
                    try {
                        ypVarC.c(c.this.sl, aVar);
                        synchronized (c.this.f21707h) {
                            try {
                                c.this.f21707h.add(aVar);
                            } catch (Throwable th) {
                                throw th;
                            }
                        }
                    } catch (RemoteException e10) {
                        m.c(e10);
                    }
                }
            }
        });
    }

    @Override // com.byazt.pop.ve
    public void c(com.byazt.pop.c cVar) {
        c(cVar, true);
    }

    public void tt(JSONObject jSONObject, boolean z10) {
        com.byazt.ete.n nVar = this.tt;
        if (nVar == null || nVar.tt() == null) {
            return;
        }
        ve(jSONObject, z10);
    }

    @Override // com.byazt.pop.ve
    public void c(com.byazt.pop.c cVar, boolean z10) {
        if (cVar == null) {
            return;
        }
        com.byazt.pop.uj ujVar = this.f21708i;
        if (ujVar != null) {
            ujVar.c(cVar);
        }
        if (z10) {
            tt(cVar);
        }
        rh();
    }

    public boolean sp(boolean z10) {
        if (this.tt == null || !nu()) {
            return false;
        }
        boolean zC = c(getContext(), this.tt.c(), this.ve, this.uj, this.f21712u);
        if (zC) {
            Message messageObtain = Message.obtain();
            messageObtain.what = 9;
            messageObtain.obj = Boolean.valueOf(z10);
            this.f21706da.sendMessageDelayed(messageObtain, BaseCloudFileManager.ACK_TIMEOUT);
            com.byazt.omf.tt.c().put("save_jump_success_time", System.currentTimeMillis());
            com.byazt.omf.tt.c().put("save_jump_success_ad_tag", this.uj);
            com.byazt.omf.tt.c().put("save_dpl_success_materialmeta", this.ve.yg().toString());
        } else {
            n(false);
        }
        return zC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x(final JSONObject jSONObject, final boolean z10) {
        int iVe;
        com.byazt.apd.tt ttVarC = com.byazt.apd.tt.c();
        HashMap map = new HashMap(1);
        map.put("event_tag", this.uj);
        map.put("material_meta", this.ve);
        if (this.ve.mu() != -1001) {
            iVe = this.ve.mu();
        } else {
            iVe = com.byazt.apd.tt.c().ve();
            this.ve.iu(iVe);
        }
        map.put("saas_status_while_click", Integer.valueOf(iVe));
        if ((ttVarC.c(getContext(), (i) this.ve, (Map<String, Object>) map) & 255) == 0) {
            com.byazt.omf.tt.c().put("save_jump_success_time", System.currentTimeMillis());
            com.byazt.omf.tt.c().put("save_jump_success_ad_tag", this.uj);
            com.byazt.omf.tt.c().put("save_dpl_success_materialmeta", this.ve.yg().toString());
            return;
        }
        x().c(m(), this.ve);
        boolean zC = com.byazt.wdw.n.c();
        if (zC) {
            com.byazt.wdw.n.c(false);
        }
        if (!zC) {
            if (new com.byazt.wdw.n(this.ve, getContext(), false).c(this.uj).c(nb.uj(this.uj)).tt(this.f21712u).c(new com.byazt.wdw.n.c() { // from class: com.byazt.wz.c.4
                @Override // com.byazt.wdw.n.c
                public void c() {
                    com.byazt.omf.tt.c().put("save_jump_success_time", System.currentTimeMillis());
                    com.byazt.omf.tt.c().put("save_jump_success_ad_tag", c.this.uj);
                    com.byazt.omf.tt.c().put("save_dpl_success_materialmeta", c.this.ve.yg().toString());
                }

                @Override // com.byazt.wdw.n.c
                public void c(com.byazt.cr.c cVar) {
                    c.this.n(jSONObject, z10);
                }
            })) {
                return;
            }
            n(jSONObject, z10);
            return;
        }
        n(jSONObject, z10);
    }

    @Override // com.byazt.pop.ve
    public void tt() {
        if (gt.getContext() == null) {
            gt.c(getContext());
        }
        rh();
    }

    @Override // com.byazt.pop.ve
    public void c(int i10, com.byazt.dk.ve.c cVar) {
        if (this.f21713x == null) {
            this.f21713x = new HashSet<>();
        }
        this.f21713x.add(Integer.valueOf(i10));
        if (this.rh != null) {
            this.rh.apply(com.byazt.yxi.uj.c().c(9).c(Void.class).c(0, new zb().c("hid", Integer.valueOf(i10)).c("id", Integer.valueOf(i10)).c("onEventLogHandler", cVar).c("hashCode", Integer.valueOf(gt()))).tt());
        }
    }

    @Override // com.byazt.pop.ve
    public void ve() {
        com.byazt.pop.uj ujVar = this.f21708i;
        if (ujVar != null) {
            ujVar.tt();
        }
        u();
        HashSet<Integer> hashSet = this.f21713x;
        if (hashSet != null && hashSet.size() > 0) {
            HashSet hashSet2 = new HashSet();
            hashSet2.addAll(this.f21713x);
            this.f21713x.clear();
            final Iterator it2 = hashSet2.iterator();
            com.byazt.bzd.x.c(new com.byazt.bwm.sp("remove_log_hanlder") { // from class: com.byazt.wz.c.10
                @Override // java.lang.Runnable
                public void run() {
                    while (it2.hasNext()) {
                        int iIntValue = ((Integer) it2.next()).intValue();
                        Function<SparseArray<Object>, Object> function = c.this.rh;
                        if (function != null) {
                            function.apply(com.byazt.yxi.uj.c().c(3).c(Void.class).c(0, new zb().c("hid", Integer.valueOf(iIntValue)).c("hashCode", Integer.valueOf(c.this.gt()))).tt());
                        }
                        it2.remove();
                    }
                }
            });
        }
        WeakReference<Context> weakReference = this.f21704c;
        if (weakReference != null) {
            weakReference.clear();
            this.f21704c = null;
        }
        this.md = null;
    }

    private void c(Activity activity) {
        com.byazt.aas.c cVarVe = com.byazt.omf.x.m().ve();
        if (cVarVe != null && this.f21709m == null) {
            this.f21709m = new Runnable() { // from class: com.byazt.wz.c.7
                @Override // java.lang.Runnable
                public void run() {
                    c.this.rl();
                    c.this.f21709m = null;
                }
            };
            cVarVe.c(activity, this.f21709m);
        }
    }

    @Override // com.byazt.pop.ve
    public void ve(boolean z10) {
        this.gt = z10;
    }

    public void c(Map<String, Object> map) {
        Function<SparseArray<Object>, Object> function = this.rh;
        if (function != null) {
            function.apply(com.byazt.yxi.uj.c().c(16).c(Void.class).c(0, map).tt());
        }
    }

    @Override // com.byazt.wz.uj, com.byazt.pop.ve
    public void c(Activity activity, boolean z10) {
        if (activity == null) {
            return;
        }
        this.f21704c = new WeakReference<>(activity);
        if (z10) {
            return;
        }
        rh();
    }

    @Override // com.byazt.pop.ve
    public void c(int i10) {
        this.nu = i10;
    }

    public void c(String str, long j10, long j11, String str2, String str3) {
        C0478c c0478c = this.f21714z;
        if (c0478c == null) {
            this.f21714z = new C0478c(str, j10, j11, str2, str3);
        } else {
            c0478c.c(str);
            this.f21714z.c(j10);
            this.f21714z.tt(j11);
            this.f21714z.tt(str2);
            this.f21714z.ve(str3);
        }
        com.byazt.bwm.n.ve().execute(this.f21714z);
    }

    private boolean c(final String str, final boolean z10) {
        Object objApply = this.rh.apply(com.byazt.yxi.uj.c().c(6).c(Boolean.class).c(0, new zb().c("downloadUrl", this.tt.tt()).c("hashCode", Integer.valueOf(gt()))).tt());
        if (objApply == null || !((Boolean) objApply).booleanValue()) {
            return true;
        }
        com.byazt.bzd.x.c(new Runnable() { // from class: com.byazt.wz.c.11
            @Override // java.lang.Runnable
            public void run() {
                if (z10) {
                    h.tt(c.this.getContext(), str, 0, 17, 0, 0);
                } else {
                    h.c(c.this.getContext(), str, 0);
                }
            }
        });
        return false;
    }

    @Override // com.byazt.pop.ve
    public void c(final ic icVar, final boolean z10) {
        if (getContext() == null) {
            return;
        }
        this.ve = icVar;
        qy();
        if (com.byazt.wdw.ve.c((i) this.ve, false) && !da.n(this.ve) && !da.uj(this.ve)) {
            ic icVar2 = this.ve;
            new com.byazt.wdw.ve(icVar2, icVar2.my(), getContext(), new HashMap()).c(this.uj).c(new com.byazt.wdw.ve.c() { // from class: com.byazt.wz.c.12
                @Override // com.byazt.wdw.ve.c
                public void c() {
                    c.this.sp(nb.qy(icVar), z10);
                }
            });
        } else {
            sp(nb.qy(icVar), z10);
        }
    }

    public boolean c(Context context, String str, ic icVar, String str2, boolean z10) {
        if (context == null) {
            return false;
        }
        try {
            nb.c(z10, icVar, str2, sp());
            Uri uri = Uri.parse(str);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(uri);
            intent.addFlags(C.ENCODING_PCM_MU_LAW);
            intent.putExtra(AdBaseConstants.MARKET_OPEN_INTENT_OPEN_URL, str);
            context.startActivity(intent);
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }
}
