package com.aggmoread.sdk.z.c.a.a.d.a.d.q.i;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.aggmoread.sdk.z.a.h.c;
import com.aggmoread.sdk.z.a.s.f;
import com.aggmoread.sdk.z.c.a.a.d.a.d.k;
import com.aggmoread.sdk.z.c.a.a.d.a.d.q.b;
import com.aggmoread.sdk.z.c.a.a.d.b.e;
import com.aggmoread.sdk.z.c.a.a.d.b.j;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes7.dex */
public class a extends k implements f {
    private c C;
    private com.aggmoread.sdk.z.a.a D;

    public a(e eVar, com.aggmoread.sdk.z.c.a.a.d.b.f fVar) {
        super(eVar, fVar);
    }

    @Override // com.aggmoread.sdk.z.a.s.e
    public void a() {
        r();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001f  */
    /* JADX WARN: Code duplicated, block: B:14:0x0025  */
    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    protected void b(ViewGroup viewGroup) {
        Context context;
        Activity activity;
        if (this.D != null) {
            if (!(viewGroup.getContext() instanceof Activity)) {
                context = this.f4910h.f4948d;
                if (!(context instanceof Activity)) {
                    activity = null;
                }
                if (activity != null) {
                    this.D.a(activity, viewGroup);
                } else {
                    b(new j(1001001000, "容器页面不可见!"));
                }
            }
            context = viewGroup.getContext();
            activity = (Activity) context;
            if (activity != null) {
                this.D.a(activity, viewGroup);
            } else {
                b(new j(1001001000, "容器页面不可见!"));
            }
        }
    }

    @Override // com.aggmoread.sdk.z.a.s.e
    public void d() {
        s();
    }

    @Override // com.aggmoread.sdk.z.a.s.f
    public void e() {
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.b.a
    protected String j() {
        com.aggmoread.sdk.z.a.a aVar = this.D;
        return aVar != null ? aVar.c() : super.j();
    }

    @Override // com.aggmoread.sdk.z.a.s.e
    public void onAdClicked() {
        q();
    }

    @Override // com.aggmoread.sdk.z.a.s.e
    public void onAdShow() {
    }

    @Override // com.aggmoread.sdk.z.a.s.f
    public void onAdTick(long j10) {
        a(j10);
    }

    @Override // com.aggmoread.sdk.z.c.a.a.d.a.d.k
    protected void a(View view) {
        try {
            com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h.f4948d);
            this.C = com.aggmoread.sdk.z.c.a.a.d.a.d.q.c.c().a(this.f4910h, this.f4911i).a(true).a(view).a(this.f4911i.f5003c.c(com.aggmoread.sdk.z.c.a.a.d.b.f.c.f5015a0)).e();
            a(this.f4910h, this.f4911i).a(0).b();
            this.C.a((com.aggmoread.sdk.z.a.s.e) this);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.aggmoread.sdk.z.a.s.f
    public void a(com.aggmoread.sdk.z.a.a aVar) {
        ArrayList arrayList = new ArrayList();
        this.D = aVar;
        if (b.a(this.f4911i, aVar.d())) {
            a(aVar.d(), 0);
            return;
        }
        b.b(this.f4909g, aVar.d(), this.f4911i);
        arrayList.add(this);
        f(arrayList);
    }

    @Override // com.aggmoread.sdk.z.a.i.h
    public void a(com.aggmoread.sdk.z.a.g.f fVar) {
        b(new j(fVar.a(), fVar.b()));
    }
}
