package com.beizi.ad.v2.c;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import com.beizi.ad.internal.e.s;
import com.beizi.ad.internal.f;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.v2.activity.BeiZiNewInterstitialActivity;

/* JADX INFO: loaded from: classes6.dex */
public class b extends com.beizi.ad.v2.a.b {
    public static b H;
    private com.beizi.ad.a I;

    public b(Context context) {
        super(context, f.INTERSTITIAL);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void F() {
        String strX;
        String strY;
        boolean z10;
        try {
            com.beizi.ad.internal.d.a aVar = this.f9680c;
            if (aVar != null) {
                z10 = aVar.z();
                strX = this.f9680c.x();
                strY = this.f9680c.y();
            } else {
                strX = null;
                strY = null;
                z10 = false;
            }
            if (z10) {
                if (!TextUtils.isEmpty(strY)) {
                    s.a().a(this.f9678a, strY, false, new s.a() { // from class: com.beizi.ad.v2.c.b.1
                        @Override // com.beizi.ad.internal.e.s.a
                        public void a(String str) {
                            n.a("BeiZisAd", "onVideoLoaded: 加载成功");
                            if (b.this.I != null) {
                                ((com.beizi.ad.v2.a.b) b.this).f9684g = true;
                                b.this.I.a();
                            }
                        }

                        @Override // com.beizi.ad.internal.e.s.a
                        public void a() {
                            if (b.this.I != null) {
                                b.this.I.a(6);
                            }
                        }
                    });
                    return;
                }
                com.beizi.ad.a aVar2 = this.I;
                if (aVar2 != null) {
                    aVar2.a(3);
                    return;
                }
                return;
            }
            if (TextUtils.isEmpty(strX)) {
                com.beizi.ad.a aVar3 = this.I;
                if (aVar3 != null) {
                    aVar3.a(3);
                    return;
                }
                return;
            }
            if (this.I != null) {
                this.f9684g = true;
                this.I.a();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void C() {
        if (this.f9697t) {
            this.f9698u = true;
            com.beizi.ad.internal.a.a.a().a(this.f9695r);
        }
        if (this.I != null) {
            this.I.b();
        }
    }

    public void D() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar != null) {
            aVar.d(false);
        }
        com.beizi.ad.a aVar2 = this.I;
        if (aVar2 != null) {
            aVar2.c();
        }
    }

    public void E() {
        com.beizi.ad.a aVar = this.I;
        if (aVar != null) {
            aVar.d();
        }
    }

    public void g(String str) {
        com.beizi.ad.a aVar = this.I;
        if (aVar != null) {
            aVar.a(str);
        }
    }

    @Override // com.beizi.ad.v2.a.b
    public void q() {
        super.q();
        H = null;
    }

    @Override // com.beizi.ad.v2.a.b
    public void b(final int i10) {
        if (this.I == null || this.f9687j || this.f9684g) {
            return;
        }
        this.f9687j = true;
        Handler handler = this.F;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.c.b.2
                @Override // java.lang.Runnable
                public void run() {
                    b.this.I.a(i10);
                }
            });
        }
    }

    public void a(com.beizi.ad.a aVar) {
        this.I = aVar;
    }

    public void a(Context context) {
        n.c("BeiZisAd", "showInterstitial");
        H = this;
        context.startActivity(new Intent(context, (Class<?>) BeiZiNewInterstitialActivity.class));
    }

    @Override // com.beizi.ad.v2.a.b
    public void a(com.beizi.ad.internal.d.a aVar) {
        b(aVar.b());
        c(aVar.c());
        a(aVar.B());
        Handler handler = this.F;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.c.b.3
                @Override // java.lang.Runnable
                public void run() {
                    b.this.F();
                }
            });
        }
    }
}
