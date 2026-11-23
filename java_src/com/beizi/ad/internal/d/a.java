package com.beizi.ad.internal.d;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.View;
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.internal.d;
import com.beizi.ad.internal.e.k;
import com.beizi.ad.internal.f;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.lance.a.r;
import com.beizi.ad.model.c;
import com.beizi.ad.model.e;
import com.beizi.ad.model.h;
import com.beizi.ad.model.i;
import com.beizi.ad.model.j;
import com.beizi.ad.model.l;
import com.beizi.ad.model.m;
import com.beizi.ad.model.n;
import com.beizi.ad.model.p;
import com.beizi.ad.model.q;
import com.beizi.ad.v2.activity.BeiZiLandingActivity;
import com.beizi.ad.v2.activity.BeiZiLandingPageActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import com.haima.hmcp.beans.HmInputMappingContent;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@SuppressLint({"NewApi"})
public class a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static a f8843b;
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private c.b.C0229b E;
    private int F;
    private String G;
    private String H;
    private String I;
    private String J;
    private String K;
    private String L;
    private String M;
    private String N;
    private String O;
    private String P;
    private String Q;
    private String R;
    private c.b.a S;
    private boolean T;
    private boolean U;
    private int W;
    private h X;
    private c.b Y;
    private List<c.h> Z;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public f f8844a;
    private l aA;
    private l aB;
    private m aC;
    private j aD;
    private q aE;
    private n aF;
    private List<e> aG;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private String f8845aa;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private String f8847ac;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private String f8848ad;
    private String ae;
    private String ag;
    private String ah;
    private String ai;
    private int aj;
    private String ak;
    private String al;
    private String am;
    private String an;
    private String ao;
    private com.beizi.ad.model.a.f ap;
    private String aq;
    private String ar;
    private String as;
    private String at;
    private com.beizi.ad.internal.c.a au;
    private List<c.d> av;
    private int aw;
    private int ax;
    private int ay;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f8849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private i.a f8850d;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f8861o;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private c.g f8864r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f8865s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f8866t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private String f8867u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private i.f f8868v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f8870x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f8871y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f8872z;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8851e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f8852f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f8853g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f8854h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f8855i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f8856j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f8857k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private C0216a f8858l = new C0216a();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private C0216a f8859m = new C0216a();

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f8860n = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f8862p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private c.e f8863q = new c.e();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f8869w = 0;
    private int V = -1;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private List<Pair<com.beizi.ad.internal.e, String>> f8846ab = new LinkedList();
    private boolean af = false;
    private boolean az = true;

    /* JADX INFO: renamed from: com.beizi.ad.internal.d.a$a, reason: collision with other inner class name */
    public static class C0216a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static int f8877a = 0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static int f8878b = 1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f8879c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f8880d = 0;

        public int b() {
            return this.f8880d;
        }

        public String a() {
            return this.f8879c;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(String str) {
            this.f8879c = str;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(int i10) {
            this.f8880d = i10;
        }
    }

    public a(String str, Map<String, List<String>> map, f fVar) {
        if (str == null) {
            return;
        }
        this.f8844a = fVar;
        this.ao = str;
        try {
            a(c.i.c(str));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        ai();
    }

    private void ai() {
    }

    private boolean aj() {
        if (TextUtils.isEmpty(this.G) || TextUtils.isEmpty(this.L) || TextUtils.isEmpty(this.K) || TextUtils.isEmpty(this.O) || TextUtils.isEmpty(this.Q)) {
            return false;
        }
        if (TextUtils.isEmpty(this.N) && TextUtils.isEmpty(this.M)) {
            return false;
        }
        int i10 = this.F;
        return i10 == 2 || i10 == 5;
    }

    private boolean ak() {
        int i10 = this.F;
        if (i10 == 2) {
            return !TextUtils.isEmpty(this.J) && this.J.startsWith("http");
        }
        return i10 == 5 && !TextUtils.isEmpty(this.J);
    }

    private boolean al() {
        return this.f8868v == i.f.RENDER_UNIFIED || !TextUtils.isEmpty(this.ar);
    }

    private boolean c(c.i iVar) {
        if (iVar.a() > 0) {
            c.j jVar = iVar.d().get(0);
            this.f8850d = jVar.a();
            this.f8851e = jVar.b();
            this.f8852f = jVar.f();
            this.f8853g = jVar.c();
            this.f8854h = jVar.e();
            this.f8855i = jVar.d();
            this.f8856j = jVar.g();
            List<c.d> listH = jVar.h();
            this.av = listH;
            if (listH != null && listH.size() > 0) {
                this.f8861o = this.av.get(0).h();
                this.f8865s = this.av.get(0).k();
                this.f8845aa = this.av.get(0).a();
                this.f8869w = this.av.get(0).l();
                this.f8870x = (iVar.c() / C.MICROS_PER_SECOND) + ((long) (this.f8869w * 1000));
                this.aq = this.av.get(0).n();
                this.as = this.av.get(0).o();
                this.at = this.av.get(0).p();
            }
            this.f8864r = jVar.j();
            com.beizi.ad.internal.c.a().a(jVar.t());
            if (jVar.i() > 0) {
                int i10 = 0;
                for (c.d dVar : jVar.h()) {
                    if (i10 == 0) {
                        this.f8845aa = dVar.a();
                        com.beizi.ad.lance.a.n.a("BeiZisAd", "mAdid = " + this.f8845aa);
                    }
                    if (dVar.g() <= 0 || dVar.f().get(0) == null) {
                        c.C0231c c0231cD = dVar.d();
                        if (c0231cD != null) {
                            if (c0231cD.a() != null) {
                                this.f8858l.a(c0231cD.a());
                                this.f8858l.a(C0216a.f8877a);
                            } else {
                                this.f8858l.a(c0231cD.b());
                                this.f8858l.a(C0216a.f8878b);
                            }
                            if (c0231cD.c() != null) {
                                this.f8859m.a(c0231cD.c());
                                this.f8859m.a(C0216a.f8877a);
                            } else {
                                this.f8859m.a(c0231cD.d());
                                this.f8859m.a(C0216a.f8878b);
                            }
                        }
                        if (dVar.c() > 0) {
                            for (c.a aVar : dVar.e()) {
                                this.f8868v = aVar.a();
                                this.ar = aVar.b();
                                a(aVar.b());
                                b(aVar);
                                if ((aVar.a() == i.f.RENDER_VIDEO || aVar.a() == i.f.RENDER_VAST_VIDEO) && aVar.d() > 0) {
                                    this.f8846ab.add(Pair.create(com.beizi.ad.internal.e.VIDEO, aVar.c().get(0).a()));
                                } else {
                                    this.f8846ab.add(Pair.create(com.beizi.ad.internal.e.HTML, a(aVar)));
                                }
                            }
                        }
                        if (dVar.b() != null) {
                            c.b bVarB = dVar.b();
                            a(bVarB);
                            this.f8847ac = bVarB.a();
                            this.ae = bVarB.h();
                            if (this.f8844a == f.REWARDEDVIDEO) {
                                this.f8848ad = bVarB.b();
                            } else {
                                this.f8848ad = Uri.decode(bVarB.b());
                            }
                        }
                        c.e eVarI = dVar.i();
                        if (eVarI != null) {
                            this.f8863q.a(eVarI.a());
                            this.f8863q.a(eVarI.b());
                            this.f8863q.b(eVarI.c());
                        }
                        this.X = dVar.j();
                        this.aA = dVar.q();
                        this.aC = dVar.r();
                        this.aD = dVar.s();
                    }
                    i10++;
                    if (!this.f8846ab.isEmpty() || al()) {
                        break;
                    }
                }
            }
        }
        if (this.f8846ab.isEmpty() && !al()) {
            return false;
        }
        this.af = true;
        return true;
    }

    private boolean d(c.i iVar) {
        if (iVar.a() > 0) {
            c.j jVar = iVar.d().get(0);
            this.f8850d = jVar.a();
            this.f8851e = jVar.b();
            this.av = jVar.h();
            this.f8852f = jVar.f();
            this.f8853g = jVar.c();
            this.f8854h = jVar.e();
            this.f8855i = jVar.d();
            this.f8856j = jVar.g();
            this.aw = jVar.l();
            this.ax = jVar.m();
            this.aA = jVar.o();
            this.aC = jVar.q();
            this.aE = jVar.s();
            this.f8864r = jVar.j();
            com.beizi.ad.internal.c.a().a(jVar.t());
            List<c.d> list = this.av;
            if (list != null && list.size() > 0) {
                Collections.sort(this.av, new Comparator<c.d>() { // from class: com.beizi.ad.internal.d.a.1
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(c.d dVar, c.d dVar2) {
                        try {
                            int i10 = Integer.parseInt(dVar.h()) - Integer.parseInt(dVar2.h());
                            if (i10 > 0) {
                                return -1;
                            }
                            return i10 < 0 ? 1 : 0;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return -1;
                        }
                    }
                });
                for (c.d dVar : this.av) {
                    int iT = dVar.t();
                    if (iT == 0) {
                        this.ay = iT;
                        this.f8861o = dVar.h();
                        this.f8865s = dVar.k();
                        this.f8845aa = dVar.a();
                        this.f8869w = dVar.l();
                        this.f8870x = (iVar.c() / C.MICROS_PER_SECOND) + ((long) (this.f8869w * 1000));
                        this.aq = dVar.n();
                        this.as = dVar.o();
                        this.at = dVar.p();
                        if (dVar.c() < 0) {
                            break;
                        }
                        for (c.a aVar : dVar.e()) {
                            if (aVar.a() == i.f.RENDER_JSON || aVar.a() == i.f.RENDER_UNIFIED) {
                                try {
                                    c.C0231c c0231cD = dVar.d();
                                    if (c0231cD != null) {
                                        if (c0231cD.a() != null) {
                                            this.f8858l.a(c0231cD.a());
                                            this.f8858l.a(C0216a.f8877a);
                                        } else {
                                            this.f8858l.a(c0231cD.b());
                                            this.f8858l.a(C0216a.f8878b);
                                        }
                                        if (c0231cD.c() != null) {
                                            this.f8859m.a(c0231cD.c());
                                            this.f8859m.a(C0216a.f8877a);
                                        } else {
                                            this.f8859m.a(c0231cD.d());
                                            this.f8859m.a(C0216a.f8878b);
                                        }
                                    }
                                    this.f8868v = aVar.a();
                                    this.ar = aVar.b();
                                    com.beizi.ad.internal.c.a aVarA = com.beizi.ad.internal.c.a.a(new JSONObject(aVar.b()));
                                    this.au = aVarA;
                                    aVarA.b(k());
                                    this.au.a(j());
                                    this.f8867u = this.au.b();
                                    if (dVar.b() != null) {
                                        a(dVar.b());
                                        c.b bVarB = dVar.b();
                                        this.f8847ac = bVarB.a();
                                        this.f8848ad = bVarB.b();
                                        this.ae = bVarB.h();
                                        this.au.b(!com.beizi.ad.internal.e.n.a(this.f8847ac) ? this.f8847ac : this.ae);
                                        this.au.c(this.f8848ad);
                                        this.au.a(dVar.b());
                                        List<c.h> listJ = bVarB.j();
                                        if (listJ != null && listJ.size() > 0) {
                                            for (int i10 = 0; i10 < listJ.size(); i10++) {
                                                String strB = listJ.get(i10).b();
                                                if (!TextUtils.isEmpty(strB)) {
                                                    this.au.e(strB);
                                                }
                                                String strA = listJ.get(i10).a();
                                                if (!TextUtils.isEmpty(strA)) {
                                                    this.au.d(strA);
                                                }
                                            }
                                        }
                                    }
                                    c.e eVarI = dVar.i();
                                    if (eVarI != null) {
                                        this.f8863q.a(eVarI.a());
                                        this.f8863q.a(eVarI.b());
                                        this.f8863q.b(eVarI.c());
                                    }
                                    if (this.X == null) {
                                        this.X = dVar.j();
                                    }
                                    if (this.aA == null) {
                                        this.aA = dVar.q();
                                    }
                                    if (this.aC == null) {
                                        this.aC = dVar.r();
                                    }
                                    if (this.aD == null) {
                                        this.aD = dVar.s();
                                    }
                                    com.beizi.ad.internal.c.a aVar2 = this.au;
                                    if (aVar2 != null) {
                                        aVar2.a(Y());
                                        this.au.a(this.aD);
                                        this.au.a(this.av);
                                        this.au.a(this.aE);
                                    }
                                } catch (JSONException unused) {
                                }
                                if (this.au != null || al()) {
                                    this.af = true;
                                    return true;
                                }
                            }
                        }
                        break;
                    }
                }
            }
        }
        return false;
    }

    private boolean e(c.i iVar) {
        if (iVar.a() > 0) {
            c.j jVar = iVar.d().get(0);
            this.f8850d = jVar.a();
            this.f8851e = jVar.b();
            this.f8852f = jVar.f();
            this.f8853g = jVar.c();
            this.f8854h = jVar.e();
            this.f8855i = jVar.d();
            this.f8856j = jVar.g();
            List<c.d> listH = jVar.h();
            this.av = listH;
            if (listH != null && listH.size() > 0) {
                this.f8861o = this.av.get(0).h();
                this.f8865s = this.av.get(0).k();
                this.f8845aa = this.av.get(0).a();
                this.f8869w = this.av.get(0).l();
                this.f8870x = (iVar.c() / C.MICROS_PER_SECOND) + ((long) (this.f8869w * 1000));
                this.aq = this.av.get(0).n();
                this.as = this.av.get(0).o();
                this.at = this.av.get(0).p();
            }
            this.f8864r = jVar.j();
            com.beizi.ad.internal.c.a().a(jVar.t());
            if (jVar.i() > 0) {
                int i10 = 0;
                for (c.d dVar : jVar.h()) {
                    if (i10 == 0) {
                        this.f8845aa = dVar.a();
                        com.beizi.ad.lance.a.n.a("BeiZisAd", "mAdid = " + this.f8845aa);
                    }
                    if (dVar.g() <= 0 || dVar.f().get(0) == null) {
                        c.C0231c c0231cD = dVar.d();
                        if (c0231cD != null) {
                            if (c0231cD.a() != null) {
                                this.f8858l.a(c0231cD.a());
                                this.f8858l.a(C0216a.f8877a);
                            } else {
                                this.f8858l.a(c0231cD.b());
                                this.f8858l.a(C0216a.f8878b);
                            }
                            if (c0231cD.c() != null) {
                                this.f8859m.a(c0231cD.c());
                                this.f8859m.a(C0216a.f8877a);
                            } else {
                                this.f8859m.a(c0231cD.d());
                                this.f8859m.a(C0216a.f8878b);
                            }
                        }
                        if (dVar.c() > 0) {
                            for (c.a aVar : dVar.e()) {
                                this.f8868v = aVar.a();
                                this.ar = aVar.b();
                                a(aVar.b());
                                if (aVar.d() > 0) {
                                    this.f8867u = aVar.c().get(0).a();
                                }
                            }
                        }
                        if (dVar.b() != null) {
                            c.b bVarB = dVar.b();
                            a(bVarB);
                            this.f8847ac = bVarB.a();
                            this.ae = bVarB.h();
                            if (this.f8844a == f.REWARDEDVIDEO) {
                                this.f8848ad = bVarB.b();
                            } else {
                                this.f8848ad = Uri.decode(bVarB.b());
                            }
                        }
                        c.e eVarI = dVar.i();
                        if (eVarI != null) {
                            this.f8863q.a(eVarI.a());
                            this.f8863q.a(eVarI.b());
                            this.f8863q.b(eVarI.c());
                        }
                        this.X = dVar.j();
                        this.aA = dVar.q();
                        this.aC = dVar.r();
                        this.aD = dVar.s();
                        this.aF = dVar.x();
                        this.aG = dVar.y();
                    }
                    i10++;
                    if (!TextUtils.isEmpty(this.f8867u) || al()) {
                        break;
                    }
                }
            }
        }
        if (TextUtils.isEmpty(this.f8867u) && !al()) {
            return false;
        }
        this.af = true;
        return true;
    }

    public String A() {
        return this.am;
    }

    public boolean B() {
        return TextUtils.isEmpty(this.f8848ad) && aj() && ak();
    }

    public Map C() {
        if (this.f8863q == null) {
            return null;
        }
        HashMap map = new HashMap();
        map.put("forceUnreal", Boolean.valueOf(this.f8863q.a()));
        if (this.f8863q.b() > 0.0d) {
            map.put("maxAcc", Double.valueOf(this.f8863q.b()));
        }
        if (this.f8863q.c() > 0.0d) {
            map.put("angle", Double.valueOf(this.f8863q.c()));
        }
        return map;
    }

    public String D() {
        try {
            JSONObject jSONObject = new JSONObject();
            c.g gVar = this.f8864r;
            if (gVar != null) {
                jSONObject.put("raiseSortPrice", gVar.a());
                jSONObject.put("effectRate", this.f8864r.b());
                jSONObject.put("auctionType", this.f8864r.c());
                jSONObject.put("isLastLook", this.f8864r.d());
                jSONObject.put("winPriceMin", this.f8864r.e());
                jSONObject.put("winPriceMax", this.f8864r.f());
                jSONObject.put("customData", this.f8864r.g());
            } else {
                jSONObject.put("raiseSortPrice", -1);
                jSONObject.put("effectRate", -1);
                jSONObject.put("auctionType", -1);
                jSONObject.put("isLastLook", -1);
                jSONObject.put("winPriceMin", "");
                jSONObject.put("winPriceMax", "");
                jSONObject.put("customData", "");
            }
            try {
                int i10 = this.ax;
                if (i10 > 0) {
                    jSONObject.put("secondPrice", i10);
                } else if (!TextUtils.isEmpty(this.f8865s)) {
                    jSONObject.put("secondPrice", Integer.parseInt(this.f8865s));
                }
            } catch (NumberFormatException | JSONException unused) {
            }
            return com.beizi.ad.lance.a.a.a(com.beizi.ad.lance.a.m.a(), com.beizi.ad.internal.e.c.a(jSONObject.toString()));
        } catch (Exception unused2) {
            return null;
        }
    }

    public String E() {
        return this.f8867u;
    }

    public i.f F() {
        return this.f8868v;
    }

    public String G() {
        return this.an;
    }

    public int H() {
        return this.f8869w;
    }

    public String I() {
        return this.ao;
    }

    public String J() {
        return this.al;
    }

    public int K() {
        return this.aj;
    }

    public com.beizi.ad.model.a.f L() {
        return this.ap;
    }

    public String M() {
        return this.aq;
    }

    public String N() {
        return this.ar;
    }

    public String O() {
        return this.f8848ad;
    }

    public String P() {
        return this.f8847ac;
    }

    public String Q() {
        return this.J;
    }

    public String R() {
        c.b bVar = this.Y;
        if (bVar == null) {
            return null;
        }
        return bVar.s();
    }

    public String S() {
        c.b bVar = this.Y;
        if (bVar == null) {
            return null;
        }
        return bVar.t();
    }

    public String T() {
        return this.as;
    }

    public String U() {
        return this.at;
    }

    public boolean V() {
        return this.T;
    }

    public boolean W() {
        return this.W == 1;
    }

    public Map X() {
        if (this.X == null) {
            return null;
        }
        try {
            HashMap map = new HashMap();
            if (this.X.a() > 0.0d) {
                map.put("maxAcc", Double.valueOf(this.X.a()));
            }
            if (this.X.b() > 0.0d) {
                map.put("angle", Double.valueOf(this.X.b()));
            }
            if (this.X.c() > 0.0d) {
                map.put("duration", Double.valueOf(this.X.c()));
            }
            if (!TextUtils.isEmpty(this.X.d())) {
                map.put(HmInputMappingContent.FIELD_DIRECTION, this.X.d());
            }
            return map;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public l Y() {
        try {
            l lVar = this.aA;
            if (lVar != null) {
                String strF = lVar.f();
                if (TextUtils.isEmpty(strF)) {
                    f fVar = this.f8844a;
                    if (fVar == f.NEW_SPLASH || fVar == f.NATIVE) {
                        strF = E();
                    } else if (fVar == f.INTERSTITIAL) {
                        strF = x();
                    } else if (fVar == f.REWARDEDVIDEO) {
                        strF = J();
                    } else if (fVar == f.SPLASHUNIFIED) {
                        strF = G();
                    }
                }
                this.aA.a(strF);
            }
            return this.aA;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public l Z() {
        return this.aB;
    }

    public void a(boolean z10) {
    }

    public m aa() {
        return this.aC;
    }

    public int ab() {
        return this.ay;
    }

    public List<c.d> ac() {
        return this.av;
    }

    public boolean ad() {
        return System.currentTimeMillis() < this.f8870x;
    }

    public n ae() {
        return this.aF;
    }

    public List<e> af() {
        return this.aG;
    }

    public void ag() {
        f8843b = null;
    }

    public j ah() {
        return this.aD;
    }

    public void b(Map map) {
    }

    public boolean f() {
        return this.f8853g;
    }

    public int g() {
        return this.f8854h;
    }

    public int h() {
        return this.f8855i;
    }

    public i.a i() {
        return this.f8850d;
    }

    public C0216a j() {
        return this.f8858l;
    }

    public C0216a k() {
        return this.f8859m;
    }

    public String l() {
        return this.G;
    }

    public String m() {
        return this.H;
    }

    public String n() {
        return this.J;
    }

    public String o() {
        return this.K;
    }

    public String p() {
        return this.L;
    }

    public String q() {
        return this.M;
    }

    public String r() {
        return this.N;
    }

    public String s() {
        return this.O;
    }

    public String t() {
        return this.Q;
    }

    public int u() {
        return this.F;
    }

    public String v() {
        return this.ag;
    }

    public String w() {
        return this.ah;
    }

    public String x() {
        return this.ak;
    }

    public String y() {
        return this.ai;
    }

    public boolean z() {
        return !TextUtils.isEmpty(this.ai);
    }

    private boolean f(c.i iVar) {
        if (iVar.a() > 0) {
            c.j jVar = iVar.d().get(0);
            this.f8850d = jVar.a();
            this.f8851e = jVar.b();
            this.f8852f = jVar.f();
            this.f8853g = jVar.c();
            this.f8854h = jVar.e();
            this.f8855i = jVar.d();
            this.f8856j = jVar.g();
            this.av = jVar.h();
            this.aw = jVar.l();
            this.ax = jVar.m();
            if (jVar.k() != null) {
                this.ap = jVar.k();
                this.X = jVar.n();
                this.aA = jVar.o();
                this.aB = jVar.p();
                this.aC = jVar.q();
                this.aD = jVar.r();
            }
            List<c.d> list = this.av;
            if (list != null && list.size() > 0) {
                Collections.sort(this.av, new Comparator<c.d>() { // from class: com.beizi.ad.internal.d.a.3
                    @Override // java.util.Comparator
                    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                    public int compare(c.d dVar, c.d dVar2) {
                        try {
                            int i10 = Integer.parseInt(dVar.h()) - Integer.parseInt(dVar2.h());
                            if (i10 > 0) {
                                return -1;
                            }
                            return i10 < 0 ? 1 : 0;
                        } catch (Exception e10) {
                            e10.printStackTrace();
                            return -1;
                        }
                    }
                });
                for (c.d dVar : this.av) {
                    int iT = dVar.t();
                    if (iT == 0 || iT == 1) {
                        this.ay = iT;
                        this.f8861o = dVar.h();
                        this.f8865s = dVar.k();
                        this.f8845aa = dVar.a();
                        this.f8869w = dVar.l();
                        this.f8870x = (iVar.c() / C.MICROS_PER_SECOND) + ((long) (this.f8869w * 1000));
                        this.aq = dVar.n();
                        this.as = dVar.o();
                        this.at = dVar.p();
                        if (dVar.g() > 0 && dVar.f().get(0) != null) {
                            break;
                        }
                        c.C0231c c0231cD = dVar.d();
                        if (c0231cD != null) {
                            if (c0231cD.a() != null) {
                                this.f8858l.a(c0231cD.a());
                                this.f8858l.a(C0216a.f8877a);
                            } else {
                                this.f8858l.a(c0231cD.b());
                                this.f8858l.a(C0216a.f8878b);
                            }
                            if (c0231cD.c() != null) {
                                this.f8859m.a(c0231cD.c());
                                this.f8859m.a(C0216a.f8877a);
                            } else {
                                this.f8859m.a(c0231cD.d());
                                this.f8859m.a(C0216a.f8878b);
                            }
                        }
                        if (dVar.c() > 0) {
                            for (c.a aVar : dVar.e()) {
                                this.f8868v = aVar.a();
                                this.ar = aVar.b();
                                b(aVar.b());
                            }
                        }
                        if (dVar.b() != null) {
                            c.b bVarB = dVar.b();
                            a(bVarB);
                            this.f8847ac = bVarB.a();
                            this.ae = bVarB.h();
                            if (this.f8844a == f.REWARDEDVIDEO) {
                                this.f8848ad = bVarB.b();
                            } else {
                                this.f8848ad = Uri.decode(bVarB.b());
                            }
                        }
                        c.e eVarI = dVar.i();
                        if (eVarI != null) {
                            this.f8863q.a(eVarI.a());
                            this.f8863q.a(eVarI.b());
                            this.f8863q.b(eVarI.c());
                        }
                        if (this.X == null) {
                            this.X = dVar.j();
                        }
                        if (this.ap == null) {
                            this.ap = dVar.m();
                        }
                        if (this.aA == null) {
                            this.aA = dVar.q();
                        }
                        if (this.aC == null) {
                            this.aC = dVar.r();
                        }
                        if (this.aD != null) {
                            break;
                        }
                        this.aD = dVar.s();
                        break;
                    }
                }
            }
            this.f8864r = jVar.j();
            com.beizi.ad.internal.c.a().a(jVar.t());
        }
        if (TextUtils.isEmpty(this.ai) && TextUtils.isEmpty(this.al) && !al()) {
            return false;
        }
        this.af = true;
        return true;
    }

    public void b(boolean z10) {
        this.f8862p = z10;
    }

    private void a(c.b bVar) {
        this.Y = bVar;
        this.Z = bVar.j();
        this.E = bVar.i();
        this.F = bVar.c();
        this.G = bVar.d();
        this.H = bVar.e();
        this.I = bVar.f();
        this.J = bVar.g();
        if (TextUtils.isEmpty(this.H)) {
            this.H = "lance";
        }
        if (TextUtils.isEmpty(this.G)) {
            this.G = "BeiZi";
        }
        if (TextUtils.isEmpty(this.I)) {
            this.I = "Ad Download";
        }
        this.K = bVar.k();
        this.L = bVar.l();
        this.M = bVar.m();
        this.N = bVar.n();
        this.O = bVar.o();
        this.P = bVar.p();
        this.Q = bVar.q();
        c.b.a aVarR = bVar.r();
        this.S = aVarR;
        if (aVarR != null) {
            if (aVarR.a() == 1) {
                this.T = true;
            }
            if (this.S.b() == 1) {
                this.U = true;
            }
            this.W = this.S.c();
        }
    }

    private boolean b(c.i iVar) {
        return iVar.b() == 0;
    }

    public String b() {
        int i10 = this.aw;
        if (i10 > 0) {
            return String.valueOf(i10);
        }
        return this.f8861o;
    }

    private void b(final Context context) {
        if (context == null) {
            return;
        }
        com.beizi.ad.internal.c.a().a(new com.beizi.ad.internal.a() { // from class: com.beizi.ad.internal.d.a.2
            @Override // com.beizi.ad.internal.a
            public void a() {
                try {
                    if (a.this.E != null) {
                        List<String> listF = a.this.E.f();
                        a.this.E.m(null);
                        k.a(listF);
                    }
                } catch (Exception unused) {
                }
            }

            @Override // com.beizi.ad.internal.a
            public void b() {
                try {
                    if (a.this.az) {
                        if (a.this.E != null) {
                            List<String> listJ = a.this.E.j();
                            a.this.E.q(null);
                            k.a(listJ);
                        }
                        a.this.c(context);
                    }
                } catch (Exception unused) {
                }
            }
        });
        Uri uri = Uri.parse(this.f8848ad);
        if (uri.getScheme() != null && uri.getScheme().equals("bzopen") && !TextUtils.isEmpty(uri.getHost()) && uri.getPathSegments().size() > 0) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.MAIN");
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            intent.addCategory("android.intent.category.LAUNCHER");
            String queryParameter = uri.getQueryParameter("flags");
            if (!TextUtils.isEmpty(queryParameter)) {
                try {
                    if (!queryParameter.startsWith("0x") && !queryParameter.startsWith("0X")) {
                        intent.setFlags(Integer.parseInt(queryParameter));
                    } else {
                        intent.setFlags(Integer.parseInt(queryParameter.substring(2), 16));
                    }
                } catch (Exception unused) {
                }
            }
            intent.setComponent(new ComponentName(uri.getHost(), uri.getPathSegments().get(0)));
            String queryParameter2 = uri.getQueryParameter("rect");
            if (!TextUtils.isEmpty(queryParameter2)) {
                try {
                    String[] strArrSplit = queryParameter2.split(":");
                    if (strArrSplit.length == 4) {
                        Rect rect = new Rect();
                        rect.set(Integer.parseInt(strArrSplit[0]), Integer.parseInt(strArrSplit[1]), Integer.parseInt(strArrSplit[2]), Integer.parseInt(strArrSplit[3]));
                        intent.setSourceBounds(rect);
                    }
                } catch (Exception unused2) {
                }
            }
            context.startActivity(intent);
            return;
        }
        if (this.f8848ad.startsWith("hwpps://landingpage")) {
            Intent intent2 = new Intent();
            intent2.setData(uri);
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent2);
            return;
        }
        if (this.f8848ad.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
            Intent uri2 = null;
            try {
                uri2 = Intent.parseUri(this.f8848ad, 1);
                uri2.addFlags(C.ENCODING_PCM_MU_LAW);
            } catch (Exception unused3) {
            }
            context.startActivity(uri2);
            return;
        }
        Intent intent3 = new Intent("android.intent.action.VIEW", uri);
        intent3.addFlags(805339136);
        context.startActivity(intent3);
    }

    private void a(c.i iVar) {
        if (b(iVar)) {
            f fVar = this.f8844a;
            if (fVar == f.NEW_SPLASH) {
                e(iVar);
                return;
            }
            if (fVar == f.REWARDEDVIDEO) {
                f(iVar);
            } else if (fVar != f.NATIVE) {
                c(iVar);
            } else {
                d(iVar);
            }
        }
    }

    private String a(c.a aVar) {
        if (aVar.a() != i.f.RENDER_H5 && aVar.a() != i.f.RENDER_PIC) {
            return "";
        }
        if (aVar.a() == i.f.RENDER_PIC && aVar.d() > 0) {
            return "<!DOCTYPE html>\n<html lang=\"en\" style=\"width: 100%; height: 100%;\">\n<head>\n    <meta charset=\"UTF-8\">\n    <meta name=\"viewport\" id=\"viewport\" content=\"width=device-width, height=device-height, initial-scale=1\">\n    <title>Document</title>\n</head>\n<body style=\"width: 100%; height: 100%; padding: 0; margin: 0;\">\n<img style=\"width: 100%; height: 100%\" src=\"__IMAGE_SRC_PATH__\" alt=\"\"/>\n</body>\n</html><!DOCTYPE html>".replace("__IMAGE_SRC_PATH__", aVar.c().get(0).a());
        }
        Matcher matcher = Pattern.compile("\\{(\\d+)\\.value\\}").matcher(aVar.b());
        HashMap map = new HashMap();
        for (int i10 = 0; i10 < aVar.d(); i10++) {
            map.put(Integer.valueOf(i10), aVar.c().get(i10).a());
        }
        StringBuffer stringBuffer = new StringBuffer();
        while (matcher.find()) {
            Integer numValueOf = Integer.valueOf(Integer.parseInt(matcher.group(1)));
            if (map.get(numValueOf) != null) {
                matcher.appendReplacement(stringBuffer, (String) map.get(numValueOf));
            } else {
                matcher.appendReplacement(stringBuffer, "");
            }
        }
        matcher.appendTail(stringBuffer);
        return stringBuffer.toString();
    }

    private void b(c.a aVar) {
        List<c.f> listC;
        c.f fVar;
        if (aVar == null) {
            return;
        }
        try {
            if (aVar.a() != i.f.RENDER_PIC || (listC = aVar.c()) == null || listC.size() == 0 || (fVar = listC.get(0)) == null) {
                return;
            }
            this.an = fVar.a();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void b(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                if (jSONObject.has("title")) {
                    this.ag = com.beizi.ad.internal.e.j.c(jSONObject, "title");
                }
                if (jSONObject.has("desc")) {
                    this.ah = com.beizi.ad.internal.e.j.c(jSONObject, "desc");
                }
                if (jSONObject.has("appIcon")) {
                    this.am = com.beizi.ad.internal.e.j.c(jSONObject, "appIcon");
                }
                if (jSONObject.has("lauchImageUrl")) {
                    this.al = com.beizi.ad.internal.e.j.c(jSONObject, "lauchImageUrl");
                }
                if (jSONObject.has("videoUrl")) {
                    this.ai = com.beizi.ad.internal.e.j.c(jSONObject, "videoUrl");
                }
                if (jSONObject.has("videoTime")) {
                    this.aj = com.beizi.ad.internal.e.j.d(jSONObject, "videoTime");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public com.beizi.ad.e a() {
        return this.au;
    }

    public void a(View view, String str) {
        List<c.h> listJ;
        String strA;
        int i10 = this.f8857k;
        if (i10 <= 0) {
            this.f8857k = i10 + 1;
            c.b bVar = this.Y;
            if (bVar == null || (listJ = bVar.j()) == null) {
                return;
            }
            for (int i11 = 0; i11 < listJ.size(); i11++) {
                c.h hVar = listJ.get(i11);
                if (hVar != null && !TextUtils.isEmpty(hVar.a()) && view != null) {
                    if (!TextUtils.isEmpty(str)) {
                        strA = hVar.a().replace("__REQUESTUUID__", str);
                    } else {
                        strA = hVar.a();
                    }
                    if (!TextUtils.isEmpty(this.f8866t)) {
                        strA = strA.replace(p.f9671a, this.f8866t);
                    }
                    if (this.f8871y) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new d(com.beizi.ad.internal.e.n.a(0, view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
            }
        }
    }

    public boolean e() {
        return this.f8852f;
    }

    public void b(View view, String str) {
        c.d dVarA;
        c.b bVarB;
        List<c.h> listJ;
        String strC;
        if (this.f8872z || this.Y == null || (dVarA = a(0)) == null || (bVarB = dVarA.b()) == null || (listJ = bVarB.j()) == null) {
            return;
        }
        this.f8872z = true;
        for (int i10 = 0; i10 < listJ.size(); i10++) {
            c.h hVar = listJ.get(i10);
            if (hVar != null && !TextUtils.isEmpty(hVar.c()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strC = hVar.c().replace("__REQUESTUUID__", str);
                } else {
                    strC = hVar.c();
                }
                if (this.f8871y) {
                    strC = strC.replace(p.f9672b, "1");
                }
                new d(com.beizi.ad.internal.e.n.a(0, view, strC)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
            }
        }
    }

    public void e(View view, String str) {
        c.d dVarA;
        c.b bVarB;
        List<c.h> listJ;
        String strG;
        if (this.C || this.Y == null || (dVarA = a(0)) == null || (bVarB = dVarA.b()) == null || (listJ = bVarB.j()) == null) {
            return;
        }
        this.C = true;
        for (int i10 = 0; i10 < listJ.size(); i10++) {
            c.h hVar = listJ.get(i10);
            if (hVar != null && !TextUtils.isEmpty(hVar.g()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strG = hVar.g().replace("__REQUESTUUID__", str);
                } else {
                    strG = hVar.g();
                }
                if (this.f8871y) {
                    strG = strG.replace(p.f9672b, "1");
                }
                new d(com.beizi.ad.internal.e.n.a(0, view, strG)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
            }
        }
    }

    public String c() {
        return this.f8845aa;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(Context context) {
        if (context == null) {
            return;
        }
        if (d(context)) {
            c.b.C0229b c0229b = this.E;
            if (c0229b != null) {
                List<String> listK = c0229b.k();
                this.E.r(null);
                k.a(listK);
                return;
            }
            return;
        }
        if (TextUtils.isEmpty(this.f8847ac) || !this.f8847ac.startsWith("http")) {
            return;
        }
        try {
            if (this.f8860n) {
                Intent intent = new Intent(context, (Class<?>) BeiZiLandingPageActivity.class);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isRedirectionCanJump", this.T);
                bundle.putBoolean("isDownload", aj());
                if (!TextUtils.isEmpty(this.f8848ad)) {
                    boolean z10 = true;
                    if (this.W != 1) {
                        z10 = false;
                    }
                    bundle.putBoolean("webDeepLink", z10);
                    bundle.putString("deeplinkUrl", this.f8848ad);
                }
                if (!TextUtils.isEmpty(this.f8847ac)) {
                    bundle.putString("landingPageUrl", this.f8847ac);
                }
                c.b.C0229b c0229b2 = this.E;
                if (c0229b2 != null) {
                    bundle.putSerializable("followTrackExt", c0229b2);
                }
                j jVar = this.aD;
                if (jVar != null) {
                    bundle.putSerializable("lpOptimizeModule", jVar);
                }
                intent.putExtra("data", bundle);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
                return;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW", Uri.parse(Uri.decode(this.f8847ac)));
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent2);
        } catch (Exception unused) {
        }
    }

    public void a(View view, String str, String str2, String str3, String str4, String str5, String str6, boolean z10, String str7) {
        Context context;
        View rootView;
        String strA;
        com.beizi.ad.lance.a.n.a("BeiZisAd", "handleClick========" + z10);
        if (!z10 && this.Y != null && this.Z != null) {
            for (int i10 = 0; i10 < this.Z.size(); i10++) {
                c.h hVar = this.Z.get(i10);
                if (hVar != null && !TextUtils.isEmpty(hVar.b())) {
                    if (!TextUtils.isEmpty(str7)) {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), str, str2, str3, str4, str5, str6, "").replace("__REQUESTUUID__", str7);
                    } else {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), str, str2, str3, str4, str5, str6, "");
                    }
                    if (this.f8871y) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new d(com.beizi.ad.internal.e.n.a(view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
            }
            this.Z = null;
        }
        com.beizi.ad.lance.a.n.a("BeiZisAd", "mDeepLinkUrl:" + this.f8848ad + ",appDownloadURL = " + this.J + ",mLandingPageUrl = " + this.f8847ac);
        if (view != null) {
            try {
                context = view.getContext();
            } catch (Exception unused) {
                context = null;
            }
        } else {
            context = null;
        }
        try {
            if (!(context instanceof Activity) && view != null && view.getRootView() != null && (rootView = view.getRootView()) != null) {
                context = rootView.getContext();
            }
        } catch (Exception unused2) {
        }
        if (context == null) {
            return;
        }
        if (!TextUtils.isEmpty(this.f8848ad)) {
            try {
                if (!com.beizi.ad.lance.a.l.a(context, this.f8848ad) && !com.beizi.ad.lance.a.i.a(context, this.H) && !this.f8848ad.startsWith("hwpps://landingpage") && !this.f8848ad.startsWith(Constants.WS_MESSAGE_TYPE_INTENT) && !this.f8848ad.startsWith("hap://")) {
                    c.b.C0229b c0229b = this.E;
                    if (c0229b != null) {
                        List<String> listI = c0229b.i();
                        this.E.p(null);
                        k.a(listI);
                    }
                    a(context);
                    return;
                }
                c.b.C0229b c0229b2 = this.E;
                if (c0229b2 != null) {
                    List<String> listH = c0229b2.h();
                    this.E.o(null);
                    k.a(listH);
                }
                b(context);
                c.b.C0229b c0229b3 = this.E;
                if (c0229b3 != null) {
                    List<String> listE = c0229b3.e();
                    this.E.l(null);
                    k.a(listE);
                    return;
                }
                return;
            } catch (Exception unused3) {
                c.b.C0229b c0229b4 = this.E;
                if (c0229b4 != null) {
                    List<String> listG = c0229b4.g();
                    this.E.n(null);
                    k.a(listG);
                }
                a(context);
                return;
            }
        }
        a(context);
    }

    public void f(View view, String str) {
        c.d dVarA;
        c.b bVarB;
        List<c.h> listJ;
        String strD;
        if (this.D || this.Y == null || (dVarA = a(0)) == null || (bVarB = dVarA.b()) == null || (listJ = bVarB.j()) == null) {
            return;
        }
        this.D = true;
        for (int i10 = 0; i10 < listJ.size(); i10++) {
            c.h hVar = listJ.get(i10);
            if (hVar != null && !TextUtils.isEmpty(hVar.d()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strD = hVar.d().replace("__REQUESTUUID__", str);
                } else {
                    strD = hVar.d();
                }
                if (this.f8871y) {
                    strD = strD.replace(p.f9672b, "1");
                }
                new d(com.beizi.ad.internal.e.n.a(0, view, strD)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
            }
        }
    }

    public void e(boolean z10) {
        this.f8849c = z10;
    }

    public boolean d() {
        return this.af;
    }

    private boolean d(Context context) {
        c.b bVar = this.Y;
        if (bVar == null) {
            return false;
        }
        try {
            if (bVar.w() == 0) {
                return false;
            }
            String strS = this.Y.s();
            String strT = this.Y.t();
            String strU = this.Y.u();
            if (!TextUtils.isEmpty(strS) && !TextUtils.isEmpty(strT)) {
                return r.a(context, strS, strT, strU);
            }
            String strV = this.Y.v();
            if (!TextUtils.isEmpty(strV)) {
                return r.a(context, strV);
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void c(boolean z10) {
        this.f8871y = z10;
    }

    public void c(View view, String str) {
        c.d dVarA;
        c.b bVarB;
        List<c.h> listJ;
        String strE;
        if (this.A || this.Y == null || (dVarA = a(0)) == null || (bVarB = dVarA.b()) == null || (listJ = bVarB.j()) == null) {
            return;
        }
        this.A = true;
        for (int i10 = 0; i10 < listJ.size(); i10++) {
            c.h hVar = listJ.get(i10);
            if (hVar != null && !TextUtils.isEmpty(hVar.e()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strE = hVar.e().replace("__REQUESTUUID__", str);
                } else {
                    strE = hVar.e();
                }
                if (this.f8871y) {
                    strE = strE.replace(p.f9672b, "1");
                }
                new d(com.beizi.ad.internal.e.n.a(0, view, strE)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
            }
        }
    }

    public void d(View view, String str) {
        c.d dVarA;
        c.b bVarB;
        List<c.h> listJ;
        String strF;
        if (this.B || this.Y == null || (dVarA = a(0)) == null || (bVarB = dVarA.b()) == null || (listJ = bVarB.j()) == null) {
            return;
        }
        this.B = true;
        for (int i10 = 0; i10 < listJ.size(); i10++) {
            c.h hVar = listJ.get(i10);
            if (hVar != null && !TextUtils.isEmpty(hVar.f()) && view != null) {
                if (!TextUtils.isEmpty(str)) {
                    strF = hVar.f().replace("__REQUESTUUID__", str);
                } else {
                    strF = hVar.f();
                }
                if (this.f8871y) {
                    strF = strF.replace(p.f9672b, "1");
                }
                new d(com.beizi.ad.internal.e.n.a(0, view, strF)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
            }
        }
    }

    public void d(boolean z10) {
        try {
            this.az = z10;
            com.beizi.ad.internal.c.a aVar = this.au;
            if (aVar != null) {
                aVar.b(z10);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(Context context) {
        try {
            if (aj() && ak()) {
                int i10 = this.F;
                if (i10 == 2) {
                    if (com.beizi.ad.lance.a.i.a(context, this.H)) {
                        com.beizi.ad.lance.a.i.b(context, this.H);
                        c.b.C0229b c0229b = this.E;
                        if (c0229b != null) {
                            List<String> listA = c0229b.a();
                            this.E.a(null);
                            k.a(listA);
                            return;
                        }
                        return;
                    }
                    a(context, 1);
                    return;
                }
                if (i10 == 5) {
                    if (com.beizi.ad.lance.a.l.a(context, this.J)) {
                        if (!this.U && this.V != 0) {
                            a(context, 2);
                            return;
                        }
                        a(this.J, context);
                        c.b.C0229b c0229b2 = this.E;
                        if (c0229b2 != null) {
                            List<String> listA2 = c0229b2.a();
                            this.E.a(null);
                            k.a(listA2);
                            return;
                        }
                        return;
                    }
                    c(context);
                    return;
                }
                return;
            }
            c(context);
        } catch (Exception unused) {
        }
    }

    private void a(Context context, int i10) {
        try {
            File fileA = com.beizi.ad.lance.a.i.a(context);
            String absolutePath = fileA != null ? fileA.getAbsolutePath() : "";
            ApkBean apkBean = new ApkBean(this.J, this.H + ".apk", this.H, absolutePath, this.G, this.I, context.getPackageName() + ".fileprovider", this.E, this.K, this.L, this.M, this.N, this.O, this.P, this.Q);
            apkBean.setFileMD5(this.R);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i10);
            bundle.putBoolean("isCanJump", this.T);
            bundle.putBoolean("isDownload", aj());
            if (i10 == 2) {
                c.b.C0229b c0229b = this.E;
                if (c0229b != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0229b.a());
                }
                bundle.putString("landingPageUrl", this.f8847ac);
            }
            if (!TextUtils.isEmpty(this.f8848ad)) {
                bundle.putString("deeplinkUrl", this.f8848ad);
                bundle.putInt("webDeepLink", this.W);
            }
            Serializable serializable = this.aD;
            if (serializable != null) {
                bundle.putSerializable("lpOptimizeModule", serializable);
            }
            Intent intent = new Intent(context, (Class<?>) BeiZiDownloadDialogActivity.class);
            intent.putExtra("data", bundle);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } catch (Exception unused) {
        }
    }

    private void a(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            context.startActivity(intent);
        } catch (ActivityNotFoundException unused) {
        }
    }

    public void a(View view, com.beizi.ad.model.f fVar, String str, String str2, boolean z10, String str3, int i10) {
        Context context;
        String strA;
        com.beizi.ad.lance.a.n.a("BeiZisAd", "handleClick========" + z10);
        this.V = i10;
        if (!z10 && this.Y != null && this.Z != null) {
            for (int i11 = 0; i11 < this.Z.size(); i11++) {
                c.h hVar = this.Z.get(i11);
                if (hVar != null && !TextUtils.isEmpty(hVar.b())) {
                    if (!TextUtils.isEmpty(str3)) {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10).replace("__REQUESTUUID__", str3);
                    } else {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10);
                    }
                    if (this.f8871y) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new d(com.beizi.ad.internal.e.n.a(view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
            }
            this.Z = null;
        }
        com.beizi.ad.lance.a.n.a("BeiZisAd", "mDeepLinkUrl:" + this.f8848ad + ",appDownloadURL = " + this.J + ",mLandingPageUrl = " + this.f8847ac);
        if (view != null) {
            try {
                context = view.getContext();
            } catch (Exception unused) {
                context = null;
            }
        } else {
            context = null;
        }
        try {
            com.beizi.ad.lance.a.n.a("BeiZisAd", "context:" + context + "; flag =" + (context instanceof Activity));
            if (!(context instanceof Activity) && view != null && view.getRootView() != null) {
                View rootView = view.getRootView();
                if (rootView != null) {
                    context = rootView.getContext();
                }
                com.beizi.ad.lance.a.n.a("BeiZisAd", " rootView context:" + context + "; flag =" + (context instanceof Activity));
            }
        } catch (Exception unused2) {
        }
        if (context == null) {
            return;
        }
        if (this.f8868v == i.f.RENDER_UNIFIED && this.f8849c) {
            if (f8843b == null) {
                f8843b = this;
            }
            Intent intent = new Intent(context, (Class<?>) BeiZiLandingActivity.class);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            if (!TextUtils.isEmpty(this.f8848ad)) {
                Bundle bundle = new Bundle();
                bundle.putString("deeplinkUrl", this.f8848ad);
                intent.putExtra("data", bundle);
            }
            context.startActivity(intent);
            return;
        }
        if (!TextUtils.isEmpty(this.f8848ad)) {
            try {
                if (!com.beizi.ad.lance.a.l.a(context, this.f8848ad) && !com.beizi.ad.lance.a.i.a(context, this.H) && !this.f8848ad.startsWith("hwpps://landingpage") && !this.f8848ad.startsWith(Constants.WS_MESSAGE_TYPE_INTENT) && !this.f8848ad.startsWith("hap://")) {
                    c.b.C0229b c0229b = this.E;
                    if (c0229b != null) {
                        List<String> listI = c0229b.i();
                        this.E.p(null);
                        k.a(listI);
                    }
                    a(context);
                    return;
                }
                c.b.C0229b c0229b2 = this.E;
                if (c0229b2 != null) {
                    List<String> listH = c0229b2.h();
                    this.E.o(null);
                    k.a(listH);
                }
                b(context);
                c.b.C0229b c0229b3 = this.E;
                if (c0229b3 != null) {
                    List<String> listE = c0229b3.e();
                    this.E.l(null);
                    k.a(listE);
                    return;
                }
                return;
            } catch (Exception unused3) {
                c.b.C0229b c0229b4 = this.E;
                if (c0229b4 != null) {
                    List<String> listG = c0229b4.g();
                    this.E.n(null);
                    k.a(listG);
                }
                a(context);
                return;
            }
        }
        a(context);
    }

    private void a(String str) {
        try {
            if (!TextUtils.isEmpty(str) && str.startsWith("{")) {
                JSONObject jSONObject = new JSONObject(str);
                this.ag = com.beizi.ad.internal.e.j.c(jSONObject, "Headline");
                this.ah = com.beizi.ad.internal.e.j.c(jSONObject, "Body");
                this.am = com.beizi.ad.internal.e.j.c(jSONObject, "AppIcon");
                JSONArray jSONArrayA = com.beizi.ad.internal.e.j.a(jSONObject, "Images");
                JSONArray jSONArrayA2 = com.beizi.ad.internal.e.j.a(jSONObject, "Videos");
                if (jSONArrayA != null && jSONArrayA.length() > 0) {
                    this.ak = (String) jSONArrayA.get(0);
                }
                if (jSONArrayA2 != null && jSONArrayA2.length() > 0) {
                    this.ai = (String) jSONArrayA2.get(0);
                }
                if (jSONObject.has("apkFileMD5")) {
                    this.R = com.beizi.ad.internal.e.j.c(jSONObject, "apkFileMD5");
                }
            }
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(Map map) {
        Object obj;
        if (map == null) {
            return;
        }
        try {
            if (map.containsKey("auctionExt") && (obj = map.get("auctionExt")) != null) {
                if (obj instanceof String) {
                    this.f8866t = (String) obj;
                }
                if (TextUtils.isEmpty(this.f8866t)) {
                    return;
                }
                this.f8866t = com.beizi.ad.lance.a.a.a(com.beizi.ad.lance.a.m.a(), this.f8866t);
            }
        } catch (Exception unused) {
        }
    }

    public void a(View view, com.beizi.ad.model.f fVar, String str, String str2, String str3, int i10) {
        String strA;
        try {
            this.V = i10;
            if (this.Y == null || this.Z == null) {
                return;
            }
            for (int i11 = 0; i11 < this.Z.size(); i11++) {
                c.h hVar = this.Z.get(i11);
                if (hVar != null && !TextUtils.isEmpty(hVar.b())) {
                    if (!TextUtils.isEmpty(str3)) {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10).replace("__REQUESTUUID__", str3);
                    } else {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10);
                    }
                    if (this.f8871y) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new d(com.beizi.ad.internal.e.n.a(view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
            }
            this.Z = null;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(c.d dVar, View view, String str) {
        c.b bVarB;
        String strA;
        if (dVar == null || (bVarB = dVar.b()) == null) {
            return;
        }
        dVar.a(true);
        List<c.h> listJ = bVarB.j();
        if (listJ != null) {
            for (int i10 = 0; i10 < listJ.size(); i10++) {
                c.h hVar = listJ.get(i10);
                if (hVar != null && !TextUtils.isEmpty(hVar.a()) && view != null) {
                    if (!TextUtils.isEmpty(str)) {
                        strA = hVar.a().replace("__REQUESTUUID__", str);
                    } else {
                        strA = hVar.a();
                    }
                    if (!TextUtils.isEmpty(this.f8866t)) {
                        strA = strA.replace(p.f9671a, this.f8866t);
                    }
                    if (this.f8871y) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new d(com.beizi.ad.internal.e.n.a(0, view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
                hVar.a(null);
            }
        }
    }

    public void a(c.d dVar, View view, com.beizi.ad.model.f fVar, String str, String str2, boolean z10, String str3, int i10) {
        String strA;
        a(dVar);
        c.b bVarB = dVar.b();
        if (bVarB == null) {
            return;
        }
        dVar.b(true);
        List<c.h> listJ = bVarB.j();
        if (listJ != null) {
            for (int i11 = 0; i11 < listJ.size(); i11++) {
                c.h hVar = listJ.get(i11);
                if (hVar != null && !TextUtils.isEmpty(hVar.b())) {
                    if (!TextUtils.isEmpty(str3)) {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10).replace("__REQUESTUUID__", str3);
                    } else {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10);
                    }
                    if (this.f8871y) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new d(com.beizi.ad.internal.e.n.a(view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
                hVar.b(null);
            }
        }
        a(view, fVar, str, str2, z10, str3, i10);
    }

    private void a(c.d dVar) {
        c.b bVarB;
        if (dVar == null || (bVarB = dVar.b()) == null) {
            return;
        }
        a(bVarB);
        this.f8847ac = bVarB.a();
        this.ae = bVarB.h();
        if (this.f8844a == f.REWARDEDVIDEO) {
            this.f8848ad = bVarB.b();
        } else {
            this.f8848ad = Uri.decode(bVarB.b());
        }
    }

    public c.d a(int i10) {
        List<c.d> list = this.av;
        if (list != null && !list.isEmpty()) {
            for (c.d dVar : this.av) {
                if (dVar.t() == i10) {
                    return dVar;
                }
            }
        }
        return null;
    }

    public void a(String str, String str2, String str3) {
        try {
            com.beizi.ad.model.a.f fVar = this.ap;
            if (fVar == null) {
                return;
            }
            String strN = fVar.n();
            if (TextUtils.isEmpty(strN)) {
                return;
            }
            this.ap.a((String) null);
            if (!TextUtils.isEmpty(str)) {
                strN = strN.replace("__REQUESTUUID__", str);
            }
            if (strN.contains(".UTC_TS.")) {
                strN = strN.replaceAll(".UTC_TS.", String.valueOf(System.currentTimeMillis()));
            }
            if (strN.contains("__USER_ID__") && !TextUtils.isEmpty(str2)) {
                strN = strN.replace("__USER_ID__", str2);
            }
            if (strN.contains("__USER_CUSTOM_DATA__") && !TextUtils.isEmpty(str3)) {
                strN = strN.replace("__USER_CUSTOM_DATA__", str3);
            }
            new d(strN).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
        } catch (Exception unused) {
        }
    }
}
