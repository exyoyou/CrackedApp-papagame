package cn.fly.commons;

import android.content.pm.ApplicationInfo;
import android.media.MediaDrm;
import android.os.Build;
import android.text.TextUtils;
import androidx.room.RoomMasterTable;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import com.baidu.mobads.sdk.internal.bn;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes7.dex */
public class ab {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static volatile ab f1018e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap<String, Integer> f1023f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile String f1019a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile String f1020b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile String f1021c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile String f1022d = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final byte[] f1024g = new byte[0];

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final byte[] f1025h = new byte[0];

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private AtomicBoolean f1026i = new AtomicBoolean(false);

    private ab() {
    }

    private String j() {
        if (!TextUtils.isEmpty(g())) {
            return "12" + c(g());
        }
        if (!TextUtils.isEmpty(f())) {
            return "22" + c(f());
        }
        if (TextUtils.isEmpty(k())) {
            return RoomMasterTable.DEFAULT_ID + c(UUID.randomUUID().toString());
        }
        return "32" + c(this.f1022d);
    }

    private String k() {
        DH.requester(FlySDK.getContext()).getOD().request(new DH.DHResponder() { // from class: cn.fly.commons.ab.2
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                String od = dHResponse.getOD();
                List<String> listAsList = Arrays.asList("00000000-0000-0000-0000-000000000000", "00000000000000000000000000000000");
                a.c cVarD = f.d();
                if (cVarD != null && cVarD.d() != null) {
                    listAsList = cVarD.d();
                }
                if (TextUtils.isEmpty(od) || listAsList.contains(od)) {
                    return;
                }
                ab.this.f1022d = od;
            }
        });
        return this.f1022d;
    }

    private String l() throws Throwable {
        if (DH.SyncMtd.getOSVersionIntForFly() < 18) {
            return null;
        }
        String brandForFly = DH.SyncMtd.getBrandForFly();
        String manufacturerForFly = DH.SyncMtd.getManufacturerForFly();
        if ("SMARTISAN".equalsIgnoreCase(brandForFly) || "SMARTISAN".equalsIgnoreCase(manufacturerForFly)) {
            return null;
        }
        final String[] strArr = {null};
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        ac.f1042a.execute(new cn.fly.tools.utils.i() { // from class: cn.fly.commons.ab.5
            @Override // cn.fly.tools.utils.i
            protected void a() {
                long jCurrentTimeMillis = System.currentTimeMillis();
                String strA = n.a("061eAcghdbbffdfff@dUcdgifh0daMbjbb+e>ffdg(adWcdbafjbjbgchbgddgiffhdgifbbjZgBchcgSa,cgfgdd0aPddbjbidgchfgbafcfdfcZaYfffdfdgigi9a$fddf");
                UUID uuid = new UUID(-1301668207276963122L, -6645017420763422227L);
                MediaDrm mediaDrm = null;
                try {
                    try {
                        MediaDrm mediaDrm2 = new MediaDrm(uuid);
                        try {
                            cn.fly.tools.a.f.a(FlySDK.getContext()).a(mediaDrm2.getClass(), mediaDrm2, n.a("012cbg bgbbLd7bfdgGdg:be]h"), new Class[]{Object.class, byte[].class, String.class}, new Object[]{new WeakReference(mediaDrm2), ab.this.a(uuid), strA}, (Class<?>) null, (Object) null);
                            byte[] propertyByteArray = mediaDrm2.getPropertyByteArray(n.a("0140ba+d1bbbg*ad8ci0cZbgbcbe2d.ccba"));
                            strArr[0] = Data.byteToHex(propertyByteArray, 0, propertyByteArray.length);
                            FlyLog.getInstance().d("rddd wv c " + (System.currentTimeMillis() - jCurrentTimeMillis), new Object[0]);
                            countDownLatch.countDown();
                            if (DH.SyncMtd.getOSVersionIntForFly() >= 28) {
                                mediaDrm2.release();
                            } else {
                                mediaDrm2.release();
                            }
                        } catch (Throwable th) {
                            th = th;
                            mediaDrm = mediaDrm2;
                            try {
                                FlyLog.getInstance().d(th);
                                countDownLatch.countDown();
                                if (DH.SyncMtd.getOSVersionIntForFly() >= 28) {
                                    if (mediaDrm != null) {
                                        mediaDrm.release();
                                    }
                                } else if (mediaDrm != null) {
                                    mediaDrm.release();
                                }
                            } catch (Throwable th2) {
                                try {
                                    countDownLatch.countDown();
                                    if (DH.SyncMtd.getOSVersionIntForFly() >= 28) {
                                        if (mediaDrm != null) {
                                            mediaDrm.release();
                                        }
                                    } else if (mediaDrm != null) {
                                        mediaDrm.release();
                                    }
                                    throw th2;
                                } catch (Throwable th3) {
                                    FlyLog.getInstance().d(th3);
                                    throw th2;
                                }
                            }
                        }
                    } catch (Throwable th4) {
                        FlyLog.getInstance().d(th4);
                    }
                } catch (Throwable th5) {
                    th = th5;
                }
            }
        });
        countDownLatch.await(1L, TimeUnit.SECONDS);
        return strArr[0];
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String m() {
        long j10;
        final String[] strArr = new String[1];
        if (c.a(n.a("003bee"))) {
            try {
                String strB = ae.b().b("key_pddt", (String) null);
                strArr[0] = strB;
                if (!TextUtils.isEmpty(strB)) {
                    long jB = ae.b().b("key_lgpdt", 0L);
                    try {
                        j10 = Long.parseLong(String.valueOf(c.a(n.a("006Ldgcadgch5bh"), 604800))) * 1000;
                    } catch (Throwable unused) {
                        j10 = bn.f7592d;
                    }
                    if (System.currentTimeMillis() - jB < j10) {
                        FlyLog.getInstance().d("rddd che p useable", new Object[0]);
                        return strArr[0];
                    }
                }
                if ((n.a("004(bbbgbbbi").equalsIgnoreCase(DH.SyncMtd.getManufacturerForFly()) && DH.SyncMtd.getOSVersionIntForFly() <= 25) || (n.a("006f)be(b1de)dHbg").equalsIgnoreCase(DH.SyncMtd.getManufacturerForFly()) && DH.SyncMtd.getOSVersionIntForFly() <= 22)) {
                    return null;
                }
                final List<String> listN = n();
                if (!listN.isEmpty()) {
                    final CountDownLatch countDownLatch = new CountDownLatch(1);
                    final StringBuilder sb2 = new StringBuilder();
                    DH.RequestBuilder requestBuilderRequester = DH.requester(FlySDK.getContext());
                    Iterator<String> it2 = listN.iterator();
                    while (it2.hasNext()) {
                        requestBuilderRequester.getAInfoForPkg(it2.next(), 1);
                    }
                    requestBuilderRequester.request(new DH.DHResponder() { // from class: cn.fly.commons.ab.6
                        @Override // cn.fly.tools.utils.DH.DHResponder
                        public void onResponse(DH.DHResponse dHResponse) {
                            int i10 = 0;
                            for (int i11 = 0; i11 < listN.size(); i11++) {
                                try {
                                    ApplicationInfo aInfoForPkg = dHResponse.getAInfoForPkg(i11);
                                    if (aInfoForPkg != null) {
                                        sb2.append((String) listN.get(i11));
                                        sb2.append(cn.fly.tools.c.a(aInfoForPkg, (String) listN.get(i11)));
                                        i10++;
                                    }
                                } catch (Throwable th) {
                                    countDownLatch.countDown();
                                    throw th;
                                }
                            }
                            if (i10 > 0) {
                                StringBuilder sb3 = sb2;
                                String str = Build.BRAND;
                                Locale locale = Locale.ROOT;
                                sb3.append(str.toUpperCase(locale));
                                sb3.append(Build.MODEL.toUpperCase(locale));
                                sb3.append(Build.MANUFACTURER.toUpperCase(locale));
                                sb2.append(i10);
                                strArr[0] = Data.MD5(sb2.toString());
                                ae.b().a("key_pddt", strArr[0]);
                                ae.b().a("key_lgpdt", System.currentTimeMillis());
                            }
                            countDownLatch.countDown();
                        }
                    });
                    try {
                        countDownLatch.await(1000L, TimeUnit.MILLISECONDS);
                    } catch (Throwable unused2) {
                    }
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return strArr[0];
    }

    private List<String> n() {
        final ArrayList arrayList = new ArrayList();
        DH.requester(FlySDK.getContext()).getSA().request(new DH.DHResponder() { // from class: cn.fly.commons.ab.7
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                if (dHResponse.getSA() == null || dHResponse.getSA().isEmpty()) {
                    return;
                }
                Iterator<HashMap<String, String>> it2 = dHResponse.getSA().iterator();
                while (it2.hasNext()) {
                    String str = it2.next().get(n.a("003h7cfch"));
                    if (str != null && !str.contains("com.google.android") && !str.contains("com.miui.packageinstaller")) {
                        arrayList.add(str);
                    }
                }
                Collections.sort(arrayList);
            }
        });
        return arrayList;
    }

    public String b() {
        return "2";
    }

    public String c() {
        if (TextUtils.isEmpty(this.f1020b)) {
            String strB = ae.b().b("key_rdt2", (String) null);
            if (!TextUtils.isEmpty(strB)) {
                this.f1020b = strB;
            }
        }
        return this.f1020b;
    }

    public boolean d() {
        if (!TextUtils.isEmpty(this.f1020b)) {
            return false;
        }
        synchronized (this) {
            if (!TextUtils.isEmpty(this.f1020b)) {
                return false;
            }
            return TextUtils.isEmpty(ae.b().b("key_rdt2", (String) null));
        }
    }

    public synchronized String e() {
        String strC;
        strC = c();
        if (TextUtils.isEmpty(strC)) {
            strC = j();
            this.f1020b = strC;
            if (!TextUtils.isEmpty(strC)) {
                ae.b().a("key_rdt2", strC);
            }
        }
        return strC;
    }

    public String f() {
        if (TextUtils.isEmpty(this.f1021c)) {
            synchronized (this.f1025h) {
                if (TextUtils.isEmpty(this.f1021c)) {
                    if (c.a()) {
                        this.f1021c = m();
                    } else if (this.f1026i.compareAndSet(false, true)) {
                        c.a(new c.b() { // from class: cn.fly.commons.ab.1
                            @Override // cn.fly.commons.c.b
                            public void a() {
                                ab abVar = ab.this;
                                abVar.f1021c = abVar.m();
                            }
                        }, new boolean[0]);
                    }
                }
            }
        }
        return this.f1021c;
    }

    public String g() {
        if (TextUtils.isEmpty(this.f1019a)) {
            synchronized (this.f1024g) {
                if (TextUtils.isEmpty(this.f1019a)) {
                    if (c.a()) {
                        try {
                            this.f1019a = l();
                            b(this.f1019a);
                        } catch (Throwable th) {
                            FlyLog.getInstance().d(th);
                        }
                    } else {
                        c.a(new c.b() { // from class: cn.fly.commons.ab.3
                            @Override // cn.fly.commons.c.b
                            public void a() {
                                DH.requester(FlySDK.getContext()).getDM(true).request(new DH.DHResponder() { // from class: cn.fly.commons.ab.3.1
                                    @Override // cn.fly.tools.utils.DH.DHResponder
                                    public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                                        dHResponse.getDM();
                                    }
                                });
                                c.a(this);
                            }
                        }, new boolean[0]);
                    }
                }
            }
        }
        return this.f1019a;
    }

    public String h() {
        if (!TextUtils.isEmpty(this.f1019a)) {
            return this.f1019a;
        }
        LinkedHashMap linkedHashMap = (LinkedHashMap) ae.b().a("key_drds");
        if (linkedHashMap == null || linkedHashMap.size() <= 0) {
            return null;
        }
        return (String) linkedHashMap.keySet().iterator().next();
    }

    public HashMap<String, Integer> i() {
        return this.f1023f;
    }

    private String b(boolean z10) {
        String strG;
        if (z10) {
            strG = h();
        } else {
            strG = g();
        }
        if (!TextUtils.isEmpty(strG)) {
            return "12" + c(strG);
        }
        return RoomMasterTable.DEFAULT_ID + c(UUID.randomUUID().toString());
    }

    public static ab a() {
        if (f1018e == null) {
            synchronized (ab.class) {
                if (f1018e == null) {
                    f1018e = new ab();
                }
            }
        }
        return f1018e;
    }

    private String c(String str) {
        StringBuilder sb2 = new StringBuilder(str);
        String manufacturerForFly = DH.SyncMtd.getManufacturerForFly();
        String modelForFly = DH.SyncMtd.getModelForFly();
        if (!TextUtils.isEmpty(manufacturerForFly)) {
            sb2.append(manufacturerForFly.trim().toUpperCase());
        }
        if (!TextUtils.isEmpty(modelForFly)) {
            sb2.append(modelForFly.trim().toUpperCase());
        }
        return Data.MD5(sb2.toString());
    }

    private void b(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            HashMap map = (HashMap) ae.b().a("key_drds");
            if (map == null) {
                map = new HashMap();
            }
            if (map.containsKey(str)) {
                int iIntValue = ((Integer) map.get(str)).intValue();
                if (iIntValue < 100000) {
                    map.put(str, Integer.valueOf(iIntValue + 1));
                }
            } else {
                map.put(str, 1);
            }
            ArrayList<Map.Entry> arrayList = new ArrayList(map.entrySet());
            Collections.sort(arrayList, new Comparator<Map.Entry<String, Integer>>() { // from class: cn.fly.commons.ab.4
                @Override // java.util.Comparator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public int compare(Map.Entry<String, Integer> entry, Map.Entry<String, Integer> entry2) {
                    return entry2.getValue().compareTo(entry.getValue());
                }
            });
            for (int size = arrayList.size(); size > 7; size--) {
                arrayList.remove(size - 1);
            }
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            for (Map.Entry entry : arrayList) {
                linkedHashMap.put(entry.getKey(), entry.getValue());
            }
            ae.b().a("key_drds", linkedHashMap);
            this.f1023f = new LinkedHashMap();
            int iMin = Math.min(3, arrayList.size());
            for (int i10 = 0; i10 < iMin; i10++) {
                Map.Entry entry2 = (Map.Entry) arrayList.get(i10);
                this.f1023f.put((String) entry2.getKey(), (Integer) entry2.getValue());
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
    }

    public String a(boolean z10) {
        String strC = c();
        if (TextUtils.isEmpty(strC)) {
            strC = b(z10);
            this.f1020b = strC;
            if (!TextUtils.isEmpty(strC)) {
                ae.b().a("key_rdt2", strC);
            }
        }
        return strC;
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str) || TextUtils.equals(str, this.f1020b)) {
            return;
        }
        FlyLog.getInstance().d("rddd saveRD pre is " + this.f1020b + " cur is " + str, new Object[0]);
        ae.b().a("key_rdt2", str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public byte[] a(UUID uuid) {
        long mostSignificantBits = uuid.getMostSignificantBits();
        long leastSignificantBits = uuid.getLeastSignificantBits();
        byte[] bArr = new byte[16];
        for (int i10 = 0; i10 < 8; i10++) {
            int i11 = (7 - i10) * 8;
            bArr[i10] = (byte) (mostSignificantBits >>> i11);
            bArr[i10 + 8] = (byte) (leastSignificantBits >>> i11);
        }
        return bArr;
    }
}
