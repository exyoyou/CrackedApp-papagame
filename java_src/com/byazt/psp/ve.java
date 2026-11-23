package com.byazt.psp;

import android.text.TextUtils;
import com.byazt.nbs.da;
import com.bykv.vk.component.ttvideo.mediakit.medialoader.AVMDLDataLoader;
import java.math.BigDecimal;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, AVMDLDataLoader.KeyIsIsEncryptVersion, 54})
public class ve {
    public static List<da> c(com.byazt.nbs.tt ttVar, String str) {
        return c(ttVar, str, 0.0d, 0.0d);
    }

    private static void tt(double d10, double d11, double d12, com.byazt.nbs.tt ttVar, List<da> list) {
        if (d11 < d12 || d11 <= 0.0d || d10 < ttVar.p()) {
            return;
        }
        if (d10 > ttVar.yv() && d12 <= 0.0d) {
            list.addAll(ttVar.l());
            return;
        }
        double dDoubleValue = BigDecimal.valueOf(d10 * d11).setScale(2, RoundingMode.HALF_UP).doubleValue();
        double dDoubleValue2 = BigDecimal.valueOf(d10 * d12).setScale(2, RoundingMode.HALF_UP).doubleValue();
        List<da> listL = ttVar.l();
        double dGr = -1.0d;
        double dGr2 = -1.0d;
        for (int i10 = 0; i10 < listL.size(); i10++) {
            da daVar = listL.get(i10);
            if (daVar.my() == 0) {
                double dDoubleValue3 = BigDecimal.valueOf(daVar.gr()).setScale(2, RoundingMode.HALF_UP).doubleValue();
                if (dDoubleValue3 <= dDoubleValue && dDoubleValue3 >= dDoubleValue2) {
                    if (dGr == -1.0d || dGr < daVar.gr()) {
                        dGr = daVar.gr();
                    }
                    if (dGr2 == -1.0d || dGr2 > daVar.gr()) {
                        dGr2 = daVar.gr();
                    }
                    list.add(daVar);
                }
            } else {
                list.add(daVar);
            }
        }
        ttVar.x().put("max_ecpm", Double.valueOf(dGr));
        ttVar.x().put("min_ecpm", Double.valueOf(dGr2));
        ttVar.x().put("upper_cpm_x", Double.valueOf(dDoubleValue));
    }

    public static List<da> c(com.byazt.nbs.tt ttVar, String str, double d10, double d11) {
        int i10;
        double dC;
        if (ttVar == null || TextUtils.isEmpty(str)) {
            return null;
        }
        CopyOnWriteArrayList copyOnWriteArrayList = new CopyOnWriteArrayList();
        com.byazt.nbs.uj ujVarN = com.byazt.bp.tt.tt().n(str);
        if (ujVarN != null) {
            double dC2 = ujVarN.c();
            double dTt = ujVarN.tt();
            int iVe = ujVarN.ve();
            if (ttVar.i() == 3 || ttVar.i() == 4) {
                i10 = 1;
                double[] dArrC = tt.uj().c(ttVar.i(), d10, d11, ttVar.cu(), str);
                double d12 = dArrC[0];
                ttVar.x().put("price_from", Integer.valueOf((int) dArrC[1]));
                dC = d12;
            } else {
                dC = ttVar.i() == 2 ? tt.uj().c(3, str, iVe) : 0.0d;
                i10 = 1;
            }
            if (!ujVarN.n() && dC > 0.0d) {
                if (ujVarN.getType() == i10) {
                    tt(dC, dC2, dTt, ttVar, copyOnWriteArrayList);
                } else if (ujVarN.getType() == 2) {
                    c(dC, dC2, dTt, ttVar, copyOnWriteArrayList);
                }
                List<com.byazt.nbs.ve> listA = com.byazt.bp.tt.tt().a(String.valueOf(ttVar.pf()));
                if (listA != null) {
                    for (com.byazt.nbs.ve veVar : listA) {
                        if (dC > veVar.a() && dC <= veVar.n()) {
                            ttVar.x().put("user_label_value", veVar);
                            break;
                        }
                    }
                }
            }
            ttVar.x().put("rule_id", ujVarN.uj());
            ttVar.x().put("ecpm", Double.valueOf(dC));
            ttVar.x().put("rule_in_use", Integer.valueOf(copyOnWriteArrayList.size() == 0 ? 0 : 1));
            ttVar.x().put("group_type", Integer.valueOf(ttVar.i()));
        }
        if (com.byazt.eu.tt.tt()) {
            if (copyOnWriteArrayList.size() != 0) {
                for (int i11 = 0; i11 < copyOnWriteArrayList.size(); i11++) {
                    com.byazt.eu.tt.c("DynamicRuleCalculate", "rit：" + ((da) copyOnWriteArrayList.get(i11)).rh() + ",level：" + ((da) copyOnWriteArrayList.get(i11)).yv());
                }
            } else {
                com.byazt.eu.tt.c("DynamicRuleCalculate", "走原waterfall，inUse ： 不生效");
            }
        }
        return copyOnWriteArrayList.size() != 0 ? copyOnWriteArrayList : ttVar.l();
    }

    private static void c(double d10, double d11, double d12, com.byazt.nbs.tt ttVar, List<da> list) {
        if (ttVar == null || d11 == 0.0d || d10 < ttVar.p()) {
            return;
        }
        if (d10 > ttVar.yv() && d12 <= 0.0d) {
            list.addAll(ttVar.l());
        } else {
            c(ttVar, d10, d11, d12, list);
        }
    }

    /* JADX WARN: Code duplicated, block: B:37:0x00a3 A[PHI: r5
      0x00a3: PHI (r5v10 int) = (r5v7 int), (r5v11 int) binds: [B:36:0x00a1, B:45:0x00cd] A[DONT_GENERATE, DONT_INLINE]] */
    public static void c(com.byazt.nbs.tt ttVar, double d10, double d11, double d12, List<da> list) {
        Map<Integer, List<da>> mapLr = ttVar.lr();
        if (mapLr != null) {
            ArrayList arrayList = new ArrayList(mapLr.keySet());
            ArrayList arrayList2 = new ArrayList();
            int i10 = 0;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                if (((Integer) arrayList.get(i11)).intValue() > 0) {
                    arrayList2.add(arrayList.get(i11));
                } else {
                    List<da> list2 = mapLr.get(arrayList.get(i11));
                    if (list2 != null) {
                        list.addAll(list2);
                    }
                }
            }
            com.byazt.oi.tt.c(arrayList2);
            int size = arrayList2.size();
            if (size <= 0) {
                return;
            }
            int iMax = -1;
            int iMin = size;
            for (int i12 = 0; i12 < arrayList2.size(); i12++) {
                double d13 = i12;
                List<da> list3 = mapLr.get(arrayList2.get(i12));
                if (list3 != null) {
                    for (int i13 = 0; i13 < list3.size(); i13++) {
                        da daVar = list3.get(i13);
                        if (daVar != null && daVar.my() == 0) {
                            double dDoubleValue = BigDecimal.valueOf(daVar.gr()).setScale(2, RoundingMode.HALF_UP).doubleValue();
                            if (d10 == dDoubleValue) {
                                if (iMax < 0) {
                                    iMax = Math.max((int) (d13 - d11), 0);
                                }
                                if (iMin != size && d10 != dDoubleValue) {
                                    break;
                                }
                                if (d12 <= 0.0d) {
                                    iMin = size - 1;
                                    break;
                                } else {
                                    iMin = Math.min((int) (d13 + d12), size - 1);
                                    break;
                                }
                            }
                            if (d10 > dDoubleValue) {
                                if (iMax < 0) {
                                    iMax = Math.max((int) Math.ceil(((d13 + (d13 - 1.0d)) / 2.0d) - d11), 0);
                                }
                                if (iMin == size) {
                                    if (d12 <= 0.0d) {
                                        iMin = size - 1;
                                        break;
                                        break;
                                    } else {
                                        iMin = Math.min((int) Math.floor(((d13 + (d13 - 1.0d)) / 2.0d) + d12), size - 1);
                                        break;
                                    }
                                }
                                break;
                            }
                        }
                    }
                }
            }
            if (iMax < 0) {
                iMax = 0;
            }
            if (iMin >= size) {
                iMin = size - 1;
            }
            int i14 = iMax;
            double d14 = -1.0d;
            double dGr = -1.0d;
            double dGr2 = -1.0d;
            while (i14 <= iMin) {
                List<da> list4 = mapLr.get(arrayList2.get(i14));
                if (list4 != null && list4.size() != 0) {
                    while (i10 < list4.size()) {
                        da daVar2 = list4.get(i10);
                        if (daVar2 != null) {
                            if (dGr < daVar2.gr() || dGr == -1.0d) {
                                dGr = daVar2.gr();
                            }
                            if (dGr2 > daVar2.gr() || dGr2 == -1.0d) {
                                dGr2 = daVar2.gr();
                            }
                            list.add(daVar2);
                            if (i14 == iMax) {
                                d14 = dGr;
                            }
                        }
                        i10++;
                    }
                }
                i14++;
                i10 = 0;
            }
            ttVar.x().put("upper_cpm_x", Double.valueOf(d14));
            ttVar.x().put("max_ecpm", Double.valueOf(dGr));
            ttVar.x().put("min_ecpm", Double.valueOf(dGr2));
        }
    }
}
