package com.beizi.fusion.c;

import android.content.Context;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.tool.at;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class i extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f10130r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float f10131s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f10132t;

    public i(Context context, String str, com.beizi.fusion.a aVar, long j10, int i10) {
        super(context, str, aVar, j10);
        this.f10132t = i10;
    }

    public void F() {
        p();
    }

    public void G() {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar != null) {
            aVar.n();
        }
    }

    @Override // com.beizi.fusion.c.e
    protected void a() {
        AppEventId.getInstance(e.f10090a).setAppNativeRequest(this.f10103m);
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            eventBean.setAdType("5");
        }
    }

    public int b() {
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

    public void c() {
        o();
    }

    @Override // com.beizi.fusion.c.e
    public com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar) {
        long sleepTime = forwardBean.getSleepTime();
        if (!at.b().equalsIgnoreCase(str) && !"BEIZI".equalsIgnoreCase(str)) {
            return aVar;
        }
        int i10 = this.f10132t;
        if (i10 == 4) {
            return new com.beizi.fusion.work.c.b(this.f10092b, this.f10095e, this.f10096f, sleepTime, buyerBean, forwardBean, this, this.f10130r, this.f10131s);
        }
        if (i10 == 5) {
            return new com.beizi.fusion.work.c.c(this.f10092b, this.f10095e, this.f10096f, sleepTime, buyerBean, forwardBean, this, this.f10130r, this.f10131s);
        }
        return new com.beizi.fusion.work.c.d(this.f10092b, this.f10095e, this.f10096f, sleepTime, buyerBean, forwardBean, this, this.f10130r, this.f10131s);
    }

    public void a(float f10, float f11) {
        this.f10130r = f10;
        this.f10131s = f11;
        a((ViewGroup) null);
    }
}
