package com.umeng.commonsdk.statistics.idtracking;

import android.content.Context;
import android.text.TextUtils;
import com.umeng.analytics.pro.aw;
import com.umeng.analytics.pro.bm;
import com.umeng.analytics.pro.by;
import com.umeng.analytics.pro.ce;
import com.umeng.commonsdk.debug.UMRTLog;
import com.umeng.commonsdk.internal.crash.UMCrashManager;
import com.umeng.commonsdk.statistics.AnalyticsConstants;
import com.umeng.commonsdk.statistics.common.DataHelper;
import com.umeng.commonsdk.statistics.common.HelperUtils;
import com.umeng.commonsdk.statistics.common.ULog;
import com.umeng.commonsdk.statistics.internal.UMImprintChangeCallback;
import com.umeng.commonsdk.statistics.internal.UMImprintPreProcessCallback;
import com.umeng.commonsdk.utils.FileLockCallback;
import com.umeng.commonsdk.utils.FileLockUtil;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes9.dex */
public class ImprintHandler implements FileLockCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f85364a = "ImprintHandler";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static Context f85371k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static FileLockUtil f85372l = null;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final int f85373m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final int f85374n = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.internal.d f85377e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private a f85378h = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.umeng.commonsdk.statistics.proto.d f85379i = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Object f85365b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final String f85366c = aw.b().b(aw.f84322c);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f85367d = "pbl0".getBytes();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static Map<String, ArrayList<UMImprintChangeCallback>> f85368f = new HashMap();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Object f85369g = new Object();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ImprintHandler f85370j = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static Map<String, UMImprintPreProcessCallback> f85375o = new HashMap();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static Object f85376p = new Object();

    private ImprintHandler(Context context) {
        f85371k = context.getApplicationContext();
    }

    private static void a(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        synchronized (f85369g) {
            try {
                int i10 = 0;
                if (f85368f.containsKey(str)) {
                    ArrayList<UMImprintChangeCallback> arrayList = f85368f.get(str);
                    int size = arrayList.size();
                    ULog.i("--->>> addCallback: before add: callbacks size is: " + size);
                    while (i10 < size) {
                        if (uMImprintChangeCallback == arrayList.get(i10)) {
                            ULog.i("--->>> addCallback: callback has exist, just exit");
                            return;
                        }
                        i10++;
                    }
                    arrayList.add(uMImprintChangeCallback);
                    ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList.size());
                } else {
                    ArrayList<UMImprintChangeCallback> arrayList2 = new ArrayList<>();
                    int size2 = arrayList2.size();
                    ULog.i("--->>> addCallback: before add: callbacks size is: " + size2);
                    while (i10 < size2) {
                        if (uMImprintChangeCallback == arrayList2.get(i10)) {
                            ULog.i("--->>> addCallback: callback has exist, just exit");
                            return;
                        }
                        i10++;
                    }
                    arrayList2.add(uMImprintChangeCallback);
                    ULog.i("--->>> addCallback: after add: callbacks size is: " + arrayList2.size());
                    f85368f.put(str, arrayList2);
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f85371k, th);
            }
        }
    }

    private static void b(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        synchronized (f85369g) {
            try {
                if (f85368f.containsKey(str)) {
                    ArrayList<UMImprintChangeCallback> arrayList = f85368f.get(str);
                    if (arrayList.size() > 0) {
                        int size = arrayList.size();
                        ULog.i("--->>> removeCallback: before remove: callbacks size is: " + size);
                        for (int i10 = 0; i10 < size; i10++) {
                            if (uMImprintChangeCallback == arrayList.get(i10)) {
                                ULog.i("--->>> removeCallback: remove index " + i10);
                                arrayList.remove(i10);
                                break;
                            }
                        }
                        ULog.i("--->>> removeCallback: after remove: callbacks size is: " + arrayList.size());
                        if (arrayList.size() == 0) {
                            ULog.i("--->>> removeCallback: remove key from map: key = " + str);
                            f85368f.remove(str);
                        }
                    }
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f85371k, th);
            }
        }
    }

    private boolean c(com.umeng.commonsdk.statistics.proto.d dVar) {
        if (!dVar.i().equals(a(dVar))) {
            return false;
        }
        for (com.umeng.commonsdk.statistics.proto.e eVar : dVar.c().values()) {
            String strH = eVar.h();
            if (!TextUtils.isEmpty(strH)) {
                byte[] bArrReverseHexString = DataHelper.reverseHexString(strH);
                byte[] bArrA = a(eVar);
                for (int i10 = 0; i10 < 4; i10++) {
                    if (bArrReverseHexString[i10] != bArrA[i10]) {
                        return false;
                    }
                }
            }
        }
        return true;
    }

    private com.umeng.commonsdk.statistics.proto.d d(com.umeng.commonsdk.statistics.proto.d dVar) {
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        if (mapC.containsKey(bm.f84403f)) {
            mapC.remove(bm.f84403f);
            this.f85378h.a(bm.f84403f);
            dVar.a(dVar.f());
            dVar.a(a(dVar));
        }
        return dVar;
    }

    private com.umeng.commonsdk.statistics.proto.d e(com.umeng.commonsdk.statistics.proto.d dVar) {
        ArrayList<UMImprintChangeCallback> arrayList;
        boolean z10;
        ArrayList<UMImprintChangeCallback> arrayList2;
        UMImprintPreProcessCallback uMImprintPreProcessCallback;
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        ArrayList<String> arrayList3 = new ArrayList(mapC.size() / 2);
        Iterator<Map.Entry<String, com.umeng.commonsdk.statistics.proto.e>> it2 = mapC.entrySet().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            }
            Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> next = it2.next();
            if (next.getValue().d()) {
                String key = next.getKey();
                String str = next.getValue().f85530a;
                synchronized (f85376p) {
                    z10 = !TextUtils.isEmpty(key) && f85375o.containsKey(key) && (uMImprintPreProcessCallback = f85375o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str);
                }
                if (z10) {
                    arrayList3.add(key);
                }
                synchronized (f85369g) {
                    if (!TextUtils.isEmpty(key) && f85368f.containsKey(key) && (arrayList2 = f85368f.get(key)) != null) {
                        for (int i10 = 0; i10 < arrayList2.size(); i10++) {
                            arrayList2.get(i10).onImprintValueChanged(key, str);
                        }
                    }
                }
            } else {
                arrayList3.add(next.getKey());
            }
        }
        for (String str2 : arrayList3) {
            synchronized (f85369g) {
                if (!TextUtils.isEmpty(str2) && f85368f.containsKey(str2) && (arrayList = f85368f.get(str2)) != null) {
                    for (int i11 = 0; i11 < arrayList.size(); i11++) {
                        arrayList.get(i11).onImprintValueChanged(str2, null);
                    }
                }
            }
            mapC.remove(str2);
        }
        return dVar;
    }

    public static synchronized ImprintHandler getImprintService(Context context) {
        if (f85370j == null) {
            f85370j = new ImprintHandler(context);
            f85372l = new FileLockUtil();
            f85372l.doFileOperateion(new File(f85371k.getFilesDir(), f85366c), f85370j, 0);
        }
        return f85370j;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str) {
        return false;
    }

    public void registImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        a(str, uMImprintChangeCallback);
    }

    public void registPreProcessCallback(String str, UMImprintPreProcessCallback uMImprintPreProcessCallback) {
        if (TextUtils.isEmpty(str) || uMImprintPreProcessCallback == null) {
            return;
        }
        synchronized (f85376p) {
            try {
                if (f85375o.containsKey(str)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> key : " + str + " PreProcesser has registed!");
                } else {
                    f85375o.put(str, uMImprintPreProcessCallback);
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> registPreProcessCallback: key : " + str + " regist success.");
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f85371k, th);
            }
        }
    }

    public void unregistImprintCallback(String str, UMImprintChangeCallback uMImprintChangeCallback) {
        if (TextUtils.isEmpty(str) || uMImprintChangeCallback == null) {
            return;
        }
        b(str, uMImprintChangeCallback);
    }

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Map<String, String> f85380a = new HashMap();

        a() {
        }

        private synchronized void b(com.umeng.commonsdk.statistics.proto.d dVar) {
            com.umeng.commonsdk.statistics.proto.e eVar;
            if (dVar != null) {
                try {
                    if (dVar.e()) {
                        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
                        for (String str : mapC.keySet()) {
                            if (!TextUtils.isEmpty(str) && (eVar = mapC.get(str)) != null) {
                                String strB = eVar.b();
                                if (TextUtils.isEmpty(strB)) {
                                    continue;
                                } else {
                                    this.f85380a.put(str, strB);
                                    if (AnalyticsConstants.UM_DEBUG) {
                                        StringBuilder sb2 = new StringBuilder();
                                        sb2.append("imKey is ");
                                        sb2.append(str);
                                        sb2.append(", imValue is ");
                                        sb2.append(strB);
                                    } else {
                                        continue;
                                    }
                                }
                            }
                        }
                    }
                } catch (Throwable unused) {
                }
            }
        }

        public synchronized void a(String str) {
            Map<String, String> map = this.f85380a;
            if (map != null && map.size() > 0 && !TextUtils.isEmpty(str) && this.f85380a.containsKey(str)) {
                this.f85380a.remove(str);
            }
        }

        a(com.umeng.commonsdk.statistics.proto.d dVar) {
            a(dVar);
        }

        public void a(com.umeng.commonsdk.statistics.proto.d dVar) {
            if (dVar == null) {
                return;
            }
            b(dVar);
        }

        public synchronized String a(String str, String str2) {
            if (!TextUtils.isEmpty(str) && this.f85380a.size() > 0) {
                String str3 = this.f85380a.get(str);
                return !TextUtils.isEmpty(str3) ? str3 : str2;
            }
            return str2;
        }
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(String str, Object obj) {
        return false;
    }

    @Override // com.umeng.commonsdk.utils.FileLockCallback
    public boolean onFileLock(File file, int i10) {
        if (i10 == 0) {
            f85370j.e();
        } else if (i10 == 1) {
            f85370j.a(file);
        }
        return true;
    }

    public void d() {
        if (this.f85379i == null || f85372l == null) {
            return;
        }
        File file = new File(f85371k.getFilesDir(), f85366c);
        if (!file.exists()) {
            try {
                try {
                    file.createNewFile();
                } catch (IOException e10) {
                    UMCrashManager.reportCrash(f85371k, e10);
                }
            } catch (IOException unused) {
                file.createNewFile();
            }
        }
        f85372l.doFileOperateion(file, f85370j, 1);
    }

    public a c() {
        return this.f85378h;
    }

    public void b(com.umeng.commonsdk.statistics.proto.d dVar) {
        com.umeng.commonsdk.statistics.proto.d dVarA;
        boolean z10;
        if (dVar == null) {
            if (AnalyticsConstants.UM_DEBUG) {
                UMRTLog.d(UMRTLog.RTLOG_TAG, "Imprint is null");
                return;
            }
            return;
        }
        if (!c(dVar)) {
            if (AnalyticsConstants.UM_DEBUG) {
                UMRTLog.e(UMRTLog.RTLOG_TAG, "Imprint is not valid");
                return;
            }
            return;
        }
        boolean z11 = AnalyticsConstants.UM_DEBUG;
        HashMap map = new HashMap();
        synchronized (this) {
            com.umeng.commonsdk.statistics.proto.d dVar2 = this.f85379i;
            com.umeng.commonsdk.statistics.proto.d dVarD = d(dVar);
            String strI = null;
            String strI2 = dVar2 == null ? null : dVar2.i();
            if (dVar2 == null) {
                dVarA = e(dVarD);
            } else {
                dVarA = a(dVar2, dVarD, map);
            }
            this.f85379i = dVarA;
            if (dVarA != null) {
                strI = dVarA.i();
            }
            z10 = !a(strI2, strI);
        }
        com.umeng.commonsdk.statistics.proto.d dVar3 = this.f85379i;
        if (dVar3 != null && z10) {
            this.f85378h.a(dVar3);
            com.umeng.commonsdk.statistics.internal.d dVar4 = this.f85377e;
            if (dVar4 != null) {
                dVar4.onImprintChanged(this.f85378h);
            }
        }
        if (map.size() > 0) {
            synchronized (f85369g) {
                for (Map.Entry<String, String> entry : map.entrySet()) {
                    String key = entry.getKey();
                    String value = entry.getValue();
                    if (!TextUtils.isEmpty(key) && f85368f.containsKey(key)) {
                        ULog.i("--->>> target imprint key is: " + key + "; value is: " + value);
                        ArrayList<UMImprintChangeCallback> arrayList = f85368f.get(key);
                        if (arrayList != null) {
                            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                                arrayList.get(i10).onImprintValueChanged(key, value);
                            }
                        }
                    }
                }
            }
        }
    }

    public void a(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        synchronized (f85376p) {
            try {
                if (f85375o.containsKey(str)) {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: unregist [" + str + "] success.");
                    f85368f.remove(str);
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> unregistPreProcessCallback: can't find [" + str + "], pls regist first.");
                }
            } catch (Throwable th) {
                UMCrashManager.reportCrash(f85371k, th);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v10 */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v4, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v3, types: [android.content.Context] */
    private void e() {
        Throwable th;
        FileInputStream fileInputStreamOpenFileInput;
        File filesDir = f85371k.getFilesDir();
        ?? r10 = f85366c;
        File file = new File(filesDir, (String) r10);
        synchronized (f85365b) {
            if (file.exists()) {
                byte[] streamToByteArray = null;
                try {
                    try {
                        fileInputStreamOpenFileInput = f85371k.openFileInput(r10);
                        try {
                            streamToByteArray = HelperUtils.readStreamToByteArray(fileInputStreamOpenFileInput);
                            r10 = fileInputStreamOpenFileInput;
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                            r10 = fileInputStreamOpenFileInput;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        HelperUtils.safeClose((InputStream) r10);
                        throw th;
                    }
                } catch (Exception e11) {
                    e = e11;
                    fileInputStreamOpenFileInput = null;
                } catch (Throwable th3) {
                    r10 = 0;
                    th = th3;
                    HelperUtils.safeClose((InputStream) r10);
                    throw th;
                }
                HelperUtils.safeClose((InputStream) r10);
                if (streamToByteArray != null) {
                    try {
                        com.umeng.commonsdk.statistics.proto.d dVar = new com.umeng.commonsdk.statistics.proto.d();
                        new by().a(dVar, streamToByteArray);
                        this.f85379i = dVar;
                        this.f85378h.a(dVar);
                        this.f85379i = d(this.f85379i);
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
            }
        }
    }

    public void a(com.umeng.commonsdk.statistics.internal.d dVar) {
        this.f85377e = dVar;
    }

    public String a(com.umeng.commonsdk.statistics.proto.d dVar) {
        StringBuilder sb2 = new StringBuilder();
        for (Map.Entry entry : new TreeMap(dVar.c()).entrySet()) {
            sb2.append((String) entry.getKey());
            if (((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).d()) {
                sb2.append(((com.umeng.commonsdk.statistics.proto.e) entry.getValue()).b());
            }
        }
        sb2.append(dVar.f85512b);
        return HelperUtils.MD5(sb2.toString()).toLowerCase(Locale.US);
    }

    public byte[] a(com.umeng.commonsdk.statistics.proto.e eVar) {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(8);
        byteBufferAllocate.order(null);
        byteBufferAllocate.putLong(eVar.e());
        byte[] bArrArray = byteBufferAllocate.array();
        byte[] bArr = f85367d;
        byte[] bArr2 = new byte[4];
        for (int i10 = 0; i10 < 4; i10++) {
            bArr2[i10] = (byte) (bArrArray[i10] ^ bArr[i10]);
        }
        return bArr2;
    }

    public byte[] a() {
        try {
            synchronized (this) {
                com.umeng.commonsdk.statistics.proto.d dVar = this.f85379i;
                if (dVar == null) {
                    return null;
                }
                if (dVar.b() <= 0) {
                    return null;
                }
                return new ce().a(this.f85379i);
            }
        } catch (Throwable th) {
            UMCrashManager.reportCrash(f85371k, th);
            return null;
        }
    }

    public synchronized com.umeng.commonsdk.statistics.proto.d b() {
        return this.f85379i;
    }

    private boolean a(String str, String str2) {
        if (str == null) {
            return str2 == null;
        }
        return str.equals(str2);
    }

    private com.umeng.commonsdk.statistics.proto.d a(com.umeng.commonsdk.statistics.proto.d dVar, com.umeng.commonsdk.statistics.proto.d dVar2, Map<String, String> map) {
        UMImprintPreProcessCallback uMImprintPreProcessCallback;
        ArrayList<UMImprintChangeCallback> arrayList;
        if (dVar2 == null) {
            return dVar;
        }
        Map<String, com.umeng.commonsdk.statistics.proto.e> mapC = dVar.c();
        for (Map.Entry<String, com.umeng.commonsdk.statistics.proto.e> entry : dVar2.c().entrySet()) {
            int i10 = 0;
            if (entry.getValue().d()) {
                String key = entry.getKey();
                String str = entry.getValue().f85530a;
                synchronized (f85376p) {
                    if (!TextUtils.isEmpty(key) && f85375o.containsKey(key) && (uMImprintPreProcessCallback = f85375o.get(key)) != null && uMImprintPreProcessCallback.onPreProcessImprintKey(key, str)) {
                        i10 = 1;
                    }
                }
                if (i10 == 0) {
                    mapC.put(entry.getKey(), entry.getValue());
                    synchronized (f85369g) {
                        if (!TextUtils.isEmpty(key) && f85368f.containsKey(key) && f85368f.get(key) != null) {
                            map.put(key, str);
                        }
                    }
                } else {
                    UMRTLog.i(UMRTLog.RTLOG_TAG, "--->>> merge: [" + key + "] should be ignored.");
                }
            } else {
                String key2 = entry.getKey();
                synchronized (f85369g) {
                    if (!TextUtils.isEmpty(key2) && f85368f.containsKey(key2) && (arrayList = f85368f.get(key2)) != null) {
                        while (i10 < arrayList.size()) {
                            arrayList.get(i10).onImprintValueChanged(key2, null);
                            i10++;
                        }
                    }
                }
                mapC.remove(key2);
                this.f85378h.a(key2);
            }
        }
        dVar.a(dVar2.f());
        dVar.a(a(dVar));
        return dVar;
    }

    private void a(File file) {
        if (this.f85379i == null) {
            return;
        }
        try {
            synchronized (f85365b) {
                byte[] bArrA = new ce().a(this.f85379i);
                FileOutputStream fileOutputStream = new FileOutputStream(file);
                try {
                    fileOutputStream.write(bArrA);
                    fileOutputStream.flush();
                    HelperUtils.safeClose(fileOutputStream);
                } catch (Throwable th) {
                    HelperUtils.safeClose(fileOutputStream);
                    throw th;
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
