package com.beizi.fusion.c;

import android.app.Activity;
import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.tool.at;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class k extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10136r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private String f10137s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private String f10138t;

    public k(Context context, String str, com.beizi.fusion.a aVar, long j10, int i10) {
        super(context, str, aVar, j10);
        this.f10136r = i10;
    }

    public boolean F() {
        return this.f10102l;
    }

    public void G() {
        a((ViewGroup) null);
    }

    public int H() {
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

    public void I() {
        o();
    }

    @Override // com.beizi.fusion.c.e
    protected void a() {
        AppEventId.getInstance(e.f10090a).setAppRewardedVideoRequest(this.f10103m);
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            eventBean.setAdType("1");
        }
    }

    public String b() {
        return this.f10137s;
    }

    public String c() {
        return this.f10138t;
    }

    public void h(String str) {
        this.f10137s = str;
    }

    public void i(String str) {
        this.f10138t = str;
    }

    @Override // com.beizi.fusion.c.e
    public com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar) {
        return (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new com.beizi.fusion.work.e.a(this.f10092b, this.f10095e, this.f10096f, forwardBean.getSleepTime(), buyerBean, forwardBean, b(), c(), this) : aVar;
    }

    public void a(Activity activity) {
        com.beizi.fusion.work.a aVar;
        if (activity == null || (aVar = this.f10099i) == null) {
            return;
        }
        aVar.a(activity);
    }
}
