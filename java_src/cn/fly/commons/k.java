package cn.fly.commons;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.text.TextUtils;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ResHelper;
import com.baidu.mobads.sdk.internal.bn;
import com.umeng.analytics.pro.aw;
import com.windmill.sdk.WMConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static k f1380b = new k();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile boolean f1382c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile long f1383d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ConcurrentHashMap<String, Object> f1384e = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ConcurrentHashMap<String, Object> f1385f = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final AtomicBoolean f1381a = new AtomicBoolean(false);

    private k() {
    }

    private boolean d() {
        long jB = cn.fly.tools.utils.h.a(FlySDK.getContext()).b("ncat", 0L);
        if (jB > 0) {
            if (System.currentTimeMillis() - jB <= bn.f7592d) {
                return true;
            }
            cn.fly.tools.utils.h.a(FlySDK.getContext()).a("ncat");
        }
        return false;
    }

    private boolean e() {
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        DH.requester(FlySDK.getContext()).getCarrierStrict(false).request(new DH.DHResponder() { // from class: cn.fly.commons.k.2
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                String carrierStrict = dHResponse.getCarrierStrict(new int[0]);
                if (!TextUtils.isEmpty(carrierStrict) && !TextUtils.equals(WMConstants.TIMER_STAGE_NONE, carrierStrict)) {
                    linkedBlockingQueue.offer(Boolean.valueOf(!carrierStrict.startsWith("460")));
                }
                linkedBlockingQueue.offer(Boolean.valueOf(!k.this.a(FlySDK.getContext())));
            }
        });
        try {
            Boolean bool = (Boolean) linkedBlockingQueue.poll(120L, TimeUnit.MILLISECONDS);
            return bool != null && bool.booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public boolean b() {
        return a(false);
    }

    public ConcurrentHashMap<String, Object> c() {
        return this.f1384e;
    }

    private synchronized boolean b(boolean z10) {
        long jLongValue;
        String str;
        try {
            if (z10) {
                HashMap mapFromJson = HashonHelper.fromJson(ae.b().e());
                if (mapFromJson.isEmpty()) {
                    mapFromJson = HashonHelper.fromJson(ae.b().d());
                }
                jLongValue = ((Long) ResHelper.forceCast(mapFromJson.get(n.a("004dad[cg")), 5L)).longValue() * 1000;
                str = (String) ResHelper.forceCast(mapFromJson.get(n.a("002a:ba")), n.a("006Zfcfcfdfdfdfd"));
            } else {
                jLongValue = ((Long) c.a(n.a("004dad cg"), 5L)).longValue() * 1000;
                str = (String) c.a(n.a("002aUba"), n.a("006:fcfcfdfdfdfd"));
            }
            if (this.f1383d != 0 && System.currentTimeMillis() - this.f1383d <= jLongValue) {
                return this.f1382c;
            }
            boolean z11 = a(str) || d();
            if (this.f1383d == 0 || z11 != this.f1382c) {
                c(z11);
            }
            this.f1383d = System.currentTimeMillis();
            this.f1382c = z11;
            return z11;
        } catch (Throwable th) {
            FlyLog.getInstance().e(th);
            return true;
        }
    }

    private void c(boolean z10) {
        HashMap map = new HashMap();
        map.put(n.a("005aedb3bh"), Integer.valueOf(!z10 ? 1 : 0));
        map.put(n.a("0027beYa"), ResHelper.forceCast(this.f1384e.get(n.a("0027beYa")), 0));
        map.put(n.a("002 beba"), ResHelper.forceCast(this.f1384e.get(n.a("002 beba")), 0));
        map.put(n.a("002;bb_h"), ResHelper.forceCast(this.f1384e.get(n.a("002;bb_h")), 0));
        map.put(n.a("002!deWh"), ResHelper.forceCast(this.f1384e.get(n.a("002!deWh")), 0));
        map.put(n.a("002^bhUg"), ResHelper.forceCast(this.f1384e.get(n.a("002^bhUg")), 0));
        map.put(n.a("002GcgRh"), ResHelper.forceCast(this.f1384e.get(n.a("002GcgRh")), 0));
        map.put("ncr", Integer.valueOf(d() ? 1 : 0));
        long jCurrentTimeMillis = System.currentTimeMillis();
        HashMap<String, Object> map2 = new HashMap<>();
        map2.put(n.a("004gMca3hd"), "ECMT");
        map2.put(n.a("004FbaAbgb"), map);
        map2.put(n.a("008<ba2bgdgFbgbd-d"), Long.valueOf(jCurrentTimeMillis));
        d.a().a(jCurrentTimeMillis, map2);
    }

    public static k a() {
        return f1380b;
    }

    public synchronized boolean a(boolean z10) {
        return !b(z10);
    }

    private boolean a(String str) {
        try {
            if (TextUtils.isEmpty(str)) {
                return true;
            }
            char[] charArray = str.toCharArray();
            HashMap map = new HashMap();
            boolean zA = false;
            for (int i10 = 0; i10 < charArray.length; i10++) {
                char c10 = charArray[i10];
                if (c10 == '1') {
                    zA |= a(i10);
                } else if (c10 != '0') {
                    List arrayList = (List) map.get(Character.valueOf(c10));
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(Integer.valueOf(i10));
                    map.put(Character.valueOf(charArray[i10]), arrayList);
                }
            }
            Iterator it2 = map.entrySet().iterator();
            while (it2.hasNext()) {
                Iterator it3 = ((List) ((Map.Entry) it2.next()).getValue()).iterator();
                boolean zA2 = true;
                while (it3.hasNext()) {
                    zA2 &= a(((Integer) it3.next()).intValue());
                }
                zA |= zA2;
            }
            return zA;
        } catch (Throwable th) {
            FlyLog.getInstance().e(th);
            return true;
        }
    }

    private boolean b(String str) {
        String strD = C1293r.d();
        if (TextUtils.isEmpty(strD) || strD.length() < str.length()) {
            return false;
        }
        String[] strArrSplit = strD.split("");
        char[] charArray = str.toCharArray();
        ArrayList arrayList = new ArrayList();
        boolean zEquals = false;
        for (int i10 = 0; i10 < charArray.length; i10++) {
            char c10 = charArray[i10];
            if (c10 == '1') {
                zEquals |= TextUtils.equals(strArrSplit[i10], "1");
            } else if (c10 == '2') {
                arrayList.add(Integer.valueOf(i10));
            }
        }
        if (arrayList.size() <= 0) {
            return zEquals;
        }
        Iterator it2 = arrayList.iterator();
        boolean zEquals2 = true;
        while (it2.hasNext()) {
            zEquals2 &= TextUtils.equals(strArrSplit[((Integer) it2.next()).intValue()], "1");
        }
        return zEquals | zEquals2;
    }

    private boolean a(final int i10) {
        final boolean[] zArr = {true};
        DH.RequestBuilder requestBuilderRequester = DH.requester(FlySDK.getContext());
        if (i10 == 0) {
            requestBuilderRequester.checkUA();
        } else if (i10 == 1) {
            requestBuilderRequester.usbEnable();
        } else if (i10 == 2) {
            requestBuilderRequester.vpn();
        } else if (i10 == 3) {
            requestBuilderRequester.isMwpy();
        } else if (i10 == 4) {
            requestBuilderRequester.isRooted();
        } else if (i10 == 5) {
            requestBuilderRequester.cx();
        }
        requestBuilderRequester.request(new DH.DHResponder() { // from class: cn.fly.commons.k.1
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                int i11 = i10;
                if (i11 == 0) {
                    zArr[0] = dHResponse.checkUA();
                    k.this.f1384e.put(n.a("0024beZa"), Integer.valueOf(zArr[0] ? 1 : 0));
                    return;
                }
                if (i11 == 1) {
                    zArr[0] = dHResponse.usbEnable();
                    k.this.f1384e.put(n.a("002Vbeba"), Integer.valueOf(zArr[0] ? 1 : 0));
                    return;
                }
                if (i11 == 2) {
                    zArr[0] = dHResponse.vpn();
                    k.this.f1384e.put(n.a("0020bbPh"), Integer.valueOf(zArr[0] ? 1 : 0));
                    return;
                }
                if (i11 == 3) {
                    zArr[0] = dHResponse.isMwpy();
                    k.this.f1384e.put(n.a("002BdeKh"), Integer.valueOf(zArr[0] ? 1 : 0));
                } else if (i11 == 4) {
                    zArr[0] = dHResponse.isRooted();
                    k.this.f1384e.put(n.a("002<bh<g"), Integer.valueOf(zArr[0] ? 1 : 0));
                } else {
                    if (i11 != 5) {
                        return;
                    }
                    zArr[0] = dHResponse.cx();
                    k.this.f1384e.put(n.a("002Icg0h"), Integer.valueOf(zArr[0] ? 1 : 0));
                }
            }
        });
        return zArr[0];
    }

    public boolean a(HashMap<String, Object> map) {
        try {
            List<String> list = (List) ResHelper.forceCast(map.get("j"), null);
            if (list != null && list.size() > 0) {
                boolean zA = false;
                for (String str : list) {
                    if (str.contains(",")) {
                        boolean zA2 = true;
                        for (String str2 : str.split(",")) {
                            zA2 &= a(str2, map);
                        }
                        zA |= zA2;
                    } else {
                        zA |= a(str, map);
                    }
                }
                this.f1384e.put(n.a("006$ch<hQbfbh>dAdg"), Boolean.valueOf(zA ? false : true));
                return !zA;
            }
        } catch (Throwable th) {
            FlyLog.getInstance().e(th);
        }
        this.f1384e.put(n.a("006KchDh!bfbh9d*dg"), Boolean.TRUE);
        return true;
    }

    private boolean b(final ArrayList<Boolean> arrayList, final List<String> list) {
        DH.RequestBuilder requestBuilderRequester = DH.requester(FlySDK.getContext());
        if (list == null || list.size() == 0) {
            return false;
        }
        Iterator<String> it2 = list.iterator();
        while (it2.hasNext()) {
            requestBuilderRequester.isPackageInstalled(it2.next());
        }
        final boolean[] zArr = {false};
        requestBuilderRequester.request(new DH.DHResponder() { // from class: cn.fly.commons.k.4
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                for (int i10 = 0; i10 < list.size(); i10++) {
                    boolean zIsPackageInstalled = dHResponse.isPackageInstalled(i10);
                    arrayList.add(Boolean.valueOf(zIsPackageInstalled));
                    boolean[] zArr2 = zArr;
                    boolean z10 = zIsPackageInstalled | zArr2[0];
                    zArr2[0] = z10;
                    if (z10) {
                        return;
                    }
                }
            }
        });
        return zArr[0];
    }

    private boolean a(String str, HashMap<String, Object> map) {
        boolean z10;
        if (TextUtils.equals(str, "a")) {
            z10 = ((Integer) ResHelper.forceCast(map.get("a"), 0)).intValue() == 1 && e();
            this.f1385f.put("a", Boolean.valueOf(z10));
            return z10;
        }
        if (TextUtils.equals(str, "p")) {
            List<String> list = (List) ResHelper.forceCast(map.get("p"), null);
            ArrayList<Boolean> arrayList = new ArrayList<>();
            boolean zB = b(arrayList, list);
            this.f1385f.put("p", arrayList);
            return zB;
        }
        if (TextUtils.equals(str, "fp")) {
            List<String> list2 = (List) ResHelper.forceCast(map.get("fp"), null);
            ArrayList<Boolean> arrayList2 = new ArrayList<>();
            boolean zB2 = b(arrayList2, list2);
            this.f1385f.put("fp", arrayList2);
            return zB2;
        }
        if (TextUtils.equals(str, "s")) {
            boolean zA = a(new ArrayList<>(), (List<String>) ResHelper.forceCast(map.get("s"), null));
            this.f1385f.put("s", Boolean.valueOf(zA));
            return zA;
        }
        if (TextUtils.equals(str, "fs")) {
            boolean zA2 = a(new ArrayList<>(), (List<String>) ResHelper.forceCast(map.get("fs"), null));
            this.f1385f.put("fs", Boolean.valueOf(zA2));
            return zA2;
        }
        if (TextUtils.equals(str, com.kuaishou.weapon.p0.t.f74895t)) {
            z10 = ((Integer) ResHelper.forceCast(map.get(com.kuaishou.weapon.p0.t.f74895t), 0)).intValue() == 1 && cn.fly.tools.b.c.a(FlySDK.getContext()).d().aE();
            this.f1385f.put(com.kuaishou.weapon.p0.t.f74895t, Boolean.valueOf(z10));
            return z10;
        }
        if (TextUtils.equals(str, aw.f84339t)) {
            boolean zB3 = b((String) ResHelper.forceCast(map.get(aw.f84339t), ""));
            this.f1385f.put(aw.f84339t, Boolean.valueOf(zB3));
            return zB3;
        }
        if (!TextUtils.equals(str, "fda")) {
            return false;
        }
        boolean zA3 = s.a();
        this.f1385f.put("fda", Boolean.valueOf(zA3));
        return zA3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(Context context) {
        Locale locale = context.getResources().getConfiguration().locale;
        return locale.getLanguage().startsWith("zh") && TextUtils.equals(locale.getCountry(), "CN");
    }

    private boolean a(ArrayList<Boolean> arrayList, final List<String> list) {
        final LinkedBlockingQueue linkedBlockingQueue = new LinkedBlockingQueue();
        if (list != null && list.size() > 0) {
            DH.RequestBuilder requestBuilderRequester = DH.requester(FlySDK.getContext());
            for (int i10 = 0; i10 < list.size(); i10++) {
                requestBuilderRequester.queryIntentServices(new Intent(list.get(i10)), 0);
            }
            requestBuilderRequester.request(new DH.DHResponder() { // from class: cn.fly.commons.k.3
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    for (int i11 = 0; i11 < list.size(); i11++) {
                        List<ResolveInfo> listQueryIntentServices = dHResponse.queryIntentServices(i11);
                        if (listQueryIntentServices != null && listQueryIntentServices.size() > 0) {
                            linkedBlockingQueue.offer(Boolean.TRUE);
                        }
                    }
                    linkedBlockingQueue.offer(Boolean.FALSE);
                }
            });
        }
        try {
            Boolean bool = (Boolean) linkedBlockingQueue.poll(150L, TimeUnit.MILLISECONDS);
            return bool != null && bool.booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    public void a(HashMap<String, Object> map, HashMap<String, Object> map2, HashMap<String, Object> map3) {
        try {
            Object obj = this.f1384e.get(n.a("006d.bdbfbh_d!dg"));
            Boolean bool = Boolean.FALSE;
            boolean zBooleanValue = ((Boolean) ResHelper.forceCast(obj, bool)).booleanValue();
            boolean zBooleanValue2 = ((Boolean) ResHelper.forceCast(this.f1384e.get(n.a("0061ch*hZbfbhUd.dg")), bool)).booleanValue();
            HashMap map4 = new HashMap(4);
            map4.put(n.a("003PbhLd!dg"), Boolean.valueOf(zBooleanValue));
            map4.put(n.a("003Zbhbgba"), ResHelper.forceCast(map.get(n.a("003Zbhbgba")), null));
            if (!zBooleanValue && map2 != null) {
                map4.put(n.a("003Vdgbgba"), ResHelper.forceCast(map2.get(n.a("003Vdgbgba")), null));
            } else {
                map4.put(n.a("003Sdgbgba"), ResHelper.forceCast(map.get(n.a("003Sdgbgba")), null));
            }
            this.f1384e.put(n.a("006d=bdbfbh'd!dg"), HashonHelper.fromHashMap(map4));
            if (zBooleanValue) {
                HashMap map5 = new HashMap(4);
                map5.put(n.a("003Xbh6dPdg"), Boolean.valueOf(zBooleanValue2));
                map5.put(n.a("003'bhbgba"), ResHelper.forceCast(map.get(n.a("003'bhbgba")), null));
                if (!zBooleanValue2 && map3 != null) {
                    map5.put(n.a("003Adgbgba"), ResHelper.forceCast(map3.get(n.a("003Adgbgba")), null));
                } else {
                    map5.put(n.a("003(dgbgba"), ResHelper.forceCast(map.get(n.a("003(dgbgba")), null));
                }
                map5.putAll(this.f1385f);
                this.f1384e.put(n.a("006%ch8hYbfbhIdPdg"), HashonHelper.fromHashMap(map5));
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }
}
