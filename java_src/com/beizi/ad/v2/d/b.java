package com.beizi.ad.v2.d;

import android.content.Context;
import android.os.Handler;
import android.view.View;
import com.beizi.ad.d;
import com.beizi.ad.e;
import com.beizi.ad.internal.f;

/* JADX INFO: loaded from: classes6.dex */
public class b extends com.beizi.ad.v2.a.b {
    private d H;
    private String I;
    private e J;

    public b(Context context, String str, int i10) {
        super(context, str, f.NATIVE);
    }

    public String C() {
        return this.I;
    }

    public void g(String str) {
        this.I = str;
    }

    @Override // com.beizi.ad.v2.a.b
    public void b(final int i10) {
        if (this.H == null || this.f9687j || this.f9684g) {
            return;
        }
        this.f9687j = true;
        Handler handler = this.F;
        if (handler != null) {
            handler.post(new Runnable() { // from class: com.beizi.ad.v2.d.b.2
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.H != null) {
                        b.this.H.a(i10);
                    }
                }
            });
        }
    }

    public void a(d dVar) {
        this.H = dVar;
    }

    public void a(View view, final com.beizi.ad.internal.c.c cVar) {
        e eVar = this.J;
        if (eVar == null || view == null || cVar == null) {
            return;
        }
        eVar.a(view, new com.beizi.ad.internal.c.c() { // from class: com.beizi.ad.v2.d.b.1
            @Override // com.beizi.ad.internal.c.c
            public void a() {
                if (((com.beizi.ad.v2.a.b) b.this).f9697t) {
                    ((com.beizi.ad.v2.a.b) b.this).f9698u = true;
                    com.beizi.ad.internal.a.a.a().a(((com.beizi.ad.v2.a.b) b.this).f9695r);
                }
                com.beizi.ad.internal.c.c cVar2 = cVar;
                if (cVar2 != null) {
                    cVar2.a();
                }
            }
        });
    }

    @Override // com.beizi.ad.v2.a.b
    public void a(com.beizi.ad.internal.d.a aVar) {
        e eVarA = aVar.a();
        this.J = eVarA;
        if (eVarA == null) {
            Handler handler = this.F;
            if (handler != null) {
                handler.post(new Runnable() { // from class: com.beizi.ad.v2.d.b.3
                    @Override // java.lang.Runnable
                    public void run() {
                        if (b.this.H != null) {
                            b.this.H.a(3);
                        }
                    }
                });
                return;
            }
            return;
        }
        b(aVar.b());
        c(aVar.c());
        a(aVar.B());
        g(this.J.l());
        ((com.beizi.ad.internal.c.a) this.J).a(this.f9697t);
        ((com.beizi.ad.internal.c.a) this.J).a(this.f9689l);
        Handler handler2 = this.F;
        if (handler2 != null) {
            handler2.post(new Runnable() { // from class: com.beizi.ad.v2.d.b.4
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.H != null) {
                        b.this.H.a(b.this.J);
                    }
                }
            });
        }
    }
}
