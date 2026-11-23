package com.beizi.fusion.c;

import android.content.Context;
import android.view.View;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.events.EventCar;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.tool.at;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class l extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10139r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f10140s;

    public l(Context context, String str, View view, com.beizi.fusion.a aVar, long j10) {
        super(context, str, aVar, j10);
        this.f10097g = view;
    }

    public void F() {
        com.beizi.fusion.work.a aVar;
        if (this.f10105o || (aVar = this.f10099i) == null || this.f10104n) {
            return;
        }
        aVar.au();
        this.f10099i.e();
        this.f10104n = true;
    }

    public int G() {
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

    public void H() {
        com.beizi.fusion.tool.e.b().c().execute(new Runnable() { // from class: com.beizi.fusion.c.l.1
            @Override // java.lang.Runnable
            public void run() {
                EventCar.getInstance(e.f10090a).goRoadWithoutThread(new EventBean(b.f10061b, "", "200.500", "", b.a().b(), "", "", String.valueOf(System.currentTimeMillis()), ""));
            }
        });
    }

    public Map I() {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null) {
            return null;
        }
        return aVar.av();
    }

    @Override // com.beizi.fusion.c.e
    protected void a() {
        AppEventId.getInstance(e.f10090a).setAppSplashRequest(this.f10103m);
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            eventBean.setAdType("2");
        }
    }

    public int b() {
        return this.f10139r;
    }

    public int c() {
        return this.f10140s;
    }

    public void c(int i10) {
        this.f10140s = i10;
    }

    public void a(int i10) {
        this.f10139r = i10;
    }

    @Override // com.beizi.fusion.c.e
    public com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar) {
        return (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new com.beizi.fusion.work.splash.a(this.f10092b, this.f10095e, this.f10096f, this.f10097g, this.f10094d, buyerBean, forwardBean, list, b(), c(), this) : aVar;
    }

    public void a(Context context) {
        try {
            com.beizi.fusion.work.a aVar = this.f10099i;
            if (aVar != null) {
                aVar.a(context);
            }
        } catch (Exception unused) {
        }
    }
}
