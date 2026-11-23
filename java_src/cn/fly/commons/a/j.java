package cn.fly.commons.a;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.ae;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ResHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: loaded from: classes7.dex */
public class j extends c {
    public j() {
        super(cn.fly.commons.o.a("003Ofiecfi"), 0L, cn.fly.commons.o.a("006Rfiecfiej,dj"), 2592000L, c.a(cn.fly.commons.o.a("003Ofiecfi"), (Long) 0L));
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        DH.requester(FlySDK.getContext()).getSA().request(new DH.DHResponder() { // from class: cn.fly.commons.a.j.1
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                boolean z10;
                ArrayList<HashMap<String, String>> sa2 = dHResponse.getSA();
                if (sa2 == null || sa2.isEmpty()) {
                    return;
                }
                long jB = ae.b().b(ae.f1064d, 0L);
                long jB2 = j.this.b() * 1000;
                long jCurrentTimeMillis = System.currentTimeMillis();
                boolean z11 = jCurrentTimeMillis - jB2 >= jB;
                if (!z11) {
                    ArrayList<HashMap<String, String>> arrayListFromFile = ResHelper.readArrayListFromFile(cn.fly.commons.n.f1409e, true);
                    Iterator<HashMap<String, String>> it2 = sa2.iterator();
                    while (it2.hasNext()) {
                        String str = it2.next().get(cn.fly.commons.o.a("003j8ehej"));
                        if (!TextUtils.isEmpty(str)) {
                            Iterator<HashMap<String, String>> it3 = arrayListFromFile.iterator();
                            while (true) {
                                if (!it3.hasNext()) {
                                    z10 = false;
                                    break;
                                } else if (str.equals(it3.next().get(cn.fly.commons.o.a("003j0ehej")))) {
                                    z10 = true;
                                    break;
                                }
                            }
                            if (!z10) {
                                z11 = true;
                                break;
                            }
                        }
                    }
                }
                if (z11) {
                    j.this.a(0L, "SALMT", sa2);
                    ResHelper.saveArrayListToFile(sa2, cn.fly.commons.n.f1409e, true);
                    ae.b().a(ae.f1064d, jCurrentTimeMillis);
                }
            }
        });
    }
}
