package com.byazt.omf;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.byazt.aas.nb;
import com.byazt.ete.ic;
import com.byazt.pro.CreativeContainer;
import com.byazt.un.NativeVideoTsView;
import com.join.mgps.activity.TagGameListActivity_;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 31, 145})
public class my {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.byazt.ddx.n f18062a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ic f18063c;
    public c cu;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public WeakReference<NativeVideoTsView> f18064d;
    public View gr;
    public com.byazt.pop.c gt;
    public EmptyView gu;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Activity f18066h;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public View f18068m;
    public com.byazt.hkv.c md;
    public com.byazt.nr.zm my;
    public com.byazt.lsp.c nu;
    public CreativeContainer or;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public com.byazt.hkv.c f18070p;
    public String sp;
    public final Context tt;
    public com.byazt.nc.u uj;
    public volatile com.byazt.pop.ve ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.lsp.c f18073x;
    public ViewGroup yp;
    public volatile com.byazt.hkv.c yv;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public WeakReference<ViewGroup> f18074z;

    /* JADX INFO: renamed from: zb, reason: collision with root package name */
    public com.byazt.un.c f18075zb;
    public volatile com.byazt.hkv.tt zm;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public List<View> f18069n = new ArrayList();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public Double f18067i = null;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public final AtomicBoolean f18065da = new AtomicBoolean(false);
    public final AtomicBoolean sl = new AtomicBoolean(false);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final AtomicBoolean f18071t = new AtomicBoolean(false);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final AtomicBoolean f18072u = new AtomicBoolean(false);
    public int rh = 5;
    public volatile long rl = 0;
    public volatile boolean qy = true;
    public volatile boolean eo = false;

    @com.byazt.zqa.c(c = {0, 1, 31, 932})
    private static class c implements View.OnLayoutChangeListener {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final com.byazt.ddx.n f18086c;
        public final ViewGroup tt;

        public c(com.byazt.ddx.n nVar, ViewGroup viewGroup) {
            this.f18086c = nVar;
            this.tt = viewGroup;
        }

        @Override // android.view.View.OnLayoutChangeListener
        public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
            this.f18086c.c(zb.tt(this.tt), 17);
        }
    }

    public my(Context context, com.byazt.nc.u uVar, ic icVar, String str) {
        this.sp = com.byazt.dyf.tt.AD_TAG_FEED;
        this.uj = uVar;
        this.f18063c = icVar;
        this.tt = context;
        this.sp = str;
        this.f18062a = new com.byazt.ddx.n(icVar, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        com.byazt.ete.sl slVarN = n();
        if (slVarN == null) {
            return;
        }
        final float fTt = slVarN.tt();
        final float fVe = slVarN.ve();
        if (this.my == null) {
            this.my = new com.byazt.nr.zm(gt.getContext(), 1, x.m().uj());
        }
        this.my.tt(this.f18063c.br());
        this.my.c(this.f18063c.lv());
        this.my.tt(this.f18063c.yx());
        this.my.a(this.f18063c.pe());
        this.my.ve(this.f18063c.cy());
        this.my.c(this.f18063c.ge());
        this.my.n(this.f18063c.e());
        this.my.c(new com.byazt.nr.zm.c() { // from class: com.byazt.omf.my.7
            @Override // com.byazt.nr.zm.c
            public void c(int i10) {
                if (i10 == 1 && my.this.qy && zb.c(my.this.yp)) {
                    com.byazt.aas.or.c(my.this.f18074z, fTt, fVe, my.this.rl);
                }
            }
        });
        com.byazt.nr.zm zmVar = this.my;
        ic icVar = this.f18063c;
        zmVar.c(icVar != null ? icVar.eo() : 0);
    }

    private com.byazt.ete.sl n() {
        ic icVar;
        com.byazt.ete.sl slVarMn;
        if (this.rh == 5 && (icVar = this.f18063c) != null && (slVarMn = icVar.mn()) != null && slVarMn.c() == 1) {
            return slVarMn;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, Object> sp() {
        NativeVideoTsView nativeVideoTsView;
        HashMap map = new HashMap();
        if (this.f18069n != null) {
            JSONArray jSONArray = new JSONArray();
            for (View view : this.f18069n) {
                if (view != null) {
                    JSONObject jSONObject = new JSONObject();
                    try {
                        jSONObject.put("width", view.getWidth());
                        jSONObject.put("height", view.getHeight());
                        jSONObject.put("alpha", view.getAlpha());
                    } catch (Throwable unused) {
                    }
                    jSONArray.put(jSONObject);
                }
            }
            map.put("image_view", jSONArray.toString());
        }
        if (this.yp != null) {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("width", this.yp.getWidth());
                jSONObject2.put("height", this.yp.getHeight());
                jSONObject2.put("alpha", this.yp.getAlpha());
            } catch (Throwable unused2) {
            }
            map.put("root_view", jSONObject2.toString());
        }
        WeakReference<NativeVideoTsView> weakReference = this.f18064d;
        if (weakReference != null && (nativeVideoTsView = weakReference.get()) != null) {
            JSONObject jSONObject3 = new JSONObject();
            try {
                jSONObject3.put("width", nativeVideoTsView.getWidth());
                jSONObject3.put("height", nativeVideoTsView.getHeight());
                jSONObject3.put("alpha", nativeVideoTsView.getAlpha());
            } catch (JSONException unused3) {
            }
            map.put("video_view", jSONObject3.toString());
        }
        return map;
    }

    private View tt(ViewGroup viewGroup) {
        Object obj;
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            Object tag = childAt.getTag();
            String string = "";
            if ((tag instanceof Map) && (obj = ((Map) tag).get(TagGameListActivity_.TAG_EXTRA)) != null) {
                string = obj.toString();
            }
            if ("shake_compat".equals(string)) {
                return childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void uj() {
        if (this.ve != null) {
            if (this.zm != null) {
                ((com.byazt.nat.c) this.zm.c(com.byazt.nat.c.class)).c(this.ve);
            }
            if (this.yv != null) {
                ((com.byazt.nat.c) this.yv.c(com.byazt.nat.c.class)).c(this.ve);
            }
            com.byazt.hkv.c cVar = this.md;
            if (cVar != null) {
                ((com.byazt.nat.c) cVar.c(com.byazt.nat.c.class)).c(this.ve);
            }
            com.byazt.hkv.c cVar2 = this.f18070p;
            if (cVar2 != null) {
                ((com.byazt.nat.c) cVar2.c(com.byazt.nat.c.class)).c(this.ve);
            }
            try {
                this.ve.c();
                this.ve.c(this.gt);
            } catch (Exception e10) {
                com.byazt.nr.m.c(e10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void ve() {
        ic icVar = this.f18063c;
        if (icVar == null || icVar.i() != 4) {
            return;
        }
        if (this.eo) {
            uj();
        } else {
            this.eo = true;
            com.byazt.bzd.x.c(new com.byazt.bwm.sp("feed_register_download") { // from class: com.byazt.omf.my.1
                @Override // java.lang.Runnable
                public void run() {
                    if (my.this.ve == null) {
                        my myVar = my.this;
                        myVar.ve = com.byazt.yih.x.c(myVar.tt, my.this.f18063c, my.this.sp);
                    }
                    my.this.ve.c(my.this.f18066h, false);
                    my.this.uj();
                }
            });
        }
    }

    public void c(com.byazt.nc.u uVar) {
        this.uj = uVar;
    }

    public void c(Activity activity) {
        this.f18066h = activity;
        if (this.ve != null) {
            this.ve.c(activity, false);
        }
    }

    private EmptyView ve(ViewGroup viewGroup) {
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            View childAt = viewGroup.getChildAt(i10);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    public void c(View view, int i10) {
        com.byazt.nc.u uVar = this.uj;
        com.byazt.rgb.tt.ve(uVar != null ? uVar.getLifecycleId() : null);
        com.byazt.lsp.c cVar = this.f18073x;
        if (cVar != null) {
            cVar.tt(view, this.uj);
        }
    }

    public void tt(View view, com.byazt.ete.da daVar) {
        if (this.zm != null) {
            this.zm.c(view, daVar);
        }
    }

    public void c(CreativeContainer creativeContainer) {
        this.or = creativeContainer;
        if (creativeContainer == null || this.zm == null) {
            return;
        }
        this.or.setOnClickListener(this.zm);
    }

    public void tt() {
        c cVar;
        if (this.ve != null) {
            this.ve.ve();
        }
        WeakReference<ViewGroup> weakReference = this.f18074z;
        if (weakReference != null) {
            weakReference.clear();
        }
        final ViewGroup viewGroup = this.yp;
        final EmptyView emptyView = this.gu;
        if (viewGroup != null && emptyView != null) {
            com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.omf.my.9
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.removeView(emptyView);
                }
            });
            c cVar2 = this.cu;
            if (cVar2 != null) {
                viewGroup.removeOnLayoutChangeListener(cVar2);
            }
        }
        final View view = this.gr;
        if (viewGroup != null && view != null) {
            com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.omf.my.10
                @Override // java.lang.Runnable
                public void run() {
                    viewGroup.removeView(view);
                }
            });
        }
        com.byazt.nr.zm zmVar = this.my;
        if (zmVar != null) {
            ic icVar = this.f18063c;
            zmVar.tt(icVar != null ? icVar.eo() : 0);
        }
        ic icVar2 = this.f18063c;
        com.byazt.aas.cu.tt(icVar2 != null ? icVar2.eo() : 0);
        CreativeContainer creativeContainer = this.or;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(null);
        }
        int i10 = this.rh;
        if (i10 == 9 && this.yp != null && com.byazt.qqc.c.uj(i10)) {
            com.byazt.qqc.ve.c().tt(this.yp.getContext(), this.f18063c, true);
        }
        if (viewGroup != null && (cVar = this.cu) != null) {
            viewGroup.removeOnLayoutChangeListener(cVar);
        }
        com.byazt.nr.da.tt().post(new Runnable() { // from class: com.byazt.omf.my.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.ddx.n nVar = my.this.f18062a;
                if (nVar != null) {
                    nVar.c(16);
                }
            }
        });
    }

    public com.byazt.pop.ve c() {
        return this.ve;
    }

    public void c(final ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, List<View> list4, View view, final com.byazt.lsp.c cVar, com.byazt.lsp.c cVar2) {
        EmptyView emptyView;
        this.f18073x = cVar;
        this.yp = viewGroup;
        this.f18074z = new WeakReference<>(this.yp);
        this.f18068m = view;
        this.nu = cVar2;
        com.byazt.ddx.uj.c(this.f18063c);
        Context context = this.tt;
        ic icVar = this.f18063c;
        String str = this.sp;
        this.md = new com.byazt.hkv.c(context, icVar, str, nb.uj(str));
        c cVar3 = new c(this.f18062a, viewGroup);
        this.cu = cVar3;
        viewGroup.addOnLayoutChangeListener(cVar3);
        c(viewGroup);
        EmptyView emptyViewVe = ve(viewGroup);
        if (emptyViewVe == null) {
            ic icVar2 = this.f18063c;
            EmptyView emptyView2 = new EmptyView(this.tt, viewGroup, icVar2 != null ? icVar2.m17if() : 1000) { // from class: com.byazt.omf.my.3
                @Override // android.view.View
                public void onVisibilityChanged(View view2, int i10) {
                    super.onVisibilityChanged(view2, i10);
                    com.byazt.nr.zm zmVar = my.this.my;
                    if (zmVar == null) {
                        return;
                    }
                    try {
                        my.this.qy = isShown();
                        if (isShown()) {
                            zmVar.c(my.this.f18063c != null ? my.this.f18063c.eo() : 0);
                        } else {
                            zmVar.tt(my.this.f18063c != null ? my.this.f18063c.eo() : 0);
                        }
                    } catch (Throwable unused) {
                    }
                }
            };
            emptyView2.setAdType(this.rh);
            emptyView2.c(this.f18063c, this.sp);
            viewGroup.addView(emptyView2);
            emptyView = emptyView2;
        } else {
            emptyView = emptyViewVe;
        }
        emptyView.c();
        emptyView.setRefClickViews(list2);
        emptyView.setRefCreativeViews(list3);
        emptyView.setRefDirectDownloadViews(list4);
        this.gu = emptyView;
        c(this.md, this.yp, this.f18068m, cVar, this.nu, 3);
        this.f18069n = list;
        Context context2 = this.tt;
        ic icVar3 = this.f18063c;
        String str2 = this.sp;
        this.zm = new com.byazt.hkv.tt(context2, icVar3, str2, nb.uj(str2));
        c(this.zm, viewGroup, view, cVar, cVar2, 0);
        Context context3 = this.tt;
        ic icVar4 = this.f18063c;
        String str3 = this.sp;
        this.yv = new com.byazt.hkv.c(context3, icVar4, str3, nb.uj(str3));
        c(this.yv, viewGroup, view, cVar, cVar2, 1);
        if (!com.byazt.nr.u.c(list4)) {
            Context context4 = this.tt;
            ic icVar5 = this.f18063c;
            String str4 = this.sp;
            com.byazt.hkv.c cVar4 = new com.byazt.hkv.c(context4, icVar5, str4, nb.uj(str4));
            this.f18070p = cVar4;
            cVar4.c(2);
            c(this.f18070p, viewGroup, view, cVar, cVar2, 2);
        }
        CreativeContainer creativeContainer = this.or;
        if (creativeContainer != null) {
            creativeContainer.setOnClickListener(this.zm);
        }
        emptyView.c(list2, this.zm);
        emptyView.c(list3, this.yv);
        emptyView.c(list4, this.f18070p);
        emptyView.setCallback(new EmptyView.c() { // from class: com.byazt.omf.my.4
            @Override // com.byazt.omf.EmptyView.c
            public void c(boolean z10) {
                my.this.f18062a.c(zb.tt(viewGroup), z10 ? 12 : 13);
                com.byazt.nr.zm zmVar = my.this.my;
                if (zmVar != null) {
                    if (z10) {
                        zmVar.c(my.this.f18063c != null ? my.this.f18063c.eo() : 0);
                    } else {
                        try {
                            zmVar.tt(my.this.f18063c != null ? my.this.f18063c.eo() : 0);
                        } catch (Throwable th) {
                            com.byazt.nr.m.uj("ShakeUtils", "onPause error:" + th.getMessage());
                        }
                    }
                }
                if (my.this.rh == 9) {
                    if (z10) {
                        com.byazt.qqc.ve.c().c(my.this.yp.getContext(), my.this.f18063c, nb.zm(my.this.f18063c));
                    } else {
                        com.byazt.qqc.ve.c().tt(my.this.yp.getContext(), my.this.f18063c, true);
                    }
                }
            }

            @Override // com.byazt.omf.EmptyView.c
            public void tt() {
                if (my.this.ve != null) {
                    my.this.ve.ve();
                }
                try {
                    if (my.this.my != null) {
                        my.this.my.tt(my.this.f18063c != null ? my.this.f18063c.eo() : 0);
                    }
                } catch (Throwable th) {
                    com.byazt.nr.m.uj("ShakeUtils", "onPause error:" + th.getMessage());
                }
                my.this.f18065da.set(false);
                my.this.sl.set(false);
                if (my.this.rh == 9) {
                    com.byazt.qqc.ve.c().tt(my.this.yp.getContext(), my.this.f18063c, true);
                }
                my.this.f18062a.c(zb.tt(viewGroup), 15);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c() {
                my.this.ve();
                if (my.this.rh == 9) {
                    com.byazt.qqc.ve.c().c(my.this.yp.getContext(), my.this.f18063c, nb.zm(my.this.f18063c));
                }
                my.this.f18062a.c(zb.tt(viewGroup), 14);
            }

            @Override // com.byazt.omf.EmptyView.c
            public void c(View view2, Map<String, Object> map) {
                com.byazt.vvt.c.c(my.this.rh, my.this.f18063c);
                my.this.ve();
                my.this.f18062a.c(zb.tt(viewGroup), 11);
                Map mapSp = my.this.sp();
                mapSp.put("is_repeat", Boolean.valueOf(my.this.f18071t.get()));
                if (map != null && map.containsKey("show_send_type")) {
                    mapSp.put("show_send_type", map.get("show_send_type"));
                }
                mapSp.put("is_repeat", Boolean.valueOf(my.this.f18071t.get()));
                my.this.f18065da.set(true);
                if (!my.this.sl.get()) {
                    my.this.sl.set(true);
                    com.byazt.ddx.uj.c(my.this.f18063c, my.this.sp, (Map<String, Object>) mapSp, my.this.f18067i);
                    com.byazt.pf.c.c().uj();
                    com.byazt.aas.cu.c(my.this.f18063c != null ? my.this.f18063c.eo() : 0);
                }
                if (cVar != null) {
                    boolean zOq = gt.tt().oq();
                    if (!my.this.f18071t.getAndSet(true) || zOq) {
                        com.byazt.rgb.tt.c(my.this.uj != null ? my.this.uj.getLifecycleId() : null, false);
                        cVar.c(my.this.uj);
                        if (my.this.f18063c != null && my.this.f18063c.yv() && my.this.f18063c.yp() != null) {
                            com.byazt.yxu.c.c().c(my.this.tt, my.this.f18063c.yp().tt());
                        }
                    }
                    my.this.rl = System.currentTimeMillis();
                    my.this.a();
                }
                if (my.this.f18075zb != null) {
                    my.this.f18075zb.c();
                }
                if (!my.this.sl.get() || my.this.f18072u.get()) {
                    return;
                }
                my.this.f18072u.set(true);
                com.byazt.iyp.tt.c(my.this.f18063c, my.this.sp, viewGroup, my.this.f18063c != null && my.this.f18063c.up());
            }
        });
        emptyView.setNeedCheckingShow(true);
        ve();
    }

    public void c(com.byazt.un.c cVar) {
        this.f18075zb = cVar;
    }

    public void c(WeakReference<NativeVideoTsView> weakReference) {
        this.f18064d = weakReference;
    }

    private void c(final com.byazt.hkv.tt ttVar, ViewGroup viewGroup, View view, final com.byazt.lsp.c cVar, final com.byazt.lsp.c cVar2, final int i10) {
        c((com.byazt.vis.ve) ttVar.c(com.byazt.vis.ve.class));
        if (i10 != 3) {
            HashMap map = new HashMap();
            map.put("click_type", 1);
            ((com.byazt.vis.c) ttVar.c(com.byazt.vis.c.class)).c(map);
        }
        ttVar.c(viewGroup);
        ttVar.tt(view);
        ((com.byazt.nat.c) ttVar.c(com.byazt.nat.c.class)).c(this.uj);
        com.byazt.nat.c.InterfaceC0376c interfaceC0376c = new com.byazt.nat.c.InterfaceC0376c() { // from class: com.byazt.omf.my.5
            @Override // com.byazt.nat.c.InterfaceC0376c
            public void c(View view2, int i11) {
                com.byazt.rgb.tt.ve(my.this.uj != null ? my.this.uj.getLifecycleId() : null);
                if (ttVar instanceof com.byazt.hkv.c) {
                    com.byazt.lsp.c cVar3 = cVar;
                    if (cVar3 != null) {
                        cVar3.tt(view2, my.this.uj);
                    }
                    com.byazt.lsp.c cVar4 = cVar2;
                    if (cVar4 != null) {
                        cVar4.tt(view2, my.this.uj);
                    }
                } else {
                    com.byazt.lsp.c cVar5 = cVar;
                    if (cVar5 != null) {
                        cVar5.c(view2, my.this.uj);
                    }
                    com.byazt.lsp.c cVar6 = cVar2;
                    if (cVar6 != null) {
                        cVar6.c(view2, my.this.uj);
                    }
                }
                if (i10 != 2 || my.this.f18063c == null) {
                    return;
                }
                my.this.f18063c.ve(true);
            }
        };
        ((com.byazt.nat.c) ttVar.c(com.byazt.nat.c.class)).c(interfaceC0376c);
        ic icVar = this.f18063c;
        if (icVar != null) {
            rl.tt(icVar.lw(), interfaceC0376c, com.byazt.nat.c.InterfaceC0376c.class);
        }
    }

    public void c(int i10) {
        this.rh = i10;
    }

    private void c(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        View viewTt = tt(viewGroup);
        if (viewTt != null) {
            HashMap map = new HashMap();
            map.put(TagGameListActivity_.TAG_EXTRA, "shake_compat");
            map.put("click_listener", this.md);
            try {
                viewTt.setTag(2114387349, map);
            } catch (Throwable th) {
                com.byazt.nr.m.uj("ShakeUtils", "onPause error:" + th.getMessage());
                com.byazt.aas.or.c(2114387349, th.getMessage());
            }
            this.gr = viewTt;
            return;
        }
        View view = new View(this.tt);
        view.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: com.byazt.omf.my.6
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view2) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view2) {
                try {
                    if (my.this.my != null) {
                        my.this.my.tt(my.this.f18063c != null ? my.this.f18063c.eo() : 0);
                    }
                } catch (Throwable th2) {
                    com.byazt.nr.m.uj("ShakeUtils", "onPause error:" + th2.getMessage());
                }
            }
        });
        HashMap map2 = new HashMap();
        map2.put(TagGameListActivity_.TAG_EXTRA, "shake_compat");
        map2.put("click_listener", this.md);
        try {
            view.setTag(2114387349, map2);
        } catch (Throwable th2) {
            com.byazt.nr.m.uj("ShakeUtils", "onPause error:" + th2.getMessage());
            com.byazt.aas.or.c(2114387349, th2.getMessage());
        }
        view.setLayoutParams(new ViewGroup.LayoutParams(0, 0));
        viewGroup.addView(view);
        this.gr = view;
    }

    public void c(final com.byazt.vis.ve veVar) {
        veVar.c(new com.byazt.vis.ve.c() { // from class: com.byazt.omf.my.8
            @Override // com.byazt.vis.ve.c
            public boolean c() {
                veVar.c(my.this.gu);
                veVar.c(my.this.sp());
                veVar.c(my.this.sp);
                veVar.c(my.this.f18067i);
                return my.this.f18065da.get();
            }
        });
    }

    public void c(com.byazt.pop.c cVar) {
        this.gt = cVar;
    }

    public void c(View view, com.byazt.ete.da daVar) {
        if (this.yv != null) {
            this.yv.c(view, daVar);
        }
    }

    public void c(Double d10) {
        this.f18067i = d10;
    }
}
