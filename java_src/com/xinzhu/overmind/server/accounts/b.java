package com.xinzhu.overmind.server.accounts;

import android.accounts.Account;
import android.os.Parcel;
import android.util.Pair;
import com.xinzhu.overmind.Overmind;
import com.xinzhu.overmind.utils.l;
import com.xinzhu.overmind.utils.p;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final File f89565a = new File(Overmind.getContext().getApplicationInfo().dataDir, "data/app/system/account-list.ini");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final File f89566b = new File(Overmind.getContext().getApplicationInfo().dataDir, "data/app/system/account-visibility-list.ini");

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f89567a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Account f89568b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public String f89569c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public String f89570d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f89571e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final List<Pair<String, String>> f89572f = new ArrayList();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final List<Pair<String, String>> f89573g = new ArrayList();
    }

    /* JADX INFO: renamed from: com.xinzhu.overmind.server.accounts.b$b, reason: collision with other inner class name */
    public static class C1127b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f89574a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Account f89575b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final List<Pair<String, Integer>> f89576c = new ArrayList();
    }

    public static boolean a() {
        return f89565a.delete();
    }

    public static boolean b() {
        return f89565a.exists();
    }

    public static List<a> c() throws Throwable {
        FileInputStream fileInputStream;
        Parcel parcelObtain = Parcel.obtain();
        ArrayList arrayList = new ArrayList();
        FileInputStream fileInputStream2 = null;
        try {
            fileInputStream = new FileInputStream(f89565a);
            try {
                try {
                    byte[] bArrW = l.w(fileInputStream);
                    parcelObtain.unmarshall(bArrW, 0, bArrW.length);
                    parcelObtain.setDataPosition(0);
                    parcelObtain.readInt();
                    for (int i10 = parcelObtain.readInt(); i10 > 0; i10--) {
                        a aVar = new a();
                        aVar.f89567a = parcelObtain.readInt();
                        String string = parcelObtain.readString();
                        aVar.f89569c = parcelObtain.readString();
                        aVar.f89568b = new Account(string, parcelObtain.readString());
                        aVar.f89570d = parcelObtain.readString();
                        aVar.f89571e = parcelObtain.readLong();
                        for (int i11 = parcelObtain.readInt(); i11 > 0; i11--) {
                            aVar.f89572f.add(new Pair<>(parcelObtain.readString(), parcelObtain.readString()));
                        }
                        for (int i12 = parcelObtain.readInt(); i12 > 0; i12--) {
                            aVar.f89573g.add(new Pair<>(parcelObtain.readString(), parcelObtain.readString()));
                        }
                        arrayList.add(aVar);
                    }
                    parcelObtain.recycle();
                    p.a(fileInputStream);
                    return arrayList;
                } catch (IOException e10) {
                    e = e10;
                    e.printStackTrace();
                    parcelObtain.recycle();
                    p.a(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                fileInputStream2 = fileInputStream;
                parcelObtain.recycle();
                p.a(fileInputStream2);
                throw th;
            }
        } catch (IOException e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            parcelObtain.recycle();
            p.a(fileInputStream2);
            throw th;
        }
    }

    /* JADX WARN: Not initialized variable reg: 5, insn: 0x0095: MOVE (r4 I:??[OBJECT, ARRAY]) = (r5 I:??[OBJECT, ARRAY]) (LINE:150), block:B:26:0x0095 */
    public static List<C1127b> d() throws Throwable {
        FileInputStream fileInputStream;
        Closeable closeable;
        Parcel parcelObtain = Parcel.obtain();
        ArrayList arrayList = new ArrayList();
        Closeable closeable2 = null;
        try {
            try {
                fileInputStream = new FileInputStream(f89566b);
                try {
                    byte[] bArrW = l.w(fileInputStream);
                    parcelObtain.unmarshall(bArrW, 0, bArrW.length);
                    parcelObtain.setDataPosition(0);
                    parcelObtain.readInt();
                    for (int i10 = parcelObtain.readInt(); i10 > 0; i10--) {
                        parcelObtain.readInt();
                        for (int i11 = parcelObtain.readInt(); i11 > 0; i11--) {
                            C1127b c1127b = new C1127b();
                            c1127b.f89575b = new Account(parcelObtain.readString(), parcelObtain.readString());
                            c1127b.f89574a = parcelObtain.readInt();
                            for (int i12 = parcelObtain.readInt(); i12 > 0; i12--) {
                                String string = parcelObtain.readString();
                                parcelObtain.readInt();
                                c1127b.f89576c.add(new Pair<>(string, Integer.valueOf(parcelObtain.readInt())));
                            }
                            arrayList.add(c1127b);
                        }
                    }
                    parcelObtain.recycle();
                    p.a(fileInputStream);
                    return arrayList;
                } catch (IOException e10) {
                    e = e10;
                    e.printStackTrace();
                    parcelObtain.recycle();
                    p.a(fileInputStream);
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                closeable2 = closeable;
                parcelObtain.recycle();
                p.a(closeable2);
                throw th;
            }
        } catch (IOException e11) {
            e = e11;
            fileInputStream = null;
        } catch (Throwable th2) {
            th = th2;
            parcelObtain.recycle();
            p.a(closeable2);
            throw th;
        }
    }
}
