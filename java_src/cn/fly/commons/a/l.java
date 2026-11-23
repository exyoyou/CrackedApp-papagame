package cn.fly.commons.a;

import android.content.pm.ApplicationInfo;
import android.text.TextUtils;
import android.util.Base64;
import cn.fly.FlySDK;
import cn.fly.commons.ae;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.HashonHelper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes7.dex */
public class l extends c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private long f989b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ArrayList<HashMap<String, String>> f990c;

    public l() {
        super(cn.fly.commons.m.a("002lf"), 0L, cn.fly.commons.m.a("004lfKhkfl"), 300L, c.a(cn.fly.commons.m.a("002lf"), (Long) 0L));
        this.f989b = 0L;
        this.f990c = null;
        this.f989b = ae.b().b(ae.f1062b, -1L);
    }

    private boolean b(final String str) {
        final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
        DH.requester(FlySDK.getContext()).getMpfof(true, str, 0).request(new DH.DHResponder() { // from class: cn.fly.commons.a.l.2
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                boolean z10 = false;
                Object mpfof = dHResponse.getMpfof(new int[0]);
                if (mpfof == null) {
                    atomicBoolean.set(false);
                    return;
                }
                ApplicationInfo applicationInfoA = cn.fly.tools.c.a(mpfof, str);
                if (applicationInfoA != null) {
                    int i10 = applicationInfoA.flags;
                    boolean z11 = (i10 & 1) == 0 && (i10 & 128) == 0;
                    boolean z12 = (i10 & 2097152) == 0;
                    AtomicBoolean atomicBoolean2 = atomicBoolean;
                    if (z11 && z12) {
                        z10 = true;
                    }
                    atomicBoolean2.set(z10);
                }
            }
        });
        return atomicBoolean.get();
    }

    private byte[] c(ArrayList<HashMap<String, String>> arrayList) {
        new HashonHelper();
        String strFromObject = HashonHelper.fromObject(arrayList);
        try {
            return Data.AES128Encode(o(), strFromObject);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return strFromObject.getBytes();
        }
    }

    private ArrayList<HashMap<String, String>> n() {
        ArrayList<HashMap<String, String>> arrayListP = p();
        if (arrayListP == null) {
            arrayListP = new ArrayList<>();
        }
        if (arrayListP.isEmpty()) {
            ae.b().a("key_rcdat", System.currentTimeMillis());
        }
        ArrayList<HashMap<String, String>> arrayList = this.f990c;
        if (arrayList == null || arrayList.isEmpty() || cn.fly.commons.c.f1102a) {
            cn.fly.commons.c.f1102a = false;
            DH.requester(FlySDK.getContext()).getIAForce(false, false).request(new DH.DHResponder() { // from class: cn.fly.commons.a.l.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                    l.this.f990c = dHResponse.getIAForce(new int[0]);
                }
            });
        }
        ArrayList<HashMap<String, String>> arrayList2 = this.f990c;
        if (arrayList2 != null) {
            for (int i10 = 0; i10 < arrayList2.size(); i10++) {
                HashMap<String, String> map = arrayList2.get(i10);
                String str = map != null ? map.get(cn.fly.commons.m.a("003l.gjgl")) : null;
                if (!TextUtils.isEmpty(str) && b(str)) {
                    HashMap<String, String> mapB = b(arrayListP, str);
                    mapB.put(cn.fly.commons.m.a("003lXgjgl"), str);
                    mapB.put(cn.fly.commons.m.a("004gf5fh0h"), map.get(cn.fly.commons.m.a("004gf5fh0h")));
                    mapB.put(cn.fly.commons.m.a("007Tff h0flhkfkfm6g"), map.get(cn.fly.commons.m.a("007Tff h0flhkfkfm6g")));
                    int i11 = mapB.get(cn.fly.commons.m.a("008Hflfi3gk^fkfh$h^hk")) == null ? 0 : Integer.parseInt(String.valueOf(mapB.get(cn.fly.commons.m.a("008Hflfi3gk^fkfh$h^hk"))));
                    mapB.put(cn.fly.commons.m.a("008Zflfi'gk4fkfhFh0hk"), (((long) i11) + b()) + "");
                    if (!a(arrayListP, str)) {
                        arrayListP.add(mapB);
                    }
                }
            }
        }
        return arrayListP;
    }

    private String o() {
        String model = DH.SyncMtd.getModel();
        return TextUtils.isEmpty(model) ? "sdfntdbdxjdsgsxv" : model;
    }

    private ArrayList<HashMap<String, String>> p() {
        String strB = ae.b().b("key_pamtb", (String) null);
        return a(TextUtils.isEmpty(strB) ? null : Base64.decode(strB, 2));
    }

    @Override // cn.fly.commons.a.c
    protected void a() {
        ArrayList<HashMap<String, String>> arrayListN = n();
        b(arrayListN);
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (jCurrentTimeMillis - this.f989b >= ((Long) a(cn.fly.commons.m.a("005lfAgl2fl"), 3600L)).longValue() * 1000) {
            a(arrayListN);
        }
    }

    private HashMap<String, String> b(ArrayList<HashMap<String, String>> arrayList, String str) {
        for (HashMap<String, String> map : arrayList) {
            if (str.equals(map.get(cn.fly.commons.m.a("003l9gjgl")))) {
                return map;
            }
        }
        return new HashMap<>();
    }

    private ArrayList<HashMap<String, String>> c(String str) {
        try {
            ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
            if (TextUtils.isEmpty(str)) {
                return arrayList;
            }
            JSONArray jSONArray = new JSONArray(str);
            for (int i10 = 0; i10 < jSONArray.length(); i10++) {
                arrayList.add(HashonHelper.fromJson(jSONArray.getJSONObject(i10).toString()));
            }
            return arrayList;
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return new ArrayList<>();
        }
    }

    private void b(ArrayList<HashMap<String, String>> arrayList) {
        byte[] bArrC = c(arrayList);
        if (bArrC != null) {
            ae.b().a("key_pamtb", Base64.encodeToString(bArrC, 2));
        }
    }

    private boolean a(ArrayList<HashMap<String, String>> arrayList, String str) {
        Iterator<HashMap<String, String>> it2 = arrayList.iterator();
        while (it2.hasNext()) {
            if (str.equals(it2.next().get(cn.fly.commons.m.a("003l8gjgl")))) {
                return true;
            }
        }
        return false;
    }

    private void a(ArrayList<HashMap<String, String>> arrayList) {
        if (arrayList == null || arrayList.isEmpty()) {
            return;
        }
        try {
            HashMap<String, Object> map = new HashMap<>();
            map.put(cn.fly.commons.m.a("008Ifl@heZfmflfe0fk"), Long.valueOf(ae.b().b("key_rcdat", -1L)));
            a(0L, "PRTMT", arrayList, map, false);
        } catch (Throwable unused) {
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        ae.b().a(ae.f1062b, jCurrentTimeMillis);
        ae.b().b("key_pamtb");
        this.f989b = jCurrentTimeMillis;
    }

    private ArrayList<HashMap<String, String>> a(byte[] bArr) {
        if (bArr != null) {
            try {
                if (bArr.length != 0) {
                    return c(Data.AES128PaddingDecode(o().getBytes("UTF-8"), bArr));
                }
            } catch (Throwable th) {
                FlyLog.getInstance().w(th);
                return new ArrayList<>();
            }
        }
        return new ArrayList<>();
    }
}
