package com.beizi.ad.internal.c;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import com.beizi.ad.internal.activity.BeiZiDownloadDialogActivity;
import com.beizi.ad.internal.e.k;
import com.beizi.ad.lance.ApkBean;
import com.beizi.ad.lance.a.g;
import com.beizi.ad.lance.a.i;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.lance.a.r;
import com.beizi.ad.model.f;
import com.beizi.ad.model.j;
import com.beizi.ad.model.l;
import com.beizi.ad.model.p;
import com.beizi.ad.model.q;
import com.beizi.ad.v2.activity.BeiZiLandingPageActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.haima.hmcp.Constants;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public class a implements com.beizi.ad.e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static a f8787a;
    private String A;
    private boolean B;
    private g C;
    private View D;
    private List<View> E;
    private b F;
    private View.OnClickListener G;
    private long I;
    private int J;
    private String K;
    private String L;
    private String M;
    private String N;
    private String O;
    private String P;
    private String Q;
    private String R;
    private String S;
    private String T;
    private String U;
    private com.beizi.ad.model.c.b.C0229b V;
    private com.beizi.ad.model.c.b.a W;
    private boolean X;
    private boolean Y;

    /* JADX INFO: renamed from: aa, reason: collision with root package name */
    private int f8788aa;
    private j af;
    private int ag;
    private String ah;
    private String ai;
    private String aj;
    private l ak;
    private boolean al;
    private List<com.beizi.ad.model.c.d> am;
    private q an;
    private boolean ao;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.beizi.ad.e.a f8792b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f8793c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f8794d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f8795e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f8797g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f8798h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f8799i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private com.beizi.ad.model.c.b f8800j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f8801k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private double f8802l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f8803m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f8804n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f8805o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private HashMap<String, Object> f8806p;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private com.beizi.ad.internal.d.a.C0216a f8815y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private com.beizi.ad.internal.d.a.C0216a f8816z;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<Bitmap> f8796f = new ArrayList<>();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f8807q = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f8808r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f8809s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ArrayList<String> f8810t = new ArrayList<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private ArrayList<String> f8811u = new ArrayList<>();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private ArrayList<String> f8812v = new ArrayList<>();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private ArrayList<String> f8813w = new ArrayList<>();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private ArrayList<String> f8814x = new ArrayList<>();
    private String H = "";
    private int Z = 0;

    /* JADX INFO: renamed from: ab, reason: collision with root package name */
    private boolean f8789ab = true;

    /* JADX INFO: renamed from: ac, reason: collision with root package name */
    private boolean f8790ac = false;

    /* JADX INFO: renamed from: ad, reason: collision with root package name */
    private long f8791ad = System.currentTimeMillis();
    private boolean ae = true;

    a() {
    }

    private void x() {
        this.G = new View.OnClickListener() { // from class: com.beizi.ad.internal.c.a.6
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                try {
                    if (a.this.f8814x != null) {
                        for (String str : a.this.f8814x) {
                            n.a("lance", "setClickListener:" + str);
                            new com.beizi.ad.internal.d(str).execute(new Void[0]);
                        }
                    }
                    Context context = view.getContext();
                    View rootView = view.getRootView();
                    if (rootView != null) {
                        context = rootView.getContext();
                    }
                    a.this.Z = 0;
                    a aVar = a.this;
                    aVar.a(aVar.f8799i, a.this.f8798h, context);
                    if (a.this.F != null) {
                        a.this.F.a();
                    }
                    a.this.f8814x = null;
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        };
    }

    private boolean y() {
        if (TextUtils.isEmpty(this.K) || TextUtils.isEmpty(this.P) || TextUtils.isEmpty(this.O) || TextUtils.isEmpty(this.S) || TextUtils.isEmpty(this.U)) {
            return false;
        }
        if (TextUtils.isEmpty(this.R) && TextUtils.isEmpty(this.Q)) {
            return false;
        }
        int i10 = this.J;
        return i10 == 2 || i10 == 5;
    }

    private boolean z() {
        int i10 = this.J;
        if (i10 == 2) {
            return !TextUtils.isEmpty(this.N) && this.N.startsWith("http");
        }
        return i10 == 5 && !TextUtils.isEmpty(this.N);
    }

    @Override // com.beizi.ad.e
    public String l() {
        return this.f8798h;
    }

    @Override // com.beizi.ad.e
    public ApkBean m() {
        int i10 = this.J;
        if (i10 != 2 && i10 != 5) {
            return null;
        }
        ApkBean apkBean = new ApkBean();
        apkBean.setApkName(this.K);
        apkBean.setAppVersion(this.O);
        apkBean.setAppDeveloper(this.P);
        apkBean.setAppPermissionsDesc(this.Q);
        apkBean.setAppPermissionsUrl(this.R);
        apkBean.setAppPrivacyUrl(this.S);
        apkBean.setAppintro(this.U);
        apkBean.setPkgName(this.L);
        return apkBean;
    }

    @Override // com.beizi.ad.e
    public String n() {
        return TextUtils.isEmpty(this.ah) ? "0" : this.ah;
    }

    @Override // com.beizi.ad.e
    public String o() {
        return this.ai;
    }

    @Override // com.beizi.ad.e
    public String p() {
        return this.aj;
    }

    public boolean q() {
        return this.al;
    }

    public l r() {
        return this.ak;
    }

    public List<com.beizi.ad.model.c.d> s() {
        return this.am;
    }

    public void t() {
        f8787a = null;
    }

    public int u() {
        return this.Z;
    }

    public q v() {
        return this.an;
    }

    public boolean w() {
        return this.ao;
    }

    @Override // com.beizi.ad.e
    public String c() {
        return this.f8794d;
    }

    @Override // com.beizi.ad.e
    public String d() {
        return this.f8797g;
    }

    @Override // com.beizi.ad.e
    public String e() {
        return this.f8801k;
    }

    @Override // com.beizi.ad.e
    public boolean f() {
        return this.f8807q;
    }

    @Override // com.beizi.ad.e
    public void g() {
        g gVar = this.C;
        if (gVar != null) {
            gVar.a();
        }
        this.f8807q = true;
        this.D = null;
        this.E = null;
        this.F = null;
        t();
    }

    @Override // com.beizi.ad.e
    public ArrayList<String> h() {
        return this.f8810t;
    }

    @Override // com.beizi.ad.e
    public ArrayList<String> i() {
        return this.f8812v;
    }

    @Override // com.beizi.ad.e
    public com.beizi.ad.internal.d.a.C0216a j() {
        return this.f8815y;
    }

    @Override // com.beizi.ad.e
    public com.beizi.ad.internal.d.a.C0216a k() {
        return this.f8816z;
    }

    public void b(com.beizi.ad.internal.d.a.C0216a c0216a) {
        this.f8816z = c0216a;
    }

    public void c(String str) {
        this.f8799i = str;
    }

    public void d(String str) {
        this.f8813w.add(str);
    }

    public void e(String str) {
        this.f8814x.add(str);
    }

    @Override // com.beizi.ad.e
    public String b() {
        return this.f8795e;
    }

    public void c(boolean z10) {
        this.al = z10;
    }

    public void d(boolean z10) {
        this.ao = z10;
    }

    public void b(String str) {
        this.f8798h = str;
    }

    private boolean b(Context context) {
        com.beizi.ad.model.c.b bVar = this.f8800j;
        if (bVar == null) {
            return false;
        }
        try {
            if (bVar.w() == 0) {
                return false;
            }
            String strS = this.f8800j.s();
            String strT = this.f8800j.t();
            String strU = this.f8800j.u();
            if (!TextUtils.isEmpty(strS) && !TextUtils.isEmpty(strT)) {
                return r.a(context, strS, strT, strU);
            }
            String strV = this.f8800j.v();
            if (!TextUtils.isEmpty(strV)) {
                return r.a(context, strV);
            }
            return false;
        } catch (Throwable th) {
            th.printStackTrace();
        }
    }

    public void a(com.beizi.ad.internal.d.a.C0216a c0216a) {
        this.f8815y = c0216a;
    }

    public void a(String str) {
        this.H = str;
    }

    public static a a(JSONObject jSONObject) throws JSONException {
        if (jSONObject == null) {
            return null;
        }
        ArrayList<String> arrayListA = com.beizi.ad.internal.e.j.a(com.beizi.ad.internal.e.j.a(jSONObject, "ImpressionTrackers"));
        a aVar = new a();
        if (arrayListA != null) {
            aVar.f8813w = arrayListA;
        }
        aVar.f8793c = com.beizi.ad.internal.e.j.c(jSONObject, "Headline");
        aVar.f8794d = com.beizi.ad.internal.e.j.c(jSONObject, "Body");
        aVar.f8795e = com.beizi.ad.internal.e.j.c(jSONObject, "Image");
        JSONArray jSONArrayA = com.beizi.ad.internal.e.j.a(jSONObject, "Images");
        JSONArray jSONArrayA2 = com.beizi.ad.internal.e.j.a(jSONObject, "Videos");
        JSONArray jSONArrayA3 = com.beizi.ad.internal.e.j.a(jSONObject, "Texts");
        if (jSONArrayA != null) {
            for (int i10 = 0; i10 < jSONArrayA.length(); i10++) {
                aVar.f8810t.add((String) jSONArrayA.get(i10));
            }
        }
        if (jSONArrayA2 != null) {
            for (int i11 = 0; i11 < jSONArrayA2.length(); i11++) {
                aVar.f8811u.add((String) jSONArrayA2.get(i11));
            }
        }
        if (jSONArrayA3 != null) {
            for (int i12 = 0; i12 < jSONArrayA3.length(); i12++) {
                aVar.f8812v.add((String) jSONArrayA3.get(i12));
            }
        }
        if (jSONObject.has("AppIcon")) {
            aVar.f8792b = com.beizi.ad.e.a.APP_INSTALL;
            aVar.f8797g = com.beizi.ad.internal.e.j.c(jSONObject, "AppIcon");
            aVar.f8801k = com.beizi.ad.internal.e.j.c(jSONObject, "Action");
            aVar.f8802l = com.beizi.ad.internal.e.j.e(jSONObject, "Star");
            aVar.f8803m = com.beizi.ad.internal.e.j.c(jSONObject, "Store");
            aVar.f8804n = com.beizi.ad.internal.e.j.c(jSONObject, "Price");
        } else {
            aVar.f8792b = com.beizi.ad.e.a.CONTENT;
            aVar.f8797g = com.beizi.ad.internal.e.j.c(jSONObject, "Logo");
            aVar.f8801k = com.beizi.ad.internal.e.j.c(jSONObject, "Action");
            aVar.f8805o = com.beizi.ad.internal.e.j.c(jSONObject, "Advertiser");
        }
        ArrayList<String> arrayListA2 = com.beizi.ad.internal.e.j.a(com.beizi.ad.internal.e.j.a(jSONObject, "ClickTrackers"));
        if (arrayListA2 != null) {
            aVar.f8814x = arrayListA2;
        }
        aVar.f8806p = com.beizi.ad.internal.e.j.a(com.beizi.ad.internal.e.j.b(jSONObject, "Custom"));
        aVar.ah = com.beizi.ad.internal.e.j.c(jSONObject, "taskAction");
        aVar.ai = com.beizi.ad.internal.e.j.c(jSONObject, "packName");
        aVar.aj = com.beizi.ad.internal.e.j.c(jSONObject, "appName");
        return aVar;
    }

    private boolean b(String str, Context context) {
        Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(str));
        intent.setFlags(C.ENCODING_PCM_MU_LAW);
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException unused) {
            return false;
        }
    }

    public void b(boolean z10) {
        this.ae = z10;
    }

    public com.beizi.ad.model.c.d b(int i10) {
        List<com.beizi.ad.model.c.d> list = this.am;
        if (list != null && !list.isEmpty()) {
            for (com.beizi.ad.model.c.d dVar : this.am) {
                if (dVar.t() == i10) {
                    return dVar;
                }
            }
        }
        return null;
    }

    @Override // com.beizi.ad.e
    public boolean a(final View view, c cVar) {
        if (!this.f8807q && view != null) {
            g gVar = this.C;
            if (gVar != null) {
                this.D = null;
                gVar.a();
                this.C = null;
            }
            this.C = new g(view, cVar, new e() { // from class: com.beizi.ad.internal.c.a.1
                @Override // com.beizi.ad.internal.c.e
                public void a() {
                    if (a.this.f8813w == null || a.this.f8813w.size() == 0) {
                        return;
                    }
                    Iterator it2 = a.this.f8813w.iterator();
                    while (it2.hasNext()) {
                        new com.beizi.ad.internal.g(a.this.a((String) it2.next(), view)).b();
                    }
                    a.this.f8813w = null;
                }
            });
            this.D = view;
        }
        return false;
    }

    public String a(String str, View view) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(this.A)) {
            str = str.replace(p.f9671a, this.A);
        }
        String strReplace = str;
        if (view != null) {
            if (!TextUtils.isEmpty(this.H)) {
                strReplace = strReplace.replace("__REQUESTUUID__", this.H);
            }
            if (this.B) {
                strReplace = strReplace.replace(p.f9672b, "1");
            }
            return com.beizi.ad.internal.e.n.a(0, view, strReplace);
        }
        return com.beizi.ad.internal.e.p.a(strReplace, "", "", "", "", "", "", "");
    }

    @Override // com.beizi.ad.e
    public void a(Context context, View view, String str, String str2, String str3, String str4, int i10) {
        this.Z = i10;
        ArrayList<String> arrayList = this.f8814x;
        if (arrayList != null) {
            Iterator<String> it2 = arrayList.iterator();
            while (it2.hasNext()) {
                String strA = com.beizi.ad.internal.e.p.a(it2.next(), str + "", str2 + "", str3 + "", str4 + "", String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis()), "", i10);
                if (!TextUtils.isEmpty(this.H)) {
                    strA = strA.replace("__REQUESTUUID__", this.H);
                }
                if (this.B) {
                    strA = strA.replace(p.f9672b, "1");
                }
                new com.beizi.ad.internal.d(com.beizi.ad.internal.e.n.a(view, strA)).execute(new Void[0]);
            }
        }
        this.f8814x = null;
        a(this.f8799i, this.f8798h, context);
        b bVar = this.F;
        if (bVar != null) {
            bVar.a();
        }
    }

    @Override // com.beizi.ad.e
    public String a() {
        return this.f8793c;
    }

    @Override // com.beizi.ad.e
    public boolean a(final View view, b bVar) {
        if (this.f8807q || view == null) {
            return false;
        }
        this.F = bVar;
        this.D = view;
        final GestureDetector gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.beizi.ad.internal.c.a.2
            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onDown(MotionEvent motionEvent) {
                a.this.I = System.currentTimeMillis();
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onLongPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
                return false;
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public void onShowPress(MotionEvent motionEvent) {
            }

            @Override // android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent motionEvent) {
                if (a.this.f8814x != null) {
                    float x10 = motionEvent.getX();
                    float y10 = motionEvent.getY();
                    float rawX = motionEvent.getRawX();
                    float rawY = motionEvent.getRawY();
                    Iterator it2 = a.this.f8814x.iterator();
                    while (it2.hasNext()) {
                        String strA = com.beizi.ad.internal.e.p.a((String) it2.next(), x10 + "", y10 + "", rawX + "", rawY + "", String.valueOf(a.this.I), String.valueOf(System.currentTimeMillis()), "", 0);
                        if (!TextUtils.isEmpty(a.this.H)) {
                            strA = strA.replace("__REQUESTUUID__", a.this.H);
                        }
                        if (a.this.B) {
                            strA = strA.replace(p.f9672b, "1");
                        }
                        new com.beizi.ad.internal.d(com.beizi.ad.internal.e.n.a(view, strA)).execute(new Void[0]);
                    }
                }
                a.this.f8814x = null;
                return false;
            }
        });
        x();
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.internal.c.a.3
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view2, MotionEvent motionEvent) {
                return gestureDetector.onTouchEvent(motionEvent);
            }
        });
        view.setOnClickListener(this.G);
        return true;
    }

    @Override // com.beizi.ad.e
    public boolean a(final View view, List<View> list, b bVar) {
        if (!a(view, bVar)) {
            return false;
        }
        if (list == null || list.size() <= 0) {
            return true;
        }
        view.setOnClickListener(null);
        for (View view2 : list) {
            final GestureDetector gestureDetector = new GestureDetector(new GestureDetector.OnGestureListener() { // from class: com.beizi.ad.internal.c.a.4
                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onDown(MotionEvent motionEvent) {
                    a.this.I = System.currentTimeMillis();
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onLongPress(MotionEvent motionEvent) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f10, float f11) {
                    return false;
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public void onShowPress(MotionEvent motionEvent) {
                }

                @Override // android.view.GestureDetector.OnGestureListener
                public boolean onSingleTapUp(MotionEvent motionEvent) {
                    if (a.this.f8814x != null) {
                        float x10 = motionEvent.getX();
                        float y10 = motionEvent.getY();
                        float rawX = motionEvent.getRawX();
                        float rawY = motionEvent.getRawY();
                        Iterator it2 = a.this.f8814x.iterator();
                        while (it2.hasNext()) {
                            String strA = com.beizi.ad.internal.e.p.a((String) it2.next(), x10 + "", y10 + "", rawX + "", rawY + "", String.valueOf(a.this.I), String.valueOf(System.currentTimeMillis()), "", 0);
                            if (!TextUtils.isEmpty(a.this.H)) {
                                strA = strA.replace("__REQUESTUUID__", a.this.H);
                            }
                            if (a.this.B) {
                                strA = strA.replace(p.f9672b, "1");
                            }
                            new com.beizi.ad.internal.d(com.beizi.ad.internal.e.n.a(view, strA)).execute(new Void[0]);
                        }
                    }
                    a.this.f8814x = null;
                    return false;
                }
            });
            view2.setOnTouchListener(new View.OnTouchListener() { // from class: com.beizi.ad.internal.c.a.5
                @Override // android.view.View.OnTouchListener
                public boolean onTouch(View view3, MotionEvent motionEvent) {
                    return gestureDetector.onTouchEvent(motionEvent);
                }
            });
            view2.setOnClickListener(this.G);
        }
        this.E = list;
        return true;
    }

    public void a(com.beizi.ad.model.c.b bVar) {
        this.f8800j = bVar;
        this.V = bVar.i();
        this.J = bVar.c();
        this.K = bVar.d();
        this.L = bVar.e();
        this.M = bVar.f();
        this.N = bVar.g();
        if (TextUtils.isEmpty(this.K)) {
            this.K = "BeiZi";
        }
        if (TextUtils.isEmpty(this.M)) {
            this.M = "Ad Download";
        }
        this.O = bVar.k();
        this.P = bVar.l();
        this.Q = bVar.m();
        this.R = bVar.n();
        this.S = bVar.o();
        this.T = bVar.p();
        this.U = bVar.q();
        com.beizi.ad.model.c.b.a aVarR = bVar.r();
        this.W = aVarR;
        if (aVarR != null) {
            if (aVarR.a() == 1) {
                this.X = true;
            }
            if (this.W.b() == 1) {
                this.Y = true;
            }
            this.f8788aa = this.W.c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, String str2, Context context) {
        if (!TextUtils.isEmpty(str)) {
            try {
                if (!com.beizi.ad.lance.a.l.a(context, str) && !i.a(context, this.L) && !str.startsWith("hwpps://landingpage") && !str.startsWith(Constants.WS_MESSAGE_TYPE_INTENT) && !str.startsWith("hap://")) {
                    com.beizi.ad.model.c.b.C0229b c0229b = this.V;
                    if (c0229b != null) {
                        List<String> listI = c0229b.i();
                        this.V.p(null);
                        k.a(listI);
                    }
                    a(context, str2);
                } else {
                    com.beizi.ad.model.c.b.C0229b c0229b2 = this.V;
                    if (c0229b2 != null) {
                        List<String> listH = c0229b2.h();
                        this.V.o(null);
                        k.a(listH);
                    }
                    a(context);
                    com.beizi.ad.model.c.b.C0229b c0229b3 = this.V;
                    if (c0229b3 != null) {
                        List<String> listE = c0229b3.e();
                        this.V.l(null);
                        k.a(listE);
                    }
                }
                return true;
            } catch (Exception unused) {
                com.beizi.ad.model.c.b.C0229b c0229b4 = this.V;
                if (c0229b4 != null) {
                    List<String> listG = c0229b4.g();
                    this.V.n(null);
                    k.a(listG);
                }
                a(context, str2);
                return true;
            }
        }
        a(context, str2);
        return true;
    }

    private void a(Context context, String str) {
        try {
            if (y() && z()) {
                int i10 = this.J;
                if (i10 == 2) {
                    if (i.a(context, this.L)) {
                        i.b(context, this.L);
                        com.beizi.ad.model.c.b.C0229b c0229b = this.V;
                        if (c0229b != null) {
                            List<String> listA = c0229b.a();
                            this.V.a(null);
                            k.a(listA);
                            return;
                        }
                        return;
                    }
                    a(context, 1);
                    return;
                }
                if (i10 == 5) {
                    if (com.beizi.ad.lance.a.l.a(context, this.N)) {
                        if (!this.Y && this.Z != 0) {
                            a(context, 2);
                            return;
                        }
                        b(this.N, context);
                        com.beizi.ad.model.c.b.C0229b c0229b2 = this.V;
                        if (c0229b2 != null) {
                            List<String> listA2 = c0229b2.a();
                            this.V.a(null);
                            k.a(listA2);
                            return;
                        }
                        return;
                    }
                    a(str, context);
                    return;
                }
                return;
            }
            a(str, context);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(Context context, int i10) {
        try {
            File fileA = i.a(context);
            String absolutePath = fileA != null ? fileA.getAbsolutePath() : "";
            ApkBean apkBean = new ApkBean(this.N, this.L + ".apk", this.L, absolutePath, this.K, this.M, context.getPackageName() + ".fileprovider", this.V, this.O, this.P, this.Q, this.R, this.S, this.T, this.U);
            apkBean.setSendLocalBroadcast(true);
            Bundle bundle = new Bundle();
            bundle.putSerializable("apkBean", apkBean);
            bundle.putInt("type", i10);
            bundle.putBoolean("isCanJump", this.X);
            bundle.putBoolean("isDownload", y());
            if (i10 == 2) {
                com.beizi.ad.model.c.b.C0229b c0229b = this.V;
                if (c0229b != null) {
                    bundle.putStringArrayList("openList", (ArrayList) c0229b.a());
                }
                bundle.putString("landingPageUrl", this.f8798h);
            }
            if (!TextUtils.isEmpty(this.f8799i)) {
                bundle.putString("deeplinkUrl", this.f8799i);
                bundle.putInt("webDeepLink", this.f8788aa);
            }
            Serializable serializable = this.af;
            if (serializable != null) {
                bundle.putSerializable("lpOptimizeModule", serializable);
            }
            Intent intent = new Intent(context, (Class<?>) BeiZiDownloadDialogActivity.class);
            intent.putExtra("data", bundle);
            intent.setFlags(C.ENCODING_PCM_MU_LAW);
            context.startActivity(intent);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void a(final Context context) {
        this.f8791ad = System.currentTimeMillis();
        com.beizi.ad.internal.c.a().a(new com.beizi.ad.internal.a() { // from class: com.beizi.ad.internal.c.a.7
            @Override // com.beizi.ad.internal.a
            public void a() {
                try {
                    if (a.this.V != null) {
                        List<String> listF = a.this.V.f();
                        a.this.V.m(null);
                        k.a(listF);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }

            @Override // com.beizi.ad.internal.a
            public void b() {
                try {
                    if (a.this.ae && System.currentTimeMillis() - a.this.f8791ad <= 2000) {
                        if (a.this.V != null) {
                            List<String> listJ = a.this.V.j();
                            a.this.V.q(null);
                            k.a(listJ);
                        }
                        a aVar = a.this;
                        aVar.a(aVar.f8798h, context);
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        });
        Uri uri = Uri.parse(this.f8799i);
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
                } catch (Exception e10) {
                    e10.printStackTrace();
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
                } catch (Exception e11) {
                    e11.printStackTrace();
                }
            }
            if (context != null) {
                context.startActivity(intent);
                return;
            }
            return;
        }
        if (this.f8799i.startsWith("hwpps://landingpage")) {
            Intent intent2 = new Intent();
            intent2.setData(uri);
            intent2.addFlags(C.ENCODING_PCM_MU_LAW);
            if (context != null) {
                context.startActivity(intent2);
                return;
            }
            return;
        }
        if (this.f8799i.startsWith(Constants.WS_MESSAGE_TYPE_INTENT)) {
            Intent uri2 = null;
            try {
                uri2 = Intent.parseUri(this.f8799i, 1);
                uri2.addFlags(C.ENCODING_PCM_MU_LAW);
            } catch (Exception e12) {
                e12.printStackTrace();
            }
            if (context != null) {
                context.startActivity(uri2);
                return;
            }
            return;
        }
        Intent intent3 = new Intent("android.intent.action.VIEW", uri);
        intent3.addFlags(805339136);
        if (context != null) {
            context.startActivity(intent3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(String str, Context context) {
        if (str != null && !str.isEmpty()) {
            if (b(context)) {
                com.beizi.ad.model.c.b.C0229b c0229b = this.V;
                if (c0229b != null) {
                    List<String> listK = c0229b.k();
                    this.V.r(null);
                    k.a(listK);
                }
                return true;
            }
            if (!this.f8789ab) {
                if (!b(str, context)) {
                    return false;
                }
                b bVar = this.F;
                if (bVar != null) {
                    bVar.b();
                }
                return true;
            }
            try {
                Intent intent = new Intent(context, (Class<?>) BeiZiLandingPageActivity.class);
                Bundle bundle = new Bundle();
                bundle.putBoolean("isRedirectionCanJump", this.X);
                bundle.putBoolean("isDownload", y());
                if (!TextUtils.isEmpty(this.f8799i)) {
                    bundle.putBoolean("webDeepLink", this.f8788aa == 1);
                    bundle.putString("deeplinkUrl", this.f8799i);
                }
                if (!TextUtils.isEmpty(str)) {
                    bundle.putString("landingPageUrl", str);
                }
                com.beizi.ad.model.c.b.C0229b c0229b2 = this.V;
                if (c0229b2 != null) {
                    bundle.putSerializable("followTrackExt", c0229b2);
                }
                j jVar = this.af;
                if (jVar != null) {
                    bundle.putSerializable("lpOptimizeModule", jVar);
                }
                intent.putExtra("data", bundle);
                intent.setFlags(C.ENCODING_PCM_MU_LAW);
                context.startActivity(intent);
                return true;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return false;
    }

    public void a(boolean z10) {
        this.B = z10;
    }

    @Override // com.beizi.ad.e
    public void a(View view, String str, String str2, String str3, String str4, int i10, b bVar) {
        try {
            this.Z = i10;
            ArrayList<String> arrayList = this.f8814x;
            if (arrayList != null) {
                Iterator<String> it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    String strA = com.beizi.ad.internal.e.p.a(it2.next(), str + "", str2 + "", str3 + "", str4 + "", String.valueOf(System.currentTimeMillis()), String.valueOf(System.currentTimeMillis()), "", i10);
                    if (!TextUtils.isEmpty(this.H)) {
                        strA = strA.replace("__REQUESTUUID__", this.H);
                    }
                    if (this.B) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new com.beizi.ad.internal.d(com.beizi.ad.internal.e.n.a(view, strA)).execute(new Void[0]);
                }
            }
            this.f8814x = null;
            Context context = view.getContext();
            View rootView = view.getRootView();
            if (rootView != null) {
                context = rootView.getContext();
            }
            a(this.f8799i, this.f8798h, context);
            if (bVar != null) {
                bVar.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void a(j jVar) {
        this.af = jVar;
    }

    @Override // com.beizi.ad.e
    public void a(int i10) {
        this.ag = i10;
    }

    public void a(l lVar) {
        this.ak = lVar;
    }

    public void a(List<com.beizi.ad.model.c.d> list) {
        this.am = list;
    }

    public void a(com.beizi.ad.model.c.d dVar, View view) {
        com.beizi.ad.model.c.b bVarB;
        String strA;
        if (dVar == null || (bVarB = dVar.b()) == null) {
            return;
        }
        dVar.a(true);
        List<com.beizi.ad.model.c.h> listJ = bVarB.j();
        if (listJ != null) {
            for (int i10 = 0; i10 < listJ.size(); i10++) {
                com.beizi.ad.model.c.h hVar = listJ.get(i10);
                if (hVar != null && !TextUtils.isEmpty(hVar.a()) && view != null) {
                    if (!TextUtils.isEmpty(this.H)) {
                        strA = hVar.a().replace("__REQUESTUUID__", this.H);
                    } else {
                        strA = hVar.a();
                    }
                    if (!TextUtils.isEmpty(this.A)) {
                        strA = strA.replace(p.f9671a, this.A);
                    }
                    if (this.B) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new com.beizi.ad.internal.d(com.beizi.ad.internal.e.n.a(0, view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
                hVar.a(null);
            }
        }
    }

    public void a(com.beizi.ad.model.c.d dVar, View view, f fVar, String str, String str2, int i10) {
        String strA;
        com.beizi.ad.model.c.b bVarB = dVar.b();
        if (bVarB == null) {
            return;
        }
        dVar.b(true);
        List<com.beizi.ad.model.c.h> listJ = bVarB.j();
        if (listJ != null) {
            for (int i11 = 0; i11 < listJ.size(); i11++) {
                com.beizi.ad.model.c.h hVar = listJ.get(i11);
                if (hVar != null && !TextUtils.isEmpty(hVar.b())) {
                    if (!TextUtils.isEmpty(this.H)) {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10).replace("__REQUESTUUID__", this.H);
                    } else {
                        strA = com.beizi.ad.internal.e.p.a(hVar.b(), fVar, str, str2, "", i10);
                    }
                    if (this.B) {
                        strA = strA.replace(p.f9672b, "1");
                    }
                    new com.beizi.ad.internal.d(com.beizi.ad.internal.e.n.a(view, strA)).executeOnExecutor(com.beizi.ad.lance.a.c.b().f(), new Void[0]);
                }
                hVar.b(null);
            }
        }
    }

    public void a(q qVar) {
        this.an = qVar;
    }
}
