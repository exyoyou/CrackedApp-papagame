package com.beizi.fusion.c;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.bzunified.BeiZiUnifiedAdListener;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.tool.at;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class f extends e {
    public f(Context context, String str, int i10, BeiZiUnifiedAdListener beiZiUnifiedAdListener) {
        super(context, str, beiZiUnifiedAdListener, i10);
    }

    public void F() {
        o();
    }

    @Override // com.beizi.fusion.c.e
    protected void a() {
        AppEventId.getInstance(e.f10090a).setAppSplashRequest(this.f10103m);
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
        return (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new com.beizi.fusion.work.a.a(this.f10092b, this.f10096f, forwardBean.getSleepTime(), buyerBean, forwardBean, this) : aVar;
    }
}
