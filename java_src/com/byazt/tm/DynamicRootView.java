package com.byazt.tm;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.byazt.aq.a;
import com.byazt.aq.x;
import com.byazt.xl.sl;
import com.byazt.xl.u;
import com.byazt.xl.yp;
import com.byazt.xv.ThemeStatusBroadcastReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 48, 1441})
public class DynamicRootView extends FrameLayout implements com.byazt.kn.uj, com.byazt.xv.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.byazt.wl.c f20304a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final yp f20305c;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    public int f20306da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ViewGroup f20307i;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public Context f20308m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public DynamicBaseWidget f20309n;
    public String nu;
    public Map<Integer, String> rh;
    public List<com.byazt.kn.ve> sl;
    public ThemeStatusBroadcastReceiver sp;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public com.byazt.kn.n f20310t;
    public boolean tt;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public int f20311u;
    public sl uj;
    public View ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public com.byazt.kn.tt f20312x;
    public int yp;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public u f20313z;

    public DynamicRootView(Context context, ThemeStatusBroadcastReceiver themeStatusBroadcastReceiver, boolean z10, u uVar, com.byazt.wl.c cVar) {
        super(context);
        this.f20307i = null;
        this.f20306da = 0;
        this.sl = new ArrayList();
        this.f20311u = 0;
        this.yp = 0;
        this.f20308m = context;
        yp ypVar = new yp();
        this.f20305c = ypVar;
        ypVar.c(2);
        this.f20304a = cVar;
        cVar.c(this);
        this.sp = themeStatusBroadcastReceiver;
        themeStatusBroadcastReceiver.c(this);
        this.tt = z10;
        this.f20313z = uVar;
    }

    @Override // com.byazt.xv.c
    public void b_(int i10) {
        DynamicBaseWidget dynamicBaseWidget = this.f20309n;
        if (dynamicBaseWidget == null) {
            return;
        }
        dynamicBaseWidget.c(i10);
    }

    public void c(x xVar, int i10) {
        this.f20309n = c(xVar, this, i10);
        this.f20305c.c(true);
        this.f20305c.c(this.f20309n.f20272n);
        this.f20305c.tt(this.f20309n.f20267a);
        this.f20305c.c(this.ve);
        this.uj.c(this.f20305c);
    }

    public String getBgColor() {
        return this.nu;
    }

    public Map<Integer, String> getBgMaterialCenterCalcColor() {
        return this.rh;
    }

    public com.byazt.wl.c getDynamicClickListener() {
        return this.f20304a;
    }

    public int getLogoUnionHeight() {
        return this.f20311u;
    }

    public sl getRenderListener() {
        return this.uj;
    }

    public u getRenderRequest() {
        return this.f20313z;
    }

    public int getScoreCountWithIcon() {
        return this.yp;
    }

    public ViewGroup getTimeOut() {
        return this.f20307i;
    }

    public List<com.byazt.kn.ve> getTimeOutListener() {
        return this.sl;
    }

    public int getTimedown() {
        return this.f20306da;
    }

    public void setBgColor(String str) {
        this.nu = str;
    }

    public void setBgMaterialCenterCalcColor(Map<Integer, String> map) {
        this.rh = map;
    }

    public void setDislikeView(View view) {
        this.f20304a.tt(view);
    }

    public void setLogoUnionHeight(int i10) {
        this.f20311u = i10;
    }

    public void setMuteListener(com.byazt.kn.tt ttVar) {
        this.f20312x = ttVar;
    }

    public void setRenderListener(sl slVar) {
        this.uj = slVar;
        this.f20304a.c(slVar);
    }

    public void setScoreCountWithIcon(int i10) {
        this.yp = i10;
    }

    @Override // com.byazt.kn.uj
    public void setSoundMute(boolean z10) {
        com.byazt.kn.tt ttVar = this.f20312x;
        if (ttVar != null) {
            ttVar.setSoundMute(z10);
        }
    }

    public void setTimeOut(ViewGroup viewGroup) {
        this.f20307i = viewGroup;
    }

    public void setTimeOutListener(com.byazt.kn.ve veVar) {
        this.sl.add(veVar);
    }

    public void setTimeUpdate(int i10) {
        this.f20310t.setTimeUpdate(i10);
    }

    public void setTimedown(int i10) {
        this.f20306da = i10;
    }

    public void setVideoListener(com.byazt.kn.n nVar) {
        this.f20310t = nVar;
    }

    public void tt() {
        c(this.f20309n, 4);
    }

    public DynamicBaseWidget c(x xVar, ViewGroup viewGroup, int i10) {
        if (xVar == null) {
            return null;
        }
        List<x> listSl = xVar.sl();
        DynamicBaseWidget dynamicBaseWidgetC = com.byazt.mt.tt.c(this.f20308m, this, xVar);
        if (dynamicBaseWidgetC instanceof DynamicUnKnowView) {
            c(i10 == 3 ? 128 : 118, "unknow widget");
            return null;
        }
        c(xVar);
        dynamicBaseWidgetC.c();
        if (viewGroup != null) {
            viewGroup.addView(dynamicBaseWidgetC);
            c(viewGroup, xVar);
        }
        if (listSl == null || listSl.size() <= 0) {
            return null;
        }
        Iterator<x> it2 = listSl.iterator();
        while (it2.hasNext()) {
            c(it2.next(), dynamicBaseWidgetC, i10);
        }
        return dynamicBaseWidgetC;
    }

    private void c(x xVar) {
        a aVarN;
        com.byazt.aq.n nVarDa = xVar.da();
        if (nVarDa == null || (aVarN = nVarDa.n()) == null) {
            return;
        }
        this.f20305c.tt(aVarN.di());
    }

    private void c(ViewGroup viewGroup, x xVar) {
        ViewGroup viewGroup2;
        if (viewGroup == null || (viewGroup2 = (ViewGroup) viewGroup.getParent()) == null || !xVar.gr()) {
            return;
        }
        viewGroup2.setClipChildren(false);
        viewGroup2.setClipToPadding(false);
        ViewGroup viewGroup3 = (ViewGroup) viewGroup2.getParent();
        if (viewGroup3 != null) {
            viewGroup3.setClipChildren(false);
            viewGroup3.setClipToPadding(false);
        }
    }

    public void c(double d10, double d11, double d12, double d13, float f10) {
        this.f20305c.ve(d10);
        this.f20305c.uj(d11);
        this.f20305c.n(d12);
        this.f20305c.a(d13);
        this.f20305c.c(f10);
        this.f20305c.tt(f10);
        this.f20305c.ve(f10);
        this.f20305c.uj(f10);
    }

    public void c(int i10, String str) {
        this.f20305c.c(false);
        this.f20305c.tt(i10);
        this.f20305c.c(str);
        this.uj.c(this.f20305c);
    }

    public void c() {
        c(this.f20309n, 0);
    }

    public void c(DynamicBaseWidget dynamicBaseWidget, int i10) {
        if (dynamicBaseWidget == null) {
            return;
        }
        if (dynamicBaseWidget.getBeginInvisibleAndShow()) {
            dynamicBaseWidget.setVisibility(i10);
            View view = dynamicBaseWidget.f20276z;
            if (view != null) {
                view.setVisibility(i10);
            }
        }
        int childCount = dynamicBaseWidget.getChildCount();
        if (childCount <= 0) {
            return;
        }
        for (int i11 = 0; i11 < childCount; i11++) {
            if (dynamicBaseWidget.getChildAt(i11) instanceof DynamicBaseWidget) {
                c((DynamicBaseWidget) dynamicBaseWidget.getChildAt(i11), i10);
            }
        }
    }

    @Override // com.byazt.kn.uj
    public void c(CharSequence charSequence, int i10, int i11, boolean z10) {
        for (int i12 = 0; i12 < this.sl.size(); i12++) {
            if (this.sl.get(i12) != null) {
                this.sl.get(i12).c(charSequence, i10 == 1, i11, z10);
            }
        }
    }
}
