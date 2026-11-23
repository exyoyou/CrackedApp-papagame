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
public class m extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10142r;

    public m(Context context, String str, com.beizi.fusion.a aVar, long j10, int i10) {
        super(context, str, aVar, j10);
        this.f10142r = i10;
    }

    public void F() {
        o();
    }

    public void G() {
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

    public void b() {
        a((ViewGroup) null);
    }

    public boolean c() {
        return this.f10102l;
    }

    @Override // com.beizi.fusion.c.e
    public com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar) {
        return (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new com.beizi.fusion.work.g.b(this.f10092b, forwardBean.getSleepTime(), buyerBean, forwardBean, this, this.f10142r) : aVar;
    }

    public void a(Activity activity) {
        com.beizi.fusion.work.a aVar;
        if (activity == null || (aVar = this.f10099i) == null) {
            return;
        }
        aVar.a(activity);
    }
}
