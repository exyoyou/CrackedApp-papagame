package com.byazt.z;

import android.app.Activity;
import android.content.Context;
import androidx.annotation.NonNull;
import com.byazt.c.IDownloadFileUriProvider;
import com.byazt.c.IDownloadListener;
import com.byazt.c.eo;
import com.byazt.c.gr;
import com.byazt.c.rh;
import com.byazt.c.u;
import com.byazt.c.yp;
import com.byazt.ev.EnqueueType;
import com.byazt.tk.AdBaseConstants;
import com.byazt.zz.my;
import com.byazt.zz.x;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 133, 46})
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f22520a;
    public gr aw;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f22521b;
    public IDownloadFileUriProvider bm;
    public int bx;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Activity f22522c;
    public boolean cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f22523d;
    public String eo;
    public String gr;
    public my gt;
    public boolean gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f22525h;

    /* JADX INFO: renamed from: hd, reason: collision with root package name */
    public com.byazt.s.a f22526hd;

    /* JADX INFO: renamed from: ic, reason: collision with root package name */
    public yp f22528ic;
    public boolean kk;
    public int kp;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public boolean f22529l;
    public eo lo;
    public rh lr;
    public JSONObject lt;
    public x my;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public String f22531n;
    public boolean nu;
    public boolean or;
    public String oz;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f22533p;
    public boolean pu;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f22534q;
    public boolean qp;
    public boolean qy;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int[] f22535r;
    public com.byazt.zz.sp rh;
    public com.byazt.n.c rl;
    public String sp;
    public String to;
    public Context tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public IDownloadListener f22537u;
    public List<String> uj;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public String f22538v;
    public String ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public List<com.byazt.t.ve> f22539x;
    public IDownloadListener yp;
    public long yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public String f22540z;
    public String zm;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f22527i = true;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public boolean f22524da = false;
    public boolean sl = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public boolean f22536t = false;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public String f22530m = AdBaseConstants.MIME_APK;
    public int md = 5;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public boolean f22541zb = true;

    /* JADX INFO: renamed from: nb, reason: collision with root package name */
    public EnqueueType f22532nb = EnqueueType.ENQUEUE_NONE;
    public int pf = 150;
    public boolean sv = true;
    public List<u> tk = new ArrayList();
    public boolean tx = true;
    public boolean os = true;

    public n(@NonNull Context context, @NonNull String str) {
        this.tt = context.getApplicationContext();
        this.ve = str;
    }

    public boolean a() {
        return this.f22524da;
    }

    public yp aw() {
        return this.f22528ic;
    }

    public boolean b() {
        return this.kk;
    }

    public eo bm() {
        return this.lo;
    }

    public String bx() {
        return this.f22520a;
    }

    public String c() {
        return this.ve;
    }

    public boolean cu() {
        return this.sv;
    }

    public int d() {
        return this.pf;
    }

    public IDownloadListener da() {
        return this.yp;
    }

    public int eo() {
        return this.bx;
    }

    public Activity getActivity() {
        return this.f22522c;
    }

    public Context getContext() {
        return this.tt;
    }

    public int gr() {
        return this.f22525h;
    }

    public String gt() {
        return this.gr;
    }

    public int gu() {
        return this.md;
    }

    public my h() {
        return this.gt;
    }

    public IDownloadFileUriProvider hd() {
        return this.bm;
    }

    public IDownloadListener i() {
        return this.f22537u;
    }

    public com.byazt.s.a ic() {
        return this.f22526hd;
    }

    public String kk() {
        return this.to;
    }

    public int[] kp() {
        return this.f22535r;
    }

    public String l() {
        return this.f22538v;
    }

    public boolean lo() {
        return this.pu;
    }

    public List<u> lr() {
        return this.tk;
    }

    public long lt() {
        return this.f22521b;
    }

    public com.byazt.zz.sp m() {
        return this.rh;
    }

    public boolean md() {
        return this.or;
    }

    public int my() {
        return this.f22534q;
    }

    public boolean n() {
        return this.f22527i;
    }

    public EnqueueType nb() {
        return this.f22532nb;
    }

    public boolean nu() {
        return this.qy;
    }

    public boolean or() {
        return this.qp;
    }

    public JSONObject os() {
        return this.lt;
    }

    public boolean p() {
        return this.f22541zb;
    }

    public boolean pf() {
        return this.f22533p;
    }

    public int pu() {
        return this.kp;
    }

    public boolean q() {
        return this.tx;
    }

    public boolean qp() {
        return this.f22529l;
    }

    public long qy() {
        return this.yv;
    }

    public boolean rh() {
        return this.gu;
    }

    public String rl() {
        return this.zm;
    }

    public String sl() {
        return this.f22540z;
    }

    public boolean sp() {
        return this.sl;
    }

    public gr sv() {
        return this.aw;
    }

    public String t() {
        return this.f22530m;
    }

    public String tk() {
        return this.oz;
    }

    public boolean to() {
        return this.os;
    }

    public String tt() {
        return this.f22531n;
    }

    public List<String> tx() {
        return this.uj;
    }

    public boolean u() {
        return this.nu;
    }

    public List<com.byazt.t.ve> uj() {
        return this.f22539x;
    }

    public rh v() {
        return this.lr;
    }

    public String ve() {
        return this.sp;
    }

    public boolean x() {
        return this.f22536t;
    }

    public com.byazt.n.c yp() {
        return this.rl;
    }

    public String yv() {
        return this.eo;
    }

    public x z() {
        return this.my;
    }

    public boolean zb() {
        return this.cu;
    }

    public boolean zm() {
        return this.f22523d;
    }

    public n a(String str) {
        this.f22530m = str;
        return this;
    }

    public void c(int i10) {
        this.f22534q = i10;
    }

    public n da(boolean z10) {
        this.or = z10;
        return this;
    }

    public n i(String str) {
        this.eo = str;
        return this;
    }

    public n m(boolean z10) {
        this.tx = z10;
        return this;
    }

    public n n(String str) {
        this.f22540z = str;
        return this;
    }

    public n sl(boolean z10) {
        this.cu = z10;
        return this;
    }

    public n sp(String str) {
        this.gr = str;
        return this;
    }

    public n t(boolean z10) {
        this.qp = z10;
        return this;
    }

    public n tt(String str) {
        this.f22520a = str;
        return this;
    }

    public n u(boolean z10) {
        this.sv = z10;
        return this;
    }

    public n uj(String str) {
        this.f22538v = str;
        return this;
    }

    public n ve(@NonNull String str) {
        this.sp = str;
        return this;
    }

    public n x(String str) {
        this.zm = str;
        return this;
    }

    public n yp(boolean z10) {
        this.f22533p = z10;
        return this;
    }

    public n z(boolean z10) {
        this.kk = z10;
        return this;
    }

    public n a(boolean z10) {
        this.gu = z10;
        return this;
    }

    public n c(String str) {
        this.f22531n = str;
        return this;
    }

    public n da(String str) {
        this.oz = str;
        return this;
    }

    public n i(boolean z10) {
        this.f22541zb = z10;
        return this;
    }

    public n n(boolean z10) {
        this.qy = z10;
        return this;
    }

    public n sl(String str) {
        this.to = str;
        return this;
    }

    public n sp(boolean z10) {
        this.f22523d = z10;
        return this;
    }

    public n tt(boolean z10) {
        this.f22524da = z10;
        return this;
    }

    public n uj(boolean z10) {
        this.nu = z10;
        return this;
    }

    public n ve(boolean z10) {
        this.f22536t = z10;
        return this;
    }

    public n x(boolean z10) {
        this.f22529l = z10;
        return this;
    }

    public n a(int i10) {
        this.kp = i10;
        return this;
    }

    public n c(List<com.byazt.t.ve> list) {
        this.f22539x = list;
        return this;
    }

    public n n(int i10) {
        this.bx = i10;
        return this;
    }

    public n tt(int i10) {
        this.md = i10;
        return this;
    }

    public n uj(int i10) {
        this.pf = i10;
        return this;
    }

    public n ve(int i10) {
        this.f22525h = i10;
        return this;
    }

    public n c(boolean z10) {
        this.f22527i = z10;
        return this;
    }

    public n tt(List<String> list) {
        this.uj = list;
        return this;
    }

    public n c(IDownloadListener iDownloadListener) {
        this.f22537u = iDownloadListener;
        return this;
    }

    public n c(long j10) {
        this.yv = j10;
        return this;
    }

    public n c(EnqueueType enqueueType) {
        this.f22532nb = enqueueType;
        return this;
    }

    public n c(IDownloadFileUriProvider iDownloadFileUriProvider) {
        this.bm = iDownloadFileUriProvider;
        return this;
    }

    public n c(rh rhVar) {
        this.lr = rhVar;
        return this;
    }

    public n c(JSONObject jSONObject) {
        this.lt = jSONObject;
        return this;
    }

    public n c(u uVar) {
        synchronized (this.tk) {
            if (uVar != null) {
                if (!this.tk.contains(uVar)) {
                    this.tk.add(uVar);
                    return this;
                }
            }
            return this;
        }
    }
}
