package com.beizi.ad.v2.f;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.text.TextUtils;
import com.beizi.ad.f;
import com.beizi.ad.internal.e.s;
import com.beizi.ad.lance.a.n;
import com.beizi.ad.v2.activity.BeiZiNewRewardVideoActivity;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public class b extends com.beizi.ad.v2.a.b {
    public static b H;
    private f I;
    private boolean J;
    private String K;

    public b(Context context) {
        super(context, com.beizi.ad.internal.f.REWARDEDVIDEO);
        this.J = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void J() {
        String strJ;
        String strY;
        boolean z10;
        try {
            com.beizi.ad.internal.d.a aVar = this.f9680c;
            if (aVar != null) {
                z10 = aVar.z();
                strJ = this.f9680c.J();
                strY = this.f9680c.y();
            } else {
                strJ = null;
                strY = null;
                z10 = false;
            }
            if (z10) {
                if (TextUtils.isEmpty(strY)) {
                    f fVar = this.I;
                    if (fVar != null) {
                        fVar.a(3);
                        return;
                    }
                    return;
                }
                if (this.I != null) {
                    this.f9684g = true;
                    this.I.a();
                }
                s.a().a(this.f9678a, strY, false, new s.a() { // from class: com.beizi.ad.v2.f.b.1
                    @Override // com.beizi.ad.internal.e.s.a
                    public void a() {
                    }

                    @Override // com.beizi.ad.internal.e.s.a
                    public void a(String str) {
                        n.a("BeiZisAd", "onVideoLoaded: 加载成功");
                        b.this.K = str;
                        if (b.this.I != null) {
                            b.this.J = true;
                            b.this.I.b();
                        }
                    }
                });
                return;
            }
            if (TextUtils.isEmpty(strJ)) {
                f fVar2 = this.I;
                if (fVar2 != null) {
                    fVar2.a(3);
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

    public boolean C() {
        return this.J;
    }

    public String D() {
        return this.K;
    }

    public void E() {
        if (this.f9697t) {
            this.f9698u = true;
            com.beizi.ad.internal.a.a.a().a(this.f9695r);
        }
        if (this.I != null) {
            this.I.c();
        }
    }

    public void F() {
        com.beizi.ad.internal.d.a aVar = this.f9680c;
        if (aVar != null) {
            aVar.d(false);
        }
        f fVar = this.I;
        if (fVar != null) {
            fVar.d();
        }
    }

    public void G() {
        f fVar = this.I;
        if (fVar != null) {
            fVar.e();
        }
    }

    public void H() {
        f fVar = this.I;
        if (fVar != null) {
            fVar.f();
        }
    }

    public void I() {
        f fVar = this.I;
        if (fVar != null) {
            fVar.g();
        }
    }

    public void g(String str) {
        f fVar = this.I;
        if (fVar != null) {
            fVar.a(str);
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
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.f.b.2
                @Override // java.lang.Runnable
                public void run() {
                    b.this.I.a(i10);
                }
            });
        }
    }

    public void a(f fVar) {
        this.I = fVar;
    }

    public void a(Context context) {
        n.c("BeiZisAd", "showRewardVideo");
        H = this;
        context.startActivity(new Intent(context, (Class<?>) BeiZiNewRewardVideoActivity.class));
    }

    public void a(String str, int i10) {
        f fVar = this.I;
        if (fVar != null) {
            fVar.a((Map<String, Object>) null);
        }
    }

    @Override // com.beizi.ad.v2.a.b
    public void a(com.beizi.ad.internal.d.a aVar) {
        if (aVar == null) {
            f fVar = this.I;
            if (fVar != null) {
                fVar.a(3);
                return;
            }
            return;
        }
        b(aVar.b());
        c(aVar.c());
        a(aVar.B());
        Handler handler = this.F;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.f.b.3
                @Override // java.lang.Runnable
                public void run() {
                    b.this.J();
                }
            });
        }
    }
}
