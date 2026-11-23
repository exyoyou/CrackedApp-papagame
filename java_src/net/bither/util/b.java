package net.bither.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.text.TextUtils;
import com.join.mgps.Util.c2;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.t2;
import com.join.mgps.Util.z;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static int f94533e = 2;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static ThreadPoolExecutor f94534f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static long f94535g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static long f94536h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Bitmap.CompressFormat f94537i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static b f94538j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Context f94539a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Hashtable<String, Integer> f94540b = new Hashtable<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Hashtable<String, String> f94541c = new Hashtable<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    List<e> f94542d;

    class a implements Runnable {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f94543b;

        a(final String val$path) {
            this.f94543b = val$path;
        }

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            b.this.u(this.f94543b, 0);
        }
    }

    /* JADX INFO: renamed from: net.bither.util.b$b, reason: collision with other inner class name */
    class C1215b implements NativeUtil.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f94545a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Integer f94546b;

        C1215b(final String val$destPath, final Integer val$quality) {
            this.f94545a = val$destPath;
            this.f94546b = val$quality;
        }

        @Override // net.bither.util.NativeUtil.a
        public void onFailed(String src) throws Throwable {
            h1.e("doCompress1-->onFailed==>finish compress.. fail");
            b.this.u(src, 2);
        }

        @Override // net.bither.util.NativeUtil.a
        public void onSuccess(String src) throws Throwable {
            h1.e("doCompress1-->onSuccess==>finish compress.. success ", src);
            try {
                long jO = b.o(new File(this.f94545a));
                if (jO < b.f94535g) {
                    h1.e("doCompress1-->finish compress.. success. size=" + jO);
                    b.this.u(src, 1);
                } else if (this.f94546b.intValue() - 10 > 20) {
                    int iIntValue = Integer.valueOf(this.f94546b.intValue()).intValue();
                    int i10 = iIntValue - 10;
                    h1.e("doCompress1-->re-compress.. size=" + jO, " newQuality=" + i10, " newInt=" + iIntValue);
                    b.this.m(src, this.f94545a, Integer.valueOf(i10));
                } else {
                    h1.e("doCompress1-->finish compress.. fail. size=" + jO);
                    b.this.u(src, 2);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    class c implements net.bither.util.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f94548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f94549b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f94550c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f94551d;

        c(final String val$destDir, final int val$quality, final Context val$context, final String val$src) {
            this.f94548a = val$destDir;
            this.f94549b = val$quality;
            this.f94550c = val$context;
            this.f94551d = val$src;
        }

        private void b(String src) throws Throwable {
            h1.e("OptimResultHandler-->optimSuccess");
            b.this.u(src, 1);
            if (b.this.f94541c.containsKey(src)) {
                b bVar = b.this;
                bVar.i(src, bVar.f94541c.get(src));
            }
        }

        void a(String src) throws Throwable {
            h1.e("OptimResultHandler-->optimFailure");
            b.this.u(src, 2);
        }

        @Override // net.bither.util.c.b
        public void onResult(boolean optimized, String msg) throws Throwable {
            h1.e("OptimResultHandler-->msg:" + msg);
            if (!optimized) {
                a(this.f94551d);
                return;
            }
            String[] strArrSplit = msg.split(",");
            String str = strArrSplit[0];
            new File(str).getName();
            if (strArrSplit.length == 8 && Integer.parseInt(strArrSplit[5]) < b.f94535g) {
                b(str);
            } else if (this.f94549b > 10) {
                b.this.l(this.f94550c, str, this.f94548a, ((double) (((long) Integer.parseInt(strArrSplit[5])) - b.f94535g)) < 1048576.0d ? this.f94549b - 5 : this.f94549b - 10);
            } else {
                b(str);
            }
        }
    }

    class d implements net.bither.util.c.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f94553a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f94554b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f94555c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ List f94556d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ HashMap f94557e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ f f94558f;

        d(final String val$destDir, final int val$quality, final Context val$context, final List val$srcImages, final HashMap val$tempHash, final f val$optimListener) {
            this.f94553a = val$destDir;
            this.f94554b = val$quality;
            this.f94555c = val$context;
            this.f94556d = val$srcImages;
            this.f94557e = val$tempHash;
            this.f94558f = val$optimListener;
        }

        private void b(String src, String dest) {
            f fVar;
            h1.e("OptimResultHandler-->optimSuccess");
            this.f94557e.put(t2.f(src), dest);
            if (!b.s(this.f94557e) || (fVar = this.f94558f) == null) {
                return;
            }
            b.v(this.f94556d, this.f94557e, fVar);
        }

        void a() {
            h1.e("OptimResultHandler-->optimFailure");
        }

        @Override // net.bither.util.c.b
        public void onResult(boolean optimized, String msg) throws Throwable {
            h1.e("OptimResultHandler-->msg:" + msg);
            if (!optimized) {
                a();
                return;
            }
            String[] strArrSplit = msg.split(",");
            String str = strArrSplit[0];
            if (strArrSplit.length != 8 || Integer.parseInt(strArrSplit[5]) >= b.f94535g) {
                if (this.f94554b <= 10) {
                    a();
                    return;
                } else {
                    b.A(this.f94555c, str, this.f94553a, ((double) (((long) Integer.parseInt(strArrSplit[5])) - b.f94535g)) < 1048576.0d ? this.f94554b - 5 : this.f94554b - 10, this.f94556d, this.f94557e, this.f94558f);
                    return;
                }
            }
            b(str, this.f94553a + net.lingala.zip4j.util.e.F0 + new File(str).getName());
        }
    }

    public interface e {
        void a(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState);
    }

    public interface f {
        void a(List<String> optimedImages);
    }

    static {
        int i10 = f94533e;
        f94534f = new net.bither.util.a(i10, i10, 500L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        f94535g = 314572L;
        f94536h = 104857L;
        f94537i = Bitmap.CompressFormat.JPEG;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void A(final Context context, final String src, final String destDir, final int quality, final List<String> srcImages, final HashMap<String, String> tempHash, final f optimListener) throws Throwable {
        String str = context.getFilesDir() + net.lingala.zip4j.util.e.F0 + "jpegoptim";
        if (!new File(str).exists()) {
            net.bither.util.c.e(context, str);
        }
        new net.bither.util.c(str, src, destDir, 1, quality, true).d(new d(destDir, quality, context, srcImages, tempHash, optimListener));
    }

    public static void B(String path, String outPath, int inSampleSize) throws Throwable {
        if (path == null) {
            return;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    Bitmap bitmapL = c2.l(path, inSampleSize);
                    if (bitmapL == null) {
                        B(path, outPath, inSampleSize - 1);
                        return;
                    }
                    FileOutputStream fileOutputStream2 = new FileOutputStream(outPath);
                    try {
                        bitmapL.compress(f94537i, 100, fileOutputStream2);
                        fileOutputStream2.close();
                    } catch (Exception e10) {
                        fileOutputStream = fileOutputStream2;
                        e = e10;
                        e.printStackTrace();
                        if (fileOutputStream == null) {
                        } else {
                            fileOutputStream.close();
                        }
                    } catch (Throwable th) {
                        fileOutputStream = fileOutputStream2;
                        th = th;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (IOException e11) {
                                e11.printStackTrace();
                            }
                        }
                        throw th;
                    }
                } catch (IOException e12) {
                    e12.printStackTrace();
                }
            } catch (Exception e13) {
                e = e13;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    private static int g(long size) {
        int i10 = ((float) size) - ((float) f94535g) < 1048576.0f ? 80 : 20;
        if (i10 < 1) {
            return 5;
        }
        return i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String src, String destPath) throws Throwable {
        try {
            if (this.f94541c.containsKey(src)) {
                if (o(new File(destPath)) < f94535g) {
                    u(src, 1);
                } else {
                    c2.n(c2.k(src), destPath);
                    if (o(new File(destPath)) < f94535g) {
                        u(src, 1);
                    } else {
                        u(src, 2);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static boolean k(File dir) {
        h1.e("deleteDir-->start delete dir " + dir + " ...");
        if (dir.isDirectory()) {
            if (r(dir + "")) {
                String[] list = dir.list();
                for (int i10 = 0; i10 < list.length; i10++) {
                    h1.e("deleteDir-->delete dir sub file " + list[i10] + " ...");
                    if (!k(new File(dir, list[i10]))) {
                        return false;
                    }
                }
            }
        }
        h1.e("deleteDir-->finished delete dir " + dir + " ...");
        return dir.delete();
    }

    public static long o(File file) throws Exception {
        if (!file.exists()) {
            File parentFile = file.getParentFile();
            if (!parentFile.exists()) {
                parentFile.mkdirs();
            }
            file.createNewFile();
            return 0L;
        }
        FileInputStream fileInputStream = null;
        try {
            try {
                FileInputStream fileInputStream2 = new FileInputStream(file);
                try {
                    long jAvailable = fileInputStream2.available();
                    fileInputStream2.close();
                    return jAvailable;
                } catch (Exception e10) {
                    e = e10;
                    fileInputStream = fileInputStream2;
                    e.printStackTrace();
                    if (fileInputStream == null) {
                        return 0L;
                    }
                    fileInputStream.close();
                    return 0L;
                } catch (Throwable th) {
                    th = th;
                    fileInputStream = fileInputStream2;
                    if (fileInputStream != null) {
                        fileInputStream.close();
                    }
                    throw th;
                }
            } catch (Exception e11) {
                e = e11;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static b p() {
        if (f94538j == null) {
            f94538j = new b();
        }
        return f94538j;
    }

    public static File q() {
        File file = new File(z.f50174m);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    private static boolean r(String path) {
        if (!TextUtils.isEmpty(path)) {
            if (path.startsWith(q() + "")) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean s(HashMap<String, String> map) {
        Iterator<String> it2 = map.values().iterator();
        while (it2.hasNext()) {
            if (t2.h(it2.next())) {
                return false;
            }
        }
        return true;
    }

    private void t(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState) {
        List<e> list = this.f94542d;
        if (list != null) {
            Iterator<e> it2 = list.iterator();
            while (it2.hasNext()) {
                it2.next().a(allFinished, compressMap, compressState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void v(List<String> srcImages, HashMap<String, String> tempHash, f optimListener) {
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < srcImages.size(); i10++) {
            arrayList.add(tempHash.get(t2.f(srcImages.get(i10))));
        }
        optimListener.a(arrayList);
    }

    public void e(e l10) {
        if (this.f94542d == null) {
            this.f94542d = new ArrayList();
        }
        if (this.f94542d.contains(l10)) {
            return;
        }
        this.f94542d.add(l10);
    }

    public void f(String path) throws Throwable {
        u(path, -1);
    }

    public Boolean h() {
        Iterator<Map.Entry<String, Integer>> it2 = this.f94540b.entrySet().iterator();
        if (it2.hasNext()) {
            while (it2.hasNext()) {
                int iIntValue = it2.next().getValue().intValue();
                if (iIntValue != 1 && iIntValue != 2) {
                    return Boolean.FALSE;
                }
            }
        }
        return true;
    }

    public void j(Context context, String path, boolean addTask) {
        h1.e("compressImage-->start notify task.." + path + " addTask=" + addTask);
        this.f94539a = context;
        try {
            w(path, addTask);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        h1.e("compressImage-->finish notify task.." + path + " addTask=" + addTask);
    }

    public void l(final Context context, final String src, final String destDir, final int quality) throws Throwable {
        String str = context.getFilesDir() + net.lingala.zip4j.util.e.F0 + "jpegoptim";
        if (!new File(str).exists()) {
            net.bither.util.c.e(context, str);
        }
        File file = new File(destDir);
        if (!file.exists()) {
            file.mkdirs();
        }
        new net.bither.util.c(str, src, destDir, 1, quality, true).d(new c(destDir, quality, context, src));
    }

    public void m(String src, final String destPath, final Integer quality) throws Throwable {
        h1.e("doCompress1-->start compress.." + src);
        try {
            NativeUtil.c(this.f94539a, src, destPath, quality.intValue(), true, new C1215b(destPath, quality));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void n(String src, final String destPath, Integer quality) throws Throwable {
        try {
            long jO = o(new File(src));
            Integer numValueOf = 100;
            while (jO > f94535g) {
                h1.e("notifyCompressSate-->system compress tool start..", "quality=" + numValueOf + " size=" + jO);
                if (numValueOf.intValue() > 10) {
                    numValueOf = Integer.valueOf(numValueOf.intValue() - 10);
                    c2.o(c2.k(src), destPath, numValueOf.intValue());
                    jO = o(new File(destPath));
                } else {
                    h1.e("notifyCompressSate-->system compress tool =>", "result=fail");
                    u(src, 2);
                }
            }
            if (numValueOf.intValue() == 100) {
                c2.o(c2.k(src), destPath, numValueOf.intValue());
            }
            long jO2 = o(new File(destPath));
            while (jO2 > f94535g) {
                h1.e("notifyCompressSate-->system compress tool start..", "quality=" + numValueOf + " size=" + jO2);
                if (numValueOf.intValue() > 10) {
                    numValueOf = Integer.valueOf(numValueOf.intValue() - 10);
                    c2.o(c2.k(src), destPath, numValueOf.intValue());
                    jO2 = o(new File(destPath));
                } else {
                    h1.e("notifyCompressSate-->system compress tool =>", "result=fail");
                    u(src, 2);
                }
            }
            h1.e("notifyCompressSate-->system compress tool =>", "quality=" + numValueOf, "result=success");
            u(src, 1);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void u(String src, int state) throws Throwable {
        long jO;
        try {
            h1.e("notifyCompressSate-->start notifyCompressSate.." + src + " state=" + state);
            if (this.f94541c.containsKey(src)) {
                this.f94540b.put(src, Integer.valueOf(state));
            }
            if (state != -1) {
                if (state != 0) {
                    if (state == 1 || state == 2) {
                        if (this.f94541c.containsKey(src)) {
                            x();
                        }
                    } else if (state == 3 && this.f94541c.containsKey(src)) {
                        File parentFile = new File(this.f94541c.get(src)).getParentFile();
                        if (parentFile.exists()) {
                            k(parentFile);
                        }
                        this.f94541c.remove(src);
                        this.f94540b.remove(src);
                    }
                } else if (this.f94541c.containsKey(src)) {
                    u(src, 3);
                    u(src, 0);
                } else {
                    String str = q() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis() + net.lingala.zip4j.util.e.F0 + t2.f(src) + ".jpg";
                    h1.e("notifyCompressSate-->put target to map.. destPath=" + str + "");
                    try {
                        if (src.contains("content://")) {
                            File fileP = o3.p(Uri.parse(src), this.f94539a);
                            src = fileP.getAbsolutePath();
                            jO = o(fileP);
                        } else {
                            jO = o(new File(src));
                        }
                        this.f94541c.put(src, str);
                        this.f94540b.put(src, 0);
                        h1.e("notifyCompressSate-->src file size=" + jO);
                        if (jO < ((long) (f94535g + 734003.2d))) {
                            h1.e("notifyCompressSate-->use system compress tool..");
                            n(src, str, 40);
                        } else {
                            h1.e("notifyCompressSate-->use jpegbither compress tool..");
                            m(src, str, 40);
                        }
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
            } else if (!this.f94541c.containsKey(src)) {
                String str2 = q() + net.lingala.zip4j.util.e.F0 + System.currentTimeMillis() + net.lingala.zip4j.util.e.F0 + t2.f(src) + ".jpg";
                h1.e("notifyCompressSate-->put target to map.. destPath=" + str2 + "");
                this.f94541c.put(src, str2);
                this.f94540b.put(src, 0);
            }
            h1.e("notifyCompressSate-->finished notifyCompressSate.." + src + " state=" + state);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    public synchronized void w(final String path, final boolean addTask) {
        try {
            if (addTask) {
                f(path);
                f94534f.execute(new a(path));
            } else {
                z(path);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public void x() {
        boolean zBooleanValue = h().booleanValue();
        if (zBooleanValue) {
            t(Boolean.valueOf(zBooleanValue), this.f94541c, this.f94540b);
        }
    }

    public void y(e l10) {
        List<e> list = this.f94542d;
        if (list == null || !list.contains(l10)) {
            return;
        }
        this.f94542d.remove(l10);
    }

    public void z(String path) throws Throwable {
        u(path, 3);
    }
}
