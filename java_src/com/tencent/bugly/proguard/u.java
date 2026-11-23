package com.tencent.bugly.proguard;

import android.content.Context;
import android.content.SharedPreferences;
import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final long f83657a = System.currentTimeMillis();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static u f83658b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f83659c;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SharedPreferences f83662f;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Map<Integer, Map<String, t>> f83661e = new HashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f83660d = aa.b().f83185e;

    private u(Context context) {
        this.f83659c = context;
        this.f83662f = context.getSharedPreferences("crashrecord", 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:18:0x003e A[Catch: all -> 0x0054, Exception -> 0x0056, PHI: r6
      0x003e: PHI (r6v10 java.io.ObjectInputStream) = (r6v9 java.io.ObjectInputStream), (r6v11 java.io.ObjectInputStream) binds: [B:17:0x003c, B:22:0x004a] A[DONT_GENERATE, DONT_INLINE], TRY_ENTER, TRY_LEAVE, TryCatch #6 {Exception -> 0x0056, blocks: (B:4:0x0003, B:10:0x002c, B:18:0x003e, B:26:0x0050, B:27:0x0053), top: B:37:0x0003, outer: #1 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v5, types: [java.io.ObjectInputStream] */
    /* JADX WARN: Type inference failed for: r6v6 */
    public synchronized <T extends List<?>> T d(int i10) {
        ObjectInputStream objectInputStream;
        try {
            File file = new File(this.f83659c.getDir("crashrecord", 0), String.valueOf(i10));
            ?? Exists = file.exists();
            try {
                if (Exists == 0) {
                    return null;
                }
                try {
                    objectInputStream = new ObjectInputStream(new FileInputStream(file));
                    try {
                        T t10 = (T) objectInputStream.readObject();
                        objectInputStream.close();
                        return t10;
                    } catch (IOException unused) {
                        al.a("open record file error", new Object[0]);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    } catch (ClassNotFoundException unused2) {
                        al.a("get object error", new Object[0]);
                        if (objectInputStream != null) {
                            objectInputStream.close();
                        }
                        return null;
                    }
                } catch (IOException unused3) {
                    objectInputStream = null;
                } catch (ClassNotFoundException unused4) {
                    objectInputStream = null;
                } catch (Throwable th) {
                    th = th;
                    Exists = 0;
                    if (Exists != 0) {
                        Exists.close();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused5) {
            al.e("readCrashRecord error", new Object[0]);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized boolean c(int i10) {
        try {
            List<t> listD = d(i10);
            if (listD == null) {
                return false;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (t tVar : listD) {
                String str = tVar.f83651b;
                if (str != null && str.equalsIgnoreCase(this.f83660d) && tVar.f83653d > 0) {
                    arrayList.add(tVar);
                }
                if (tVar.f83652c + 86400000 < jCurrentTimeMillis) {
                    arrayList2.add(tVar);
                }
            }
            Collections.sort(arrayList);
            if (arrayList.size() < 2) {
                listD.removeAll(arrayList2);
                a(i10, listD);
                return false;
            }
            if (arrayList.size() <= 0 || ((t) arrayList.get(arrayList.size() - 1)).f83652c + 86400000 >= jCurrentTimeMillis) {
                return true;
            }
            listD.clear();
            a(i10, listD);
            return false;
        } catch (Exception unused) {
            al.e("isFrequentCrash failed", new Object[0]);
            return false;
        }
    }

    public final synchronized boolean b(final int i10) {
        boolean z10;
        z10 = true;
        try {
            z10 = this.f83662f.getBoolean(i10 + "_" + this.f83660d, true);
            ak.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.u.2
                @Override // java.lang.Runnable
                public final void run() {
                    boolean zC = u.this.c(i10);
                    u.this.f83662f.edit().putBoolean(i10 + "_" + u.this.f83660d, !zC).commit();
                }
            });
        } catch (Exception unused) {
            al.e("canInit error", new Object[0]);
            return z10;
        }
        return z10;
    }

    public static synchronized u a(Context context) {
        if (f83658b == null) {
            f83658b = new u(context);
        }
        return f83658b;
    }

    public static synchronized u a() {
        return f83658b;
    }

    static /* synthetic */ boolean b(t tVar, t tVar2) {
        String str = tVar.f83654e;
        if (str != null && !str.equalsIgnoreCase(tVar2.f83654e)) {
            return true;
        }
        String str2 = tVar.f83655f;
        return !(str2 == null || str2.equalsIgnoreCase(tVar2.f83655f)) || tVar.f83653d <= 0;
    }

    public final void a(final int i10) {
        ak.a().a(new Runnable() { // from class: com.tencent.bugly.proguard.u.1

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f83663a = 1004;

            @Override // java.lang.Runnable
            public final void run() {
                t tVar;
                try {
                    if (TextUtils.isEmpty(u.this.f83660d)) {
                        return;
                    }
                    List<t> listD = u.this.d(this.f83663a);
                    if (listD == null) {
                        listD = new ArrayList();
                    }
                    if (u.this.f83661e.get(Integer.valueOf(this.f83663a)) == null) {
                        u.this.f83661e.put(Integer.valueOf(this.f83663a), new HashMap());
                    }
                    if (((Map) u.this.f83661e.get(Integer.valueOf(this.f83663a))).get(u.this.f83660d) == null) {
                        tVar = new t();
                        tVar.f83650a = this.f83663a;
                        tVar.f83656g = u.f83657a;
                        tVar.f83651b = u.this.f83660d;
                        tVar.f83655f = aa.b().f83195p;
                        tVar.f83654e = aa.b().f83189i;
                        tVar.f83652c = System.currentTimeMillis();
                        tVar.f83653d = i10;
                        ((Map) u.this.f83661e.get(Integer.valueOf(this.f83663a))).put(u.this.f83660d, tVar);
                    } else {
                        tVar = (t) ((Map) u.this.f83661e.get(Integer.valueOf(this.f83663a))).get(u.this.f83660d);
                        tVar.f83653d = i10;
                    }
                    ArrayList arrayList = new ArrayList();
                    boolean z10 = false;
                    for (t tVar2 : listD) {
                        if (u.a(tVar2, tVar)) {
                            tVar2.f83653d = tVar.f83653d;
                            z10 = true;
                        }
                        if (u.b(tVar2, tVar)) {
                            arrayList.add(tVar2);
                        }
                    }
                    listD.removeAll(arrayList);
                    if (!z10) {
                        listD.add(tVar);
                    }
                    u.this.a(this.f83663a, listD);
                } catch (Exception unused) {
                    al.e("saveCrashRecord failed", new Object[0]);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:29:0x0049 A[Catch: all -> 0x004d, Exception -> 0x004f, TRY_ENTER, TryCatch #1 {Exception -> 0x004f, blocks: (B:7:0x0006, B:11:0x0025, B:22:0x003f, B:29:0x0049, B:30:0x004c), top: B:40:0x0006, outer: #5 }] */
    public synchronized <T extends List<?>> void a(int i10, T t10) {
        ObjectOutputStream objectOutputStream;
        Throwable th;
        IOException e10;
        if (t10 == null) {
            return;
        }
        try {
            try {
                objectOutputStream = new ObjectOutputStream(new FileOutputStream(new File(this.f83659c.getDir("crashrecord", 0), String.valueOf(i10))));
                try {
                    try {
                        objectOutputStream.writeObject(t10);
                        objectOutputStream.close();
                    } catch (IOException e11) {
                        e10 = e11;
                        e10.printStackTrace();
                        al.a("open record file error", new Object[0]);
                        if (objectOutputStream != null) {
                            objectOutputStream.close();
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    if (objectOutputStream != null) {
                        objectOutputStream.close();
                    }
                    throw th;
                }
            } catch (IOException e12) {
                objectOutputStream = null;
                e10 = e12;
            } catch (Throwable th3) {
                objectOutputStream = null;
                th = th3;
                if (objectOutputStream != null) {
                    objectOutputStream.close();
                }
                throw th;
            }
        } catch (Exception unused) {
            al.e("writeCrashRecord error", new Object[0]);
        }
    }

    static /* synthetic */ boolean a(t tVar, t tVar2) {
        String str;
        return tVar.f83656g == tVar2.f83656g && (str = tVar.f83651b) != null && str.equalsIgnoreCase(tVar2.f83651b);
    }
}
