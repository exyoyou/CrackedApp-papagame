package cn.fly.commons;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import cn.fly.FlySDK;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.Data;
import cn.fly.tools.utils.ReflectHelper;
import cn.fly.tools.utils.UIHandler;
import com.join.mgps.Util.o0;
import java.io.BufferedOutputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.SecureRandom;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

/* JADX INFO: renamed from: cn.fly.commons.r, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes7.dex */
public class C1293r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile String f1416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final byte[] f1417b = new byte[0];

    /* JADX INFO: renamed from: cn.fly.commons.r$4, reason: invalid class name */
    static /* synthetic */ class AnonymousClass4 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1422a;

        static {
            int[] iArr = new int[InternationalDomain.values().length];
            f1422a = iArr;
            try {
                iArr[InternationalDomain.JP.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1422a[InternationalDomain.US.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static Context a() {
        try {
            Object objB = b();
            if (objB != null) {
                return (Context) ReflectHelper.invokeInstanceMethod(objB, m.a("014 glJhk0hf1lli1fkSefk:fkfmIg"), new Object[0]);
            }
            return null;
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    public static Object b() {
        final ReflectHelper.a<Void, Object> aVar = new ReflectHelper.a<Void, Object>() { // from class: cn.fly.commons.r.1
            @Override // cn.fly.tools.utils.ReflectHelper.a
            public Object a(Void r10) {
                return ReflectHelper.invokeStaticMethodNoThrow(ReflectHelper.importClassNoThrow(m.a("026fg6feflfmfkfefn:fll^fnhf3ekMfkfffk4k:gehe(j7flKhf@fe"), null), m.a("021e6fiflfl!hgkThfXek!fkfffk8kXgeheXj-fl8hf$fe"), null, new Object[0]);
            }
        };
        Object objA = aVar.a(null);
        if (objA != null) {
            return objA;
        }
        final Object obj = new Object();
        final Object[] objArr = new Object[1];
        synchronized (obj) {
            UIHandler.sendEmptyMessage(0, new Handler.Callback() { // from class: cn.fly.commons.r.2
                @Override // android.os.Handler.Callback
                public boolean handleMessage(Message message) {
                    Object obj2;
                    synchronized (obj) {
                        try {
                            objArr[0] = aVar.a(null);
                            obj2 = obj;
                        } catch (Throwable th) {
                            try {
                                FlyLog.getInstance().w(th);
                                obj2 = obj;
                            } catch (Throwable th2) {
                                obj.notify();
                                throw th2;
                            }
                        }
                        obj2.notify();
                    }
                    return false;
                }
            });
            try {
                obj.wait();
            } catch (Throwable th) {
                FlyLog.getInstance().w(th);
            }
        }
        return objArr[0];
    }

    public static Object c(String str) throws Throwable {
        return ReflectHelper.invokeInstanceMethod(ReflectHelper.invokeStaticMethod(ReflectHelper.importClass(m.a("017HjiAfNffHfQfnPifg,glfnilfiLgkNfkfh2h")), m.a("010$glDhkLilfi3gk!fkfhSh"), new Object[0]), m.a("004hLgkAhe"), new Object[]{str}, new Class[]{String.class});
    }

    public static Object d(String str) {
        try {
            return FlySDK.getContext().getSystemService(str);
        } catch (Throwable th) {
            FlyLog.getInstance().w(th);
            return null;
        }
    }

    public static boolean e() {
        if (DH.SyncMtd.getOSVersionInt() >= 36) {
            return true;
        }
        try {
            String systemProperties = DH.SyncMtd.getSystemProperties("ro.build.version.release_or_codename");
            return TextUtils.equals("Baklava", systemProperties) || Integer.parseInt(systemProperties) >= 16;
        } catch (Throwable unused) {
            return true;
        }
    }

    public static String d() {
        if (TextUtils.isEmpty(f1416a)) {
            synchronized (f1417b) {
                try {
                    if (TextUtils.isEmpty(f1416a)) {
                        f1416a = new cn.fly.tools.utils.c(FlySDK.getContext()).a();
                    }
                } catch (Throwable th) {
                    FlyLog.getInstance().d("[ICE] ee " + th, new Object[0]);
                }
            }
        }
        return f1416a;
    }

    public static void a(Closeable... closeableArr) {
        for (Closeable closeable : closeableArr) {
            if (closeable != null) {
                try {
                    closeable.close();
                } catch (Throwable th) {
                    FlyLog.getInstance().d(th);
                }
            }
        }
    }

    public static byte[] c() throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        DataOutputStream dataOutputStream;
        Throwable th;
        try {
            SecureRandom secureRandom = new SecureRandom();
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                try {
                    dataOutputStream.writeLong(secureRandom.nextLong());
                    dataOutputStream.writeLong(secureRandom.nextLong());
                    dataOutputStream.flush();
                    byte[] byteArray = byteArrayOutputStream.toByteArray();
                    a(dataOutputStream, byteArrayOutputStream);
                    return byteArray;
                } catch (Throwable th2) {
                    th = th2;
                    a(dataOutputStream, byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                dataOutputStream = null;
                th = th;
                a(dataOutputStream, byteArrayOutputStream);
                throw th;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            dataOutputStream = null;
        }
    }

    public static void a(final cn.fly.tools.utils.d<ArrayList<HashMap<String, Object>>> dVar) {
        DH.requester(FlySDK.getContext()).getMwlfo().getMbcdi().request(new DH.DHResponder() { // from class: cn.fly.commons.r.3
            @Override // cn.fly.tools.utils.DH.DHResponder
            public void onResponse(DH.DHResponse dHResponse) {
                ArrayList arrayList = new ArrayList();
                try {
                    ArrayList<HashMap<String, Object>> mwlfo = dHResponse.getMwlfo();
                    if (mwlfo != null && !mwlfo.isEmpty()) {
                        ArrayList<String> arrayListH = c.h();
                        if (arrayListH != null && !arrayListH.isEmpty()) {
                            String mbcdi = dHResponse.getMbcdi();
                            for (HashMap<String, Object> map : mwlfo) {
                                Object obj = map.get(m.a("005Ghlgngngghn"));
                                if (obj != null && String.valueOf(obj).equals(mbcdi)) {
                                    map.put(m.a("010 fjfjfj%e-fiflgffm)gg"), Boolean.TRUE);
                                    mbcdi = null;
                                }
                                HashMap map2 = new HashMap();
                                for (String str : arrayListH) {
                                    Object obj2 = map.get(str);
                                    if (obj2 != null) {
                                        map2.put(str, obj2);
                                    }
                                }
                                if (!map2.isEmpty()) {
                                    arrayList.add(map2);
                                }
                            }
                        }
                        dVar.a(null);
                        return;
                    }
                } catch (Throwable th) {
                    FlyLog.getInstance().w(th);
                }
                cn.fly.tools.utils.d dVar2 = dVar;
                if (arrayList.isEmpty()) {
                    arrayList = null;
                }
                dVar2.a(arrayList);
            }
        });
    }

    public static String a(String str) {
        return a(str, false);
    }

    public static String a(String str, boolean z10) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String strA = "";
        if (str.startsWith(m.a("007jkklmnn"))) {
            str = str.replace(m.a("007jkklmnn"), "");
        }
        if (str.startsWith("https://")) {
            str = str.replace("https://", "");
        }
        if (FlySDK.checkV6()) {
            strA = m.a("002[ffjj");
        } else {
            int i10 = AnonymousClass4.f1422a[FlySDK.getDmn().ordinal()];
            if (i10 == 1) {
                strA = "jp";
            } else if (i10 == 2) {
                strA = m.a("0026fihk");
            }
        }
        if (TextUtils.isEmpty(strA)) {
            return b(m.a("007jkklmnn") + str, z10);
        }
        if (str.startsWith(strA + o0.f49827a)) {
            return b(m.a("007jkklmnn") + str, z10);
        }
        return b(m.a("007jkklmnn") + strA + "-" + str, z10);
    }

    public static String b(String str) {
        return b(str, false);
    }

    public static String b(String str, boolean z10) {
        Uri uri;
        String scheme;
        String str2;
        try {
            if (TextUtils.isEmpty(str)) {
                return str;
            }
            boolean zCheckFH = FlySDK.checkFH(z10);
            if (zCheckFH || (DH.SyncMtd.getOSVersionIntForFly() >= 23 && !NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted())) {
                str = str.trim();
                if (str.startsWith(m.a("007jkklmnn")) && (uri = Uri.parse(str.trim())) != null && (scheme = uri.getScheme()) != null && scheme.equals(m.a("004jkkl"))) {
                    String host = uri.getHost();
                    String path = uri.getPath();
                    String query = uri.getQuery();
                    String str3 = "";
                    if (host != null) {
                        int port = uri.getPort();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append(host);
                        if (port <= 0 || port == 80) {
                            str2 = "";
                        } else {
                            str2 = ":" + port;
                        }
                        sb2.append(str2);
                        host = sb2.toString();
                        if (!zCheckFH && DH.SyncMtd.getOSVersionIntForFly() >= 24 && ((Boolean) ReflectHelper.invokeInstanceMethod(NetworkSecurityPolicy.getInstance(), m.a("0271fkhkgf6ihf'flTkhIgk)k5hefl9fMghghfkUeUin h1flfhfk;kkhUfe"), host)).booleanValue()) {
                            return str;
                        }
                    }
                    StringBuilder sb3 = new StringBuilder();
                    sb3.append("https://");
                    sb3.append(host);
                    if (path == null) {
                        path = "";
                    }
                    sb3.append(path);
                    if (query != null) {
                        str3 = "?" + query;
                    }
                    sb3.append(str3);
                    return sb3.toString();
                }
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return str;
    }

    public static void a(File file) throws Throwable {
        if (file == null || !file.exists()) {
            return;
        }
        if (file.isFile()) {
            b(file);
            return;
        }
        String[] list = file.list();
        if (list != null && list.length != 0) {
            for (String str : list) {
                File file2 = new File(file, str);
                if (file2.isDirectory()) {
                    a(file2);
                } else {
                    b(file2);
                }
            }
            b(file);
            return;
        }
        b(file);
    }

    public static void b(View view) {
        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe("input_method");
        if (systemServiceSafe == null) {
            return;
        }
        ((InputMethodManager) systemServiceSafe).toggleSoftInputFromWindow(view.getWindowToken(), 2, 0);
    }

    private static void b(File file) {
        ReflectHelper.invokeInstanceMethod(file, m.a("006]fe4hihkh"), null, null, null);
    }

    public static void a(View view) {
        Object systemServiceSafe = DH.SyncMtd.getSystemServiceSafe("input_method");
        if (systemServiceSafe == null) {
            return;
        }
        ((InputMethodManager) systemServiceSafe).hideSoftInputFromWindow(view.getWindowToken(), 0);
    }

    public static Intent a(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        return DH.SyncMtd.getOSVersionIntForFly() < 33 ? (Intent) ReflectHelper.invokeInstanceMethod(FlySDK.getContext(), m.a("0162fl9h5glfkhkHkh5flilBheh1fkff'hCfl"), new Object[]{broadcastReceiver, intentFilter}, new Class[]{BroadcastReceiver.class, IntentFilter.class}, null) : (Intent) ReflectHelper.invokeInstanceMethod(FlySDK.getContext(), m.a("016XflIh_glfkhkUkh*flil<heh_fkff9hGfl"), new Object[]{broadcastReceiver, intentFilter, 4}, new Class[]{BroadcastReceiver.class, IntentFilter.class, Integer.TYPE}, null);
    }

    public static void a(BroadcastReceiver broadcastReceiver) {
        ReflectHelper.invokeInstanceMethod(FlySDK.getContext(), m.a("018[fi]g3fl%h$glfkhk*kh_flil]heh(fkff@hHfl"), new Object[]{broadcastReceiver}, new Class[]{BroadcastReceiver.class}, null);
    }

    public static boolean a(long j10, long j11) {
        if (j10 <= 0 || j11 <= 0) {
            return false;
        }
        try {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
            return simpleDateFormat.format(new Date(j10)).equals(simpleDateFormat.format(new Date(j11)));
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
            return false;
        }
    }

    public static Object a(File file, byte[] bArr) {
        ByteArrayOutputStream byteArrayOutputStream;
        FileInputStream fileInputStream;
        try {
            fileInputStream = new FileInputStream(file);
            try {
                byteArrayOutputStream = new ByteArrayOutputStream();
                try {
                    byte[] bArr2 = new byte[1024];
                    while (true) {
                        int i10 = fileInputStream.read(bArr2);
                        if (i10 != -1) {
                            byteArrayOutputStream.write(bArr2, 0, i10);
                        } else {
                            Object objA = a(bArr, byteArrayOutputStream.toByteArray());
                            a(byteArrayOutputStream, fileInputStream);
                            return objA;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    try {
                        FlyLog.getInstance().d(th);
                        a(byteArrayOutputStream, fileInputStream);
                        return null;
                    } catch (Throwable th2) {
                        a(byteArrayOutputStream, fileInputStream);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                byteArrayOutputStream = null;
            }
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            fileInputStream = null;
        }
    }

    static Object a(byte[] bArr, byte[] bArr2) throws Throwable {
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        ObjectInputStream objectInputStream;
        if (bArr2 == null || bArr2.length == 0) {
            return null;
        }
        try {
            byteArrayInputStream = new ByteArrayInputStream(Data.paddingDecode(bArr, bArr2));
            try {
                objectInputStream = new ObjectInputStream(byteArrayInputStream);
                try {
                    Object object = objectInputStream.readObject();
                    a(objectInputStream, byteArrayInputStream);
                    return object;
                } catch (Throwable th2) {
                    th = th2;
                    a(objectInputStream, byteArrayInputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                objectInputStream = null;
            }
        } catch (Throwable th4) {
            byteArrayInputStream = null;
            th = th4;
            objectInputStream = null;
        }
    }

    static byte[] a(byte[] bArr, Object obj) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        if (obj == null) {
            return new byte[0];
        }
        ObjectOutputStream objectOutputStream = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                ObjectOutputStream objectOutputStream2 = new ObjectOutputStream(byteArrayOutputStream);
                try {
                    objectOutputStream2.writeObject(obj);
                    byte[] bArrAES128Encode = Data.AES128Encode(bArr, byteArrayOutputStream.toByteArray());
                    a(objectOutputStream2, byteArrayOutputStream);
                    return bArrAES128Encode;
                } catch (Throwable th) {
                    th = th;
                    objectOutputStream = objectOutputStream2;
                    a(objectOutputStream, byteArrayOutputStream);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Throwable th3) {
            th = th3;
            byteArrayOutputStream = null;
        }
    }

    public static void a(File file, byte[] bArr, Object obj) {
        FileOutputStream fileOutputStream;
        BufferedOutputStream bufferedOutputStream = null;
        try {
            byte[] bArrA = a(bArr, obj);
            if (bArrA.length > 0) {
                fileOutputStream = new FileOutputStream(file);
                try {
                    BufferedOutputStream bufferedOutputStream2 = new BufferedOutputStream(fileOutputStream);
                    try {
                        bufferedOutputStream2.write(bArrA);
                        bufferedOutputStream2.flush();
                        bufferedOutputStream = bufferedOutputStream2;
                    } catch (Throwable th) {
                        th = th;
                        bufferedOutputStream = bufferedOutputStream2;
                        try {
                            FlyLog.getInstance().d(th);
                            a(bufferedOutputStream, fileOutputStream);
                            return;
                        } catch (Throwable th2) {
                            a(bufferedOutputStream, fileOutputStream);
                            throw th2;
                        }
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            } else {
                fileOutputStream = null;
            }
            a(bufferedOutputStream, fileOutputStream);
        } catch (Throwable th4) {
            th = th4;
            fileOutputStream = null;
        }
    }

    public static String a(String str, int i10) {
        int i11;
        int i12 = 0;
        int i13 = 3;
        if (str.startsWith(com.sigmob.sdk.archives.tar.e.V)) {
            i11 = Integer.parseInt(str.substring(2, 3));
        } else if (str.startsWith("0")) {
            i11 = Integer.parseInt(str.substring(1, 3));
        } else {
            i11 = Integer.parseInt(str.substring(0, 3));
        }
        char[] charArray = str.toCharArray();
        int[] iArr = new int[i11];
        boolean z10 = true;
        while (i13 < charArray.length) {
            char c10 = charArray[i13];
            if (c10 < 'a') {
                z10 = !z10;
            } else {
                if (z10) {
                    iArr[i12] = c10 - i10;
                } else {
                    int i14 = (c10 - i10) * 10;
                    iArr[i12] = i14;
                    i13++;
                    iArr[i12] = i14 + (charArray[i13] - i10);
                }
                int i15 = iArr[i12];
                i12++;
            }
            i13++;
        }
        return d.a(iArr);
    }
}
