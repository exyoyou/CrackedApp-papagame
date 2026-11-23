package cn.fly.tools.b;

import android.app.ActivityManager;
import android.app.Application;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.res.Configuration;
import android.net.Proxy;
import android.net.wifi.ScanResult;
import android.os.Build;
import android.os.Environment;
import android.os.LocaleList;
import android.os.Looper;
import android.os.Process;
import android.os.StatFs;
import android.os.SystemClock;
import android.provider.Settings;
import android.telephony.CellInfo;
import android.telephony.NeighboringCellInfo;
import android.text.TextUtils;
import cn.fly.commons.C1293r;
import cn.fly.commons.CSCenter;
import cn.fly.commons.FlyMeta;
import cn.fly.commons.ab;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.NtFetcher;
import cn.fly.tools.utils.ReflectHelper;
import cn.fly.tools.utils.ResHelper;
import com.windmill.sdk.WMConstants;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.RandomAccessFile;
import java.lang.reflect.Method;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.TimeZone;
import java.util.concurrent.BlockingQueue;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes7.dex */
public class b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static b f1846b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f1847a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile int f1848c = -1;

    private b(Context context) {
        this.f1847a = context.getApplicationContext();
    }

    public static synchronized b a(Context context) {
        if (f1846b == null && context != null) {
            f1846b = new b(context);
        }
        return f1846b;
    }

    private String aA() {
        HashMap map;
        HashMap<String, Object> mapAB = aB();
        if (mapAB == null || (map = (HashMap) mapAB.get(cn.fly.commons.o.a("010=dc4f dddiGcf]eeReRefdk"))) == null) {
            return null;
        }
        try {
            return Data.byteToHex(Data.SHA1(((Object) null) + ":" + ((Object) null) + ":" + ((String) map.get(cn.fly.commons.o.a("005)dfdkdc@fg")))));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    private HashMap<String, Object> aB() {
        HashMap<String, Object> mapC = cn.fly.commons.f.c();
        if (mapC.isEmpty()) {
            return null;
        }
        return (HashMap) mapC.get(cn.fly.commons.o.a("010.dcMf<dddiQcf7eeOe9efdk"));
    }

    private String aC() {
        ObjectInputStream objectInputStream;
        FileInputStream fileInputStream;
        File cacheRootFile;
        File file = new File(s(), cn.fly.commons.o.a("0082el1hd0djKf<elflic"));
        if (file.exists()) {
            File file2 = new File(file, cn.fly.commons.o.a("003Wdldceh"));
            if (file2.exists() && (cacheRootFile = ResHelper.getCacheRootFile(this.f1847a, cn.fly.commons.o.a("003Fdldceh"))) != null && file2.renameTo(cacheRootFile)) {
                file2.delete();
            }
        }
        File cacheRootFile2 = ResHelper.getCacheRootFile(this.f1847a, cn.fly.commons.o.a("003Ldldceh"));
        String strValueOf = null;
        if (cacheRootFile2 != null && !cacheRootFile2.exists()) {
            return null;
        }
        try {
            fileInputStream = new FileInputStream(cacheRootFile2);
            try {
                objectInputStream = new ObjectInputStream(fileInputStream);
                try {
                    Object object = objectInputStream.readObject();
                    if (object != null && (object instanceof char[])) {
                        strValueOf = String.valueOf((char[]) object);
                    }
                    C1293r.a(objectInputStream, fileInputStream);
                } catch (Throwable th) {
                    th = th;
                    try {
                        FlyLog.getInstance().d(th);
                        C1293r.a(objectInputStream, fileInputStream);
                    } catch (Throwable th2) {
                        C1293r.a(objectInputStream, fileInputStream);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            objectInputStream = null;
            fileInputStream = null;
        }
        return strValueOf;
    }

    private HashMap<String, String> aD() {
        try {
            return (HashMap) ResHelper.readObjectFromFile(ResHelper.getDataCacheFile(this.f1847a, cn.fly.commons.o.a("0044dlQde8fi")).getAbsolutePath());
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            ResHelper.getDataCacheFile(this.f1847a, cn.fly.commons.o.a("004+dlLdeSfi")).delete();
            return null;
        }
    }

    private Set<String> aE() {
        InputStream inputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        Object objC;
        HashSet hashSet = new HashSet();
        if (cn.fly.commons.e.b() && !cn.fly.commons.o.a("005^dfVfFdigddg").equalsIgnoreCase(DH.SyncMtd.getManufacturerForFly()) && l.a()) {
            try {
                try {
                    objC = C1293r.c(cn.fly.commons.o.a("016j7dfifNg2difi,i@ifJjdcBehUd=ej%fGfi"));
                    try {
                        inputStream = (InputStream) ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("014.ejLfiPeeXej!dg:i%el?i<djNfdJdf"), new Object[0]);
                        try {
                            inputStreamReader = new InputStreamReader(inputStream, "utf-8");
                            try {
                                bufferedReader = new BufferedReader(inputStreamReader);
                                try {
                                    for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                                        String strTrim = line.trim();
                                        if (strTrim.length() > 8 && strTrim.substring(0, 8).equalsIgnoreCase(cn.fly.commons.o.a("008jdcHehYdCejZfk"))) {
                                            String strTrim2 = strTrim.substring(8).trim();
                                            if (!TextUtils.isEmpty(strTrim2)) {
                                                hashSet.add(strTrim2);
                                            }
                                        }
                                    }
                                    C1293r.a(bufferedReader, inputStreamReader, inputStream);
                                    if (objC != null) {
                                        ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("007(dc*fKfiHi=djdkec"), new Object[0]);
                                    }
                                } catch (Throwable th2) {
                                    th = th2;
                                    try {
                                        FlyLog.getInstance().w(th);
                                        C1293r.a(bufferedReader, inputStreamReader, inputStream);
                                        if (objC != null) {
                                            ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("007(dc*fKfiHi=djdkec"), new Object[0]);
                                        }
                                        return hashSet;
                                    } catch (Throwable th3) {
                                        C1293r.a(bufferedReader, inputStreamReader, inputStream);
                                        if (objC != null) {
                                            try {
                                                ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("007(dc*fKfiHi=djdkec"), new Object[0]);
                                            } catch (Throwable unused) {
                                            }
                                        }
                                        throw th3;
                                    }
                                }
                            } catch (Throwable th4) {
                                bufferedReader = null;
                                th = th4;
                            }
                        } catch (Throwable th5) {
                            bufferedReader = null;
                            th = th5;
                            inputStreamReader = null;
                        }
                    } catch (Throwable th6) {
                        inputStreamReader = null;
                        bufferedReader = null;
                        th = th6;
                        inputStream = null;
                    }
                } catch (Throwable unused2) {
                }
            } catch (Throwable th7) {
                inputStream = null;
                inputStreamReader = null;
                bufferedReader = null;
                th = th7;
                objC = null;
            }
        }
        return hashSet;
    }

    private Set<String> aF() {
        InputStream inputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader;
        Throwable th;
        Object objC;
        HashSet hashSet = new HashSet();
        if (cn.fly.commons.e.b()) {
            BufferedReader bufferedReader2 = null;
            try {
                try {
                    objC = C1293r.c(cn.fly.commons.o.a("032c(dfdcifFjdc2eh.d<ejWfSifdedg3fJdjechkPdci3didddi4i+di^fTfiifhk)d$if") + cn.fly.commons.o.a("026deEdcdjdkdidcdldiZeifeiQdl7dciCdidkGe6dlhcfdeeeg") + " " + cn.fly.commons.o.a("008:hkhkdgfi*f.djiffh"));
                    try {
                        inputStream = (InputStream) ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("014,ej7fiIee^ej5dgEi5el!i(dj<fd@df"), new Object[0]);
                        if (inputStream != null) {
                            try {
                                inputStreamReader = new InputStreamReader(inputStream, "utf-8");
                                try {
                                    bufferedReader = new BufferedReader(inputStreamReader);
                                    try {
                                        String strA = cn.fly.commons.o.a("012jdcUeh!d>ejEfCeg7dIdfXfYii");
                                        for (String line = bufferedReader.readLine(); line != null; line = bufferedReader.readLine()) {
                                            String strTrim = line.trim();
                                            if (strTrim.length() > strA.length() && strTrim.substring(0, strA.length()).equalsIgnoreCase(strA)) {
                                                String strTrim2 = strTrim.substring(strA.length()).trim();
                                                if (!TextUtils.isEmpty(strTrim2)) {
                                                    hashSet.add(strTrim2);
                                                }
                                            }
                                        }
                                        bufferedReader2 = bufferedReader;
                                    } catch (Throwable th2) {
                                        th = th2;
                                        try {
                                            FlyLog.getInstance().w(th);
                                            C1293r.a(bufferedReader, inputStreamReader, inputStream);
                                            if (objC != null) {
                                                ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("0070dcXfNfiUiWdjdkec"), new Object[0]);
                                            }
                                            return hashSet;
                                        } catch (Throwable th3) {
                                            C1293r.a(bufferedReader, inputStreamReader, inputStream);
                                            if (objC != null) {
                                                try {
                                                    ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("0070dcXfNfiUiWdjdkec"), new Object[0]);
                                                } catch (Throwable unused) {
                                                }
                                            }
                                            throw th3;
                                        }
                                    }
                                } catch (Throwable th4) {
                                    bufferedReader = null;
                                    th = th4;
                                }
                            } catch (Throwable th5) {
                                bufferedReader = null;
                                th = th5;
                                inputStreamReader = null;
                            }
                        } else {
                            inputStreamReader = null;
                        }
                        C1293r.a(bufferedReader2, inputStreamReader, inputStream);
                        if (objC != null) {
                            ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("0070dcXfNfiUiWdjdkec"), new Object[0]);
                        }
                    } catch (Throwable th6) {
                        inputStreamReader = null;
                        bufferedReader = null;
                        th = th6;
                        inputStream = null;
                    }
                } catch (Throwable unused2) {
                }
            } catch (Throwable th7) {
                inputStream = null;
                inputStreamReader = null;
                bufferedReader = null;
                th = th7;
                objC = null;
            }
        }
        return hashSet;
    }

    private Set<String> aG() {
        HashSet hashSet = new HashSet();
        if (cn.fly.commons.e.b()) {
            for (int i10 = 10000; i10 <= 13000; i10++) {
                String[] strArr = (String[]) ReflectHelper.invokeInstanceMethod(this.f1847a.getPackageManager(), "getPackagesForUid", new Object[]{Integer.valueOf(i10)}, new Class[]{Integer.TYPE}, null);
                if (strArr != null && !TextUtils.isEmpty(strArr[0]) && !strArr[0].startsWith(cn.fly.commons.o.a("035c dkdfdlejdkdkejYgfXdlHdeOdcdjdkdidcdl1iHdjdiRchQdjdkdfQfgMdiffdj$d^djec"))) {
                    hashSet.add(strArr[0]);
                }
            }
        }
        return hashSet;
    }

    private boolean aH() {
        try {
            return ((Boolean) ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(cn.fly.commons.o.a("016de$dcdjdkdidcdldkfidlfl!fZffdgej")), cn.fly.commons.o.a("019Edififl=f2ffdgejej=fJdjeddkEeefcifJdc"), new Object[0])).booleanValue();
        } catch (Throwable unused) {
            return false;
        }
    }

    private String az() {
        try {
            return Data.byteToHex(Data.SHA1(((Object) null) + ":" + ((Object) null) + ":" + c.a(this.f1847a).d().n()));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public static Context w() {
        return C1293r.a();
    }

    public HashMap<String, Object> A() {
        HashMap<String, Object> map = new HashMap<>();
        try {
            FileReader fileReader = new FileReader(cn.fly.commons.o.a("013ljYdjdkZclcjPdgdiEeOefdk"));
            BufferedReader bufferedReader = new BufferedReader(fileReader);
            ArrayList arrayList = new ArrayList();
            map.put(cn.fly.commons.o.a("010j]djdkCcf2fifidkdjfi"), arrayList);
            loop0: while (true) {
                HashMap map2 = null;
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break loop0;
                    }
                    if (TextUtils.isEmpty(line)) {
                        break;
                    }
                    String strTrim = line.trim();
                    if (strTrim.startsWith(cn.fly.commons.o.a("009jTdjdk3cf!fifidkdj"))) {
                        if (map2 != null) {
                            arrayList.add(map2);
                        }
                        map2 = new HashMap();
                    }
                    String[] strArrSplit = strTrim.split(":");
                    if (strArrSplit.length > 1) {
                        if (map2 == null) {
                            map.put(strArrSplit[0].trim(), strArrSplit[1].trim());
                        } else {
                            map2.put(strArrSplit[0].trim(), strArrSplit[1].trim());
                        }
                    }
                }
                if (map2 != null) {
                    arrayList.add(map2);
                }
            }
            bufferedReader.close();
            fileReader.close();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return map;
    }

    public ArrayList<ArrayList<String>> B() {
        ArrayList<ArrayList<String>> arrayList = new ArrayList<>();
        if (DH.SyncMtd.getOSVersionIntForFly() < 28) {
            try {
                FileReader fileReader = new FileReader(cn.fly.commons.o.a("017lj;djdk^cliiBec*l)dcdjdiddFf;djfi"));
                BufferedReader bufferedReader = new BufferedReader(fileReader);
                while (true) {
                    String line = bufferedReader.readLine();
                    if (line == null) {
                        break;
                    }
                    if (!TextUtils.isEmpty(line)) {
                        String[] strArrSplit = line.trim().split(" ");
                        if (strArrSplit.length > 1) {
                            ArrayList<String> arrayList2 = new ArrayList<>();
                            for (String str : strArrSplit) {
                                if (!TextUtils.isEmpty(str)) {
                                    arrayList2.add(str.trim());
                                }
                            }
                            arrayList.add(arrayList2);
                        }
                    }
                }
                bufferedReader.close();
                fileReader.close();
            } catch (Throwable th) {
                FlyLog.getInstance().d(th.getMessage(), new Object[0]);
            }
        }
        return arrayList;
    }

    public String C() {
        String strA = e.a(this.f1847a).a(cn.fly.commons.o.a("014Vdjdkdleh[f9dj$efg.dlde;f!dfdg"), "0");
        return strA == null ? "0" : strA;
    }

    public HashMap<String, HashMap<String, Long>> D() {
        long availableBlocksLong;
        long freeBlocksLong;
        long blockCountLong;
        long blockSizeLong;
        HashMap<String, HashMap<String, Long>> map = new HashMap<>();
        String[] strArr = {cn.fly.commons.o.a("006OfidcScd.djdc"), cn.fly.commons.o.a("0044dc2did")};
        for (int i10 = 0; i10 < 2; i10++) {
            String str = strArr[i10];
            HashMap<String, Long> map2 = new HashMap<>();
            map2.put("available", -1L);
            map2.put(cn.fly.commons.o.a("004YefdjHff"), -1L);
            map2.put(cn.fly.commons.o.a("005i'dk]idg"), -1L);
            map.put(str, map2);
        }
        HashMap map3 = new HashMap();
        String strS = s();
        if (strS != null) {
            map3.put(cn.fly.commons.o.a("006]fidcDcdKdjdc"), new StatFs(strS));
        }
        File dataDirectory = Environment.getDataDirectory();
        if (dataDirectory != null) {
            map3.put(cn.fly.commons.o.a("0046dcYdid"), new StatFs(dataDirectory.getPath()));
        }
        for (Map.Entry entry : map3.entrySet()) {
            StatFs statFs = (StatFs) entry.getValue();
            if (DH.SyncMtd.getOSVersionIntForFly() <= 18) {
                availableBlocksLong = ((long) statFs.getAvailableBlocks()) * ((long) statFs.getBlockSize());
                freeBlocksLong = ((long) statFs.getFreeBlocks()) * ((long) statFs.getBlockSize());
                blockCountLong = statFs.getBlockCount();
                blockSizeLong = statFs.getBlockSize();
            } else {
                availableBlocksLong = statFs.getAvailableBlocksLong() * statFs.getBlockSizeLong();
                freeBlocksLong = statFs.getFreeBlocksLong() * statFs.getBlockSizeLong();
                blockCountLong = statFs.getBlockCountLong();
                blockSizeLong = statFs.getBlockSizeLong();
            }
            HashMap<String, Long> map4 = map.get(entry.getKey());
            map4.put("available", Long.valueOf(availableBlocksLong));
            map4.put(cn.fly.commons.o.a("004IefdjZff"), Long.valueOf(freeBlocksLong));
            map4.put(cn.fly.commons.o.a("005iZdk?idg"), Long.valueOf(blockCountLong * blockSizeLong));
        }
        return map;
    }

    public HashMap<String, Long> E() {
        HashMap<String, Long> map = new HashMap<>();
        map.put("available", -1L);
        map.put(cn.fly.commons.o.a("005i:dkCidg"), -1L);
        map.put(cn.fly.commons.o.a("005Ddififedkfg"), -1L);
        map.put(cn.fly.commons.o.a("009ih'dj8fMfi2h7dkFgUdc"), -1L);
        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("008dciNdidddi+i$ec"));
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, cn.fly.commons.o.a("0136ej5fiShcKf2dfdkdjeceeWeQefdk"), null, memoryInfo);
        map.put("available", Long.valueOf(memoryInfo.availMem));
        if (DH.SyncMtd.getOSVersionIntForFly() >= 16) {
            map.put(cn.fly.commons.o.a("005i$dk$idg"), Long.valueOf(memoryInfo.totalMem));
        }
        map.put(cn.fly.commons.o.a("0052dififedkfg"), Long.valueOf(memoryInfo.lowMemory ? 1L : 0L));
        map.put(cn.fly.commons.o.a("009ihGdj?f]fiQh)dk)gPdc"), Long.valueOf(memoryInfo.threshold));
        return map;
    }

    public String F() {
        return cn.fly.tools.utils.f.a().b();
    }

    public boolean G() {
        BufferedReader bufferedReader;
        Throwable th;
        String[] strArr = {cn.fly.commons.o.a("020cBdkdfdlQi5dkZj2hgdkWheQfgdgdldfFd%ejdifieh"), cn.fly.commons.o.a("024 didkdlejdi2ihCdgffdlKhHdgfiehecdcejdldfBdZejdifieh"), cn.fly.commons.o.a("032 dc+f[dldjdkffdddl0deDdcdjdkdidcdlei-jNdkfi0f>dcdldiKe=fi[idggfUdj"), cn.fly.commons.o.a("028*dkdjejdldfFf_dkfg)cdiDdlGf8dcei6j0dkfi f3dcdldfBded9ej^fFdj"), cn.fly.commons.o.a("027'dfdkMf>dlfiMh(digddgehdgdldjNf7dcdidjQfciTfiEi5dkdj:d>ej3f"), cn.fly.commons.o.a("018?dfOf]dlfg9f;difi.hOdgdlehBf+djNefgCfidg"), cn.fly.commons.o.a("0272didkdlejdi!ihGdgffdlddddffhefhhhfhdldf)dhRdkfiRh-dkhgdk"), cn.fly.commons.o.a("0133fkdkdkehdlgedidggfdgdlggWj"), "club.youppgd.adhook", cn.fly.commons.o.a("027_diSc[dgdlIeFdgTggji%djdlIdjjg9difi:iJdcCfifciEdkdj"), cn.fly.commons.o.a("032^didkdlejdi!ih,dgffdl9h-dgfiehecdcejdldf2f9dfdkdjecdcXfifciIdkdj"), cn.fly.commons.o.a("034cOdkdfdlejdi7ih dgffdl.cdjei@djdi3j6fidleh:f4djNefg1ef.gdVfi1hf]dj")};
        for (int i10 = 0; i10 < 12; i10++) {
            try {
                if (c.a(this.f1847a).d().a(strArr[i10], 0) != null) {
                    return true;
                }
            } catch (Throwable unused) {
            }
        }
        try {
            throw new Exception("msk");
        } catch (Throwable th2) {
            for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                if (stackTraceElement.getClassName().contains(cn.fly.commons.o.a("035Kdc[f?dldjdkffdddl]deCdcdjdkdidcdleiEj@dkfi[fSdcdlgg4j,dkfi:fFdcfjdjdidcejEf"))) {
                    return true;
                }
            }
            try {
                try {
                    ClassLoader.getSystemClassLoader().loadClass(cn.fly.commons.o.a("036Adc)f;dldjdkffdddl-de5dcdjdkdidcdleiMj6dkfi4f%dcdlgg*jOdkfi3f*dcfk$fgjf4djfi")).newInstance();
                    try {
                        ClassLoader.getSystemClassLoader().loadClass(cn.fly.commons.o.a("035Udc-fRdldjdkffdddl@de]dcdjdkdidcdlei(jCdkfiVfNdcdlgg2j+dkfiOfGdcfjdjdidcej'f")).newInstance();
                    } catch (IllegalAccessException | InstantiationException unused2) {
                    }
                    return true;
                } catch (IllegalAccessException | InstantiationException unused3) {
                    return true;
                }
            } catch (Throwable unused4) {
                try {
                    bufferedReader = new BufferedReader(new FileReader(cn.fly.commons.o.a("006lj3djdk:cl") + Process.myPid() + cn.fly.commons.o.a("005l+dfEdj5fi")));
                    boolean zContains = false;
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null || zContains) {
                                break;
                            }
                            zContains = line.toLowerCase().contains(cn.fly.commons.o.a("006.eiEj'dkfi:f'dc"));
                        } catch (Throwable th3) {
                            th = th3;
                            try {
                                FlyLog.getInstance().d(th);
                                C1293r.a(bufferedReader);
                                return false;
                            } catch (Throwable th4) {
                                C1293r.a(bufferedReader);
                                throw th4;
                            }
                        }
                    }
                    C1293r.a(bufferedReader);
                    return zContains;
                } catch (Throwable th5) {
                    bufferedReader = null;
                    th = th5;
                }
            }
        }
    }

    public boolean H() {
        return (this.f1847a.getResources().getConfiguration().screenLayout & 15) >= 3;
    }

    public boolean I() {
        boolean z10 = false;
        try {
            if (DH.SyncMtd.getOSVersionIntForFly() < 17 ? Settings.Secure.getInt(this.f1847a.getContentResolver(), "adb_enabled", 0) > 0 : Settings.Secure.getInt(this.f1847a.getContentResolver(), "adb_enabled", 0) > 0) {
                z10 = true;
            }
        } catch (Throwable unused) {
        }
        return z10;
    }

    public boolean J() {
        boolean z10 = false;
        try {
            if (DH.SyncMtd.getOSVersionIntForFly() < 17 ? Settings.Secure.getInt(this.f1847a.getContentResolver(), "development_settings_enabled", 0) > 0 : Settings.Secure.getInt(this.f1847a.getContentResolver(), "development_settings_enabled", 0) > 0) {
                z10 = true;
            }
        } catch (Throwable unused) {
        }
        return z10;
    }

    public boolean K() {
        Intent intentA = C1293r.a((BroadcastReceiver) null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        return intentA != null && intentA.getIntExtra("plugged", -1) == 2;
    }

    public boolean L() {
        return false;
    }

    public boolean M() {
        ApplicationInfo applicationInfoA = c.a(this.f1847a).d().a(false, DH.SyncMtd.getPackageName(), 1);
        return (applicationInfoA == null || (applicationInfoA.flags & 2) == 0) ? false : true;
    }

    public boolean N() {
        String host;
        int port;
        try {
            if (DH.SyncMtd.getOSVersionIntForFly() >= 14) {
                host = System.getProperty(cn.fly.commons.o.a("014hiijSdl=j'djdkeiecfkdkfiLi"));
                String property = System.getProperty(cn.fly.commons.o.a("014hiijPdlRjJdjdkeiecgldkdj.i"));
                if (property == null) {
                    property = WMConstants.TIMER_STAGE_NONE;
                }
                try {
                    port = Integer.parseInt(property);
                } catch (Throwable unused) {
                    port = -1;
                }
            } else {
                host = Proxy.getHost(this.f1847a);
                port = Proxy.getPort(this.f1847a);
            }
            return (TextUtils.isEmpty(host) || port == -1) ? false : true;
        } catch (Throwable unused2) {
            return false;
        }
    }

    public boolean O() {
        return (DH.SyncMtd.getOSVersionIntForFly() >= 29) && (c.a(this.f1847a).d().ar().targetSdkVersion >= 29);
    }

    public String P() {
        try {
            String id2 = TimeZone.getDefault().getID();
            if (!TextUtils.isEmpty(id2)) {
                return id2;
            }
            Configuration configuration = new Configuration();
            configuration.setToDefaults();
            Settings.System.getConfiguration(this.f1847a.getContentResolver(), configuration);
            Locale locale = configuration.locale;
            if (locale == null) {
                locale = Locale.getDefault();
            }
            return Calendar.getInstance(locale).getTimeZone().getID();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String Q() {
        return c.a(this.f1847a).d().a(cn.fly.commons.o.a("015<djdkdlffdgdi)g0dcdlefCgd+dddkdj"));
    }

    public String R() {
        return c.a(this.f1847a).d().a(cn.fly.commons.o.a("0206ejfidfdlddGf!djfididk_eQdlff d(fi'f1ffDdeWdc"));
    }

    public String S() {
        return c.a(this.f1847a).d().a(cn.fly.commons.o.a("016Rdjdkdl,j djdkdcdg ciEdlffdkJdPdjdc"));
    }

    public String T() {
        return c.a(this.f1847a).d().a(cn.fly.commons.o.a("017KdjdkdlffdkKd)djdcdlFjgdi6efdkdjdf"));
    }

    public int U() {
        return NtFetcher.getInstance(this.f1847a).getDtNtType();
    }

    public String V() {
        return Build.BRAND;
    }

    public boolean W() {
        return b(this.f1847a) != 0;
    }

    public String X() {
        String processName = "";
        try {
            if (DH.SyncMtd.getOSVersionIntForFly() >= 28) {
                processName = Application.getProcessName();
            } else {
                Method declaredMethod = Class.forName(cn.fly.commons.o.a("026de-dcdjdkdidcdlCdjj[dlfd^ci.didddiGi+ecfcUh9dj!fdVdc"), false, Application.class.getClassLoader()).getDeclaredMethod("currentProcessName", new Class[0]);
                declaredMethod.setAccessible(true);
                Object objInvoke = declaredMethod.invoke(null, new Object[0]);
                if (objInvoke instanceof String) {
                    processName = (String) objInvoke;
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d("getProcessName: " + th, new Object[0]);
        }
        return processName;
    }

    public long Y() {
        Object objB = c.a(this.f1847a).d().b(false, 0, n(), 0);
        if (objB != null) {
            return cn.fly.tools.c.e(objB, DH.SyncMtd.getPackageName());
        }
        return 0L;
    }

    public String Z() {
        return Build.DEVICE;
    }

    /* JADX WARN: Code duplicated, block: B:26:0x0065  */
    /* JADX WARN: Code duplicated, block: B:44:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    public String aa() {
        Object objC;
        InputStream inputStream;
        ?? bufferedReader;
        String line;
        ?? r10;
        try {
            objC = C1293r.c(cn.fly.commons.o.a("021cdi*ifMljHdjdkXclFfi,fgJefLlcHejdjdkdg3j"));
            try {
                inputStream = (InputStream) ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("0146ej fi-eeRej[dg[i_el:iJdj%fd?df"), null, new Object[0]);
                if (inputStream != null) {
                    try {
                        bufferedReader = new BufferedReader(new InputStreamReader(inputStream));
                        try {
                            line = bufferedReader.readLine();
                            r10 = bufferedReader;
                        } catch (Throwable th) {
                            th = th;
                            try {
                                FlyLog.getInstance().d(th);
                                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                                if (objC != null) {
                                    return null;
                                }
                                ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("007NdcOf@fiQi3djdkec"), null, new Object[0]);
                                return null;
                            } catch (Throwable th2) {
                                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                                if (objC != null) {
                                    ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("007NdcOf@fiQi3djdkec"), null, new Object[0]);
                                }
                                throw th2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        bufferedReader = 0;
                    }
                } else {
                    r10 = 0;
                    line = null;
                }
                C1293r.a((Closeable[]) new Closeable[]{r10, inputStream});
                if (objC != null) {
                    ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("007NdcOf@fiQi3djdkec"), null, new Object[0]);
                }
                return line;
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
                bufferedReader = inputStream;
                FlyLog.getInstance().d(th);
                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                if (objC != null) {
                    return null;
                }
                ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("007NdcOf@fiQi3djdkec"), null, new Object[0]);
                return null;
            }
        } catch (Throwable th5) {
            th = th5;
            objC = null;
            inputStream = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:30:0x008e  */
    /* JADX WARN: Code duplicated, block: B:51:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r2v2, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.io.Closeable[]] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3, types: [java.io.BufferedReader] */
    public String ab() {
        Object objC;
        InputStream inputStream;
        ?? bufferedReader;
        try {
            objC = C1293r.c(cn.fly.commons.o.a("017cdi1ifDljMdjdkCclcj[dgdi;e<efdk"));
            try {
                inputStream = (InputStream) ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("014+ej!fiJee=ej+dgBi.el$iMdjVfd*df"), null, new Object[0]);
                if (inputStream == null) {
                    C1293r.a(null, inputStream);
                    if (objC == null) {
                        return "";
                    }
                    ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("0070dc5f$fi(i=djdkec"), null, new Object[0]);
                    return "";
                }
                try {
                    StringBuffer stringBuffer = new StringBuffer();
                    bufferedReader = new BufferedReader(new InputStreamReader(inputStream, "utf-8"));
                    while (true) {
                        try {
                            String line = bufferedReader.readLine();
                            if (line == null) {
                                break;
                            }
                            stringBuffer.append(line);
                        } catch (Throwable th) {
                            th = th;
                            try {
                                FlyLog.getInstance().d(th);
                                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                                if (objC != null) {
                                    return "";
                                }
                                ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("0070dc5f$fi(i=djdkec"), null, new Object[0]);
                                return "";
                            } catch (Throwable th2) {
                                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                                if (objC != null) {
                                    ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("0070dc5f$fi(i=djdkec"), null, new Object[0]);
                                }
                                throw th2;
                            }
                        }
                    }
                    bufferedReader.close();
                    String lowerCase = stringBuffer.toString().toLowerCase();
                    C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                    if (objC != null) {
                        ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("0070dc5f$fi(i=djdkec"), null, new Object[0]);
                    }
                    return lowerCase;
                } catch (Throwable th3) {
                    th = th3;
                    bufferedReader = 0;
                }
            } catch (Throwable th4) {
                th = th4;
                inputStream = null;
                bufferedReader = inputStream;
                FlyLog.getInstance().d(th);
                C1293r.a((Closeable[]) new Closeable[]{bufferedReader, inputStream});
                if (objC != null) {
                    return "";
                }
                ReflectHelper.invokeInstanceMethodNoThrow(objC, cn.fly.commons.o.a("0070dc5f$fi(i=djdkec"), null, new Object[0]);
                return "";
            }
        } catch (Throwable th5) {
            th = th5;
            objC = null;
            inputStream = null;
        }
    }

    public String ac() {
        return cn.fly.commons.c.d.b(this.f1847a);
    }

    public boolean ad() {
        if (CSCenter.getInstance().isSystemInfoAvailable()) {
            return DH.SyncMtd.getOSVersionIntForFly() < 17 || Settings.Global.getInt(this.f1847a.getContentResolver(), "auto_time", 0) == 1;
        }
        return Settings.Global.getInt(this.f1847a.getContentResolver(), "auto_time", 0) == 1;
    }

    public HashMap<String, Object> ae() {
        return cn.fly.commons.c.d.a(this.f1847a);
    }

    public String af() {
        return "";
    }

    public long ag() {
        return Build.TIME;
    }

    public double ah() {
        return ResHelper.getScreenInch(this.f1847a);
    }

    public int ai() {
        return ResHelper.getScreenPpi(this.f1847a);
    }

    public boolean aj() {
        return cn.fly.commons.o.a("007,fkMd[djdfdk]e=ec").equalsIgnoreCase((String) ReflectHelper.invokeStaticMethodNoThrow(ReflectHelper.importClassNoThrow(cn.fly.commons.o.a("025c7dkdfdl0hLdgYd?fg<f!didlfiecfiIif+dfdlfjdgdiIgPdcgiei"), null), cn.fly.commons.o.a("0101ej(fiEghfifjdj2deOdc"), null, new Object[0]));
    }

    public String ak() {
        return c.a(this.f1847a).d().a(cn.fly.commons.o.a("028hUfgdhfi,cGdlffdgdi,g7dcdlOjgdi7efdkdjdfdlddXf9djfididkWe"));
    }

    public String al() {
        String strGroup = null;
        try {
            String strAy = c.a(this.f1847a).d().ay();
            String strA = c.a(this.f1847a).d().a("ro.build.ver.physical");
            if (!TextUtils.isEmpty(strA) && strA.contains(strAy)) {
                Matcher matcher = Pattern.compile(strAy + "(\\.\\d+)?").matcher(strA);
                while (matcher.find()) {
                    strGroup = matcher.group();
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return strGroup;
    }

    public int am() {
        try {
            return Settings.Secure.getInt(this.f1847a.getContentResolver(), cn.fly.commons.o.a("015jZdgdjVf4dhdfdkdc-f+dhfi(idif"));
        } catch (Settings.SettingNotFoundException unused) {
            return -1;
        }
    }

    public String an() {
        return DH.SyncMtd.getOSVersionIntForFly() >= 23 ? Build.VERSION.SECURITY_PATCH : "";
    }

    public HashMap<String, Long> ao() {
        HashMap<String, Long> map = new HashMap<>();
        map.put(cn.fly.commons.o.a("005iTdk]idg"), -1L);
        map.put(cn.fly.commons.o.a("003Udf1dXei"), -1L);
        map.put(cn.fly.commons.o.a("004PefdjAff"), -1L);
        Runtime runtime = Runtime.getRuntime();
        map.put(cn.fly.commons.o.a("005iIdkNidg"), Long.valueOf(runtime.totalMemory()));
        map.put(cn.fly.commons.o.a("003,dfJd?ei"), Long.valueOf(runtime.maxMemory()));
        map.put(cn.fly.commons.o.a("0048efdjCff"), Long.valueOf(runtime.freeMemory()));
        return map;
    }

    public String ap() {
        try {
            return ab.a().e();
        } catch (Throwable unused) {
            return null;
        }
    }

    public int aq() {
        try {
            return Settings.Secure.getInt(this.f1847a.getContentResolver(), cn.fly.commons.o.a("024jRdgdj+f@dhQfehdecf.dcdhdfdkdcKfRdhfiUidif"));
        } catch (Settings.SettingNotFoundException unused) {
            return -1;
        }
    }

    public Object ar() {
        Object cellLocation;
        int iIntValue;
        int iIntValue2;
        int iIntValue3;
        int i10;
        int iIntValue4;
        int iIntValue5;
        int i11;
        Object systemServiceSafe;
        HashMap map = null;
        if (cn.fly.commons.e.h()) {
            if (CSCenter.getInstance().isCellLocationDataEnable()) {
                cellLocation = (!DH.SyncMtd.checkPermission(cn.fly.commons.o.a("041de^dcdjdkdidcdl6jf+djdfdififididkIeYdlfdededgieleldhedghfdgjelgidhfeghedfdfceegheg")) || (systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("005jhRdkCef"))) == null) ? null : ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, cn.fly.commons.o.a("015Eej+fi5ed^fgg7fedkHcdi<didkKe"), null, new Object[0]);
            } else {
                cellLocation = CSCenter.getInstance().getCellLocation();
            }
            if (cellLocation != null) {
                map = new HashMap();
                int i12 = -1;
                if (cn.fly.commons.o.a("016:eddcdf;dKedXfgg%fedk[cdiNdidk8e").equals(cellLocation.getClass().getSimpleName())) {
                    map.put(cn.fly.commons.o.a("016@eddcdfYd'edCfgg=fedk(cdi5didkZe"), 1);
                    int iIntValue6 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("022>ejJfi!fjQdBfi f1el^idi_didkEe1fe_di)diZiTdgdcVf"), -1, new Object[0]), -1)).intValue();
                    int iIntValue7 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("023 ejYfiGfjBd]fi@f]el2idiEdidk=e)fedkPeHejdi4i)dgdc$f"), -1, new Object[0]), -1)).intValue();
                    iIntValue4 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("016$ej-fi<fj?dNfi%fUel2idiWdidkLe(eedc"), -1, new Object[0]), -1)).intValue();
                    iIntValue5 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("0118ej3fiLelecfi[ifGdfeedc"), -1, new Object[0]), -1)).intValue();
                    iIntValue3 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("012LejSfi_egRfi0fgdkdjeheedc"), -1, new Object[0]), -1)).intValue();
                    i11 = iIntValue7;
                    iIntValue2 = -1;
                    i10 = iIntValue6;
                    iIntValue = -1;
                } else {
                    map.put(cn.fly.commons.o.a("016_eddcdfCd-edBfgg3fedk9cdi+didkLe"), -1);
                    iIntValue = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("006Yej<fiPglfiOc"), -1, new Object[0]), -1)).intValue();
                    int iIntValue8 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("006UejOfi fe+dc"), -1, new Object[0]), -1)).intValue();
                    iIntValue2 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethodNoThrow(cellLocation, cn.fly.commons.o.a("006 ej[fi8eddidc"), -1, new Object[0]), -1)).intValue();
                    i12 = iIntValue8;
                    iIntValue3 = -1;
                    i10 = -1;
                    iIntValue4 = -1;
                    iIntValue5 = -1;
                    i11 = -1;
                }
                map.put(cn.fly.commons.o.a("003gdc"), Integer.valueOf(i12));
                map.put(cn.fly.commons.o.a("004cfgg"), Integer.valueOf(iIntValue2));
                map.put(cn.fly.commons.o.a("003jAfi=c"), Integer.valueOf(iIntValue));
                map.put(cn.fly.commons.o.a("003Pffdidc"), Integer.valueOf(iIntValue4));
                map.put(cn.fly.commons.o.a("003$fididc"), Integer.valueOf(iIntValue5));
                map.put(cn.fly.commons.o.a("003e*didc"), Integer.valueOf(iIntValue3));
                map.put(cn.fly.commons.o.a("003gdi"), Integer.valueOf(i10));
                map.put(cn.fly.commons.o.a("003g_dkFe"), Integer.valueOf(i11));
            }
        }
        return map;
    }

    public String as() {
        LocaleList localeListA;
        Locale locale;
        if (DH.SyncMtd.getOSVersionIntForFly() < 33 || (localeListA = androidx.core.os.b.a(ReflectHelper.invokeInstanceMethodNoThrow(DH.SyncMtd.getSystemServiceSafe("locale"), "getApplicationLocales", null, new Object[0]))) == null || localeListA.isEmpty() || (locale = localeListA.get(0)) == null) {
            return null;
        }
        return locale.getLanguage();
    }

    public int at() {
        if (DH.SyncMtd.getOSVersionIntForFly() < 34) {
            return 0;
        }
        try {
            return ((Integer) ReflectHelper.invokeInstanceMethod(this.f1847a.getSystemService(Class.forName("android.app.GrammaticalInflectionManager")), "getApplicationGrammaticalGender", new Object[0])).intValue();
        } catch (Throwable unused) {
            return 0;
        }
    }

    public boolean au() {
        String strSubstring;
        RandomAccessFile randomAccessFile = null;
        try {
            RandomAccessFile randomAccessFile2 = new RandomAccessFile(cn.fly.commons.o.a("006lj:djdkTcl") + Process.myPid() + cn.fly.commons.o.a("007lZfi(idi)dgfi"), "r");
            strSubstring = "0";
            while (true) {
                try {
                    String line = randomAccessFile2.readLine();
                    if (line == null) {
                        break;
                    }
                    String strReplace = line.trim().replace("\t", "").trim().replace(" ", "");
                    if (strReplace.contains(cn.fly.commons.o.a("010]fcdj]dcfIdjgldidc4k"))) {
                        strSubstring = strReplace.substring(10);
                    }
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    try {
                        FlyLog.getInstance().d(th);
                        C1293r.a(randomAccessFile);
                    } catch (Throwable th2) {
                        C1293r.a(randomAccessFile);
                        throw th2;
                    }
                }
            }
            C1293r.a(randomAccessFile2);
        } catch (Throwable th3) {
            th = th3;
            strSubstring = "0";
        }
        if (TextUtils.isEmpty(strSubstring) || TextUtils.equals("0", strSubstring)) {
            return false;
        }
        return h(strSubstring);
    }

    public ArrayList<HashMap<String, Object>> av() {
        List<CellInfo> allCellInfo;
        Object systemServiceSafe;
        int oSVersionIntForFly = DH.SyncMtd.getOSVersionIntForFly();
        ArrayList<HashMap<String, Object>> arrayList = null;
        if (oSVersionIntForFly >= 17 && cn.fly.commons.e.h()) {
            if (CSCenter.getInstance().isCellLocationDataEnable()) {
                FlyLog.getInstance().d("gtci: direct", new Object[0]);
                allCellInfo = (((oSVersionIntForFly >= 29 || !DH.SyncMtd.checkPermission(cn.fly.commons.o.a("041de!dcdjdkdidcdl[jf+djdfdififididk)e9dlfdededgieleldhedghfdgjelgidhfeghedfdfceegheg"))) && (oSVersionIntForFly < 29 || !DH.SyncMtd.checkPermission(cn.fly.commons.o.a("039deNdcdjdkdidcdl;jfVdjdfdififididkVe8dlfdededgieleldhgceeeggidhfeghedfdfceegheg")))) || (systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("005jh5dkXef"))) == null) ? null : (List) ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, "getAllCellInfo", null, new Object[0]);
            } else {
                FlyLog.getInstance().d("gtci: mcc", new Object[0]);
                allCellInfo = CSCenter.getInstance().getAllCellInfo();
            }
            if (allCellInfo != null && !allCellInfo.isEmpty()) {
                arrayList = new ArrayList<>();
                for (CellInfo cellInfo : allCellInfo) {
                    if (cn.fly.tools.utils.a.C0046a.a(cellInfo)) {
                        arrayList.add(a(cellInfo));
                    }
                }
                if (arrayList.isEmpty()) {
                    arrayList.add(a(allCellInfo.get(0)));
                }
            }
        }
        return arrayList;
    }

    public boolean aw() {
        return aH() || au();
    }

    public boolean ax() {
        return false;
    }

    public String ay() {
        return TextUtils.join(",", Build.SUPPORTED_ABIS);
    }

    public String b() {
        String str = Build.MODEL;
        return !TextUtils.isEmpty(str) ? str.trim() : str;
    }

    public String c() {
        return Build.MANUFACTURER;
    }

    public String d() {
        try {
            String str = c.a(this.f1847a).d().n() + "|" + DH.SyncMtd.getOSVersionIntForFly() + "|" + DH.SyncMtd.getManufacturerForFly() + "|" + l() + "|" + k();
            String strB = b(false);
            if (strB == null) {
                strB = "";
            } else if (strB.length() > 16) {
                strB = strB.substring(0, 16);
            }
            return Data.Base64AES(str, strB);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return "";
        }
    }

    public String e() {
        return c.a(this.f1847a).d().m() + "|" + DH.SyncMtd.getOSVersionIntForFly() + "|" + DH.SyncMtd.getManufacturerForFly() + "|" + l() + "|" + k();
    }

    public int f() {
        return Build.VERSION.SDK_INT;
    }

    public String g() {
        return Build.VERSION.RELEASE;
    }

    public String h() {
        return Locale.getDefault().getLanguage();
    }

    public String i() {
        return this.f1847a.getResources().getConfiguration().locale.getLanguage();
    }

    public String j() {
        return Locale.getDefault().getCountry();
    }

    public String k() {
        int[] screenSize = ResHelper.getScreenSize(this.f1847a);
        if (this.f1847a.getResources().getConfiguration().orientation == 1) {
            return screenSize[0] + "x" + screenSize[1];
        }
        return screenSize[1] + "x" + screenSize[0];
    }

    public String l() {
        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("005jh)dk*ef"));
        if (systemServiceSafe == null) {
            return WMConstants.TIMER_STAGE_NONE;
        }
        String simOperator = CSCenter.getInstance().isPhoneStateDataEnable() ? (String) ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, cn.fly.commons.o.a("014<ej fiHeldidfghNjfPdj>diYdkdj"), null, new Object[0]) : CSCenter.getInstance().getSimOperator();
        return TextUtils.isEmpty(simOperator) ? WMConstants.TIMER_STAGE_NONE : simOperator;
    }

    public String m() {
        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("005jhEdk_ef"));
        if (systemServiceSafe == null) {
            return null;
        }
        String simOperatorName = CSCenter.getInstance().isPhoneStateDataEnable() ? (String) ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, cn.fly.commons.o.a("018?ej8fi)eldidfgh?jf djWdi'dkdjegBd!dfDf"), null, new Object[0]) : CSCenter.getInstance().getSimOperatorName();
        if (TextUtils.isEmpty(simOperatorName)) {
            return null;
        }
        return simOperatorName;
    }

    public String n() {
        return this.f1847a.getPackageName();
    }

    public String o() {
        try {
            ApplicationInfo applicationInfoAr = c.a(this.f1847a).d().ar();
            String packageName = DH.SyncMtd.getPackageName();
            String strB = cn.fly.tools.c.b(applicationInfoAr, packageName);
            if (strB != null) {
                if (DH.SyncMtd.getOSVersionIntForFly() < 25 || strB.endsWith(".*")) {
                    return strB;
                }
                ReflectHelper.importClassNoThrow(strB, null);
            }
            int iC = cn.fly.tools.c.c(applicationInfoAr, packageName);
            return iC > 0 ? this.f1847a.getString(iC) : String.valueOf(cn.fly.tools.c.d(applicationInfoAr, packageName));
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return "";
        }
    }

    public int p() {
        try {
            int iIntValue = ((Integer) FlyMeta.get(null, cn.fly.commons.o.a("011WddGfPdjfididkMe?eddkdcYf"), Integer.class, 0)).intValue();
            if (iIntValue > 0) {
                return iIntValue;
            }
            Object objB = c.a(this.f1847a).d().b(false, 0, n(), 0);
            return DH.SyncMtd.getOSVersionIntForFly() >= 28 ? (int) cn.fly.tools.c.g(objB, DH.SyncMtd.getPackageName()) : cn.fly.tools.c.f(objB, DH.SyncMtd.getPackageName());
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return 0;
        }
    }

    public String q() {
        try {
            String str = (String) FlyMeta.get(null, cn.fly.commons.o.a("0118dd=fSdjfididkSeDeg^d0dfJf"), String.class, null);
            return !TextUtils.isEmpty(str) ? str : cn.fly.tools.c.c(c.a(this.f1847a).d().b(false, 0, n(), 0), DH.SyncMtd.getPackageName());
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return "1.0";
        }
    }

    public Set<String> r() {
        if (DH.SyncMtd.getOSVersionIntForFly() <= 25) {
            return aE();
        }
        Set<String> setA = null;
        try {
            ArrayList arrayList = (ArrayList) cn.fly.commons.c.a(cn.fly.commons.o.a("004dg4dkNg"), (Object) null);
            if (arrayList == null || arrayList.size() == 0) {
                arrayList = new ArrayList(Arrays.asList("1", "2"));
            }
            for (int i10 = 0; i10 < arrayList.size(); i10++) {
                switch (Integer.parseInt(String.valueOf(arrayList.get(i10)))) {
                    case 1:
                        setA = l.a(this.f1847a, 1);
                        break;
                    case 2:
                        setA = aF();
                        break;
                    case 3:
                        setA = aE();
                        break;
                    case 4:
                        setA = l.a(this.f1847a, 4);
                        break;
                    case 5:
                        setA = aG();
                        break;
                    case 6:
                        setA = m.a(6);
                        break;
                    case 7:
                        setA = m.a(7);
                        break;
                }
                if (setA != null && !setA.isEmpty() && setA.size() > 1) {
                    return setA;
                }
            }
            return setA;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return setA;
        }
    }

    public String s() {
        return (DH.SyncMtd.getOSVersionIntForFly() < 29 || c.a(this.f1847a).d().ar().targetSdkVersion < 29 || !"mounted".equals(Environment.getExternalStorageState())) ? this.f1847a.getFilesDir().getAbsolutePath() : this.f1847a.getExternalFilesDir(null).getAbsolutePath();
    }

    public String t() throws Throwable {
        return null;
    }

    public ArrayList<HashMap<String, Object>> u() {
        if (!cn.fly.commons.e.h()) {
            return null;
        }
        try {
            if (!d(cn.fly.commons.o.a("041deGdcdjdkdidcdl:jfFdjdfdififididk8eNdlfdededgieleldhedghfdgjelgidhfeghedfdfceegheg")) || O()) {
                return null;
            }
            List arrayList = new ArrayList();
            if (CSCenter.getInstance().isCellLocationDataEnable()) {
                Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("005jhNdkCef"));
                if (systemServiceSafe != null) {
                    arrayList = (List) ReflectHelper.invokeInstanceMethod(systemServiceSafe, cn.fly.commons.o.a("022DejZfiNeg(fGdiejJh?ffdkdjdiIe^ejedGfggOeeYe:efdk"), new Object[0]);
                }
            } else {
                List<NeighboringCellInfo> neighboringCellInfo = CSCenter.getInstance().getNeighboringCellInfo();
                if (neighboringCellInfo != null && !neighboringCellInfo.isEmpty()) {
                    arrayList.addAll(neighboringCellInfo);
                }
            }
            if (arrayList == null || arrayList.size() <= 0) {
                return null;
            }
            ArrayList<HashMap<String, Object>> arrayList2 = new ArrayList<>();
            for (Object obj : arrayList) {
                int iIntValue = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, cn.fly.commons.o.a("0066ej,fi8eddidc"), new Object[0]), -1)).intValue();
                int iIntValue2 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, cn.fly.commons.o.a("006Qej5fi.fe*dc"), new Object[0]), -1)).intValue();
                int iIntValue3 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, cn.fly.commons.o.a("007'ejHfi5gjfifidi"), new Object[0]), -1)).intValue();
                int iIntValue4 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, cn.fly.commons.o.a("006(ej3fiAglfiEc"), new Object[0]), -1)).intValue();
                int iIntValue5 = ((Integer) ResHelper.forceCast(ReflectHelper.invokeInstanceMethod(obj, cn.fly.commons.o.a("014MejDfiFeg5fi)fgdkdjehfcec7jf"), new Object[0]), -1)).intValue();
                if (iIntValue != -1 && iIntValue2 != -1) {
                    HashMap<String, Object> map = new HashMap<>();
                    map.put(cn.fly.commons.o.a("004cfgg"), Integer.valueOf(iIntValue));
                    map.put(cn.fly.commons.o.a("003gdc"), Integer.valueOf(iIntValue2));
                    map.put(cn.fly.commons.o.a("004Bdjfifidi"), Integer.valueOf(iIntValue3));
                    map.put(cn.fly.commons.o.a("003j>fi9c"), Integer.valueOf(iIntValue4));
                    map.put(cn.fly.commons.o.a("011efiYfgdkdjehfcecGjf"), Integer.valueOf(iIntValue5));
                    arrayList2.add(map);
                }
            }
            if (arrayList2.size() > 0) {
                return arrayList2;
            }
            return null;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public String v() {
        String strA = cn.fly.commons.o.a("009^ekegflgigceeeggifl");
        UiModeManager uiModeManager = (UiModeManager) DH.SyncMtd.getSystemServiceSafe("uimode");
        if (uiModeManager == null) {
            return strA;
        }
        switch (uiModeManager.getCurrentModeType()) {
            case 1:
                return cn.fly.commons.o.a("0057egghdhekee");
            case 2:
                return cn.fly.commons.o.a("004 flgielic");
            case 3:
                return cn.fly.commons.o.a("003Tedfdgj");
            case 4:
                return cn.fly.commons.o.a("010'fcgifegigkeeeleegheg");
            case 5:
                return cn.fly.commons.o.a("009Qfdglglfeeefdegedgi");
            case 6:
                return cn.fly.commons.o.a("005%gffdfcedfk");
            case 7:
                return cn.fly.commons.o.a("009Xgkgjfkgifdflelgifc");
            default:
                return cn.fly.commons.o.a("009=ekegflgigceeeggifl");
        }
    }

    public HashMap<String, Object> x() {
        Object connectionInfo;
        if (cn.fly.commons.e.c()) {
            try {
                if (d(cn.fly.commons.o.a("036deQdcdjdkdidcdlMjf:djdfdififididk'e+dlfdededgieleldhgfeegceedhelfcfdfcgi"))) {
                    if (CSCenter.getInstance().isWifiDataEnable()) {
                        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("004Mfgdiefdi"));
                        connectionInfo = systemServiceSafe != null ? ReflectHelper.invokeInstanceMethod(systemServiceSafe, cn.fly.commons.o.a("017(ej>fiZeddk(eefci,didkYe5eeVe,efdk"), new Object[0]) : null;
                    } else {
                        connectionInfo = CSCenter.getInstance().getConnectionInfo();
                    }
                    if (connectionInfo != null) {
                        HashMap<String, Object> map = new HashMap<>();
                        map.put("bsmt", (String) ReflectHelper.invokeInstanceMethodNoThrow(connectionInfo, cn.fly.commons.o.a("008Eej-fiEfjeleleefl"), null, new Object[0]));
                        String str = (String) ReflectHelper.invokeInstanceMethodNoThrow(connectionInfo, cn.fly.commons.o.a("0072ej0fi_eleleefl"), null, new Object[0]);
                        map.put("ssmt", str == null ? null : str.replace(x.a.f97579g, ""));
                        try {
                            map.put(cn.fly.commons.o.a("006h:didcdc+fe"), Boolean.valueOf(((Boolean) ReflectHelper.invokeInstanceMethod(connectionInfo, cn.fly.commons.o.a("0130ejNfi3fkdidcdcQfe)eleleefl"), new Object[0])).booleanValue()));
                        } catch (Throwable unused) {
                        }
                        try {
                            map.put("spmt", Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(connectionInfo, cn.fly.commons.o.a("012QejRfiXfedi=eXehel+jff3dc"), new Object[0])).intValue()));
                        } catch (Throwable unused2) {
                        }
                        try {
                            map.put(cn.fly.commons.o.a("009efiEfgdkdjeheedc"), Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(connectionInfo, cn.fly.commons.o.a("012FejRfiTegJfi>fgdkdjeheedc"), new Object[0])).intValue()));
                        } catch (Throwable unused3) {
                        }
                        try {
                            map.put(cn.fly.commons.o.a("005gf'ddPfg"), Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(connectionInfo, cn.fly.commons.o.a("007^ej;fi$gjfifidi"), new Object[0])).intValue()));
                        } catch (Throwable unused4) {
                        }
                        try {
                            map.put(cn.fly.commons.o.a("009;efdj^fNdedgCfec'ec"), Integer.valueOf(((Integer) ReflectHelper.invokeInstanceMethod(connectionInfo, cn.fly.commons.o.a("012^ej]fi1gcdjUf,dedg_fec7ec"), new Object[0])).intValue()));
                        } catch (Throwable unused5) {
                        }
                        return map;
                    }
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return null;
    }

    public ArrayList<HashMap<String, Object>> y() {
        List list;
        String[] strArrSplit;
        String[] strArrSplit2;
        if (cn.fly.commons.e.d()) {
            try {
                if (d(cn.fly.commons.o.a("036deOdcdjdkdidcdlHjf)djdfdififididkCe[dlfdededgieleldhgfeegceedhelfcfdfcgi"))) {
                    if (CSCenter.getInstance().isWifiDataEnable()) {
                        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("004Lfgdiefdi"));
                        if (systemServiceSafe == null) {
                            return null;
                        }
                        list = (List) ReflectHelper.invokeInstanceMethod(systemServiceSafe, cn.fly.commons.o.a("014)ej(fiBel,cdeYgjXf<fidg(gi:fi"), new Object[0]);
                    } else {
                        List<ScanResult> wifiScanResults = CSCenter.getInstance().getWifiScanResults();
                        if (wifiScanResults != null) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.addAll(wifiScanResults);
                            list = arrayList;
                        } else {
                            list = null;
                        }
                    }
                    if (list == null) {
                        return null;
                    }
                    if (DH.SyncMtd.getOSVersionIntForFly() > 27) {
                        strArrSplit = cn.fly.commons.o.a("086,eleleefljhfjeleleefljh cdjdLffdiNgLdiViMdi>f fijhCgf.dd?fg[jhefdjQf,dedg4fec)ecjhPchdeefg_gfdidcBih6jh=cfeif!djgcdjZfBdefhjhDcfeifDdjgcdjAf?dehfjh7iPdidf%f!fiHid-dfUj").split(",");
                        strArrSplit2 = cn.fly.commons.o.a("031:dd(fe,dg=f]eg(dPdf?f2jhifdk5jf6djMdi*dkdjgcdjdi@fe1dcRgNeceg$d4df?f").split(",");
                    } else {
                        strArrSplit = "SSID,BSSID,hessid,anqpDomainId,capabilities,level,frequency,channelWidth,centerFreq0,centerFreq1,timestamp,seen,isAutoJoinCandidate,numIpConfigFailures,blackListTimestamp,untrusted,numConnection,numUsage,distanceCm,distanceSdCm,flags".split(",");
                        strArrSplit2 = cn.fly.commons.o.a("0399fgdiefdielfididcjhdd@feHdgHf$egYd$df?f1jhdkLjfNdjEdi:dkdjgcdjdi6fe0dcHg]eceg*d3df^f").split(",");
                    }
                    ArrayList<HashMap<String, Object>> arrayList2 = new ArrayList<>();
                    for (Object obj : list) {
                        HashMap<String, Object> map = new HashMap<>();
                        String str = null;
                        for (String str2 : strArrSplit) {
                            String strTrim = str2.trim();
                            if (cn.fly.commons.o.a("004+eleleefl").equals(strTrim)) {
                                str = (String) ReflectHelper.getInstanceField(obj, strTrim, null);
                                if (TextUtils.isEmpty(str)) {
                                    break;
                                }
                                map.put(strTrim, str);
                            } else {
                                if (cn.fly.commons.o.a("012cdjd ffdi'gUdiXi3di:fWfi").equals(strTrim)) {
                                    String str3 = (String) ReflectHelper.getInstanceField(obj, strTrim, null);
                                    if (str3 != null && str3.contains("[IBSS]")) {
                                        str = null;
                                        break;
                                    }
                                    map.put(strTrim, str3);
                                } else {
                                    map.put(strTrim, ReflectHelper.getInstanceField(obj, strTrim, null));
                                }
                            }
                        }
                        if (!TextUtils.isEmpty(str)) {
                            for (String str4 : strArrSplit2) {
                                try {
                                    String strTrim2 = str4.trim();
                                    Object instanceField = ReflectHelper.getInstanceField(obj, strTrim2);
                                    map.put(strTrim2, instanceField == null ? null : instanceField.toString());
                                } catch (Throwable unused) {
                                }
                            }
                            try {
                                map.put(cn.fly.commons.o.a("0213difihdfhhehfhfhc!cSgjfcfcgj8f*fi3jOdk e<dcFf:dj"), ReflectHelper.invokeInstanceMethod(obj, cn.fly.commons.o.a("018PdifihdfhhehfhfdfMc'gjSf8fi j4dkFeYdc>f5dj"), new Object[0]));
                            } catch (Throwable unused2) {
                            }
                            try {
                                if (DH.SyncMtd.getOSVersionIntForFly() < 28) {
                                    List list2 = (List) ReflectHelper.getInstanceField(obj, cn.fly.commons.o.a("009deMde-j.fediGefCfi"));
                                    map.put(cn.fly.commons.o.a("009de]deEjWfedi8efKfi"), list2 == null ? null : new ArrayList(list2));
                                }
                            } catch (Throwable unused3) {
                            }
                            arrayList2.add(map);
                        }
                    }
                    return arrayList2;
                }
            } catch (Throwable th) {
                FlyLog.getInstance().w(th);
            }
        }
        return null;
    }

    public boolean z() {
        Object systemServiceSafe;
        if (cn.fly.commons.e.d() && CSCenter.getInstance().isWifiDataEnable() && DH.SyncMtd.checkPermission(cn.fly.commons.o.a("036deBdcdjdkdidcdlXjf:djdfdififididk2e_dledfkfdegidgidhgfeegceedhelfcfdfcgi")) && (systemServiceSafe = DH.SyncMtd.getSystemServiceSafe(cn.fly.commons.o.a("004>fgdiefdi"))) != null) {
            return ((Boolean) ReflectHelper.invokeInstanceMethodNoThrow(systemServiceSafe, cn.fly.commons.o.a("009Ofi*idRdjMi6elOcde"), Boolean.FALSE, new Object[0])).booleanValue();
        }
        return false;
    }

    private boolean f(String str) {
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return str.matches("^[a-z0-9]+$");
    }

    private void g(String str) {
        FileOutputStream fileOutputStream;
        File cacheRootFile = ResHelper.getCacheRootFile(this.f1847a, cn.fly.commons.o.a("003!dldceh"));
        if (cacheRootFile != null && cacheRootFile.exists()) {
            cacheRootFile.delete();
        }
        ObjectOutputStream objectOutputStream = null;
        try {
            fileOutputStream = new FileOutputStream(cacheRootFile);
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(fileOutputStream);
                try {
                    objectOutputStream2.writeObject(str.toCharArray());
                    objectOutputStream2.flush();
                    C1293r.a(objectOutputStream2, fileOutputStream);
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                    try {
                        FlyLog.getInstance().d(th);
                        C1293r.a(objectOutputStream, fileOutputStream);
                    } catch (Throwable th2) {
                        C1293r.a(objectOutputStream, fileOutputStream);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00af A[Catch: all -> 0x00b8, TRY_ENTER, TRY_LEAVE, TryCatch #3 {all -> 0x00b8, blocks: (B:28:0x0085, B:40:0x00af), top: B:50:0x0009 }] */
    private boolean h(String str) {
        Object objC;
        InputStream inputStream;
        Closeable closeable;
        boolean z10;
        Closeable closeable2;
        BufferedReader bufferedReader = null;
        try {
            try {
                objC = C1293r.c(cn.fly.commons.o.a("002j_fi"));
                try {
                    inputStream = (InputStream) ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("014Nej2fiYee(ejUdg0i^el_iNdj[fdTdf"), new Object[0]);
                    try {
                        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, "utf-8");
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                            try {
                                Pattern patternCompile = Pattern.compile("^\\s*(\\S+)\\s+(\\d+)\\s+(\\d+)\\s+\\S+\\s+\\S+\\s+\\S+\\s+(\\d+)\\s+(\\w)\\s+(.+)$");
                                z10 = true;
                                while (true) {
                                    try {
                                        String line = bufferedReader2.readLine();
                                        if (line == null) {
                                            break;
                                        }
                                        Matcher matcher = patternCompile.matcher(line);
                                        if (matcher.matches()) {
                                            String strGroup = matcher.group(2);
                                            String strGroup2 = matcher.group(3);
                                            String strGroup3 = matcher.group(6);
                                            String packageName = DH.SyncMtd.getPackageName();
                                            if ((TextUtils.equals(packageName, strGroup3) && (TextUtils.equals(strGroup, str) || TextUtils.equals(strGroup2, str))) || (strGroup3 != null && strGroup3.contains(packageName) && TextUtils.equals(str, strGroup))) {
                                                z10 = false;
                                            }
                                        }
                                    } catch (Throwable unused) {
                                        bufferedReader = bufferedReader2;
                                        closeable2 = inputStreamReader;
                                        C1293r.a(bufferedReader, closeable2, inputStream);
                                        if (objC != null) {
                                            ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("0077dc+fQfi:i_djdkec"), new Object[0]);
                                        }
                                        return z10;
                                    }
                                }
                                C1293r.a(bufferedReader2, inputStreamReader, inputStream);
                                if (objC != null) {
                                    ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("0077dc+fQfi:i_djdkec"), new Object[0]);
                                }
                            } catch (Throwable unused2) {
                                bufferedReader = bufferedReader2;
                                closeable = inputStreamReader;
                                z10 = true;
                                closeable2 = closeable;
                                C1293r.a(bufferedReader, closeable2, inputStream);
                                if (objC != null) {
                                    ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("0077dc+fQfi:i_djdkec"), new Object[0]);
                                }
                                return z10;
                            }
                        } catch (Throwable unused3) {
                            closeable = inputStreamReader;
                        }
                    } catch (Throwable unused4) {
                        closeable = null;
                    }
                } catch (Throwable unused5) {
                    inputStream = null;
                    closeable = inputStream;
                    z10 = true;
                    closeable2 = closeable;
                    C1293r.a(bufferedReader, closeable2, inputStream);
                    if (objC != null) {
                        ReflectHelper.invokeInstanceMethod(objC, cn.fly.commons.o.a("0077dc+fQfi:i_djdkec"), new Object[0]);
                    }
                    return z10;
                }
            } catch (Throwable unused6) {
            }
        } catch (Throwable unused7) {
            objC = null;
            inputStream = null;
        }
        return z10;
    }

    public String c(String str) {
        ApplicationInfo applicationInfoA;
        CharSequence charSequenceG;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            if (TextUtils.isEmpty(str) || (applicationInfoA = c.a(this.f1847a).d().a(str, 1)) == null || (charSequenceG = cn.fly.tools.c.g(applicationInfoA, str)) == null) {
                return null;
            }
            return charSequenceG.toString();
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return null;
        }
    }

    public boolean e(String str) {
        return c.a(this.f1847a).d().a(true, str, 0) != null;
    }

    public synchronized boolean a() {
        String strD;
        strD = C1293r.d();
        return strD != null && strD.length() == 5 && (strD.charAt(3) == '1' || strD.charAt(4) == '1');
    }

    public String b(String str) {
        Object objA;
        Signature[] signatureArrB;
        try {
            if (str.equals(DH.SyncMtd.getPackageName())) {
                objA = c.a(this.f1847a).d().b(false, 0, str, 64);
            } else {
                objA = c.a(this.f1847a).d().a(false, 0, str, 64);
            }
            if (objA == null || (signatureArrB = cn.fly.tools.c.b(objA, str)) == null || signatureArrB.length <= 0) {
                return null;
            }
            return Data.MD5(signatureArrB[0].toByteArray());
        } catch (Exception e10) {
            FlyLog.getInstance().w(e10);
            return null;
        }
    }

    public String a(String str) {
        return e.a(this.f1847a).a(str);
    }

    public String a(boolean z10) {
        return NtFetcher.getInstance(this.f1847a).getNtType(z10);
    }

    public String a(int i10) {
        long jCurrentTimeMillis = System.currentTimeMillis() ^ SystemClock.elapsedRealtime();
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(jCurrentTimeMillis);
        SecureRandom secureRandom = new SecureRandom();
        for (int i11 = 0; i11 < i10; i11++) {
            if (cn.fly.commons.o.a("004chdDdj").equalsIgnoreCase(cn.fly.commons.o.a(secureRandom.nextInt(2) % 2 == 0 ? "004chd7dj" : "003e!dgdf"))) {
                stringBuffer.insert(i11 + 1, (char) (secureRandom.nextInt(26) + 97));
            } else {
                stringBuffer.insert(stringBuffer.length(), secureRandom.nextInt(10));
            }
        }
        return stringBuffer.toString().substring(0, 40);
    }

    public ArrayList<HashMap<String, String>> c(boolean z10) {
        if (CSCenter.getInstance().isAppListDataEnable()) {
            ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
            Set<String> setK = c.a(this.f1847a).d().k(z10);
            return (setK == null || setK.isEmpty()) ? arrayList : a(setK);
        }
        List<PackageInfo> packageInfos = CSCenter.getInstance().getPackageInfos();
        if (packageInfos != null && !packageInfos.isEmpty()) {
            HashMap<String, Object> map = new HashMap<>();
            for (PackageInfo packageInfo : packageInfos) {
                map.put(packageInfo.packageName, packageInfo);
            }
            return a(map);
        }
        return new ArrayList<>();
    }

    public boolean d(String str) throws Throwable {
        int iCheckPermission;
        if (DH.SyncMtd.getOSVersionIntForFly() >= 23) {
            ReflectHelper.importClassNoThrow(cn.fly.commons.o.a("023deJdcdjdkdidcdl9c[dk;eifeiIdleddkAeif%ei*i"), null);
            iCheckPermission = -1;
            Integer num = (Integer) ReflectHelper.invokeInstanceMethodNoThrow(this.f1847a, cn.fly.commons.o.a("019chfcIehelSfgGefglHf,djdfdififididk;e"), -1, str);
            if (num != null) {
                iCheckPermission = num.intValue();
            }
        } else {
            iCheckPermission = this.f1847a.getPackageManager().checkPermission(str, n());
        }
        return iCheckPermission == 0;
    }

    public String b(boolean z10) {
        String strAA = aA();
        if (!z10 && (TextUtils.isEmpty(strAA) || strAA.length() < 40)) {
            strAA = az();
        }
        if (!TextUtils.isEmpty(strAA) && strAA.length() >= 40 && f(strAA)) {
            return strAA.trim();
        }
        String strAC = aC();
        if (!TextUtils.isEmpty(strAC) && strAC.length() >= 40 && f(strAC)) {
            return strAC.trim();
        }
        String strA = a(40);
        if (TextUtils.isEmpty(strA)) {
            return strA;
        }
        String strTrim = strA.trim();
        g(strTrim);
        return strTrim;
    }

    public ArrayList<HashMap<String, String>> a(ArrayList<HashMap<String, String>> arrayList, int i10) {
        try {
            FlyLog.getInstance().d("DH PD: fabt " + i10, new Object[0]);
            if (arrayList == null || arrayList.isEmpty()) {
                return null;
            }
            ArrayList<HashMap<String, String>> arrayList2 = new ArrayList<>();
            for (HashMap<String, String> map : arrayList) {
                boolean zEquals = TextUtils.equals("1", map.get(cn.fly.commons.o.a("0053dififiecfi")));
                if (i10 != 1 || !zEquals) {
                    if (i10 != 2 || zEquals) {
                        HashMap<String, String> map2 = new HashMap<>(map);
                        map2.remove(cn.fly.commons.o.a("005Idififiecfi"));
                        arrayList2.add(map2);
                    }
                }
            }
            return arrayList2;
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    private void b(HashMap<String, String> map) {
        if (map != null) {
            ResHelper.saveObjectToFile(ResHelper.getDataCacheFile(this.f1847a, cn.fly.commons.o.a("0049dlEdeBfi")).getAbsolutePath(), map);
        }
    }

    private int b(Context context) {
        String strX = X();
        if (TextUtils.isEmpty(strX)) {
            return -1;
        }
        return strX.equals(cn.fly.tools.c.f(c.a(context).d().a(n(), 0), n())) ? 1 : 0;
    }

    private ArrayList<HashMap<String, String>> a(Set<String> set) {
        if (cn.fly.commons.e.b() && set != null && !set.isEmpty()) {
            HashMap<String, Object> map = new HashMap<>();
            for (String str : set) {
                map.put(str, c.a(this.f1847a).d().b(true, 0, str, 0));
            }
            if (!map.isEmpty()) {
                return a(map);
            }
        }
        return new ArrayList<>();
    }

    public ArrayList<HashMap<String, String>> a(HashMap<String, Object> map) {
        String string;
        ArrayList<HashMap<String, String>> arrayList = new ArrayList<>();
        if (cn.fly.commons.e.b()) {
            try {
                PackageManager packageManager = this.f1847a.getPackageManager();
                HashMap<String, String> mapAD = aD();
                if (map != null && !map.isEmpty()) {
                    boolean z10 = false;
                    for (Map.Entry<String, Object> entry : map.entrySet()) {
                        String key = entry.getKey();
                        Object value = entry.getValue();
                        if (value != null) {
                            HashMap<String, String> map2 = new HashMap<>();
                            ApplicationInfo applicationInfoA = cn.fly.tools.c.a(value, key);
                            if (applicationInfoA != null) {
                                String str = "1";
                                if (a(applicationInfoA)) {
                                    map2.put(cn.fly.commons.o.a("005'dififiecfi"), "1");
                                } else {
                                    map2.put(cn.fly.commons.o.a("005Adififiecfi"), "0");
                                }
                                map2.put(cn.fly.commons.o.a("003jZehej"), key);
                                CharSequence text = null;
                                if (mapAD != null) {
                                    string = mapAD.get(Data.MD5(key));
                                } else {
                                    mapAD = new HashMap<>();
                                    string = null;
                                }
                                if (TextUtils.isEmpty(string)) {
                                    try {
                                        try {
                                            text = cn.fly.tools.c.g(applicationInfoA, key);
                                        } catch (Throwable unused) {
                                        }
                                    } catch (Throwable unused2) {
                                        int iC = cn.fly.tools.c.c(applicationInfoA, key);
                                        if (iC > 0) {
                                            text = packageManager.getText(key, iC, applicationInfoA);
                                        }
                                    }
                                    string = text == null ? key : text.toString();
                                    mapAD.put(Data.MD5(key), string);
                                    z10 = true;
                                }
                                map2.put(cn.fly.commons.o.a("004ed(df;f"), string);
                                map2.put(cn.fly.commons.o.a("007Add,fNdjfididkJe"), cn.fly.tools.c.c(value, key));
                                String strA = cn.fly.commons.o.a("006fed?ffWgf");
                                if (!cn.fly.tools.c.e(applicationInfoA, key)) {
                                    str = "0";
                                }
                                map2.put(strA, str);
                                map2.put(cn.fly.commons.o.a("016TefdidjfiYi3ee]eFfi$idggGfcdidf_f"), String.valueOf(cn.fly.tools.c.d(value, key)));
                                map2.put(cn.fly.commons.o.a("014gd fiRi%ekOj'dc4difKfcdidf8f"), String.valueOf(cn.fly.tools.c.e(value, key)));
                                arrayList.add(map2);
                            }
                        }
                    }
                    if (z10) {
                        b(mapAD);
                    }
                }
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return arrayList;
    }

    private boolean a(ApplicationInfo applicationInfo) {
        int i10 = applicationInfo.flags;
        return ((i10 & 1) == 1) || ((i10 & 128) != 0);
    }

    public List a(int i10, int i11, boolean z10, boolean z11) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            return cn.fly.tools.utils.e.a().a(this.f1847a, i10, i11, z10, z11);
        }
        FlyLog.getInstance().d("glctn can not be called from Main Thread", new Object[0]);
        return null;
    }

    public void a(final BlockingQueue<Boolean> blockingQueue) {
        if (cn.fly.commons.e.d() && CSCenter.getInstance().isWifiDataEnable()) {
            BroadcastReceiver broadcastReceiver = new BroadcastReceiver() { // from class: cn.fly.tools.b.b.1
                @Override // android.content.BroadcastReceiver
                public void onReceive(Context context, Intent intent) {
                    try {
                        C1293r.a(this);
                        if (cn.fly.commons.o.a("029de+dcdjdkdidcdl2efi<dlfgdiefdidleledfdegdhgjgielekfefcel").equals(intent.getAction())) {
                            blockingQueue.put(Boolean.TRUE);
                        }
                    } catch (Throwable th) {
                        FlyLog.getInstance().d(th);
                    }
                }
            };
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction(cn.fly.commons.o.a("029de0dcdjdkdidcdl3efi@dlfgdiefdidleledfdegdhgjgielekfefcel"));
            C1293r.a(broadcastReceiver, intentFilter);
        }
    }

    /* JADX WARN: Code duplicated, block: B:57:0x019f  */
    /* JADX WARN: Code duplicated, block: B:58:0x01a8  */
    private HashMap<String, Object> a(Object obj) {
        String str;
        Throwable th;
        String strValueOf;
        String str2;
        int i10;
        int iT;
        long j10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        String strV;
        int iY;
        int i19;
        String str3;
        String str4;
        int iJ;
        int iL;
        int iA;
        String str5;
        int oSVersionIntForFly = DH.SyncMtd.getOSVersionIntForFly();
        Object objG = cn.fly.tools.utils.a.C0046a.g(obj);
        HashMap<String, Object> map = new HashMap<>();
        if (cn.fly.tools.utils.a.C0046a.b(obj)) {
            strValueOf = String.valueOf(cn.fly.tools.utils.a.C0046a.h(objG));
            int i20 = cn.fly.tools.utils.a.C0046a.i(objG);
            if (i20 < 10) {
                str5 = "0" + i20;
            } else {
                str5 = "" + i20;
            }
            iJ = cn.fly.tools.utils.a.C0046a.j(objG);
            long jK = cn.fly.tools.utils.a.C0046a.k(objG);
            iL = cn.fly.tools.utils.a.C0046a.l(objG);
            str = str5;
            j10 = jK;
            i13 = -1;
            i14 = -1;
            i15 = -1;
            i16 = -1;
            i11 = -1;
            i17 = 1;
        } else {
            str = null;
            if (cn.fly.tools.utils.a.C0046a.c(obj)) {
                int iM = cn.fly.tools.utils.a.C0046a.m(objG);
                int iN = cn.fly.tools.utils.a.C0046a.n(objG);
                int iO = cn.fly.tools.utils.a.C0046a.o(objG);
                int iP = cn.fly.tools.utils.a.C0046a.p(objG);
                long jQ = cn.fly.tools.utils.a.C0046a.q(objG);
                i12 = iM;
                i16 = iP;
                strValueOf = null;
                j10 = jQ;
                i18 = -1;
                i11 = -1;
                i17 = 2;
                i14 = iN;
                i15 = iO;
                i13 = -1;
            } else {
                if (cn.fly.tools.utils.a.C0046a.d(obj)) {
                    strValueOf = String.valueOf(cn.fly.tools.utils.a.C0046a.h(objG));
                    int i21 = cn.fly.tools.utils.a.C0046a.i(objG);
                    if (i21 < 10) {
                        str4 = "0" + i21;
                    } else {
                        str4 = "" + i21;
                    }
                    iJ = cn.fly.tools.utils.a.C0046a.j(objG);
                    long jK2 = cn.fly.tools.utils.a.C0046a.k(objG);
                    iL = cn.fly.tools.utils.a.C0046a.l(objG);
                    str = str4;
                    j10 = jK2;
                    i13 = -1;
                    i14 = -1;
                    i15 = -1;
                    i16 = -1;
                    i11 = -1;
                    i17 = 3;
                } else {
                    if (cn.fly.tools.utils.a.C0046a.e(obj)) {
                        strV = String.valueOf(cn.fly.tools.utils.a.C0046a.h(objG));
                        int i22 = cn.fly.tools.utils.a.C0046a.i(objG);
                        if (i22 < 10) {
                            str3 = "0" + i22;
                        } else {
                            str3 = "" + i22;
                        }
                        int iR = cn.fly.tools.utils.a.C0046a.r(objG);
                        long jS = cn.fly.tools.utils.a.C0046a.s(objG);
                        int iT2 = cn.fly.tools.utils.a.C0046a.t(objG);
                        iY = oSVersionIntForFly >= 24 ? cn.fly.tools.utils.a.C0046a.u(objG) : -1;
                        i11 = iT2;
                        j10 = jS;
                        i12 = -1;
                        i15 = -1;
                        i16 = -1;
                        i17 = 4;
                        str = str3;
                        i18 = iR;
                        i19 = -1;
                        i14 = -1;
                    } else {
                        long jX = -1;
                        if (cn.fly.tools.utils.a.C0046a.f(obj)) {
                            try {
                                strV = cn.fly.tools.utils.a.C0046a.v(objG);
                                try {
                                    String strW = cn.fly.tools.utils.a.C0046a.w(objG);
                                    try {
                                        int iR2 = cn.fly.tools.utils.a.C0046a.r(objG);
                                        try {
                                            jX = cn.fly.tools.utils.a.C0046a.x(objG);
                                            iT = cn.fly.tools.utils.a.C0046a.t(objG);
                                            try {
                                                iY = cn.fly.tools.utils.a.C0046a.y(objG);
                                                j10 = jX;
                                                i18 = iR2;
                                                i11 = iT;
                                                i12 = -1;
                                                i14 = -1;
                                                i15 = -1;
                                                i16 = -1;
                                                i17 = 5;
                                                str = strW;
                                                i19 = -1;
                                            } catch (Throwable th2) {
                                                th = th2;
                                                strValueOf = strV;
                                                str2 = strW;
                                                i10 = iR2;
                                                FlyLog.getInstance().d(th);
                                                str = str2;
                                                j10 = jX;
                                                i11 = iT;
                                                i12 = -1;
                                                i13 = -1;
                                                i14 = -1;
                                                i15 = -1;
                                                i16 = -1;
                                                i17 = -1;
                                                i18 = i10;
                                                i19 = -1;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            strValueOf = strV;
                                            str2 = strW;
                                            i10 = iR2;
                                            iT = -1;
                                            FlyLog.getInstance().d(th);
                                            str = str2;
                                            j10 = jX;
                                            i11 = iT;
                                            i12 = -1;
                                            i13 = -1;
                                            i14 = -1;
                                            i15 = -1;
                                            i16 = -1;
                                            i17 = -1;
                                            i18 = i10;
                                            i19 = -1;
                                            if (DH.SyncMtd.getOSVersionIntForFly() >= 30) {
                                                iA = cn.fly.tools.utils.a.C0046a.A(cn.fly.tools.utils.a.C0046a.z(obj));
                                            } else {
                                                iA = -1;
                                            }
                                            map.put(cn.fly.commons.o.a("003gdc"), Integer.valueOf(i18));
                                            map.put(cn.fly.commons.o.a("004cfgg"), Long.valueOf(j10));
                                            map.put(cn.fly.commons.o.a("003jKfi:c"), Integer.valueOf(i19));
                                            map.put(cn.fly.commons.o.a("0035fididc"), Integer.valueOf(i12));
                                            map.put(cn.fly.commons.o.a("003eVdidc"), Integer.valueOf(i14));
                                            map.put(cn.fly.commons.o.a("003gdi"), Integer.valueOf(i15));
                                            map.put(cn.fly.commons.o.a("003gUdk0e"), Integer.valueOf(i16));
                                            map.put("mcc", strValueOf);
                                            map.put("mnc", str);
                                            map.put(cn.fly.commons.o.a("004i?ecTjf"), Integer.valueOf(i17));
                                            map.put("pci", Integer.valueOf(i11));
                                            map.put("xarfcn", Integer.valueOf(i13));
                                            map.put("dbm", Integer.valueOf(iA));
                                            return map;
                                        }
                                    } catch (Throwable th4) {
                                        th = th4;
                                        strValueOf = strV;
                                        str2 = strW;
                                        i10 = -1;
                                        iT = -1;
                                        FlyLog.getInstance().d(th);
                                        str = str2;
                                        j10 = jX;
                                        i11 = iT;
                                        i12 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i15 = -1;
                                        i16 = -1;
                                        i17 = -1;
                                        i18 = i10;
                                        i19 = -1;
                                        if (DH.SyncMtd.getOSVersionIntForFly() >= 30) {
                                            iA = cn.fly.tools.utils.a.C0046a.A(cn.fly.tools.utils.a.C0046a.z(obj));
                                        } else {
                                            iA = -1;
                                        }
                                        map.put(cn.fly.commons.o.a("003gdc"), Integer.valueOf(i18));
                                        map.put(cn.fly.commons.o.a("004cfgg"), Long.valueOf(j10));
                                        map.put(cn.fly.commons.o.a("003jKfi:c"), Integer.valueOf(i19));
                                        map.put(cn.fly.commons.o.a("0035fididc"), Integer.valueOf(i12));
                                        map.put(cn.fly.commons.o.a("003eVdidc"), Integer.valueOf(i14));
                                        map.put(cn.fly.commons.o.a("003gdi"), Integer.valueOf(i15));
                                        map.put(cn.fly.commons.o.a("003gUdk0e"), Integer.valueOf(i16));
                                        map.put("mcc", strValueOf);
                                        map.put("mnc", str);
                                        map.put(cn.fly.commons.o.a("004i?ecTjf"), Integer.valueOf(i17));
                                        map.put("pci", Integer.valueOf(i11));
                                        map.put("xarfcn", Integer.valueOf(i13));
                                        map.put("dbm", Integer.valueOf(iA));
                                        return map;
                                    }
                                } catch (Throwable th5) {
                                    th = th5;
                                    strValueOf = strV;
                                    str2 = null;
                                }
                            } catch (Throwable th6) {
                                th = th6;
                                strValueOf = null;
                                str2 = null;
                            }
                        } else {
                            j10 = -1;
                            strValueOf = null;
                            i12 = -1;
                            i13 = -1;
                            i19 = -1;
                            i14 = -1;
                            i18 = -1;
                            i15 = -1;
                            i16 = -1;
                            i11 = -1;
                            i17 = -1;
                        }
                    }
                    String str6 = strV;
                    i13 = iY;
                    strValueOf = str6;
                }
                if (DH.SyncMtd.getOSVersionIntForFly() >= 30) {
                    iA = cn.fly.tools.utils.a.C0046a.A(cn.fly.tools.utils.a.C0046a.z(obj));
                } else {
                    iA = -1;
                }
                map.put(cn.fly.commons.o.a("003gdc"), Integer.valueOf(i18));
                map.put(cn.fly.commons.o.a("004cfgg"), Long.valueOf(j10));
                map.put(cn.fly.commons.o.a("003jKfi:c"), Integer.valueOf(i19));
                map.put(cn.fly.commons.o.a("0035fididc"), Integer.valueOf(i12));
                map.put(cn.fly.commons.o.a("003eVdidc"), Integer.valueOf(i14));
                map.put(cn.fly.commons.o.a("003gdi"), Integer.valueOf(i15));
                map.put(cn.fly.commons.o.a("003gUdk0e"), Integer.valueOf(i16));
                map.put("mcc", strValueOf);
                map.put("mnc", str);
                map.put(cn.fly.commons.o.a("004i?ecTjf"), Integer.valueOf(i17));
                map.put("pci", Integer.valueOf(i11));
                map.put("xarfcn", Integer.valueOf(i13));
                map.put("dbm", Integer.valueOf(iA));
                return map;
            }
            i19 = -1;
            if (DH.SyncMtd.getOSVersionIntForFly() >= 30) {
                iA = cn.fly.tools.utils.a.C0046a.A(cn.fly.tools.utils.a.C0046a.z(obj));
            } else {
                iA = -1;
            }
            map.put(cn.fly.commons.o.a("003gdc"), Integer.valueOf(i18));
            map.put(cn.fly.commons.o.a("004cfgg"), Long.valueOf(j10));
            map.put(cn.fly.commons.o.a("003jKfi:c"), Integer.valueOf(i19));
            map.put(cn.fly.commons.o.a("0035fididc"), Integer.valueOf(i12));
            map.put(cn.fly.commons.o.a("003eVdidc"), Integer.valueOf(i14));
            map.put(cn.fly.commons.o.a("003gdi"), Integer.valueOf(i15));
            map.put(cn.fly.commons.o.a("003gUdk0e"), Integer.valueOf(i16));
            map.put("mcc", strValueOf);
            map.put("mnc", str);
            map.put(cn.fly.commons.o.a("004i?ecTjf"), Integer.valueOf(i17));
            map.put("pci", Integer.valueOf(i11));
            map.put("xarfcn", Integer.valueOf(i13));
            map.put("dbm", Integer.valueOf(iA));
            return map;
        }
        i18 = iJ;
        i19 = iL;
        i12 = -1;
        if (DH.SyncMtd.getOSVersionIntForFly() >= 30) {
            iA = cn.fly.tools.utils.a.C0046a.A(cn.fly.tools.utils.a.C0046a.z(obj));
        } else {
            iA = -1;
        }
        map.put(cn.fly.commons.o.a("003gdc"), Integer.valueOf(i18));
        map.put(cn.fly.commons.o.a("004cfgg"), Long.valueOf(j10));
        map.put(cn.fly.commons.o.a("003jKfi:c"), Integer.valueOf(i19));
        map.put(cn.fly.commons.o.a("0035fididc"), Integer.valueOf(i12));
        map.put(cn.fly.commons.o.a("003eVdidc"), Integer.valueOf(i14));
        map.put(cn.fly.commons.o.a("003gdi"), Integer.valueOf(i15));
        map.put(cn.fly.commons.o.a("003gUdk0e"), Integer.valueOf(i16));
        map.put("mcc", strValueOf);
        map.put("mnc", str);
        map.put(cn.fly.commons.o.a("004i?ecTjf"), Integer.valueOf(i17));
        map.put("pci", Integer.valueOf(i11));
        map.put("xarfcn", Integer.valueOf(i13));
        map.put("dbm", Integer.valueOf(iA));
        return map;
    }
}
