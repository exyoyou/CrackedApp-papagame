package com.beizi.fusion.c;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.tool.at;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class h extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10128r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f10129s;

    public h(Context context, String str, com.beizi.fusion.a aVar, long j10, int i10) {
        super(context, str, aVar, j10);
        this.f10129s = i10;
    }

    public int F() {
        String strI;
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null || (strI = aVar.i()) == null) {
            return -1;
        }
        try {
            return Integer.parseInt(strI);
        } catch (NumberFormatException unused) {
            return -1;
        }
    }

    public void G() {
        o();
    }

    @Override // com.beizi.fusion.c.e
    protected void a() {
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            eventBean.setAdType("3");
        }
    }

    public boolean b() {
        return this.f10102l;
    }

    public void c() {
        a((ViewGroup) null);
    }

    public void a(int i10) {
        this.f10128r = i10;
    }

    @Override // com.beizi.fusion.c.e
    public com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar) {
        buyerBean.getAdType();
        return (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new com.beizi.fusion.work.b.a(this.f10092b, this.f10095e, this.f10096f, forwardBean.getSleepTime(), buyerBean, forwardBean, this) : aVar;
    }

    public void a(Activity activity) {
        com.beizi.fusion.work.a aVar;
        if (activity == null || (aVar = this.f10099i) == null) {
            return;
        }
        aVar.a(activity);
    }
}
