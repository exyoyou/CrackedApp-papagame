package cn.fly.commons;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.text.TextUtils;
import android.util.Base64;
import android.util.SparseArray;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.MDP;
import cn.fly.tools.network.NetCommunicator;
import cn.fly.tools.network.NetworkHelper;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.FileLocker;
import cn.fly.tools.utils.FileUtils;
import cn.fly.tools.utils.HashonHelper;
import cn.fly.tools.utils.ResHelper;
import cn.fly.tools.utils.SQLiteHelper;
import com.haima.hmcp.ConstantsInternal;
import com.join.mgps.activity.QuarkPromptActivity_;
import com.windmill.sdk.WMConstants;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;

/* JADX INFO: loaded from: classes7.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static d f1298a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile SQLiteHelper.SingleTableDB f1299b;

    private static class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static final a[] f1312a = new a[3];

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private long f1313b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private HashMap<String, Object> f1314c;

        private a(long j10, HashMap<String, Object> map) {
            this.f1313b = j10;
            this.f1314c = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                v.a(v.a(v.f1428b), new u() { // from class: cn.fly.commons.d.a.1
                    @Override // cn.fly.commons.u
                    public boolean a(FileLocker fileLocker) {
                        DH.requester(FlySDK.getContext()).getDetailNetworkTypeForStatic().request(new DH.DHResponder() { // from class: cn.fly.commons.d.a.1.1
                            @Override // cn.fly.tools.utils.DH.DHResponder
                            public void onResponse(DH.DHResponse dHResponse) throws Throwable {
                                b bVarB;
                                ContentValues contentValues = new ContentValues();
                                contentValues.put(cn.fly.commons.a.m.a("004jUejeg]g"), String.valueOf(a.this.f1313b));
                                if (a.this.f1314c != null) {
                                    a.this.f1314c.put(cn.fly.commons.a.m.a("006ekk;fiHg!fd"), q.a());
                                    a.this.f1314c.put(cn.fly.commons.a.m.a("006ekkkIfifk"), DH.SyncMtd.getPackageName());
                                    a.this.f1314c.put(cn.fly.commons.a.m.a("006ekk;eeIg+ek"), DH.SyncMtd.getAppVersionName());
                                    long jLongValue = ((Long) c.a(cn.fly.commons.a.m.a("010EgjSjZekDejg fkfdffed"), 0L)).longValue();
                                    if (jLongValue != 0) {
                                        a.this.f1314c.put(cn.fly.commons.a.m.a("010Xgj^j<ek2ejg$fkfdffed"), Long.valueOf(jLongValue));
                                    }
                                }
                                contentValues.put(cn.fly.commons.a.m.a("004.edXeje"), Base64.encodeToString(Data.AES128Encode(Data.rawMD5(DH.SyncMtd.getManufacturerForFly()), HashonHelper.fromHashMap(a.this.f1314c).getBytes("utf-8")), 2));
                                SQLiteHelper.insert(d.f1299b, contentValues);
                                long jLongValue2 = ((Long) c.a(cn.fly.commons.a.m.a("004?ed4g^ehYk"), 2L)).longValue();
                                if (cn.fly.commons.a.m.a("004f$el5fg").equals(dHResponse.getDetailNetworkTypeForStatic())) {
                                    jLongValue2 = 120;
                                }
                                if (!c.d() || (bVarB = b.b()) == null) {
                                    return;
                                }
                                if (jLongValue2 <= 0) {
                                    bVarB.run();
                                } else {
                                    if (cn.fly.commons.a.m.a().a(jLongValue2, bVarB)) {
                                        return;
                                    }
                                    bVarB.c();
                                }
                            }
                        });
                        return false;
                    }
                });
            } catch (Throwable th) {
                try {
                    FlyLog.getInstance().d(th);
                } finally {
                    a();
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static a b(long j10, HashMap<String, Object> map) {
            a[] aVarArr = f1312a;
            synchronized (aVarArr) {
                for (int i10 = 0; i10 < 3; i10++) {
                    a aVar = aVarArr[i10];
                    if (aVar != null) {
                        aVar.f1313b = j10;
                        HashMap<String, Object> map2 = aVar.f1314c;
                        if (map2 != null) {
                            map2.clear();
                        }
                        aVar.f1314c = map;
                        aVarArr[i10] = null;
                        return aVar;
                    }
                }
                return new a(j10, map);
            }
        }

        private void a() {
            try {
                a[] aVarArr = f1312a;
                synchronized (aVarArr) {
                    for (int i10 = 0; i10 < 3; i10++) {
                        if (aVarArr[i10] == null) {
                            this.f1313b = 0L;
                            HashMap<String, Object> map = this.f1314c;
                            if (map != null) {
                                map.clear();
                            }
                            this.f1314c = null;
                            aVarArr[i10] = this;
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    public static class b implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final b[] f1317b = {new b()};

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f1318a = false;

        /* JADX INFO: Access modifiers changed from: private */
        public static b b() {
            b[] bVarArr = f1317b;
            synchronized (bVarArr) {
                b bVar = bVarArr[0];
                if (bVar == null) {
                    return null;
                }
                bVarArr[0] = null;
                if (bVar.f1318a) {
                    bVar.f1318a = false;
                }
                return bVar;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void c() {
            b[] bVarArr = f1317b;
            synchronized (bVarArr) {
                if (bVarArr[0] == null) {
                    bVarArr[0] = this;
                }
            }
            this.f1318a = false;
        }

        @Override // java.lang.Runnable
        public void run() {
            v.a(v.a(v.f1428b), new u() { // from class: cn.fly.commons.d.b.1
                @Override // cn.fly.commons.u
                public boolean a(FileLocker fileLocker) {
                    DH.requester(FlySDK.getContext()).getDeviceKey().getDetailNetworkTypeForStatic().getDataNtTypeStrict().request(new DH.DHResponder() { // from class: cn.fly.commons.d.b.1.1
                        @Override // cn.fly.tools.utils.DH.DHResponder
                        public void onResponse(DH.DHResponse dHResponse) {
                            try {
                                String[][] strArr = new String[50][];
                                int iA = b.this.a(strArr);
                                while (iA > 0) {
                                    SparseArray sparseArrayA = b.this.a(strArr, iA, dHResponse);
                                    if (sparseArrayA.size() == 0 && b.this.f1318a) {
                                        cn.fly.commons.a.m.a().d();
                                        break;
                                    }
                                    if (sparseArrayA.size() > 0) {
                                        b.this.a((SparseArray<String>) sparseArrayA);
                                    }
                                    if (iA < 50) {
                                        break;
                                    } else {
                                        iA = b.this.a(strArr);
                                    }
                                }
                            } finally {
                                b.this.c();
                            }
                        }
                    });
                    return false;
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a(String[][] strArr) {
            long j10;
            int i10 = 0;
            Cursor cursorQuery = null;
            try {
                cursorQuery = SQLiteHelper.query(d.f1299b, new String[]{cn.fly.commons.a.m.a("004j3ejeg:g"), cn.fly.commons.a.m.a("004Eed%eje")}, null, null, "time desc");
                if (cursorQuery == null) {
                    if (cursorQuery != null) {
                        try {
                            cursorQuery.close();
                        } catch (Throwable unused) {
                        }
                    }
                    return 0;
                }
                if (!cursorQuery.moveToFirst()) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable unused2) {
                    }
                    return 0;
                }
                long jCurrentTimeMillis = System.currentTimeMillis();
                int i11 = 0;
                do {
                    try {
                        String[] strArr2 = {cursorQuery.getString(0), cursorQuery.getString(1)};
                        try {
                            j10 = Long.parseLong(strArr2[0]);
                        } catch (Throwable unused3) {
                            j10 = -1;
                        }
                        if (j10 <= jCurrentTimeMillis) {
                            strArr[i11] = strArr2;
                            i11++;
                        }
                        if (i11 >= strArr.length) {
                            break;
                        }
                    } catch (Throwable th) {
                        th = th;
                        i10 = i11;
                    }
                } while (cursorQuery.moveToNext());
                try {
                    cursorQuery.close();
                    return i11;
                } catch (Throwable unused4) {
                    return i11;
                }
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                FlyLog.getInstance().w(th);
                return i10;
            } finally {
                if (cursorQuery != null) {
                    try {
                        cursorQuery.close();
                    } catch (Throwable unused5) {
                    }
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int a(SparseArray<String> sparseArray) {
            try {
                StringBuilder sb2 = new StringBuilder();
                int size = sparseArray.size();
                for (int i10 = 0; i10 < size; i10++) {
                    if (sb2.length() > 0) {
                        sb2.append(", ");
                    }
                    sb2.append('\'');
                    sb2.append(sparseArray.valueAt(i10));
                    sb2.append('\'');
                }
                try {
                    return SQLiteHelper.delete(d.f1299b, "time in (" + sb2.toString() + ")", null);
                } catch (Throwable th) {
                    FlyLog.getInstance().w(th);
                    return SQLiteHelper.delete(d.f1299b, "time in (" + sb2.toString() + ")", null);
                }
            } catch (Throwable th2) {
                FlyLog.getInstance().w(th2);
                return 0;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public SparseArray<String> a(String[][] strArr, int i10, DH.DHResponse dHResponse) {
            SparseArray<String> sparseArray = new SparseArray<>();
            try {
                HashMap<String, Object> map = new HashMap<>();
                map.put(cn.fly.commons.a.m.a("004khej"), Integer.valueOf(DH.SyncMtd.getPlatformCode()));
                map.put(cn.fly.commons.a.m.a("006 ed[gGeeej'dg"), dHResponse.getDeviceKey());
                map.put(cn.fly.commons.a.m.a("005CegeledZgh"), DH.SyncMtd.getModelForFly());
                map.put(cn.fly.commons.a.m.a("004Uedehejed"), f.a((FlyProduct) null));
                map.put(cn.fly.commons.a.m.a("011fgjCghelekfi jOfd+kg"), dHResponse.getDetailNetworkTypeForStatic());
                map.put(cn.fly.commons.a.m.a("015GedGejeAfhWgj4ghelekfigdfdVkg"), Integer.valueOf(dHResponse.getDataNtTypeStrict()));
                ArrayList arrayList = new ArrayList();
                byte[] bArrRawMD5 = Data.rawMD5(DH.SyncMtd.getManufacturerForFly());
                for (int i11 = 0; i11 < i10; i11++) {
                    String[] strArr2 = strArr[i11];
                    try {
                        HashMap mapFromJson = HashonHelper.fromJson(new String(Data.AES128Decode(bArrRawMD5, Base64.decode(strArr2[1], 2)), "utf-8").trim());
                        sparseArray.put(i11, strArr2[0]);
                        String str = (String) mapFromJson.get(cn.fly.commons.a.m.a("004j-fd(kg"));
                        if (TextUtils.equals(str, "ALSAMT") || TextUtils.equals(str, "LCMT") || TextUtils.equals(str, "O_LCMT") || TextUtils.equals(str, "WIMT") || TextUtils.equals(str, "WLMT") || TextUtils.equals(str, "BSIOMT")) {
                            cn.fly.commons.b.a().a(str, mapFromJson);
                        }
                        arrayList.add(mapFromJson);
                    } catch (Throwable th) {
                        FlyLog.getInstance().w(th);
                    }
                }
                if (arrayList.isEmpty()) {
                    return new SparseArray<>();
                }
                map.put(cn.fly.commons.a.m.a("005Eed3eje6gj"), arrayList);
                map.put(cn.fly.commons.a.m.a("005jHelfiRgf"), af.a().b());
                HashMap<String, String> map2 = new HashMap<>();
                map2.put(cn.fly.commons.a.m.a("013Pflgj5g=ekilffed*gfj5ejRj7fd"), ad.e());
                map2.put(cn.fly.commons.a.m.a("004Yegelejed"), cn.fly.tools.b.c.a(FlySDK.getContext()).d().ap());
                NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                networkTimeOut.readTimout = 30000;
                networkTimeOut.connectionTimeout = 30000;
                if (!ConstantsInternal.TAG_TO_VIRTUAL_GAME_PAD_SDK_SUCCESS.equals(String.valueOf(HashonHelper.fromJson((String) new NetCommunicator(1024, "ceeef5035212dfe7c6a0acdc0ef35ce5b118aab916477037d7381f85c6b6176fcf57b1d1c3296af0bb1c483fe5e1eb0ce9eb2953b44e494ca60777a1b033cc07", "191737288d17e660c4b61440d5d14228a0bf9854499f9d68d8274db55d6d954489371ecf314f26bec236e58fac7fffa9b27bcf923e1229c4080d49f7758739e5bd6014383ed2a75ce1be9b0ab22f283c5c5e11216c5658ba444212b6270d629f2d615b8dfdec8545fb7d4f935b0cc10b6948ab4fc1cb1dd496a8f94b51e888dd", networkTimeOut).requestWithoutEncode(false, map2, map, j.a().a("gclg") + "/v6/gcl", false)).get(cn.fly.commons.a.m.a("006:gjNjejTehgj"))))) {
                    sparseArray.clear();
                }
                return sparseArray;
            } catch (Throwable th2) {
                FlyLog.getInstance().w(th2);
            }
        }
    }

    private d() {
        try {
            Context context = FlySDK.getContext();
            String str = n.f1405a;
            File dataCacheFile = ResHelper.getDataCacheFile(context, str, true);
            if (dataCacheFile.exists() && dataCacheFile.length() > 209715200) {
                dataCacheFile.delete();
                dataCacheFile = ResHelper.getDataCacheFile(FlySDK.getContext(), str, true);
            }
            f1299b = SQLiteHelper.getDatabase(dataCacheFile.getAbsolutePath(), cn.fly.commons.a.m.a("008.gm7eje3glQgek") + "_1");
            f1299b.addField(cn.fly.commons.a.m.a("004j-ejegSg"), cn.fly.commons.a.m.a("004jg,fj!j"), true);
            f1299b.addField(cn.fly.commons.a.m.a("004Ued0eje"), cn.fly.commons.a.m.a("004jg@fj!j"), true);
            b bVarB = b.b();
            if (bVarB != null) {
                cn.fly.commons.a.m.a().a(0L, 180, bVarB);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
        }
    }

    private static File b(Object... objArr) throws Throwable {
        int i10;
        InputStream fileInputStream;
        File file;
        FileOutputStream fileOutputStream;
        i iVarA;
        String str = (String) objArr[0];
        String str2 = (String) objArr[1];
        String str3 = (String) objArr[4];
        String str4 = (String) objArr[5];
        InputStream inputStream = null;
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return null;
        }
        try {
            File file2 = new File(FlySDK.getContext().getFilesDir(), cn.fly.commons.a.m.a("003_gj+dd"));
            byte[] bArr = (byte[]) objArr[2];
            try {
                i10 = Integer.parseInt(String.valueOf(objArr[3]));
            } catch (Throwable unused) {
                i10 = 0;
            }
            if (bArr == null || i10 <= 0 || bArr.length < i10 || !str.equals(Data.MD5(bArr, 0, i10))) {
                File file3 = new File(file2, cn.fly.commons.a.m.a("008d6el9fDfgemgjUdd"));
                if (file3.exists() && str.equals(Data.MD5(file3))) {
                    fileInputStream = new FileInputStream(file3);
                } else {
                    i.a().a(20);
                    file3.delete();
                    fileInputStream = null;
                }
            } else {
                fileInputStream = new ByteArrayInputStream(bArr, 0, i10);
            }
            if (fileInputStream != null) {
                try {
                    file = new File(file2, String.valueOf(System.currentTimeMillis()));
                    if (!file.exists()) {
                        file.mkdirs();
                    }
                    File file4 = new File(file, file.getName() + cn.fly.commons.a.m.a("004Wemheej2k"));
                    try {
                        fileOutputStream = new FileOutputStream(file4);
                        try {
                            Data.AES128Decode(str2, fileInputStream, fileOutputStream);
                            C1293r.a(fileInputStream, fileOutputStream);
                            try {
                                if (k.a().b()) {
                                    i.a().a(14);
                                    cn.fly.commons.a.c.a(str, file4, str3, str4);
                                } else {
                                    i.a().a(19);
                                }
                                try {
                                    ResHelper.deleteFileAndFolder(file);
                                } catch (Throwable th) {
                                    th = th;
                                    iVarA = i.a();
                                    iVarA.a(4, th);
                                }
                            } catch (Throwable th2) {
                                try {
                                    i.a().a(6, th2);
                                    try {
                                        ResHelper.deleteFileAndFolder(file);
                                    } catch (Throwable th3) {
                                        th = th3;
                                        iVarA = i.a();
                                        iVarA.a(4, th);
                                    }
                                } catch (Throwable th4) {
                                    try {
                                        ResHelper.deleteFileAndFolder(file);
                                    } catch (Throwable th5) {
                                        i.a().a(4, th5);
                                    }
                                    throw th4;
                                }
                            }
                        } catch (Throwable th6) {
                            th = th6;
                            C1293r.a(fileInputStream, fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th7) {
                        th = th7;
                        fileOutputStream = null;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    inputStream = fileInputStream;
                    C1293r.a(inputStream);
                    throw th;
                }
            } else {
                file = null;
                inputStream = fileInputStream;
            }
            C1293r.a(inputStream);
            return file;
        } catch (Throwable th9) {
            th = th9;
            C1293r.a(inputStream);
            throw th;
        }
    }

    public static synchronized d a() {
        if (f1298a == null) {
            f1298a = new d();
        }
        return f1298a;
    }

    public void a(long j10, HashMap<String, Object> map) {
        boolean zB = c.b();
        FlyLog.getInstance().d("DH PD: " + map.get(cn.fly.commons.a.m.a("004j^fd9kg")) + ", to: " + zB, new Object[0]);
        if (zB) {
            ac.f1043b.execute(a.b(j10, map));
        }
    }

    public static void a(Object... objArr) {
        try {
            try {
                i.a().a(13);
                ResHelper.deleteFileAndFolder(b(objArr));
            } catch (Throwable th) {
                try {
                    i.a().a(5, th);
                    ResHelper.deleteFileAndFolder(null);
                } catch (Throwable th2) {
                    try {
                        ResHelper.deleteFileAndFolder(null);
                    } catch (Throwable th3) {
                        i.a().a(4, th3);
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            i.a().a(4, th4);
        }
    }

    public static void a(final ArrayList<HashMap<String, Object>> arrayList, final cn.fly.tools.utils.d<Void> dVar) throws Throwable {
        if (arrayList != null && !arrayList.isEmpty()) {
            DH.requester(FlySDK.getContext()).getDeviceKey().getMIUIVersionForFly().getAdvertisingID().request(new DH.DHResponder() { // from class: cn.fly.commons.d.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    try {
                        File file = new File(FlySDK.getContext().getFilesDir(), cn.fly.commons.a.m.a("0038gjggCh"));
                        if (!file.exists()) {
                            file.mkdirs();
                        }
                        final ArrayList arrayList2 = new ArrayList();
                        for (HashMap map : arrayList) {
                            try {
                                Boolean bool = (Boolean) map.get(cn.fly.commons.a.m.a("002e_gj"));
                                boolean zBooleanValue = bool != null ? bool.booleanValue() : false;
                                String str = (String) map.get(cn.fly.commons.a.m.a("002,fg%h"));
                                String str2 = (String) map.get(com.kuaishou.weapon.p0.t.f74888m);
                                String str3 = (String) map.get(QuarkPromptActivity_.ARGS_EXTRA);
                                Object obj = map.get(cn.fly.commons.a.m.a("0023ejed"));
                                if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str)) {
                                    String strA = f.a((FlyProduct) null);
                                    HashMap map2 = new HashMap();
                                    map2.put(cn.fly.commons.a.m.a("004Kedehejed"), strA);
                                    map2.put(cn.fly.commons.a.m.a("005jKelfi_gf"), af.a().b());
                                    map2.put(cn.fly.commons.a.m.a("0041egelejed"), cn.fly.tools.b.c.a(FlySDK.getContext()).d().ao());
                                    map2.put(cn.fly.commons.a.m.a("010Qgjedfihl-gEekgjejelLf"), Integer.valueOf(FlySDK.SDK_VERSION_CODE));
                                    map2.put(cn.fly.commons.a.m.a("006ekk;fiIg3fd"), q.a());
                                    map2.put(cn.fly.commons.a.m.a("009ekkXfm2gd>ekDgj"), FlySDK.getAppSecret());
                                    map2.put(cn.fly.commons.a.m.a("006BedelegZe9ejPf"), FlySDK.getDmn().getDomain());
                                    map2.put(cn.fly.commons.a.m.a("0104fgelek9dgFgl jjk$gj"), Boolean.valueOf(FlySDK.checkForceHttps()));
                                    map2.put(cn.fly.commons.a.m.a("009Ffgelek)dgWff1k!eeii"), Boolean.valueOf(FlySDK.checkV6()));
                                    map2.put(cn.fly.commons.a.m.a("004gdg7fj"), Long.valueOf(((Long) c.a(cn.fly.commons.a.m.a("004gdg0fj"), 5L)).longValue()));
                                    map2.put(cn.fly.commons.a.m.a("002dFed"), (String) c.a(cn.fly.commons.a.m.a("002dNed"), cn.fly.commons.a.m.a("0066ififigigigig")));
                                    map2.put("usridt", ad.g());
                                    map2.put(cn.fly.commons.a.m.a("002;ejed"), obj);
                                    if (!TextUtils.isEmpty(str3)) {
                                        map2.put(QuarkPromptActivity_.ARGS_EXTRA, HashonHelper.fromJson(str3));
                                    }
                                    map2.put(cn.fly.commons.a.m.a("008Aed6g+eeejQdg5ffed"), dHResponse.getDeviceKey());
                                    map2.put("imei", null);
                                    map2.put("imsi", null);
                                    map2.put("sno", null);
                                    map2.put("ssno", null);
                                    map2.put("miui", dHResponse.getMIUIVersionForFly());
                                    map2.put(cn.fly.commons.a.m.a("005Degeled[gh"), DH.SyncMtd.getModelForFly());
                                    map2.put(cn.fly.commons.a.m.a("007]fg!edj0elekfd"), DH.SyncMtd.getManufacturerForFly());
                                    map2.put(cn.fly.commons.a.m.a("005;ggekYefSed"), DH.SyncMtd.getBrandForFly());
                                    map2.put(cn.fly.commons.a.m.a("005eZedgjejed"), dHResponse.getAdvertisingID());
                                    map2.put(cn.fly.commons.a.m.a("006ekkWee0g[ek"), DH.SyncMtd.getAppVersionName());
                                    map2.put("appVerCode", Integer.valueOf(DH.SyncMtd.getAppVersion()));
                                    map2.put(cn.fly.commons.a.m.a("011kedHfiXe)fkQg@fhAeNeg3g"), DH.SyncMtd.getPackageName());
                                    map2.put(cn.fly.commons.a.m.a("005]gggjgjejed"), null);
                                    map2.put("osint", Integer.valueOf(DH.SyncMtd.getOSVersionIntForFly()));
                                    map2.put("osname", DH.SyncMtd.getOSVersionNameForFly());
                                    map2.put("mdpName", MDP.class.getName());
                                    String strFromHashMap = HashonHelper.fromHashMap(map2);
                                    String strCheckHttpRequestUrl = NetCommunicator.checkHttpRequestUrl(str);
                                    if (!TextUtils.isEmpty(str2)) {
                                        File file2 = new File(file, str2);
                                        if (zBooleanValue) {
                                            arrayList2.add(file2.getAbsolutePath());
                                        }
                                        d.b(String.valueOf(obj), file2, zBooleanValue, strCheckHttpRequestUrl, str2, strFromHashMap);
                                    }
                                }
                            } catch (Throwable th) {
                                h.a().a(2, 50, th, ResHelper.forceCast(map.get(cn.fly.commons.a.m.a("002Cejed")), -1) + "");
                            }
                        }
                        FileUtils.deleteFilesInDirWithFilter(file, new FileFilter() { // from class: cn.fly.commons.d.1.1
                            @Override // java.io.FileFilter
                            public boolean accept(File file3) {
                                return !arrayList2.contains(file3.getAbsolutePath());
                            }
                        });
                    } catch (Throwable th2) {
                        try {
                            h.a().a(2, -1, th2, WMConstants.TIMER_STAGE_NONE);
                            FlyLog.getInstance().d(th2);
                        } finally {
                            dVar.a(null);
                        }
                    }
                }
            });
        } else {
            dVar.a(null);
        }
    }

    public static String a(int[] iArr) {
        StringBuilder sb2 = new StringBuilder();
        for (int i10 = 0; i10 < iArr.length; i10++) {
            String strF = aa.f();
            if (iArr[i10] < strF.length()) {
                sb2.append((char) (strF.charAt(iArr[i10]) - 2));
            }
        }
        return sb2.toString();
    }

    public static void a(HashMap<String, String> map) {
        boolean zEquals;
        FileFilter fileFilter;
        try {
            File file = new File(FlySDK.getContext().getFilesDir(), "sblf");
            if (!file.exists()) {
                file.mkdirs();
            }
            String str = map.get(cn.fly.commons.a.m.a("002UfgRh"));
            String str2 = map.get(com.kuaishou.weapon.p0.t.f74888m);
            if (TextUtils.isEmpty(str2) || TextUtils.isEmpty(str)) {
                return;
            }
            final ArrayList arrayList = new ArrayList();
            File file2 = new File(file, str2);
            arrayList.add(file2.getAbsolutePath());
            if (file2.exists() && str2.equals(Data.MD5(file2))) {
                return;
            }
            String strCheckHttpRequestUrl = NetCommunicator.checkHttpRequestUrl(str);
            FileOutputStream fileOutputStream = null;
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file2);
                try {
                    NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                    networkTimeOut.readTimout = 60000;
                    networkTimeOut.connectionTimeout = com.join.mgps.socket.entity.b.f73001c;
                    new NetworkHelper().download(strCheckHttpRequestUrl, fileOutputStream2, networkTimeOut);
                    C1293r.a(fileOutputStream2);
                    if (file2.length() <= 0 || !TextUtils.equals(str2, Data.MD5(file2))) {
                        return;
                    }
                    fileFilter = new FileFilter() { // from class: cn.fly.commons.d.3
                        @Override // java.io.FileFilter
                        public boolean accept(File file3) {
                            return !arrayList.contains(file3.getAbsolutePath());
                        }
                    };
                    FileUtils.deleteFilesInDirWithFilter(file, fileFilter);
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    try {
                        h.a().a(6, -1, th, "-10");
                        C1293r.a(fileOutputStream);
                        if (file2.length() <= 0) {
                            return;
                        }
                        if (!zEquals) {
                        } else {
                            fileFilter = new FileFilter() { // from class: cn.fly.commons.d.3
                                @Override // java.io.FileFilter
                                public boolean accept(File file3) {
                                    return !arrayList.contains(file3.getAbsolutePath());
                                }
                            };
                        }
                    } finally {
                        C1293r.a(fileOutputStream);
                        if (file2.length() > 0 && TextUtils.equals(str2, Data.MD5(file2))) {
                            FileUtils.deleteFilesInDirWithFilter(file, new FileFilter() { // from class: cn.fly.commons.d.3
                                @Override // java.io.FileFilter
                                public boolean accept(File file3) {
                                    return !arrayList.contains(file3.getAbsolutePath());
                                }
                            });
                        }
                    }
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            h.a().a(5, -1, th3, "-10");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(final String str, final File file, final boolean z10, final String str2, final String str3, final String str4) {
        new Thread(new Runnable() { // from class: cn.fly.commons.d.2
            @Override // java.lang.Runnable
            public void run() {
                Throwable th;
                int i10;
                FileOutputStream fileOutputStream;
                try {
                    ByteArrayOutputStream byteArrayOutputStream = null;
                    if (z10) {
                        try {
                            if (file.exists() && str3.equals(Data.MD5(file))) {
                                if (d.b(str, 5, file.getAbsolutePath(), null, str4)) {
                                    return;
                                }
                                file.delete();
                                return;
                            }
                            int i11 = 6;
                            try {
                                if (file.exists()) {
                                    file.delete();
                                }
                                i10 = 7;
                                try {
                                    try {
                                        fileOutputStream = new FileOutputStream(file);
                                        try {
                                            NetworkHelper.NetworkTimeOut networkTimeOut = new NetworkHelper.NetworkTimeOut();
                                            networkTimeOut.readTimout = 60000;
                                            networkTimeOut.connectionTimeout = com.join.mgps.socket.entity.b.f73001c;
                                            new NetworkHelper().download(str2, fileOutputStream, networkTimeOut);
                                            C1293r.a(fileOutputStream);
                                            if (file.length() <= 0 || !TextUtils.equals(str3, Data.MD5(file))) {
                                                if (file.exists()) {
                                                    file.delete();
                                                    return;
                                                }
                                                return;
                                            } else {
                                                if (d.b(str, 7, file.getAbsolutePath(), null, str4)) {
                                                    return;
                                                }
                                                file.delete();
                                                return;
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            C1293r.a(fileOutputStream);
                                            if (file.length() > 0 && TextUtils.equals(str3, Data.MD5(file))) {
                                                if (!d.b(str, 7, file.getAbsolutePath(), null, str4)) {
                                                    file.delete();
                                                }
                                                i11 = 7;
                                            } else if (file.exists()) {
                                                file.delete();
                                            }
                                            try {
                                                throw th;
                                            } catch (Throwable th3) {
                                                i10 = i11;
                                                th = th3;
                                            }
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    fileOutputStream = null;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                i10 = 6;
                            }
                        } catch (Throwable th7) {
                            th = th7;
                            i10 = 5;
                        }
                    } else {
                        if (file.exists()) {
                            file.delete();
                        }
                        try {
                            try {
                                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                                try {
                                    NetworkHelper.NetworkTimeOut networkTimeOut2 = new NetworkHelper.NetworkTimeOut();
                                    networkTimeOut2.readTimout = 60000;
                                    networkTimeOut2.connectionTimeout = com.join.mgps.socket.entity.b.f73001c;
                                    new NetworkHelper().download(str2, byteArrayOutputStream2, networkTimeOut2);
                                    C1293r.a(byteArrayOutputStream2);
                                    byte[] byteArray = byteArrayOutputStream2.toByteArray();
                                    if (byteArray.length <= 0 || !TextUtils.equals(str3, Data.MD5(byteArray))) {
                                        return;
                                    }
                                    try {
                                        d.b(str, 9, null, byteArray, str4);
                                        return;
                                    } catch (Throwable th8) {
                                        th = th8;
                                        i10 = 9;
                                    }
                                } catch (Throwable th9) {
                                    th = th9;
                                    byteArrayOutputStream = byteArrayOutputStream2;
                                    C1293r.a(byteArrayOutputStream);
                                    throw th;
                                }
                            } catch (Throwable th10) {
                                th = th10;
                                i10 = 8;
                            }
                        } catch (Throwable th11) {
                            th = th11;
                        }
                    }
                } catch (Throwable th12) {
                    th = th12;
                    i10 = 13;
                }
                h.a().a(5, i10, th, str);
                FlyLog.getInstance().d(th);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str, int i10, String str2, byte[] bArr, String str3) {
        try {
            Method method = null;
            boolean z10 = false;
            for (Method method2 : cn.fly.tools.c.a.class.getMethods()) {
                Annotation[] annotations = method2.getAnnotations();
                if (annotations != null) {
                    for (Annotation annotation : annotations) {
                        if (annotation != null && annotation.annotationType() == cn.fly.tools.c.b.class) {
                            method = method2;
                            z10 = true;
                            break;
                        }
                    }
                    if (z10) {
                        break;
                    }
                }
            }
            if (bArr != null) {
                cn.fly.commons.cc.a.a(FlySDK.getContext(), bArr, str3, method);
            } else {
                cn.fly.commons.cc.a.a(FlySDK.getContext(), str2, str3, method);
            }
            return true;
        } catch (Throwable th) {
            try {
                h.a().a(6, i10, th, str);
                FlyLog.getInstance().d(th);
            } catch (Throwable unused) {
            }
            return false;
        }
    }

    public static void b() {
        File[] fileArrListFiles;
        try {
            File file = new File(FlySDK.getContext().getFilesDir(), "sblf");
            File file2 = null;
            if (file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles(new FileFilter() { // from class: cn.fly.commons.d.4
                @Override // java.io.FileFilter
                public boolean accept(File file3) {
                    return file3.isFile();
                }
            })) != null && fileArrListFiles.length > 0) {
                long j10 = 0;
                for (File file3 : fileArrListFiles) {
                    long jLastModified = file3.lastModified();
                    if (jLastModified > j10) {
                        file2 = file3;
                        j10 = jLastModified;
                    }
                }
            }
            if (file2 != null) {
                if (file2.getName().equals(Data.MD5(file2))) {
                    final String absolutePath = file2.getAbsolutePath();
                    DH.requester(FlySDK.getContext()).getDeviceKey().getMIUIVersionForFly().getAdvertisingID().request(new DH.DHResponder() { // from class: cn.fly.commons.d.5
                        @Override // cn.fly.tools.utils.DH.DHResponder
                        public void onResponse(DH.DHResponse dHResponse) {
                            try {
                                Method method = null;
                                boolean z10 = false;
                                for (Method method2 : cn.fly.tools.c.a.class.getMethods()) {
                                    Annotation[] annotations = method2.getAnnotations();
                                    if (annotations != null) {
                                        for (Annotation annotation : annotations) {
                                            if (annotation != null && annotation.annotationType() == cn.fly.tools.c.b.class) {
                                                z10 = true;
                                                method = method2;
                                                break;
                                            }
                                        }
                                        if (z10) {
                                            break;
                                        }
                                    }
                                }
                                String strA = f.a((FlyProduct) null);
                                HashMap map = new HashMap();
                                map.put(cn.fly.commons.a.m.a("004%edehejed"), strA);
                                map.put(cn.fly.commons.a.m.a("005j>elfiDgf"), af.a().b());
                                map.put(cn.fly.commons.a.m.a("004<egelejed"), cn.fly.tools.b.c.a(FlySDK.getContext()).d().ao());
                                map.put(cn.fly.commons.a.m.a("010SgjedfihlUg$ekgjejel!f"), Integer.valueOf(FlySDK.SDK_VERSION_CODE));
                                map.put(cn.fly.commons.a.m.a("006ekkDfi>g=fd"), q.a());
                                map.put(cn.fly.commons.a.m.a("009ekkAfm(gd>ek!gj"), FlySDK.getAppSecret());
                                map.put(cn.fly.commons.a.m.a("006$edelegIe8ej,f"), FlySDK.getDmn().getDomain());
                                map.put(cn.fly.commons.a.m.a("010!fgelekNdgYglEjjkXgj"), Boolean.valueOf(FlySDK.checkForceHttps()));
                                map.put(cn.fly.commons.a.m.a("009EfgelekUdg8ff]kXeeii"), Boolean.valueOf(FlySDK.checkV6()));
                                map.put(cn.fly.commons.a.m.a("004gdg,fj"), Long.valueOf(((Long) c.a(cn.fly.commons.a.m.a("004gdg)fj"), 5L)).longValue()));
                                map.put(cn.fly.commons.a.m.a("002d_ed"), (String) c.a(cn.fly.commons.a.m.a("002dEed"), cn.fly.commons.a.m.a("006,ififigigigig")));
                                map.put("usridt", ad.g());
                                map.put(cn.fly.commons.a.m.a("002_ejed"), "-10");
                                map.put(cn.fly.commons.a.m.a("0086ed4g$eeejBdg9ffed"), dHResponse.getDeviceKey());
                                map.put("imei", null);
                                map.put("imsi", null);
                                map.put("sno", null);
                                map.put("ssno", null);
                                map.put("miui", dHResponse.getMIUIVersionForFly());
                                map.put(cn.fly.commons.a.m.a("005^egeled$gh"), DH.SyncMtd.getModelForFly());
                                map.put(cn.fly.commons.a.m.a("007?fgZedjSelekfd"), DH.SyncMtd.getManufacturerForFly());
                                map.put(cn.fly.commons.a.m.a("005Cggek,ef!ed"), DH.SyncMtd.getBrandForFly());
                                map.put(cn.fly.commons.a.m.a("005ePedgjejed"), dHResponse.getAdvertisingID());
                                map.put(cn.fly.commons.a.m.a("006ekk6ee_gTek"), DH.SyncMtd.getAppVersionName());
                                map.put("appVerCode", Integer.valueOf(DH.SyncMtd.getAppVersion()));
                                map.put(cn.fly.commons.a.m.a("011kedUfiUe]fk8g;fh+ePeg[g"), DH.SyncMtd.getPackageName());
                                map.put(cn.fly.commons.a.m.a("005Ugggjgjejed"), null);
                                map.put("osint", Integer.valueOf(DH.SyncMtd.getOSVersionIntForFly()));
                                map.put("osname", DH.SyncMtd.getOSVersionNameForFly());
                                map.put("mdpName", MDP.class.getName());
                                cn.fly.commons.cc.a.a(FlySDK.getContext(), absolutePath, HashonHelper.fromHashMap(map), method);
                            } catch (Throwable th) {
                                try {
                                    h.a().a(6, -1, th, "-10");
                                    FlyLog.getInstance().d(th);
                                } catch (Throwable unused) {
                                }
                            }
                        }
                    });
                } else {
                    file2.delete();
                }
            }
        } catch (Throwable th) {
            h.a().a(6, -1, th, "-10");
        }
    }
}
