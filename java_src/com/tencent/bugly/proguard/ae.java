package com.tencent.bugly.proguard;

import android.text.TextUtils;
import com.tencent.bugly.crashreport.biz.UserInfoBean;
import com.tencent.bugly.crashreport.common.strategy.StrategyBean;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class ae {
    public static bu a(UserInfoBean userInfoBean) {
        if (userInfoBean == null) {
            return null;
        }
        bu buVar = new bu();
        buVar.f83562a = userInfoBean.f83078e;
        buVar.f83566e = userInfoBean.f83083j;
        buVar.f83565d = userInfoBean.f83076c;
        buVar.f83564c = userInfoBean.f83077d;
        buVar.f83569h = userInfoBean.f83088o == 1;
        int i10 = userInfoBean.f83075b;
        if (i10 == 1) {
            buVar.f83563b = (byte) 1;
        } else if (i10 == 2) {
            buVar.f83563b = (byte) 4;
        } else if (i10 == 3) {
            buVar.f83563b = (byte) 2;
        } else if (i10 == 4) {
            buVar.f83563b = (byte) 3;
        } else if (i10 == 8) {
            buVar.f83563b = (byte) 8;
        } else {
            if (i10 < 10 || i10 >= 20) {
                al.e("unknown uinfo type %d ", Integer.valueOf(i10));
                return null;
            }
            buVar.f83563b = (byte) i10;
        }
        HashMap map = new HashMap();
        buVar.f83567f = map;
        if (userInfoBean.f83089p >= 0) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(userInfoBean.f83089p);
            map.put("C01", sb2.toString());
        }
        if (userInfoBean.f83090q >= 0) {
            Map<String, String> map2 = buVar.f83567f;
            StringBuilder sb3 = new StringBuilder();
            sb3.append(userInfoBean.f83090q);
            map2.put("C02", sb3.toString());
        }
        Map<String, String> map3 = userInfoBean.f83091r;
        if (map3 != null && map3.size() > 0) {
            for (Map.Entry<String, String> entry : userInfoBean.f83091r.entrySet()) {
                buVar.f83567f.put("C03_" + entry.getKey(), entry.getValue());
            }
        }
        Map<String, String> map4 = userInfoBean.f83092s;
        if (map4 != null && map4.size() > 0) {
            for (Map.Entry<String, String> entry2 : userInfoBean.f83092s.entrySet()) {
                buVar.f83567f.put("C04_" + entry2.getKey(), entry2.getValue());
            }
        }
        Map<String, String> map5 = buVar.f83567f;
        StringBuilder sb4 = new StringBuilder();
        sb4.append(!userInfoBean.f83085l);
        map5.put("A36", sb4.toString());
        Map<String, String> map6 = buVar.f83567f;
        StringBuilder sb5 = new StringBuilder();
        sb5.append(userInfoBean.f83080g);
        map6.put("F02", sb5.toString());
        Map<String, String> map7 = buVar.f83567f;
        StringBuilder sb6 = new StringBuilder();
        sb6.append(userInfoBean.f83081h);
        map7.put("F03", sb6.toString());
        buVar.f83567f.put("F04", userInfoBean.f83083j);
        Map<String, String> map8 = buVar.f83567f;
        StringBuilder sb7 = new StringBuilder();
        sb7.append(userInfoBean.f83082i);
        map8.put("F05", sb7.toString());
        buVar.f83567f.put("F06", userInfoBean.f83086m);
        Map<String, String> map9 = buVar.f83567f;
        StringBuilder sb8 = new StringBuilder();
        sb8.append(userInfoBean.f83084k);
        map9.put("F10", sb8.toString());
        al.c("summary type %d vm:%d", Byte.valueOf(buVar.f83563b), Integer.valueOf(buVar.f83567f.size()));
        return buVar;
    }

    public static <T extends m> T a(byte[] bArr, Class<T> cls) {
        if (bArr != null && bArr.length > 0) {
            try {
                T tNewInstance = cls.newInstance();
                k kVar = new k(bArr);
                kVar.a("utf-8");
                tNewInstance.a(kVar);
                return tNewInstance;
            } catch (Throwable th) {
                if (!al.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static bq a(int i10, byte[] bArr) {
        String strC;
        String str;
        aa aaVarB = aa.b();
        StrategyBean strategyBeanC = ac.a().c();
        if (aaVarB != null && strategyBeanC != null) {
            try {
                bq bqVar = new bq();
                synchronized (aaVarB) {
                    bqVar.f83510a = aaVarB.f83183c;
                    bqVar.f83511b = aaVarB.f();
                    bqVar.f83512c = aaVarB.f83184d;
                    bqVar.f83513d = aaVarB.f83195p;
                    bqVar.f83514e = aaVarB.f83199t;
                    bqVar.f83515f = aaVarB.f83189i;
                    bqVar.f83516g = i10;
                    if (bArr == null) {
                        bArr = "".getBytes();
                    }
                    bqVar.f83517h = bArr;
                    bqVar.f83518i = aaVarB.k();
                    bqVar.f83519j = aaVarB.c();
                    bqVar.f83520k = new HashMap();
                    bqVar.f83521l = aaVarB.e();
                    bqVar.f83522m = strategyBeanC.f83110o;
                    bqVar.f83524o = aaVarB.j();
                    if (!aa.f83176o) {
                        al.c("not allow collect personal info, network type use default value", new Object[0]);
                        strC = "unknown";
                    } else {
                        strC = ab.c(aaVarB.f83177a);
                    }
                    bqVar.f83525p = strC;
                    bqVar.f83526q = System.currentTimeMillis();
                    bqVar.f83528s = aaVarB.l();
                    bqVar.f83531v = aaVarB.j();
                    bqVar.f83532w = bqVar.f83525p;
                    bqVar.f83523n = "com.tencent.bugly";
                    bqVar.f83520k.put("A26", aaVarB.v());
                    Map<String, String> map = bqVar.f83520k;
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(aa.F());
                    map.put("A62", sb2.toString());
                    Map<String, String> map2 = bqVar.f83520k;
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append(aa.G());
                    map2.put("A63", sb3.toString());
                    Map<String, String> map3 = bqVar.f83520k;
                    StringBuilder sb4 = new StringBuilder();
                    sb4.append(aaVarB.K);
                    map3.put("F11", sb4.toString());
                    Map<String, String> map4 = bqVar.f83520k;
                    StringBuilder sb5 = new StringBuilder();
                    sb5.append(aaVarB.J);
                    map4.put("F12", sb5.toString());
                    bqVar.f83520k.put("D3", aaVarB.f83197r);
                    List<o> list = p.f83616b;
                    if (list != null) {
                        for (o oVar : list) {
                            String str2 = oVar.versionKey;
                            if (str2 != null && (str = oVar.version) != null) {
                                bqVar.f83520k.put(str2, str);
                            }
                        }
                    }
                    bqVar.f83520k.put("G15", ap.d("G15", ""));
                    bqVar.f83520k.put("G10", ap.d("G10", ""));
                    bqVar.f83520k.put("D4", ap.d("D4", "0"));
                }
                Map<String, String> mapA = aaVarB.A();
                if (mapA != null) {
                    for (Map.Entry<String, String> entry : mapA.entrySet()) {
                        if (!TextUtils.isEmpty(entry.getValue())) {
                            bqVar.f83520k.put(entry.getKey(), entry.getValue());
                        }
                    }
                }
                return bqVar;
            } catch (Throwable th) {
                if (!al.b(th)) {
                    th.printStackTrace();
                }
                return null;
            }
        }
        al.e("Can not create request pkg for parameters is invalid.", new Object[0]);
        return null;
    }

    public static byte[] a(Object obj) {
        try {
            e eVar = new e();
            eVar.b();
            eVar.a("utf-8");
            eVar.c();
            eVar.b("RqdServer");
            eVar.c(com.mp4parser.iso14496.part15.g.f75671c);
            eVar.a("detail", obj);
            return eVar.a();
        } catch (Throwable th) {
            if (al.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }

    public static br a(byte[] bArr) {
        if (bArr != null) {
            try {
                e eVar = new e();
                eVar.b();
                eVar.a("utf-8");
                eVar.a(bArr);
                Object objB = eVar.b("detail", new br());
                if (br.class.isInstance(objB)) {
                    return (br) br.class.cast(objB);
                }
                return null;
            } catch (Throwable th) {
                if (!al.b(th)) {
                    th.printStackTrace();
                }
            }
        }
        return null;
    }

    public static byte[] a(m mVar) {
        try {
            l lVar = new l();
            lVar.a("utf-8");
            mVar.a(lVar);
            byte[] bArr = new byte[lVar.f83610a.position()];
            System.arraycopy(lVar.f83610a.array(), 0, bArr, 0, lVar.f83610a.position());
            return bArr;
        } catch (Throwable th) {
            if (al.b(th)) {
                return null;
            }
            th.printStackTrace();
            return null;
        }
    }
}
