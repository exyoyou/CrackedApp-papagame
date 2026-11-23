package com.airbnb.lottie;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Typeface;
import android.util.Base64;
import androidx.annotation.Nullable;
import androidx.annotation.RawRes;
import androidx.annotation.WorkerThread;
import com.airbnb.lottie.parser.moshi.JsonReader;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.ZipEntry;
import java.util.zip.ZipInputStream;
import okio.BufferedSource;
import okio.Okio;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes7.dex */
public class d0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, e1<j>> f5608a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Set<f1> f5609b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final byte[] f5610c = {80, 75, 3, 4};

    private d0() {
    }

    public static e1<j> A(final InputStream inputStream, @Nullable final String str) {
        return s(str, new Callable() { // from class: com.airbnb.lottie.m
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.C(inputStream, str);
            }
        }, new Runnable() { // from class: com.airbnb.lottie.n
            @Override // java.lang.Runnable
            public final void run() {
                com.airbnb.lottie.utils.l.c(inputStream);
            }
        });
    }

    public static void A0(f1 f1Var) {
        f5609b.remove(f1Var);
    }

    public static e1<j> B(final InputStream inputStream, @Nullable final String str, final boolean z10) {
        return s(str, new Callable() { // from class: com.airbnb.lottie.k
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.D(inputStream, str, z10);
            }
        }, new Runnable() { // from class: com.airbnb.lottie.u
            @Override // java.lang.Runnable
            public final void run() {
                d0.m0(z10, inputStream);
            }
        });
    }

    @WorkerThread
    public static c1<j> C(InputStream inputStream, @Nullable String str) {
        return D(inputStream, str, true);
    }

    @WorkerThread
    public static c1<j> D(InputStream inputStream, @Nullable String str, boolean z10) {
        return G(JsonReader.p(Okio.buffer(Okio.source(inputStream))), str, z10);
    }

    public static e1<j> E(final JsonReader jsonReader, @Nullable final String str) {
        return s(str, new Callable() { // from class: com.airbnb.lottie.z
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.F(jsonReader, str);
            }
        }, new Runnable() { // from class: com.airbnb.lottie.a0
            @Override // java.lang.Runnable
            public final void run() {
                com.airbnb.lottie.utils.l.c(jsonReader);
            }
        });
    }

    @WorkerThread
    public static c1<j> F(JsonReader jsonReader, @Nullable String str) {
        return G(jsonReader, str, true);
    }

    @WorkerThread
    public static c1<j> G(JsonReader jsonReader, @Nullable String str, boolean z10) {
        return H(jsonReader, str, z10);
    }

    private static c1<j> H(JsonReader jsonReader, @Nullable String str, boolean z10) {
        try {
            j jVarB = str == null ? null : com.airbnb.lottie.model.f.c().b(str);
            if (jVarB != null) {
                return new c1<>(jVarB);
            }
            j jVarA = com.airbnb.lottie.parser.w.a(jsonReader);
            if (str != null) {
                com.airbnb.lottie.model.f.c().d(str, jVarA);
            }
            return new c1<>(jVarA);
        } catch (Exception e10) {
            return new c1<>((Throwable) e10);
        } finally {
            if (z10) {
                com.airbnb.lottie.utils.l.c(jsonReader);
            }
        }
    }

    public static e1<j> I(final String str, @Nullable final String str2) {
        return s(str2, new Callable() { // from class: com.airbnb.lottie.l
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.J(str, str2);
            }
        }, null);
    }

    @WorkerThread
    public static c1<j> J(String str, @Nullable String str2) {
        return F(JsonReader.p(Okio.buffer(Okio.source(new ByteArrayInputStream(str.getBytes())))), str2);
    }

    @WorkerThread
    @Deprecated
    public static c1<j> K(JSONObject jSONObject, @Nullable String str) {
        return J(jSONObject.toString(), str);
    }

    public static e1<j> L(Context context, @RawRes int i10) {
        return M(context, i10, x0(context, i10));
    }

    public static e1<j> M(Context context, @RawRes final int i10, @Nullable final String str) {
        final WeakReference weakReference = new WeakReference(context);
        final Context applicationContext = context.getApplicationContext();
        return s(str, new Callable() { // from class: com.airbnb.lottie.t
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.q0(weakReference, applicationContext, i10, str);
            }
        }, null);
    }

    @WorkerThread
    public static c1<j> N(Context context, @RawRes int i10) {
        return O(context, i10, x0(context, i10));
    }

    @WorkerThread
    public static c1<j> O(Context context, @RawRes int i10, @Nullable String str) {
        j jVarB = str == null ? null : com.airbnb.lottie.model.f.c().b(str);
        if (jVarB != null) {
            return new c1<>(jVarB);
        }
        try {
            BufferedSource bufferedSourceBuffer = Okio.buffer(Okio.source(context.getResources().openRawResource(i10)));
            return d0(bufferedSourceBuffer).booleanValue() ? X(context, new ZipInputStream(bufferedSourceBuffer.inputStream()), str) : C(bufferedSourceBuffer.inputStream(), str);
        } catch (Resources.NotFoundException e10) {
            return new c1<>((Throwable) e10);
        }
    }

    public static e1<j> P(Context context, String str) {
        return Q(context, str, "url_" + str);
    }

    public static e1<j> Q(final Context context, final String str, @Nullable final String str2) {
        return s(str2, new Callable() { // from class: com.airbnb.lottie.b0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.r0(context, str, str2);
            }
        }, null);
    }

    @WorkerThread
    public static c1<j> R(Context context, String str) {
        return S(context, str, str);
    }

    @WorkerThread
    public static c1<j> S(Context context, String str, @Nullable String str2) {
        j jVarB = str2 == null ? null : com.airbnb.lottie.model.f.c().b(str2);
        if (jVarB != null) {
            return new c1<>(jVarB);
        }
        c1<j> c1VarC = e.i(context).c(context, str, str2);
        if (str2 != null && c1VarC.b() != null) {
            com.airbnb.lottie.model.f.c().d(str2, c1VarC.b());
        }
        return c1VarC;
    }

    public static e1<j> T(final Context context, final ZipInputStream zipInputStream, @Nullable final String str) {
        return s(str, new Callable() { // from class: com.airbnb.lottie.v
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.X(context, zipInputStream, str);
            }
        }, new Runnable() { // from class: com.airbnb.lottie.w
            @Override // java.lang.Runnable
            public final void run() {
                com.airbnb.lottie.utils.l.c(zipInputStream);
            }
        });
    }

    public static e1<j> U(final Context context, final ZipInputStream zipInputStream, @Nullable final String str, boolean z10) {
        return s(str, new Callable() { // from class: com.airbnb.lottie.x
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.X(context, zipInputStream, str);
            }
        }, z10 ? new Runnable() { // from class: com.airbnb.lottie.y
            @Override // java.lang.Runnable
            public final void run() {
                com.airbnb.lottie.utils.l.c(zipInputStream);
            }
        } : null);
    }

    public static e1<j> V(ZipInputStream zipInputStream, @Nullable String str) {
        return T(null, zipInputStream, str);
    }

    public static e1<j> W(ZipInputStream zipInputStream, @Nullable String str, boolean z10) {
        return U(null, zipInputStream, str, z10);
    }

    @WorkerThread
    public static c1<j> X(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str) {
        return Y(context, zipInputStream, str, true);
    }

    @WorkerThread
    public static c1<j> Y(@Nullable Context context, ZipInputStream zipInputStream, @Nullable String str, boolean z10) {
        try {
            return b0(context, zipInputStream, str);
        } finally {
            if (z10) {
                com.airbnb.lottie.utils.l.c(zipInputStream);
            }
        }
    }

    public static c1<j> Z(ZipInputStream zipInputStream, @Nullable String str) {
        return a0(zipInputStream, str, true);
    }

    public static c1<j> a0(ZipInputStream zipInputStream, @Nullable String str, boolean z10) {
        return Y(null, zipInputStream, str, z10);
    }

    @WorkerThread
    private static c1<j> b0(Context context, ZipInputStream zipInputStream, @Nullable String str) {
        j jVarB;
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        if (str == null) {
            jVarB = null;
        } else {
            try {
                jVarB = com.airbnb.lottie.model.f.c().b(str);
            } catch (IOException e10) {
                return new c1<>((Throwable) e10);
            }
        }
        if (jVarB != null) {
            return new c1<>(jVarB);
        }
        ZipEntry nextEntry = zipInputStream.getNextEntry();
        j jVarB2 = null;
        while (nextEntry != null) {
            String name = nextEntry.getName();
            if (name.contains("__MACOSX")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().equalsIgnoreCase("manifest.json")) {
                zipInputStream.closeEntry();
            } else if (nextEntry.getName().contains(".json")) {
                jVarB2 = H(JsonReader.p(Okio.buffer(Okio.source(zipInputStream))), null, false).b();
            } else if (name.contains(".png") || name.contains(".webp") || name.contains(".jpg") || name.contains(".jpeg")) {
                String[] strArrSplit = name.split(net.lingala.zip4j.util.e.F0);
                map.put(strArrSplit[strArrSplit.length - 1], BitmapFactory.decodeStream(zipInputStream));
            } else if (name.contains(".ttf") || name.contains(".otf")) {
                String[] strArrSplit2 = name.split(net.lingala.zip4j.util.e.F0);
                String str2 = strArrSplit2[strArrSplit2.length - 1];
                String str3 = str2.split("\\.")[0];
                File file = new File(context.getCacheDir(), str2);
                new FileOutputStream(file);
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    try {
                        byte[] bArr = new byte[4096];
                        while (true) {
                            int i10 = zipInputStream.read(bArr);
                            if (i10 == -1) {
                                break;
                            }
                            fileOutputStream.write(bArr, 0, i10);
                        }
                        fileOutputStream.flush();
                        fileOutputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileOutputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    com.airbnb.lottie.utils.f.f("Unable to save font " + str3 + " to the temporary file: " + str2 + ". ", th3);
                }
                Typeface typefaceCreateFromFile = Typeface.createFromFile(file);
                if (!file.delete()) {
                    com.airbnb.lottie.utils.f.e("Failed to delete temp font file " + file.getAbsolutePath() + com.join.mgps.Util.o0.f49827a);
                }
                map2.put(str3, typefaceCreateFromFile);
            } else {
                zipInputStream.closeEntry();
            }
            nextEntry = zipInputStream.getNextEntry();
        }
        if (jVarB2 == null) {
            return new c1<>((Throwable) new IllegalArgumentException("Unable to parse composition"));
        }
        for (Map.Entry entry : map.entrySet()) {
            x0 x0VarU = u(jVarB2, (String) entry.getKey());
            if (x0VarU != null) {
                x0VarU.h(com.airbnb.lottie.utils.l.m((Bitmap) entry.getValue(), x0VarU.f(), x0VarU.d()));
            }
        }
        for (Map.Entry entry2 : map2.entrySet()) {
            boolean z10 = false;
            for (com.airbnb.lottie.model.b bVar : jVarB2.g().values()) {
                if (bVar.b().equals(entry2.getKey())) {
                    bVar.f((Typeface) entry2.getValue());
                    z10 = true;
                }
            }
            if (!z10) {
                com.airbnb.lottie.utils.f.e("Parsed font for " + ((String) entry2.getKey()) + " however it was not found in the animation.");
            }
        }
        if (map.isEmpty()) {
            Iterator<Map.Entry<String, x0>> it2 = jVarB2.j().entrySet().iterator();
            while (it2.hasNext()) {
                x0 value = it2.next().getValue();
                if (value == null) {
                    return null;
                }
                String strC = value.c();
                BitmapFactory.Options options = new BitmapFactory.Options();
                options.inScaled = true;
                options.inDensity = 160;
                if (strC.startsWith("data:") && strC.indexOf("base64,") > 0) {
                    try {
                        byte[] bArrDecode = Base64.decode(strC.substring(strC.indexOf(44) + 1), 0);
                        value.h(BitmapFactory.decodeByteArray(bArrDecode, 0, bArrDecode.length, options));
                    } catch (IllegalArgumentException e11) {
                        com.airbnb.lottie.utils.f.f("data URL did not have correct base64 format.", e11);
                        return null;
                    }
                }
            }
        }
        if (str != null) {
            com.airbnb.lottie.model.f.c().d(str, jVarB2);
        }
        return new c1<>(jVarB2);
    }

    private static boolean c0(Context context) {
        return (context.getResources().getConfiguration().uiMode & 48) == 32;
    }

    private static Boolean d0(BufferedSource bufferedSource) {
        try {
            BufferedSource bufferedSourcePeek = bufferedSource.peek();
            for (byte b10 : f5610c) {
                if (bufferedSourcePeek.readByte() != b10) {
                    return Boolean.FALSE;
                }
            }
            bufferedSourcePeek.close();
            return Boolean.TRUE;
        } catch (Exception e10) {
            com.airbnb.lottie.utils.f.c("Failed to check zip file header", e10);
            return Boolean.FALSE;
        } catch (NoSuchMethodError unused) {
            return Boolean.FALSE;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c1 e0(j jVar) throws Exception {
        return new c1(jVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f0(String str, AtomicBoolean atomicBoolean, j jVar) {
        Map<String, e1<j>> map = f5608a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            w0(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void g0(String str, AtomicBoolean atomicBoolean, Throwable th) {
        Map<String, e1<j>> map = f5608a;
        map.remove(str);
        atomicBoolean.set(true);
        if (map.size() == 0) {
            w0(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void m0(boolean z10, InputStream inputStream) {
        if (z10) {
            com.airbnb.lottie.utils.l.c(inputStream);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c1 q0(WeakReference weakReference, Context context, int i10, String str) throws Exception {
        Context context2 = (Context) weakReference.get();
        if (context2 != null) {
            context = context2;
        }
        return O(context, i10, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ c1 r0(Context context, String str, String str2) throws Exception {
        c1<j> c1VarC = e.i(context).c(context, str, str2);
        if (str2 != null && c1VarC.b() != null) {
            com.airbnb.lottie.model.f.c().d(str2, c1VarC.b());
        }
        return c1VarC;
    }

    private static e1<j> s(@Nullable final String str, Callable<c1<j>> callable, @Nullable Runnable runnable) {
        final j jVarB = str == null ? null : com.airbnb.lottie.model.f.c().b(str);
        e1<j> e1Var = jVarB != null ? new e1<>(new Callable() { // from class: com.airbnb.lottie.o
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.e0(jVarB);
            }
        }) : null;
        if (str != null) {
            Map<String, e1<j>> map = f5608a;
            if (map.containsKey(str)) {
                e1Var = map.get(str);
            }
        }
        if (e1Var != null) {
            if (runnable != null) {
                runnable.run();
            }
            return e1Var;
        }
        e1<j> e1Var2 = new e1<>(callable);
        if (str != null) {
            final AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            e1Var2.d(new y0() { // from class: com.airbnb.lottie.p
                @Override // com.airbnb.lottie.y0
                public final void onResult(Object obj) {
                    d0.f0(str, atomicBoolean, (j) obj);
                }
            });
            e1Var2.c(new y0() { // from class: com.airbnb.lottie.q
                @Override // com.airbnb.lottie.y0
                public final void onResult(Object obj) {
                    d0.g0(str, atomicBoolean, (Throwable) obj);
                }
            });
            if (!atomicBoolean.get()) {
                Map<String, e1<j>> map2 = f5608a;
                map2.put(str, e1Var2);
                if (map2.size() == 1) {
                    w0(false);
                }
            }
        }
        return e1Var2;
    }

    public static void t(Context context) {
        f5608a.clear();
        com.airbnb.lottie.model.f.c().a();
        com.airbnb.lottie.network.f fVarH = e.h(context);
        if (fVarH != null) {
            fVarH.a();
        }
    }

    @Nullable
    private static x0 u(j jVar, String str) {
        for (x0 x0Var : jVar.j().values()) {
            if (x0Var.c().equals(str)) {
                return x0Var;
            }
        }
        return null;
    }

    public static e1<j> v(Context context, String str) {
        return w(context, str, "asset_" + str);
    }

    public static e1<j> w(Context context, final String str, @Nullable final String str2) {
        final Context applicationContext = context.getApplicationContext();
        return s(str2, new Callable() { // from class: com.airbnb.lottie.s
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.y(applicationContext, str, str2);
            }
        }, null);
    }

    private static void w0(boolean z10) {
        ArrayList arrayList = new ArrayList(f5609b);
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            ((f1) arrayList.get(i10)).a(z10);
        }
    }

    @WorkerThread
    public static c1<j> x(Context context, String str) {
        return y(context, str, "asset_" + str);
    }

    private static String x0(Context context, @RawRes int i10) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append("rawRes");
        sb2.append(c0(context) ? "_night_" : "_day_");
        sb2.append(i10);
        return sb2.toString();
    }

    @WorkerThread
    public static c1<j> y(Context context, String str, @Nullable String str2) {
        j jVarB = str2 == null ? null : com.airbnb.lottie.model.f.c().b(str2);
        if (jVarB != null) {
            return new c1<>(jVarB);
        }
        try {
            if (!str.endsWith(".zip") && !str.endsWith(".lottie")) {
                return C(context.getAssets().open(str), str2);
            }
            return X(context, new ZipInputStream(context.getAssets().open(str)), str2);
        } catch (IOException e10) {
            return new c1<>((Throwable) e10);
        }
    }

    public static void y0(f1 f1Var) {
        f5609b.add(f1Var);
        f1Var.a(f5608a.size() == 0);
    }

    @Deprecated
    public static e1<j> z(final JSONObject jSONObject, @Nullable final String str) {
        return s(str, new Callable() { // from class: com.airbnb.lottie.c0
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return d0.K(jSONObject, str);
            }
        }, null);
    }

    public static void z0(int i10) {
        com.airbnb.lottie.model.f.c().e(i10);
    }
}
