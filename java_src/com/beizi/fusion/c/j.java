package com.beizi.fusion.c;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.tool.at;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class j extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10133r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f10134s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f10135t;

    public j(Context context, String str, com.beizi.fusion.a aVar, long j10, int i10) {
        super(context, str, aVar, j10);
        this.f10133r = i10;
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

    public void H() {
        p();
    }

    @Override // com.beizi.fusion.c.e
    protected void a() {
        AppEventId.getInstance(e.f10090a).setAppNativeRequest(this.f10103m);
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            eventBean.setAdType("5");
        }
    }

    public void b(boolean z10) {
        this.f10134s = z10;
    }

    public void c(boolean z10) {
        this.f10135t = z10;
    }

    public void b() {
        a((ViewGroup) null);
    }

    public boolean c() {
        return this.f10102l;
    }

    @Override // com.beizi.fusion.c.e
    public com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar) {
        return (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new com.beizi.fusion.work.d.b(this.f10092b, this.f10096f, forwardBean.getSleepTime(), buyerBean, forwardBean, this, this.f10133r, this.f10134s, this.f10135t) : aVar;
    }
}
