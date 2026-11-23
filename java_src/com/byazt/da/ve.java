package com.byazt.da;

import android.content.Context;
import com.byazt.hz.sp;
import com.byazt.oh.n;
import com.bytedance.sdk.openadsdk.mediation.MediationConstant;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 72, 54})
public class ve implements n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public sp f12655c;
    public com.byazt.ch.c tt;
    public com.byazt.nh.tt ve;

    public ve(Context context, com.byazt.ch.c cVar, com.byazt.nh.tt ttVar) {
        this.tt = cVar;
        if (cVar != null) {
            this.f12655c = new sp(context);
            this.ve = ttVar;
        }
    }

    @Override // com.byazt.oh.n
    public void c() {
        this.f12655c.c(new com.byazt.ll.tt(9, this.tt.eo(), this.tt.or()), new com.byazt.fy.tt() { // from class: com.byazt.da.ve.1
            @Override // com.byazt.fy.tt
            public void c(List<com.byazt.yl.ve> list) {
                if (list == null) {
                    c(new com.byazt.pp.c(MediationConstant.ErrorCode.ADN_AD_LOAD_FAIL, "list is null"));
                    return;
                }
                if (ve.this.ve != null) {
                    ArrayList arrayList = new ArrayList();
                    Iterator<com.byazt.yl.ve> it2 = list.iterator();
                    while (it2.hasNext()) {
                        arrayList.add(new c(ve.this.f12655c, it2.next(), ve.this.f12655c.my()));
                    }
                    ve.this.ve.c(arrayList);
                }
            }

            @Override // com.byazt.fy.tt
            public void c(com.byazt.pp.c cVar) {
                if (cVar == null || ve.this.ve == null) {
                    return;
                }
                ve.this.ve.c(cVar.f18789c, cVar.tt);
            }
        });
    }
}
