package cn.fly.tools.b;

import android.content.Context;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Process;
import android.os.ResultReceiver;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import cn.fly.FlySDK;
import cn.fly.commons.C1293r;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.ReflectHelper;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileDescriptor;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStreamReader;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes7.dex */
public class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static volatile IBinder f2017a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static volatile int f2018b = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static volatile int f2019c = Integer.MIN_VALUE;

    /* JADX WARN: Code duplicated, block: B:16:0x0042 A[Catch: all -> 0x004a, TryCatch #3 {all -> 0x004a, blocks: (B:14:0x003c, B:16:0x0042, B:17:0x0046, B:23:0x005b, B:25:0x0061, B:26:0x0065, B:7:0x0014, B:9:0x002c, B:11:0x0032, B:12:0x0037), top: B:37:0x000e, inners: #0 }] */
    /* JADX WARN: Code duplicated, block: B:17:0x0046 A[Catch: all -> 0x004a, TRY_LEAVE, TryCatch #3 {all -> 0x004a, blocks: (B:14:0x003c, B:16:0x0042, B:17:0x0046, B:23:0x005b, B:25:0x0061, B:26:0x0065, B:7:0x0014, B:9:0x002c, B:11:0x0032, B:12:0x0037), top: B:37:0x000e, inners: #0 }] */
    public static Set<String> a(Context context, int i10) {
        Set<String> setA;
        HandlerThread handlerThread = new HandlerThread("M-H-XPL-1");
        handlerThread.start();
        Set<String> set = null;
        try {
            try {
                if (i10 != 1) {
                    if (i10 == 4 && !cn.fly.commons.a.m.a("005Ueg^g'ejheeh").equalsIgnoreCase(c.a(context).d().p()) && a()) {
                        setA = a(context, handlerThread);
                    } else if (DH.SyncMtd.getOSVersionIntForFly() >= 18) {
                        handlerThread.quitSafely();
                    } else {
                        handlerThread.quit();
                    }
                    return set;
                }
                setA = a(context, true, handlerThread);
                set = setA;
                if (DH.SyncMtd.getOSVersionIntForFly() >= 18) {
                    handlerThread.quitSafely();
                } else {
                    handlerThread.quit();
                }
            } catch (Throwable th) {
                try {
                    FlyLog.getInstance().d(th);
                    if (DH.SyncMtd.getOSVersionIntForFly() >= 18) {
                        handlerThread.quitSafely();
                    } else {
                        handlerThread.quit();
                    }
                } catch (Throwable th2) {
                    try {
                        if (DH.SyncMtd.getOSVersionIntForFly() >= 18) {
                            handlerThread.quitSafely();
                        } else {
                            handlerThread.quit();
                        }
                    } catch (Throwable th3) {
                        FlyLog.getInstance().d(th3);
                    }
                    throw th2;
                }
            }
        } catch (Throwable th4) {
            FlyLog.getInstance().d(th4);
        }
        return set;
    }

    private static Parcelable.Creator<?> b() throws Throwable {
        return (Parcelable.Creator) ReflectHelper.getStaticField(ReflectHelper.importClass(cn.fly.commons.a.m.a("030ef1edekelejedemVdZel4fjgfj<em'k(egemhm]edLfi>e?fkUg$ff-f4fgel")), cn.fly.commons.a.m.a("007Ffehkhjgegdhihk"));
    }

    private static int c() {
        if (f2019c != Integer.MIN_VALUE) {
            return f2019c;
        }
        if (DH.SyncMtd.getOSVersionIntForFly() >= 17) {
            try {
                int iIntValue = ((Integer) ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(cn.fly.commons.a.m.a("021ef>edekelejedemelgjemflgj6gQekglLef6edPhg")), cn.fly.commons.a.m.a("0093fkXgjGflgjKgJekffed"), new Object[]{Integer.valueOf(Process.myUid())}, new Class[]{Integer.TYPE})).intValue();
                f2019c = iIntValue;
                return iIntValue;
            } catch (Throwable th) {
                FlyLog.getInstance().d(th);
            }
        }
        return 0;
    }

    public static Set<String> a(Context context, HandlerThread handlerThread) throws Throwable {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader = null;
        if (cn.fly.commons.e.b()) {
            File file = new File(context.getFilesDir(), ".tmp11");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, cn.fly.commons.a.m.a("0025ejNf") + System.currentTimeMillis());
            File file3 = new File(file, "out" + System.currentTimeMillis());
            File file4 = new File(file, NotificationCompat.CATEGORY_ERROR + System.currentTimeMillis());
            if (file3.exists()) {
                file3.delete();
            }
            try {
                a(context, cn.fly.commons.a.m.a("007ked'fiGeQfk1g"), new String[]{cn.fly.commons.a.m.a("004hRejgj6j"), cn.fly.commons.a.m.a("008ked[fiUe_fkMgZgj")}, file2, file3, file4, handlerThread);
                if (file3.exists() && file3.length() > 0) {
                    HashSet hashSet = new HashSet();
                    fileInputStream = new FileInputStream(file3);
                    try {
                        inputStreamReader = new InputStreamReader(fileInputStream, "utf-8");
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                            try {
                                String strA = cn.fly.commons.a.m.a("008ked(fiFe@fk@gl");
                                for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                    String strTrim = line.trim();
                                    if (strTrim.length() > strA.length() && strTrim.substring(0, strA.length()).equalsIgnoreCase(strA)) {
                                        String strTrim2 = strTrim.substring(strA.length()).trim();
                                        if (!TextUtils.isEmpty(strTrim2)) {
                                            hashSet.add(strTrim2);
                                        }
                                    }
                                }
                                C1293r.a(bufferedReader2, inputStreamReader, fileInputStream);
                                file2.delete();
                                file3.delete();
                                file4.delete();
                                return hashSet;
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = null;
                    }
                } else {
                    C1293r.a(null, null, null);
                    file2.delete();
                    file3.delete();
                    file4.delete();
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
                inputStreamReader = null;
            }
            C1293r.a(bufferedReader, inputStreamReader, fileInputStream);
            file2.delete();
            file3.delete();
            file4.delete();
            throw th;
        }
        return null;
    }

    public static Set<String> a(Context context, boolean z10, HandlerThread handlerThread) throws Throwable {
        FileInputStream fileInputStream;
        InputStreamReader inputStreamReader;
        BufferedReader bufferedReader = null;
        if (cn.fly.commons.e.b()) {
            File file = new File(context.getFilesDir(), ".tmp11");
            if (!file.exists()) {
                file.mkdirs();
            }
            File file2 = new File(file, cn.fly.commons.a.m.a("002Oej(f") + System.currentTimeMillis());
            File file3 = new File(file, "out" + System.currentTimeMillis());
            File file4 = new File(file, NotificationCompat.CATEGORY_ERROR + System.currentTimeMillis());
            if (file3.exists()) {
                file3.delete();
            }
            try {
                if (z10) {
                    a(context, cn.fly.commons.a.m.a("007ked@fi5e(fk'g"), new String[]{cn.fly.commons.a.m.a("016%efehRg.ekfdil,edjFejeeejRjWej)g^gj"), cn.fly.commons.a.m.a("002ZilZe"), cn.fly.commons.a.m.a("026efDedekelejedemejVfjgfj^em.edj!ejel3fPemidgefffh"), cn.fly.commons.a.m.a("006Dililehgj4gSek"), "0"}, file2, file3, file4, handlerThread);
                } else {
                    a(context, cn.fly.commons.a.m.a("007ked fiNe0fkGg"), new String[]{cn.fly.commons.a.m.a("0160efehJgFekfdil9edjTejeeejXjTej3g0gj"), cn.fly.commons.a.m.a("002Lil5e"), cn.fly.commons.a.m.a("026efKedekelejedemej%fjgfj+emQedjFejelHf9emidgefffh"), "-c", cn.fly.commons.a.m.a("032efZedekelejedemej?fjgfj_emTdejgPfkelekfdemgfgeflfhfeglhjhk"), cn.fly.commons.a.m.a("006EililehgjFg)ek"), "0"}, file2, file3, file4, handlerThread);
                }
                if (file3.exists() && file3.length() > 0) {
                    HashSet hashSet = new HashSet();
                    fileInputStream = new FileInputStream(file3);
                    try {
                        inputStreamReader = new InputStreamReader(fileInputStream, "utf-8");
                        try {
                            BufferedReader bufferedReader2 = new BufferedReader(inputStreamReader);
                            try {
                                String strA = cn.fly.commons.a.m.a("012kedAfiVe^fk>gJfhUeGeg$g3jj");
                                for (String line = bufferedReader2.readLine(); line != null; line = bufferedReader2.readLine()) {
                                    String strTrim = line.trim();
                                    if (strTrim.length() > strA.length() && strTrim.substring(0, strA.length()).equalsIgnoreCase(strA)) {
                                        String strTrim2 = strTrim.substring(strA.length()).trim();
                                        if (!TextUtils.isEmpty(strTrim2)) {
                                            hashSet.add(strTrim2);
                                        }
                                    }
                                }
                                C1293r.a(bufferedReader2, inputStreamReader, fileInputStream);
                                file2.delete();
                                file3.delete();
                                file4.delete();
                                return hashSet;
                            } catch (Throwable th) {
                                th = th;
                                bufferedReader = bufferedReader2;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        inputStreamReader = null;
                    }
                } else {
                    C1293r.a(null, null, null);
                    file2.delete();
                    file3.delete();
                    file4.delete();
                }
            } catch (Throwable th4) {
                th = th4;
                fileInputStream = null;
                inputStreamReader = null;
            }
            C1293r.a(bufferedReader, inputStreamReader, fileInputStream);
            file2.delete();
            file3.delete();
            file4.delete();
            throw th;
        }
        return null;
    }

    private static int a(Context context, String str, String[] strArr, File file, File file2, File file3, HandlerThread handlerThread) throws Throwable {
        FileOutputStream fileOutputStream;
        FileOutputStream fileOutputStream2;
        Object objA;
        FileOutputStream fileOutputStream3 = null;
        try {
            IBinder iBinder = (IBinder) cn.fly.tools.a.f.a(context).a(cn.fly.commons.a.m.a("025ef[edekelejedemelgjemfmCg_ekeeejPdgAidUefe fkLgUek"), (Object) null, cn.fly.commons.a.m.a("010-fk6gj$fm$gNekeeej$dg"), new Class[]{String.class}, new Object[]{str}, IBinder.class, (Object) null);
            if (iBinder == null || (objA = cn.fly.tools.a.f.a(context).a(cn.fly.commons.a.m.a("024efNedekelejedemelgjemfmBighh@feWehhVggXedQfi"))) == null) {
                C1293r.a(null, null, null);
                return -1;
            }
            FileOutputStream fileOutputStream4 = new FileOutputStream(file);
            try {
                FileOutputStream fileOutputStream5 = new FileOutputStream(file2);
                try {
                    FileOutputStream fileOutputStream6 = new FileOutputStream(file3);
                    try {
                        fileOutputStream = fileOutputStream6;
                        fileOutputStream2 = fileOutputStream5;
                        try {
                            cn.fly.tools.a.f.a(context).a(IBinder.class, iBinder, cn.fly.commons.a.m.a("012Rgj1ighhTfeelegeg,efEed"), new Class[]{FileDescriptor.class, FileDescriptor.class, FileDescriptor.class, String[].class, Class.forName(cn.fly.commons.a.m.a("024efQedekelejedemelgjemfm_ighh-fe[ehh_ggRed1fi")), ResultReceiver.class}, new Object[]{fileOutputStream4.getFD(), fileOutputStream5.getFD(), fileOutputStream6.getFD(), strArr, objA, new ResultReceiver(new Handler(handlerThread.getLooper()))}, (Class<?>) null, (Object) null);
                            C1293r.a(fileOutputStream4, fileOutputStream2, fileOutputStream);
                            return 0;
                        } catch (Throwable th) {
                            th = th;
                            fileOutputStream3 = fileOutputStream4;
                            C1293r.a(fileOutputStream3, fileOutputStream2, fileOutputStream);
                            throw th;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        fileOutputStream = fileOutputStream6;
                        fileOutputStream2 = fileOutputStream5;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    fileOutputStream2 = fileOutputStream5;
                    fileOutputStream = null;
                }
            } catch (Throwable th4) {
                th = th4;
                fileOutputStream = null;
                fileOutputStream2 = null;
            }
        } catch (Throwable th5) {
            th = th5;
            fileOutputStream = null;
            fileOutputStream2 = null;
        }
        C1293r.a(fileOutputStream3, fileOutputStream2, fileOutputStream);
        throw th;
    }

    public static Object a(Context context, String str, int i10) throws Throwable {
        return a(context, str, i10, c(), a(context));
    }

    private static Object a(Context context, String str, int i10, int i11, int i12) throws Throwable {
        if (DH.SyncMtd.getOSVersionInt() < 23) {
            return null;
        }
        if (f2017a == null) {
            f2017a = (IBinder) cn.fly.tools.a.f.a(context).a(cn.fly.commons.a.m.a("025efWedekelejedemelgjemfm$g9ekeeejPdg:idFefeMfk?gLek"), (Object) null, cn.fly.commons.a.m.a("010JfkLgjJfmSg3ekeeej]dg"), new Class[]{String.class}, new Object[]{cn.fly.commons.a.m.a("007ked8fiFePfkNg")}, IBinder.class, (Object) null);
        }
        if (f2017a == null) {
            return null;
        }
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken(cn.fly.commons.a.m.a("034ef>edekelejedem d!elKfjgfj9em9k;egemffhm=ed-fi'e1fkAg]id2efeHfk<gDek"));
            parcelObtain.writeString(str);
            parcelObtain.writeInt(i10);
            parcelObtain.writeInt(i11);
            f2017a.transact(i12, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readTypedObject(b());
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
            cn.fly.tools.a.f.a(context).b(context);
        }
    }

    private static int a(Context context) throws Throwable {
        if (f2018b != Integer.MIN_VALUE) {
            return f2018b;
        }
        try {
            f2018b = ((Integer) cn.fly.tools.a.f.a(context).a(cn.fly.commons.a.m.a("034efRedekelejedemNdVel'fjgfj1emEk_egemffhmZed:fiWeOfkHgNidVefe8fk.gKek") + "$" + cn.fly.commons.a.m.a("004BfmKjOehgg"), cn.fly.commons.a.m.a("026Hgdhkgefhfmgefegdffhifheifk:gjRhmSedPfi.eXfk6gQff,fAfgel"), null, Integer.TYPE, 3)).intValue();
            return f2018b;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return f2018b;
        }
    }

    public static boolean a() {
        try {
            if (!cn.fly.commons.a.m.a("006i<ehKe8gh gBej").equalsIgnoreCase(DH.SyncMtd.getManufacturerForFly())) {
                return true;
            }
            final CountDownLatch countDownLatch = new CountDownLatch(1);
            final int[] iArr = new int[1];
            DH.requester(FlySDK.getContext()).getHmOsDetailedVer().request(new DH.DHResponder() { // from class: cn.fly.tools.b.l.1
                @Override // cn.fly.tools.utils.DH.DHResponder
                public void onResponse(DH.DHResponse dHResponse) {
                    String hmOsDetailedVer = dHResponse.getHmOsDetailedVer();
                    if (hmOsDetailedVer == null) {
                        hmOsDetailedVer = "";
                    }
                    iArr[0] = "3.0.0.200".compareTo(hmOsDetailedVer);
                    countDownLatch.countDown();
                }
            });
            countDownLatch.await();
            return iArr[0] > 0;
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return true;
        }
    }
}
