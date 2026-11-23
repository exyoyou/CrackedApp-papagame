package cn.fly.commons.a;

import android.content.pm.ApplicationInfo;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.commons.CSCenter;
import cn.fly.commons.FlyProduct;
import cn.fly.commons.ae;
import cn.fly.commons.q;
import cn.fly.commons.x;
import cn.fly.tools.FlyLog;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.utils.DH;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class n extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f997b = x.b("016Ledecdkebcgdjfkedfgecekcgebddgbfh");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f998c = x.b("016Medecdkebcgfbecddedfhekcgekecebec");

    public n() {
        super(x.b("002if"), 0L, x.b("005if.diXci"), 86400L, c.a(x.b("002if"), (Long) 0L));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object b(HashMap<String, Object> map) {
        try {
            map.put(x.b("005bif[ec_h"), Long.valueOf(System.currentTimeMillis()));
            return b(map, cn.fly.commons.j.a().a("gclg") + x.b("004kbif"));
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    private void o() {
        DH.requester(FlySDK.getContext()).getDetailNetworkTypeForStatic().request(new DH.DHResponder() { // from class: cn.fly.commons.a.n.1
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                final List list;
                HashMap<String, Object> map = new HashMap<>();
                String strA = q.a();
                String strA2 = cn.fly.commons.f.a((FlyProduct) null);
                map.put(x.b("006ciiHdg[eVdb"), strA);
                map.put(x.b("006ciiiAdgdi"), DH.SyncMtd.getPackageName());
                map.put(x.b("006ciiKccFeSci"), Integer.valueOf(DH.SyncMtd.getAppVersion()));
                map.put(x.b("004Vcbcfchcb"), strA2);
                map.put(x.b("004ifch"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
                map.put(x.b("011deh^efcjcidgYhMdbDie"), dHResponse.getDetailNetworkTypeForStatic());
                map.put(x.b("009fcMehFh9fj_if(ecEh"), Long.valueOf(ae.b().b(n.f997b, 0L)));
                String strEncodeToString = Base64.encodeToString((strA + ":" + strA2).getBytes("utf-8"), 2);
                map.put(x.b("009fc<eh-h$fj6ifHddcb"), strEncodeToString);
                HashMap map2 = (HashMap) n.b(map, cn.fly.commons.j.a().a("gclg") + x.b("004kPcc'if"));
                if (map2 == null || map2.size() == 0 || (list = (List) map2.get(x.b("004i2dgdieh"))) == null || list.size() <= 0) {
                    return;
                }
                ae.b().a(n.f997b, System.currentTimeMillis());
                final ArrayList arrayList = new ArrayList();
                FlyLog.getInstance().d("[dhss] vpl", new Object[0]);
                DH.RequestBuilder requestBuilderRequester = DH.requester(FlySDK.getContext());
                Iterator it2 = list.iterator();
                while (it2.hasNext()) {
                    requestBuilderRequester.getMpfos(DH.GPI_STRATEGY_VALIDITY_3_MINUTE, (String) it2.next(), 0);
                }
                requestBuilderRequester.request(new DH.DHResponder() { // from class: cn.fly.commons.a.n.1.1
                    @Override // cn.fly.tools.utils.DH.DHResponder
                    public void onResponse(DH.DHResponse dHResponse2) {
                        int size = list.size();
                        for (int i10 = 0; i10 < size; i10++) {
                            try {
                                Object mpfos = dHResponse2.getMpfos(i10);
                                if (mpfos != null) {
                                    String str = (String) list.get(i10);
                                    ApplicationInfo applicationInfoA = cn.fly.tools.c.a(mpfos, str);
                                    HashMap map3 = new HashMap();
                                    map3.put(x.b("006ciiiJdgdi"), str);
                                    map3.put(x.b("006cii]cc_e?ci"), cn.fly.tools.c.c(mpfos, str));
                                    if (applicationInfoA != null) {
                                        int i11 = applicationInfoA.flags;
                                        boolean z10 = true;
                                        boolean z11 = (i11 & 1) == 1;
                                        boolean z12 = (i11 & 128) != 0;
                                        String strB = x.b("005-chehehdbeh");
                                        if (!z11 && !z12) {
                                            z10 = false;
                                        }
                                        map3.put(strB, Boolean.valueOf(z10));
                                    }
                                    arrayList.add(map3);
                                }
                            } catch (Throwable th) {
                                FlyLog.getInstance().d(th);
                            }
                        }
                    }
                });
                map.remove(x.b("011deh[efcjcidg)h@dbQie"));
                map.remove(x.b("009fcLehTh=fj4ifKec h"));
                map.remove(x.b("009fc eh*hNfj.ifSddcb"));
                map.put(x.b("005_cecjcbIef"), DH.SyncMtd.getModelForFly());
                map.put(x.b("008:cb>chehDchce'e"), Long.valueOf(System.currentTimeMillis()));
                map.put(x.b("002[chcb"), strEncodeToString);
                map.put(x.b("004i5dgdieh"), arrayList);
                Object objB = n.this.b(map);
                if (objB == null) {
                    objB = n.this.b(map);
                }
                if (objB == null) {
                    n.this.a(map);
                }
            }
        });
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        if (CSCenter.getInstance().isAppListDataEnable()) {
            try {
                Thread.sleep(((Long) a(e(), 0L)).longValue() * 1000);
                HashMap<String, Object> map = (HashMap) ae.b().c(f998c, null);
                if (map != null && !map.isEmpty() && b(map) != null) {
                    a((HashMap<String, Object>) null);
                }
            } catch (Throwable unused) {
            }
            o();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static Object b(HashMap<String, Object> map, String str) throws Throwable {
        if (!cn.fly.commons.c.d()) {
            return null;
        }
        return new NetCommunicator(1024, "009cbd92ccef123be840deec0c6ed0547194c1e471d11b6f375e56038458fb18833e5bab2e1206b261495d7e2d1d9e5aa859e6d4b67" + x.b("023$geYc^gcGbc_ghcbhjgcSe@deOe4cb e.gkgcIeDgdgige^c^iede"), "1dfd1d615cb891ce9a76f42d036af7fce5f8b8efaa11b2f42590ecc4ea4cff28f5f6b0726aeb76254ab5b02a58c1d5b486c39d9da1a58fa6ba2f22196493b3a4cbc283dcf749bf63679ee24d185de70c8dfe05605886c9b53e9f569082eabdf98c4fb0dcf07eb9bb3e647903489ff0b5d933bd004af5be4a1022fdda41f347f1").requestSynchronized(map, str, false);
    }

    public synchronized void a(HashMap<String, Object> map) {
        try {
            if (map == null) {
                ae.b().b(f998c);
            } else {
                ae.b().b(f998c, map);
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
