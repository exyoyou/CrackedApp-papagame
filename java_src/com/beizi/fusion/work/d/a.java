package com.beizi.fusion.work.d;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.beizi.fusion.NativeUnifiedAdResponse;
import com.beizi.fusion.c.c;
import com.beizi.fusion.c.e;
import com.beizi.fusion.c.g;
import com.beizi.fusion.events.EventBean;
import com.beizi.fusion.model.AdSpacesBean;
import com.beizi.fusion.model.UnifiedAdDownloadAppInfo;
import com.beizi.fusion.tool.au;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class a extends com.beizi.fusion.work.a implements c {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    protected Context f11171n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected long f11172o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected float f11173p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected float f11174q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected NativeUnifiedAdResponse f11175r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected FrameLayout f11176s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f11177t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f11178u = false;

    public a(Context context, long j10, AdSpacesBean.BuyerBean buyerBean, AdSpacesBean.ForwardBean forwardBean, e eVar, int i10) {
        this.f11171n = context;
        this.f11172o = j10;
        this.f10982e = buyerBean;
        this.f10981d = eVar;
        this.f10988k = i10;
        this.f10983f = forwardBean;
        this.f11173p = au.k(context);
        this.f11174q = au.l(context);
        r();
    }

    private void aO() {
        e eVar = this.f10981d;
        if (eVar == null) {
            return;
        }
        Map<String, com.beizi.fusion.work.a> mapS = eVar.s();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(f());
        sb2.append(" NativeUnifiedWorker:");
        sb2.append(mapS.toString());
        Z();
        g gVar = this.f10984g;
        if (gVar == g.SUCCESS) {
            aP();
            this.f10981d.a(f(), (View) null);
        } else if (gVar == g.FAIL) {
            StringBuilder sb3 = new StringBuilder();
            sb3.append("other worker shown,");
            sb3.append(f());
            sb3.append(" remove");
        }
    }

    private void aP() {
        this.f11175r = new NativeUnifiedAdResponse() { // from class: com.beizi.fusion.work.d.a.1
            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public String getActionText() {
                return a.this.aG();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public String getAdLogoUrl() {
                return a.this.aL();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public String getDescription() {
                return a.this.aB();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public UnifiedAdDownloadAppInfo getDownloadAppInfo() {
                return a.this.aM();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public int getECPM() {
                String strI = a.this.i();
                if (strI == null) {
                    return -1;
                }
                try {
                    return Integer.parseInt(strI);
                } catch (Exception unused) {
                    return -1;
                }
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public String getIconUrl() {
                return a.this.aC();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public String getImageUrl() {
                return a.this.aD();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public List<String> getImgList() {
                return a.this.aE();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public int getMaterialType() {
                return a.this.aF();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public String getTitle() {
                return a.this.aA();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public View getVideoView() {
                return a.this.aJ();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public ViewGroup getViewContainer() {
                return a.this.aI();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public boolean isVideo() {
                return a.this.aH();
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public void registerDownloadAppInfoClickEvent(View view) {
                a.this.a(view);
            }

            @Override // com.beizi.fusion.NativeUnifiedAdResponse
            public void registerViewForInteraction(List<View> list) {
                a.this.a(list);
            }
        };
    }

    public void a(View view) {
    }

    public String aA() {
        return null;
    }

    public String aB() {
        return null;
    }

    public String aC() {
        return null;
    }

    public String aD() {
        return null;
    }

    public List<String> aE() {
        return null;
    }

    public int aF() {
        return 0;
    }

    public String aG() {
        return null;
    }

    public boolean aH() {
        return false;
    }

    public ViewGroup aI() {
        return null;
    }

    public View aJ() {
        return null;
    }

    public void aK() {
    }

    public String aL() {
        return null;
    }

    public UnifiedAdDownloadAppInfo aM() {
        return null;
    }

    protected void aN() {
        try {
            if (Y()) {
                aO();
            } else {
                P();
            }
        } catch (Throwable unused) {
        }
    }

    @Override // com.beizi.fusion.work.a
    public NativeUnifiedAdResponse as() {
        return this.f11175r;
    }

    public void az() {
    }

    public void b() {
    }

    @Override // com.beizi.fusion.work.a
    public void d() {
        if (this.f10981d == null) {
            return;
        }
        this.f10985h = this.f10982e.getAppId();
        this.f10986i = this.f10982e.getSpaceId();
        this.f10980c = this.f10982e.getBuyerSpaceUuId();
        com.beizi.fusion.events.b bVar = this.f10978a;
        if (bVar != null) {
            EventBean eventBeanA = bVar.a().a(this.f10980c);
            this.f10979b = eventBeanA;
            if (eventBeanA != null) {
                s();
                b();
            }
        }
    }

    @Override // com.beizi.fusion.work.a
    public void e() {
    }

    @Override // com.beizi.fusion.work.a
    public String f() {
        return null;
    }

    @Override // com.beizi.fusion.work.a
    public com.beizi.fusion.e.a h() {
        return this.f10987j;
    }

    @Override // com.beizi.fusion.work.a
    public AdSpacesBean.BuyerBean j() {
        return this.f10982e;
    }

    @Override // com.beizi.fusion.work.a
    protected void k() {
        v();
        ab();
        az();
    }

    public void a(List<View> list) {
    }
}
