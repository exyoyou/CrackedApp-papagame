package com.byazt.tm;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.byazt.aq.sp;
import com.byazt.aq.x;
import com.byazt.du.i;
import com.byazt.nk.InteractViewContainer;
import com.byazt.nr.p;
import com.byazt.oq.GifView;
import com.byazt.or.a;
import com.byazt.xl.u;
import com.byazt.yj.da;
import com.byazt.yj.gr;
import com.byazt.yj.m;
import com.byazt.yj.yp;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import org.json.JSONArray;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 950})
public class DynamicBaseWidgetImp extends DynamicBaseWidget {
    public static String gt = "";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Runnable f20279c;
    public InteractViewContainer my;
    public ImageView qy;
    public volatile boolean rl;
    public Runnable tt;

    @com.byazt.zqa.c(c = {0, 1, 48, 1707})
    private static class c implements gr<Bitmap> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<View> f20287c;
        public final WeakReference<DynamicRootView> tt;
        public final x ve;

        public c(View view, DynamicRootView dynamicRootView, x xVar) {
            this.f20287c = new WeakReference<>(view);
            this.tt = new WeakReference<>(dynamicRootView);
            this.ve = xVar;
        }

        @Override // com.byazt.yj.gr
        public void onFailed(int i10, String str, Throwable th) {
        }

        @Override // com.byazt.yj.gr
        public void onSuccess(m<Bitmap> mVar) {
            View view = this.f20287c.get();
            if (!com.byazt.sr.uj.c()) {
                DynamicRootView dynamicRootView = this.tt.get();
                if (dynamicRootView == null) {
                    return;
                }
                if ("open_ad".equals(dynamicRootView.getRenderRequest().a()) || "splash_ad".equals(dynamicRootView.getRenderRequest().a())) {
                    view.setBackground(new BitmapDrawable(mVar.getResult()));
                    return;
                } else {
                    view.setBackground(new BitmapDrawable(mVar.getResult()));
                    return;
                }
            }
            if (view == null) {
                return;
            }
            view.setBackground(new BitmapDrawable(mVar.getResult()));
            x xVar = this.ve;
            if (xVar == null || xVar.da() == null || 6 != this.ve.da().c() || view.getBackground() == null) {
                return;
            }
            view.getBackground().setAutoMirrored(true);
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 48, 2429})
    private static class tt implements gr<Bitmap> {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<View> f20288c;
        public final WeakReference<DynamicBaseWidget> tt;

        public tt(View view, DynamicBaseWidget dynamicBaseWidget) {
            this.f20288c = new WeakReference<>(view);
            this.tt = new WeakReference<>(dynamicBaseWidget);
        }

        @Override // com.byazt.yj.gr
        public void onFailed(int i10, String str, Throwable th) {
        }

        @Override // com.byazt.yj.gr
        public void onSuccess(m<Bitmap> mVar) {
            Bitmap result;
            DynamicBaseWidget dynamicBaseWidget;
            View view = this.f20288c.get();
            if (view == null || (result = mVar.getResult()) == null || mVar.getOriginResult() == null || (dynamicBaseWidget = this.tt.get()) == null) {
                return;
            }
            view.setBackground(dynamicBaseWidget.c(result));
        }
    }

    @com.byazt.zqa.c(c = {0, 1, 48, 2425})
    private static class ve implements da {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final WeakReference<Context> f20289c;
        public final int tt;

        public ve(Context context, int i10) {
            this.f20289c = new WeakReference<>(context);
            this.tt = i10;
        }

        @Override // com.byazt.yj.da
        public Bitmap coverterTo(Bitmap bitmap) {
            Context context = this.f20289c.get();
            if (context != null) {
                return com.byazt.or.tt.c(context, bitmap, this.tt);
            }
            return null;
        }
    }

    public DynamicBaseWidgetImp(Context context, DynamicRootView dynamicRootView, x xVar) {
        super(context, dynamicRootView, xVar);
        this.rl = true;
        setTag(Integer.valueOf(getClickArea()));
        String type = xVar.da().getType();
        if ("logo-union".equals(type)) {
            dynamicRootView.setLogoUnionHeight(this.f20275x - ((int) com.byazt.or.x.c(context, this.f20273t.tt() + this.f20273t.c())));
        } else if ("scoreCountWithIcon".equals(type)) {
            dynamicRootView.setScoreCountWithIcon(this.f20275x - ((int) com.byazt.or.x.c(context, this.f20273t.tt() + this.f20273t.c())));
        }
    }

    private static String getBuildModel() {
        try {
            gt = p.c();
        } catch (Throwable unused) {
            gt = Build.MODEL;
        }
        if (TextUtils.isEmpty(gt)) {
            gt = Build.MODEL;
        }
        return gt;
    }

    private void i() {
        if (this.rl) {
            int iL = this.f20273t.l();
            int iLo = this.f20273t.lo();
            Runnable runnable = new Runnable() { // from class: com.byazt.tm.DynamicBaseWidgetImp.6
                @Override // java.lang.Runnable
                public void run() {
                    DynamicRootView dynamicRootView = DynamicBaseWidgetImp.this.yp;
                    if (dynamicRootView == null || dynamicRootView.getRenderRequest() == null) {
                        DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp.my = new InteractViewContainer(dynamicBaseWidgetImp2.sl, dynamicBaseWidgetImp2, dynamicBaseWidgetImp2.f20273t);
                    } else {
                        u renderRequest = DynamicBaseWidgetImp.this.yp.getRenderRequest();
                        com.byazt.aq.da daVar = new com.byazt.aq.da();
                        daVar.c(renderRequest.nu());
                        daVar.tt(renderRequest.rh());
                        daVar.ve(renderRequest.my());
                        daVar.c(renderRequest.gt());
                        daVar.tt(renderRequest.rl());
                        daVar.ve(renderRequest.qy());
                        daVar.uj(renderRequest.gu());
                        daVar.n(renderRequest.gr());
                        DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                        DynamicBaseWidgetImp dynamicBaseWidgetImp4 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp3.my = new InteractViewContainer(dynamicBaseWidgetImp4.sl, dynamicBaseWidgetImp4, dynamicBaseWidgetImp4.f20273t, daVar, renderRequest);
                    }
                    DynamicBaseWidgetImp dynamicBaseWidgetImp5 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp5.tt(dynamicBaseWidgetImp5.my);
                    if (DynamicBaseWidgetImp.this.getParent() instanceof ViewGroup) {
                        ((ViewGroup) DynamicBaseWidgetImp.this.getParent()).setClipChildren(false);
                    }
                    DynamicBaseWidgetImp.this.setClipChildren(false);
                    DynamicBaseWidgetImp.this.my.setTag(2);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp6 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp6.c((ViewGroup) dynamicBaseWidgetImp6);
                    DynamicBaseWidgetImp dynamicBaseWidgetImp7 = DynamicBaseWidgetImp.this;
                    dynamicBaseWidgetImp7.addView(dynamicBaseWidgetImp7.my, new FrameLayout.LayoutParams(-1, -1));
                    DynamicBaseWidgetImp.this.my.ve();
                }
            };
            this.f20279c = runnable;
            postDelayed(runnable, ((long) iL) * 1000);
            if (this.f20273t.pu() || iLo >= Integer.MAX_VALUE || iL >= iLo) {
                return;
            }
            Runnable runnable2 = new Runnable() { // from class: com.byazt.tm.DynamicBaseWidgetImp.7
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                    if (dynamicBaseWidgetImp.my != null) {
                        dynamicBaseWidgetImp.rl = false;
                        DynamicBaseWidgetImp.this.my.uj();
                        DynamicBaseWidgetImp.this.my.setVisibility(4);
                        DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                        dynamicBaseWidgetImp2.removeView(dynamicBaseWidgetImp2.my);
                    }
                }
            };
            this.tt = runnable2;
            postDelayed(runnable2, ((long) iLo) * 1000);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Drawable tt(String str) {
        try {
            JSONArray jSONArray = new JSONArray(str);
            ArrayList arrayList = new ArrayList();
            String string = "";
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                if (jSONArray.getString(i10).startsWith("#")) {
                    arrayList.add(jSONArray.getString(i10));
                } else if (jSONArray.getString(i10).endsWith("deg")) {
                    string = jSONArray.getString(i10);
                }
            }
            if (arrayList.size() <= 0) {
                return null;
            }
            int[] iArr = new int[arrayList.size()];
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                iArr[i11] = sp.c(((String) arrayList.get(i11)).substring(0, 7));
            }
            GradientDrawable gradientDrawableC = c(c(string), iArr);
            gradientDrawableC.setShape(0);
            gradientDrawableC.setCornerRadius(com.byazt.or.x.c(this.sl, this.f20273t.z()));
            return gradientDrawableC;
        } catch (Throwable unused) {
            return null;
        }
    }

    public FrameLayout.LayoutParams getWidgetLayoutParams() {
        return new FrameLayout.LayoutParams(this.sp, this.f20275x);
    }

    @Override // com.byazt.tm.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        View view = this.f20276z;
        View view2 = view;
        if (view == null) {
            view2 = this;
        }
        double dGt = this.f20274u.da().n().gt();
        if (dGt < 90.0d && dGt > 0.0d) {
            com.byazt.nr.da.tt().postDelayed(new Runnable() { // from class: com.byazt.tm.DynamicBaseWidgetImp.4
                @Override // java.lang.Runnable
                public void run() {
                    DynamicBaseWidgetImp.this.setVisibility(8);
                }
            }, (long) (dGt * 1000.0d));
        }
        c(this.f20274u.da().n().my(), view2);
        if (!TextUtils.isEmpty(this.f20273t.aw())) {
            i();
        }
        super.onAttachedToWindow();
    }

    @Override // com.byazt.tm.DynamicBaseWidget, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        try {
            removeCallbacks(this.f20279c);
            removeCallbacks(this.tt);
        } catch (Exception unused) {
        }
    }

    @Override // com.byazt.tm.uj
    public boolean x() {
        Drawable backgroundDrawable;
        DynamicRootView dynamicRootView;
        JSONObject jSONObjectOptJSONObject;
        View view = this.f20276z;
        final View view2 = view;
        if (view == null) {
            view2 = this;
        }
        setContentDescription(this.f20274u.c(this.f20273t.p()));
        String strYf = this.f20273t.yf();
        String strYv = null;
        String strC = (TextUtils.isEmpty(strYf) || (dynamicRootView = this.yp) == null || dynamicRootView.getRenderRequest() == null || this.yp.getRenderRequest().n() == null || (jSONObjectOptJSONObject = this.yp.getRenderRequest().n().optJSONObject("creative")) == null) ? null : c(jSONObjectOptJSONObject.opt(strYf));
        if (TextUtils.isEmpty(strC)) {
            strC = this.f20273t.rl();
        }
        if (this.f20273t.gt()) {
            com.byazt.mf.c.c().n().from(this.f20273t.tt).type(2).converter(new ve(this.sl, this.f20273t.my())).to(new tt(view2, this));
        } else if (!TextUtils.isEmpty(strC)) {
            if (!strC.startsWith("http:") && !strC.startsWith("https:")) {
                DynamicRootView dynamicRootView2 = this.yp;
                if (dynamicRootView2 != null && dynamicRootView2.getRenderRequest() != null) {
                    strYv = this.yp.getRenderRequest().yv();
                }
                strC = i.tt(strC, strYv);
            }
            yp ypVarType = com.byazt.mf.c.c().n().from(strC).type(2);
            c(ypVarType);
            if (com.byazt.sr.uj.c()) {
                ypVarType.to(new c(view2, this.yp, this.f20274u));
            } else if ((view2 instanceof FrameLayout) && TextUtils.equals(this.f20274u.da().getType(), "vessel")) {
                if (com.byazt.or.da.tt(strC)) {
                    this.qy = new GifView(this.sl);
                } else {
                    this.qy = new ImageView(this.sl);
                }
                ((FrameLayout) view2).addView(this.qy, new FrameLayout.LayoutParams(-1, -1));
                ypVarType.type(3).to(new gr() { // from class: com.byazt.tm.DynamicBaseWidgetImp.1
                    @Override // com.byazt.yj.gr
                    public void onFailed(int i10, String str, Throwable th) {
                    }

                    @Override // com.byazt.yj.gr
                    public void onSuccess(m mVar) {
                        Object result = mVar.getResult();
                        if (result instanceof byte[]) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            a.tt(DynamicBaseWidgetImp.this.qy, (byte[]) result, dynamicBaseWidgetImp.sp, dynamicBaseWidgetImp.f20275x);
                        }
                    }
                }, 4);
            } else {
                c(ypVarType, view2);
            }
        }
        if (getBackground() == null && (backgroundDrawable = getBackgroundDrawable()) != null) {
            view2.setBackground(backgroundDrawable);
        }
        if (this.f20273t.h() > 0.0d) {
            postDelayed(new Runnable() { // from class: com.byazt.tm.DynamicBaseWidgetImp.2
                @Override // java.lang.Runnable
                public void run() {
                    try {
                        if (DynamicBaseWidgetImp.this.f20273t.cu() > 0) {
                            DynamicBaseWidgetImp dynamicBaseWidgetImp = DynamicBaseWidgetImp.this;
                            Drawable drawableTt = dynamicBaseWidgetImp.tt(dynamicBaseWidgetImp.yp.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.f20273t.cu())));
                            if (drawableTt == null) {
                                DynamicBaseWidgetImp dynamicBaseWidgetImp2 = DynamicBaseWidgetImp.this;
                                drawableTt = dynamicBaseWidgetImp2.c(true, dynamicBaseWidgetImp2.yp.getBgMaterialCenterCalcColor().get(Integer.valueOf(DynamicBaseWidgetImp.this.f20273t.cu())));
                            }
                            if (drawableTt != null) {
                                view2.setBackground(drawableTt);
                                return;
                            }
                            View view3 = view2;
                            DynamicBaseWidgetImp dynamicBaseWidgetImp3 = DynamicBaseWidgetImp.this;
                            view3.setBackground(dynamicBaseWidgetImp3.c(true, dynamicBaseWidgetImp3.yp.getBgColor()));
                        }
                    } catch (Exception unused) {
                    }
                }
            }, (long) (this.f20273t.h() * 1000.0d));
        }
        View view3 = this.f20276z;
        if (view3 != null) {
            view3.setPadding((int) com.byazt.or.x.c(this.sl, this.f20273t.ve()), (int) com.byazt.or.x.c(this.sl, this.f20273t.tt()), (int) com.byazt.or.x.c(this.sl, this.f20273t.uj()), (int) com.byazt.or.x.c(this.sl, this.f20273t.c()));
        }
        if (this.f20271m || this.f20273t.yp() > 0.0d) {
            setShouldInvisible(true);
            view2.setVisibility(4);
            setVisibility(4);
        }
        return true;
    }

    private String c(Object obj) {
        if (obj instanceof String) {
            return (String) obj;
        }
        if (obj instanceof JSONArray) {
            return c(((JSONArray) obj).opt(0));
        }
        if (obj instanceof JSONObject) {
            return c((Object) ((JSONObject) obj).optString("url"));
        }
        return null;
    }

    private void c(yp ypVar, final View view) {
        ypVar.to(new gr<Bitmap>() { // from class: com.byazt.tm.DynamicBaseWidgetImp.3
            @Override // com.byazt.yj.gr
            public void onFailed(int i10, String str, Throwable th) {
            }

            @Override // com.byazt.yj.gr
            public void onSuccess(m<Bitmap> mVar) {
                DynamicRootView dynamicRootView = DynamicBaseWidgetImp.this.yp;
                if (dynamicRootView == null) {
                    return;
                }
                if (!"open_ad".equals(dynamicRootView.getRenderRequest().a()) && !"splash_ad".equals(DynamicBaseWidgetImp.this.yp.getRenderRequest().a())) {
                    view.setBackground(new BitmapDrawable(mVar.getResult()));
                } else {
                    if (!com.byazt.sr.uj.c()) {
                        view.setBackground(new BitmapDrawable(mVar.getResult()));
                        return;
                    }
                    view.setBackground(new com.byazt.tm.c(mVar.getResult(), ((DynamicRoot) DynamicBaseWidgetImp.this.yp.getChildAt(0)).f20303c));
                }
            }
        });
    }

    private static void c(yp ypVar) {
        if ("SMARTISAN".equals(Build.BRAND) && "SM901".equals(getBuildModel())) {
            ypVar.config(Bitmap.Config.ARGB_8888);
        }
    }

    private void c(double d10, final View view) {
        if (d10 > 0.0d) {
            com.byazt.nr.da.tt().postDelayed(new Runnable() { // from class: com.byazt.tm.DynamicBaseWidgetImp.5
                @Override // java.lang.Runnable
                public void run() {
                    if (DynamicBaseWidgetImp.this.f20274u.da().n().vi() != null) {
                        return;
                    }
                    view.setVisibility(0);
                    DynamicBaseWidgetImp.this.setVisibility(0);
                }
            }, (long) (d10 * 1000.0d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(ViewGroup viewGroup) {
        if (viewGroup == null || viewGroup.getChildCount() <= 0) {
            return;
        }
        for (int i10 = 0; i10 < viewGroup.getChildCount(); i10++) {
            if (viewGroup.getChildAt(i10) instanceof InteractViewContainer) {
                viewGroup.removeViewAt(i10);
            }
        }
    }
}
