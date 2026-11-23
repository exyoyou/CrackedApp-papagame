package cn.fly.commons.a;

import cn.fly.FlySDK;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ResHelper;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class b extends c {
    public b() {
        super(cn.fly.commons.n.a("002Edddg"), 0L, cn.fly.commons.n.a("005Gdddgch bh"), 86400L, c.a(cn.fly.commons.n.a("002Edddg"), (Long) 0L));
    }

    private void n() {
        DH.RequestBuilder cLoc = DH.requester(FlySDK.getContext()).getCarrierStrict(false).getCarrierNameStrict(false).getMnbclfo().getCLoc();
        final int oSVersionIntForFly = DH.SyncMtd.getOSVersionIntForFly();
        if (oSVersionIntForFly >= 17) {
            cLoc = cLoc.getACIfo();
        }
        cLoc.request(new DH.DHResponder() { // from class: cn.fly.commons.a.b.1
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                int i10;
                HashMap<String, Object> map;
                HashMap map2;
                int iIntValue;
                long j10;
                int iIntValue2;
                long jLongValue;
                long jLongValue2;
                int i11;
                int i12;
                int i13;
                int iIntValue3;
                int i14;
                try {
                    i10 = Integer.parseInt(dHResponse.getCarrierStrict(new int[0]));
                } catch (Throwable unused) {
                    i10 = -1;
                }
                if (oSVersionIntForFly < 17 || dHResponse.getACIfo() == null || dHResponse.getACIfo().isEmpty()) {
                    map = null;
                    if (dHResponse.getCLoc() != null) {
                        map2 = (HashMap) dHResponse.getCLoc();
                        map2.put("dbm", -1);
                    } else {
                        map2 = null;
                    }
                } else {
                    ArrayList<HashMap<String, Object>> aCIfo = dHResponse.getACIfo();
                    map = new HashMap<>();
                    map.put("bsd", aCIfo);
                    HashMap<String, Object> map3 = aCIfo.get(0);
                    map2 = new HashMap();
                    if (((Integer) map3.get(cn.fly.commons.n.a("004gFcaEhd"))).intValue() == 2) {
                        map2.put(cn.fly.commons.n.a("016Mcbbabd2bHcbYdeeIdcbiEabg bgbiBc"), 1);
                        map2.put(cn.fly.commons.n.a("003Eddbgba"), map3.get(cn.fly.commons.n.a("004adee")));
                        map2.put(cn.fly.commons.n.a("003(dgbgba"), map3.get(cn.fly.commons.n.a("003(dgbgba")));
                        map2.put(cn.fly.commons.n.a("003cDbgba"), map3.get(cn.fly.commons.n.a("003cDbgba")));
                        map2.put(cn.fly.commons.n.a("003ebg"), map3.get(cn.fly.commons.n.a("003ebg")));
                        map2.put(cn.fly.commons.n.a("003e4bi7c"), map3.get(cn.fly.commons.n.a("003e4bi7c")));
                    } else {
                        map2.put(cn.fly.commons.n.a("016^cbbabd4b_cb%dee[dcbiCabg?bgbi-c"), -1);
                        map2.put(cn.fly.commons.n.a("003hPdg@a"), map3.get(cn.fly.commons.n.a("003hPdg@a")));
                        map2.put(cn.fly.commons.n.a("003eba"), map3.get(cn.fly.commons.n.a("003eba")));
                        map2.put(cn.fly.commons.n.a("004adee"), map3.get(cn.fly.commons.n.a("004adee")));
                    }
                    map2.put("dbm", map3.get("dbm"));
                }
                if (map2 != null) {
                    if (((Integer) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("016Dcbbabd2b9cbDdee9dcbi$abgTbgbiLc")), -1)).intValue() == 1) {
                        int iIntValue4 = ((Integer) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("003ebg")), -1)).intValue();
                        int iIntValue5 = ((Integer) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("003ePbi c")), -1)).intValue();
                        jLongValue = ((Long) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("003(ddbgba")), -1L)).longValue();
                        int iIntValue6 = ((Integer) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("003Kdgbgba")), -1)).intValue();
                        i12 = iIntValue4;
                        i13 = iIntValue5;
                        iIntValue3 = ((Integer) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("003cPbgba")), -1)).intValue();
                        iIntValue2 = -1;
                        j10 = -1;
                        jLongValue2 = -1;
                        i11 = iIntValue6;
                        iIntValue = -1;
                    } else {
                        iIntValue = ((Integer) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("003h.dgAa")), -1)).intValue();
                        j10 = -1;
                        iIntValue2 = ((Integer) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("003eba")), -1)).intValue();
                        jLongValue = -1;
                        jLongValue2 = ((Long) ResHelper.forceCast(map2.get(cn.fly.commons.n.a("004adee")), -1L)).longValue();
                        i11 = -1;
                        i12 = -1;
                        i13 = -1;
                        iIntValue3 = -1;
                    }
                    if (i10 != -1 && iIntValue2 != -1 && jLongValue2 != j10) {
                        if (map == null) {
                            map = new HashMap<>();
                        }
                        map.put(cn.fly.commons.n.a("003eba"), Integer.valueOf(iIntValue2));
                        map.put(cn.fly.commons.n.a("004adee"), Long.valueOf(jLongValue2));
                        if (iIntValue != -1) {
                            map.put(cn.fly.commons.n.a("003hGdg@a"), Integer.valueOf(iIntValue));
                        }
                    }
                    if (i10 != -1 && jLongValue != -1 && i11 != -1 && (i14 = iIntValue3) != -1) {
                        if (map == null) {
                            map = new HashMap<>();
                        }
                        map.put(cn.fly.commons.n.a("003)ddbgba"), Long.valueOf(jLongValue));
                        map.put(cn.fly.commons.n.a("0036dgbgba"), Integer.valueOf(i11));
                        map.put(cn.fly.commons.n.a("003cWbgba"), Integer.valueOf(i14));
                        if (i12 != -1) {
                            map.put(cn.fly.commons.n.a("003ebg"), Integer.valueOf(i12));
                        }
                        int i15 = i13;
                        if (i15 != -1) {
                            map.put(cn.fly.commons.n.a("003eLbiZc"), Integer.valueOf(i15));
                        }
                    }
                    if (map != null) {
                        map.put("dbm", Integer.valueOf(((Integer) ResHelper.forceCast(map2.get("dbm"), -1)).intValue()));
                    }
                    if (map != null) {
                        map.put(cn.fly.commons.n.a("007abGbhbhbg7d2bh"), Integer.valueOf(i10));
                        map.put(cn.fly.commons.n.a("009Bdgbgbdbi hcbCbd[d"), dHResponse.getCarrierNameStrict(new int[0]));
                        ArrayList<HashMap<String, Object>> mnbclfo = dHResponse.getMnbclfo();
                        if (mnbclfo != null && mnbclfo.size() > 0) {
                            map.put(cn.fly.commons.n.a("006cdbNbhddca"), mnbclfo);
                        }
                        b.this.a("BSIOMT", map, true);
                    }
                }
            }
        });
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        n();
    }
}
