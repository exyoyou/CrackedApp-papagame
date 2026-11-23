package com.beizi.fusion.c;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.AppEventId;
import com.beizi.fusion.tool.at;
import com.beizi.fusion.unified.BZUnifiedAdActionData;
import com.beizi.fusion.unified.BZUnifiedAdListener;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class d extends e {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f10089r;

    public d(Context context, String str, int i10, int i11, BZUnifiedAdListener bZUnifiedAdListener) {
        super(context, str, bZUnifiedAdListener, i10);
        this.f10089r = i11;
    }

    @Override // com.beizi.fusion.c.e
    protected void a() {
        AppEventId.getInstance(e.f10090a).setAppSplashRequest(this.f10103m);
        EventBean eventBean = this.f10093c;
        if (eventBean != null) {
            int i10 = this.f10089r;
            if (i10 == 1) {
                eventBean.setAdType("1");
                return;
            }
            if (i10 == 2) {
                eventBean.setAdType("2");
            } else if (i10 == 3) {
                eventBean.setAdType("3");
            } else {
                if (i10 != 6) {
                    return;
                }
                eventBean.setAdType("5");
            }
        }
    }

    public void b() {
        a((ViewGroup) null);
    }

    public void c() {
        o();
    }

    @Override // com.beizi.fusion.c.e
    public com.beizi.fusion.work.a a(AdSpacesBean.ForwardBean forwardBean, String str, AdSpacesBean.BuyerBean buyerBean, List<AdSpacesBean.RenderViewBean> list, com.beizi.fusion.work.a aVar) {
        return (at.b().equalsIgnoreCase(str) || "BEIZI".equalsIgnoreCase(str)) ? new com.beizi.fusion.work.f.a(this.f10092b, this.f10096f, this.f10089r, buyerBean, forwardBean, this) : aVar;
    }

    public void a(ViewGroup viewGroup, List<View> list) {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null) {
            return;
        }
        aVar.a(viewGroup, list);
    }

    public void a(BZUnifiedAdActionData bZUnifiedAdActionData) {
        com.beizi.fusion.work.a aVar;
        if (bZUnifiedAdActionData == null || (aVar = this.f10099i) == null) {
            return;
        }
        aVar.a(bZUnifiedAdActionData);
    }

    public void a(int i10) {
        com.beizi.fusion.work.a aVar = this.f10099i;
        if (aVar == null) {
            return;
        }
        aVar.a(i10);
    }
}
