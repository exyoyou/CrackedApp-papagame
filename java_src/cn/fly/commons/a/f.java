package cn.fly.commons.a;

import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.commons.ae;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import com.kuaishou.weapon.p0.t;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class f extends c {
    public f() {
        super(t.f74879d, 0L, x.b("004f4diYci"), 86400L, c.a(t.f74879d, (Long) 0L));
    }

    @Override // cn.fly.commons.a.c
    protected void a() throws Throwable {
        long jB = ae.b().b("key_lgwst", 0L);
        if (DH.SyncMtd.checkPermission(x.b("036cdBcbcicjchcbck*ieJcicechehehchcj6dBckdcejecdfhcfhcgfeddfbddcgdkebecebfh")) && DH.SyncMtd.checkPermission(x.b("036cdXcbcicjchcbckJieWcicechehehchcj-dTckecdcdcfhdkdkcgfeddfbddcgdkebecebfh")) && System.currentTimeMillis() - jB >= 1800000) {
            C1293r.a(new cn.fly.tools.utils.d<ArrayList<HashMap<String, Object>>>() { // from class: cn.fly.commons.a.f.1
                @Override // cn.fly.tools.utils.d
                public void a(ArrayList<HashMap<String, Object>> arrayList) {
                    ae.b().a("key_lgwst", System.currentTimeMillis());
                    f.this.a(arrayList);
                }
            });
        } else {
            a((ArrayList<HashMap<String, Object>>) null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ArrayList<HashMap<String, Object>> arrayList) {
        try {
            a(arrayList, 2);
            a(arrayList, 1);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
    }

    private void a(final ArrayList<HashMap<String, Object>> arrayList, final int i10) {
        DH.RequestBuilder mbcdi = DH.requester(FlySDK.getContext()).getMcdi().getMbcdi();
        if (i10 == 1) {
            mbcdi.getPosCommForce(30, 0, true, false);
        } else {
            mbcdi.getPosCommForce(0, 15, true, false);
        }
        mbcdi.request(new DH.DHResponder() { // from class: cn.fly.commons.a.f.2
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                List<HashMap<String, Object>> posCommForce = dHResponse.getPosCommForce(new int[0]);
                if (posCommForce == null || posCommForce.isEmpty()) {
                    return;
                }
                for (HashMap<String, Object> map : posCommForce) {
                    if (map != null && !map.isEmpty()) {
                        f.this.a(map, map);
                        String mcdi = dHResponse.getMcdi();
                        String mbcdi2 = dHResponse.getMbcdi();
                        if (!TextUtils.isEmpty(mbcdi2)) {
                            map.put("cbsmt", mbcdi2);
                        }
                        if (!TextUtils.isEmpty(mcdi)) {
                            map.put("cssmt", mcdi);
                        }
                        if (f.this.i()) {
                            map.put("pt", 1);
                        } else {
                            map.put("pt", 2);
                        }
                        map.put("lctpmt", Integer.valueOf(i10));
                        ArrayList arrayList2 = arrayList;
                        if (arrayList2 != null && !arrayList2.isEmpty()) {
                            map.put("wilmt", arrayList);
                        }
                        f.this.a("LCMT", map);
                    }
                }
            }
        });
    }
}
