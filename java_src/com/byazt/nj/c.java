package com.byazt.nj;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import com.byazt.aas.nb;
import com.byazt.afw.nu;
import com.byazt.bzd.sl;
import com.byazt.bzd.t;
import com.byazt.dh.ve;
import com.byazt.dna.qp;
import com.byazt.ete.ic;
import com.byazt.fk.n;
import com.byazt.fk.sp;
import com.byazt.jr.SSRenderTextureView;
import com.byazt.kft.UpieVideoView;
import com.byazt.nr.d;
import com.byazt.nr.da;
import com.byazt.nr.m;
import com.byazt.omf.gt;
import com.byazt.sw.uj;
import com.byazt.ukr.yp;
import com.byazt.un.a;
import com.byazt.un.tt;
import com.join.mgps.activity.TagGameListActivity_;
import com.join.mgps.activity.posting.PostingActivity_;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1775, 20})
public abstract class c implements ve, qp.c, com.byazt.ua.c.InterfaceC0445c, tt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public ic f17367a;
    public volatile String gr;
    public InterfaceC0378c gu;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public WeakReference<Context> f17370i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f17371m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public a f17372n;
    public com.byazt.jzl.a qy;
    public List<Runnable> sl;
    public SurfaceHolder tt;
    public sp uj;
    public SurfaceTexture ve;
    public com.byazt.jzl.tt zm;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final d f17368c = new d(Looper.getMainLooper(), this);
    public long sp = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f17376x = 0;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f17369da = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f17374t = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public long f17375u = 0;
    public boolean yp = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public boolean f17377z = false;
    public boolean nu = false;
    public volatile boolean rh = false;
    public boolean my = false;
    public boolean gt = false;
    public com.byazt.sw.c rl = new com.byazt.sw.c();
    public Runnable yv = new Runnable() { // from class: com.byazt.nj.c.1
        @Override // java.lang.Runnable
        public void run() {
            m.c("BaseController", "resumeVideo: run ", Boolean.valueOf(c.this.f17369da));
            c.this.eo();
        }
    };

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final AtomicBoolean f17373p = new AtomicBoolean(false);

    /* JADX INFO: renamed from: com.byazt.nj.c$c, reason: collision with other inner class name */
    public interface InterfaceC0378c {
        void c(long j10, long j11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void gr() {
        Iterator it2 = new ArrayList(this.sl).iterator();
        while (it2.hasNext()) {
            ((Runnable) it2.next()).run();
        }
        this.sl.clear();
    }

    private boolean gu() {
        a aVar = this.f17372n;
        if (aVar == null) {
            return false;
        }
        com.byazt.jr.tt ttVarNu = aVar.nu();
        return (ttVarNu instanceof SSRenderTextureView) || (ttVarNu instanceof UpieVideoView);
    }

    public void cu() {
        nu.c cVar = new nu.c();
        cVar.c(sl());
        cVar.ve(yp());
        cVar.tt(t());
        cVar.a(u());
        com.byazt.jzl.a aVarTt = uj.tt(this.f17372n);
        if (aVarTt != null) {
            aVarTt.putExtra("EXTRA_PLAY_ACTION", pf());
        }
        uj.uj(this.f17372n, cVar);
    }

    public void d() {
        m.c("BaseController", "execPendingActions: before ");
        List<Runnable> list = this.sl;
        if (list == null || list.isEmpty() || this.rh) {
            return;
        }
        m.c("BaseController", "execPendingActions:  exec");
        da.tt().post(new Runnable() { // from class: com.byazt.nj.c.2
            @Override // java.lang.Runnable
            public void run() {
                c.this.gr();
            }
        });
    }

    public void da(boolean z10) {
        nu.c cVar = new nu.c();
        cVar.tt(true);
        cVar.ve(z10);
        com.byazt.jzl.a aVarTt = uj.tt(this.f17372n);
        if (aVarTt != null) {
            aVarTt.putExtra("EXTRA_PLAY_START", pf());
        }
        ve(this.f17372n, cVar);
    }

    public void eo() {
        this.f17368c.postAtFrontOfQueue(new Runnable() { // from class: com.byazt.nj.c.3
            @Override // java.lang.Runnable
            public void run() {
                c cVar = c.this;
                if (cVar.uj != null) {
                    m.c("BaseController", "resumeVideo: execResumePlay", Boolean.valueOf(cVar.f17369da));
                    c.this.uj.play();
                }
            }
        });
    }

    @Override // com.byazt.ua.c.InterfaceC0445c
    public boolean getHasUseCustomizeVideo() {
        return false;
    }

    @Override // com.byazt.ua.c.InterfaceC0445c
    public com.byazt.ua.c getVideoModel() {
        com.byazt.ua.c cVar = new com.byazt.ua.c();
        cVar.sp = this.sp;
        cVar.f20527c = gt();
        cVar.f20529x = my();
        cVar.uj = rl();
        return cVar;
    }

    @Override // com.byazt.dh.ve
    public boolean gt() {
        return this.my;
    }

    public boolean h() {
        if ((!this.f17372n.u() || !this.f17369da) && !t.c(this.f17367a) && !com.byazt.ic.c.tt(this.f17367a)) {
            tt("not exec pending");
            return false;
        }
        x(false);
        d();
        return true;
    }

    @Override // com.byazt.dna.qp.c
    public void handleMsg(Message message) {
    }

    public void i(boolean z10) {
        this.gt = z10;
    }

    @Override // com.byazt.dh.ve
    public boolean m() {
        return this.f17377z;
    }

    public boolean md() {
        WeakReference<Context> weakReference = this.f17370i;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    @Override // com.byazt.dh.ve
    public boolean my() {
        return this.nu;
    }

    @Override // com.byazt.dh.ve
    public boolean n() {
        return false;
    }

    public void nb() {
        if (this.qy == null) {
            return;
        }
        this.gr = uj.c();
        com.byazt.jzl.tt ttVar = this.zm;
        if (ttVar != null) {
            ttVar.tt(this.gr);
        }
        this.rl.ve(1);
        this.qy.putExtra("EXTRA_PLAY_START", pf());
        uj.c(this.f17367a, (com.byazt.oce.c) this.f17372n, this.qy, true, this.gr);
    }

    @Override // com.byazt.dh.ve
    public sp nu() {
        return this.uj;
    }

    public boolean or() {
        return this.f17374t;
    }

    public boolean p() {
        return true;
    }

    public Map<String, Object> pf() {
        return null;
    }

    public void qp() {
        nu.c cVar = new nu.c();
        cVar.c(sl());
        cVar.ve(yp());
        cVar.tt(t());
        com.byazt.jzl.a aVarTt = uj.tt(this.f17372n);
        if (aVarTt != null) {
            aVarTt.putExtra("EXTRA_PLAY_ACTION", pf());
        }
        tt(rh(), cVar);
    }

    @Override // com.byazt.dh.ve
    public long sl() {
        return this.sp;
    }

    @Override // com.byazt.dh.ve
    public long t() {
        if (nu() == null) {
            return 0L;
        }
        return nu().getTotalBufferTime();
    }

    @Override // com.byazt.dh.ve
    public void tt(long j10) {
        this.sp = j10;
        long j11 = this.f17376x;
        if (j11 > j10) {
            j10 = j11;
        }
        this.f17376x = j10;
    }

    @Override // com.byazt.dh.ve
    public boolean uj() {
        return false;
    }

    @Override // com.byazt.dh.ve
    public void ve(long j10) {
        this.f17375u = j10;
    }

    public void x(boolean z10) {
        this.rh = z10;
    }

    @Override // com.byazt.dh.ve
    public long yp() {
        sp spVar = this.uj;
        if (spVar == null) {
            return 0L;
        }
        return spVar.getVideoDuration();
    }

    public void yv() {
        if (this.uj == null) {
            return;
        }
        if (gu()) {
            SurfaceTexture surfaceTexture = this.ve;
            if (surfaceTexture == null || surfaceTexture == this.uj.getSurfaceTexture()) {
                return;
            }
            this.uj.setSurface(this.ve);
            return;
        }
        SurfaceHolder surfaceHolder = this.tt;
        if (surfaceHolder == null || surfaceHolder == this.uj.getSurfaceHolder()) {
            return;
        }
        this.uj.setDisplay(this.tt);
    }

    @Override // com.byazt.dh.ve
    /* JADX INFO: renamed from: zb, reason: merged with bridge method [inline-methods] */
    public a rh() {
        return this.f17372n;
    }

    public com.byazt.jzl.tt c(String str) {
        ic icVar;
        if (!gt.tt().qy() || (icVar = this.f17367a) == null) {
            return null;
        }
        long cachedSize = sl.c(icVar.xx()).getCachedSize(this.qy);
        int iC = uj.c(this.f17367a, this.qy, cachedSize);
        n currentVideoInfo = this.qy.getCurrentVideoInfo();
        double video_duration = currentVideoInfo != null ? currentVideoInfo.getVideo_duration() : -1.0d;
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("video_source", str);
        } catch (JSONException unused) {
        }
        return new com.byazt.jzl.n.c().c("video_life").c(nb.sl(this.f17367a)).uj(nb.c(this.f17367a, "")).ve(this.f17367a.qy()).tt(this.f17367a.uj()).tt(this.f17367a.xx()).ve(iC).c(cachedSize).c(video_duration).uj(this.f17367a.il()).c(jSONObject).c();
    }

    @Override // com.byazt.dh.ve
    public void uj(long j10) {
        this.f17371m = j10;
    }

    @Override // com.byazt.dh.ve
    public void ve(boolean z10) {
        this.my = z10;
    }

    public void tt(Runnable runnable) {
        if (this.sl == null) {
            this.sl = new ArrayList();
        }
        this.sl.add(runnable);
    }

    public void ve(Map<String, Object> map) {
        nu.c cVar = new nu.c();
        cVar.c(sl());
        cVar.ve(yp());
        cVar.tt(t());
        com.byazt.jzl.a aVarTt = uj.tt(this.f17372n);
        if (aVarTt != null) {
            aVarTt.putExtra("EXTRA_PLAY_ACTION", pf());
        }
        if (map != null) {
            cVar.c(map);
        }
        c(this.f17372n, cVar);
    }

    @Override // com.byazt.dh.c
    public void tt(com.byazt.dh.tt ttVar, SurfaceTexture surfaceTexture) {
        this.f17369da = false;
        m.c("BaseController", "surfaceTextureDestroyed: ");
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.setSurfaceValid(false);
        }
        this.ve = null;
        d();
    }

    public void ve(com.byazt.oce.c cVar, nu.c cVar2) {
        this.rl.ve(2);
        uj.c(cVar, cVar2);
    }

    @Override // com.byazt.dh.ve
    public void tt(boolean z10) {
        this.nu = z10;
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.setQuietPlay(z10);
        }
    }

    public void ve(int i10) {
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.setUpdateProgressInterval(i10);
        }
    }

    public void tt(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.putOpt("error", str);
        } catch (JSONException unused) {
        }
        yp.c().c("video", jSONObject, (Throwable) null);
    }

    public void tt(int i10) {
        if (this.rl.uj(1)) {
            if (!this.f17374t) {
                i10 *= 10;
            }
            c(-900001, i10, "only play start", (JSONArray) null);
        }
        JSONArray jSONArray = new JSONArray();
        if (this.rl.c(1)) {
            return;
        }
        String strTt = nb.tt(this.f17367a);
        JSONObject jSONObjectC = c(4, strTt);
        if (jSONObjectC != null) {
            jSONArray.put(jSONObjectC);
        }
        JSONObject jSONObjectC2 = c(2, strTt);
        if (jSONObjectC2 != null) {
            jSONArray.put(jSONObjectC2);
        }
        JSONObject jSONObjectC3 = c(8, strTt);
        if (jSONObjectC3 != null) {
            jSONArray.put(jSONObjectC3);
        }
        JSONObject jSONObjectC4 = c(32, strTt);
        if (jSONObjectC4 != null) {
            jSONArray.put(jSONObjectC4);
        }
        JSONObject jSONObjectC5 = c(64, strTt);
        if (jSONObjectC5 != null) {
            jSONArray.put(jSONObjectC5);
        }
        JSONObject jSONObjectC6 = c(128, strTt);
        if (jSONObjectC6 != null) {
            jSONArray.put(jSONObjectC6);
        }
        c(-900002, -701, "lack play start", jSONArray);
    }

    public static com.byazt.jzl.tt c(ic icVar) {
        if (!gt.tt().qy() || icVar == null) {
            return null;
        }
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("video_source", "assist");
        } catch (JSONException unused) {
        }
        return new com.byazt.jzl.n.c().c("video_life").c(nb.sl(icVar)).uj(nb.c(icVar, "")).ve(icVar.qy()).tt(icVar.uj()).tt(icVar.xx()).ve(-1).c(-1L).c(-1.0d).uj(icVar.il()).c(jSONObject).c();
    }

    public void tt(com.byazt.oce.c cVar, nu.c cVar2) {
        this.rl.ve(8);
        uj.tt(rh(), cVar2);
    }

    public void c(Runnable runnable) {
        if (runnable == null || this.f17367a == null) {
            return;
        }
        if ((!this.f17372n.u() || !this.f17369da) && !t.c(this.f17367a) && !com.byazt.ic.c.tt(this.f17367a)) {
            tt(runnable);
        } else {
            runnable.run();
        }
    }

    @Override // com.byazt.dh.c
    public void c(com.byazt.dh.tt ttVar, SurfaceTexture surfaceTexture) {
        this.f17369da = true;
        this.ve = surfaceTexture;
        sp spVar = this.uj;
        if (spVar != null) {
            spVar.setSurface(surfaceTexture);
            this.uj.setSurfaceValid(this.f17369da);
        }
        m.c("BaseController", "surfaceTextureCreated: ");
        d();
    }

    @Override // com.byazt.dh.ve
    public void c(boolean z10) {
        this.f17374t = z10;
        a aVar = this.f17372n;
        if (aVar != null) {
            aVar.uj(z10);
        }
    }

    public void c(int i10, int i11, String str, JSONArray jSONArray) {
        if (this.f17370i == null) {
            return;
        }
        nu.c cVar = new nu.c();
        cVar.tt(t());
        cVar.ve(yp());
        cVar.c(sl());
        cVar.c(i10);
        cVar.tt(i11);
        cVar.c(jSONArray);
        if (this.rl.c(256)) {
            return;
        }
        this.rl.ve(256);
        uj.c(rh(), cVar, str, !this.rl.c(2) ? 1 : 0, this.rl.c(128));
    }

    private JSONObject c(int i10, String str) {
        String str2;
        try {
            if (this.rl.c(128)) {
                str2 = "endcard_skip";
            } else if (this.rl.c(8)) {
                str2 = "feed_continue";
            } else if (this.rl.c(4)) {
                str2 = "feed_pause";
            } else if (this.rl.c(2)) {
                str2 = "feed_play";
            } else if (this.rl.c(64)) {
                str2 = "feed_over";
            } else {
                str2 = this.rl.c(32) ? "feed_break" : null;
            }
            if (!TextUtils.isEmpty(str2)) {
                JSONObject jSONObject = new JSONObject();
                jSONObject.putOpt(TagGameListActivity_.TAG_EXTRA, str);
                jSONObject.putOpt(PostingActivity_.LABEL_EXTRA, str2);
                jSONObject.putOpt("time", this.rl.tt(i10));
                return jSONObject;
            }
        } catch (Exception unused) {
        }
        return null;
    }

    public void c(com.byazt.oce.c cVar, nu.c cVar2) {
        this.rl.ve(4);
        uj.c(this.f17372n, cVar2, !this.rl.c(2) ? 1 : 0);
    }

    public void c(InterfaceC0378c interfaceC0378c) {
        this.gu = interfaceC0378c;
    }

    public void c(long j10, long j11) {
        if (!this.f17373p.get() && gt.tt().ri() && (j10 * 1.0d) / j11 > 0.3d) {
            this.f17373p.set(true);
            com.byazt.qw.ve.ve().c("videoPercent30", this.f17367a);
        }
    }
}
