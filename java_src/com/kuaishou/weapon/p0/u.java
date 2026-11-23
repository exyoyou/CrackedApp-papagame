package com.kuaishou.weapon.p0;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class u implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int f74903a = 1;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f74904b = 2;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int f74905c = 4;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int f74906d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int f74907e = 8;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int f74908f = 1;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f74909g = 3;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f74910h = 4;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static long f74911o;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Context f74913j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private q f74914k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private t f74915l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private File f74916m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private dn f74917n;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f74918p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f74920r;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f74919q = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    List<Integer> f74912i = new ArrayList();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Map<Integer, a> f74921s = new HashMap();

    class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f74922a;

        public a(int i10) {
            this.f74922a = i10;
        }
    }

    public u(Context context, int i10, boolean z10) {
        this.f74918p = 0;
        this.f74920r = false;
        this.f74913j = context;
        this.f74914k = q.a(context);
        this.f74915l = t.a(context);
        this.f74917n = dn.a(context);
        this.f74916m = new File(context.getFilesDir(), ".tmp");
        this.f74918p = i10;
        this.f74920r = z10;
    }

    public JSONObject a() {
        try {
            String str = cs.f74654a + cs.f74660g;
            String strA = ct.a(this.f74913j);
            if (!TextUtils.isEmpty(strA)) {
                str = str + "?" + strA;
            }
            JSONObject jSONObject = new JSONObject();
            JSONObject jSONObjectC = ct.c(this.f74913j);
            if (jSONObjectC != null) {
                jSONObject.put("data", new bl(this.f74913j).c(jSONObjectC.toString()));
            }
            l lVarA = l.a(this.f74913j);
            m mVar = new m(str, jSONObject);
            mVar.a(WeaponHI.cookieData);
            mVar.b(WeaponHI.encryENV);
            JSONObject jSONObject2 = new JSONObject(lVarA.a(mVar));
            int iOptInt = jSONObject2.optInt("result", 0);
            if (iOptInt != 1) {
                if (iOptInt != -7) {
                    return null;
                }
                dn.a(this.f74913j).a(dn.f74758a, 1, false);
                return null;
            }
            String strA2 = new bl(this.f74913j).a(jSONObject2.getString("antispamPluginManageRsp"));
            if (TextUtils.isEmpty(strA2)) {
                if (this.f74919q == 0) {
                    this.f74919q = 8;
                }
                throw new NetworkErrorException("kuaishou risk pluginloader response is null");
            }
            JSONObject jSONObject3 = new JSONObject(strA2);
            if (jSONObject3.optInt("status", 0) == 1) {
                return jSONObject3.optJSONObject("plugin");
            }
            dn dnVar = this.f74917n;
            if (dnVar == null) {
                return null;
            }
            dnVar.a(dn.f74759b, System.currentTimeMillis(), true);
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            synchronized (u.class) {
                try {
                    int i10 = this.f74918p;
                    if (i10 != 1 && i10 != 2 && i10 != 4 && !this.f74920r && System.currentTimeMillis() - f74911o < e0.a.f90863b) {
                        WeaponHI.iD();
                        return;
                    }
                    this.f74915l.d();
                    f74911o = System.currentTimeMillis();
                    if ((System.currentTimeMillis() - this.f74917n.a(dn.f74759b)) - (((long) this.f74917n.a(dn.f74760c, 6)) * bg.f74510s) > 0) {
                        List<s> listA = this.f74915l.a();
                        ArrayList arrayList = new ArrayList();
                        ArrayList arrayList2 = new ArrayList();
                        ArrayList<s> arrayList3 = new ArrayList();
                        ArrayList arrayList4 = new ArrayList();
                        JSONObject jSONObjectA = a();
                        if (jSONObjectA == null) {
                            throw new Exception("pluginJsonObject is null ");
                        }
                        boolean z10 = false;
                        try {
                            boolean zB = dk.b(this.f74913j);
                            Iterator<String> itKeys = jSONObjectA.keys();
                            HashSet hashSet = new HashSet();
                            boolean z11 = false;
                            while (itKeys.hasNext()) {
                                String next = itKeys.next();
                                if (zB && next.endsWith("64")) {
                                    if (next.length() > 3) {
                                        hashSet.add(next.substring(0, next.length() - 3));
                                        hashSet.add(next.substring(0, next.length() - 3) + ".32");
                                        z11 = true;
                                    } else {
                                        z11 = true;
                                    }
                                } else if (zB || !next.endsWith("32")) {
                                    if (zB && next.endsWith("v8")) {
                                        if (next.length() > 3) {
                                            hashSet.add(next.substring(0, next.length() - 3));
                                            hashSet.add(next.substring(0, next.length() - 3) + ".v7");
                                            z11 = true;
                                        }
                                    } else if (!zB && next.endsWith("v7")) {
                                        if (next.length() > 3) {
                                            hashSet.add(next.substring(0, next.length() - 3));
                                            hashSet.add(next.substring(0, next.length() - 3) + ".v8");
                                        }
                                    }
                                    z11 = true;
                                } else if (next.length() > 3) {
                                    hashSet.add(next.substring(0, next.length() - 3));
                                    hashSet.add(next.substring(0, next.length() - 3) + ".64");
                                    z11 = true;
                                } else {
                                    z11 = true;
                                }
                            }
                            if (z11) {
                                Iterator it2 = hashSet.iterator();
                                while (it2.hasNext()) {
                                    jSONObjectA.remove((String) it2.next());
                                }
                            }
                            z10 = z11;
                        } catch (Throwable unused) {
                        }
                        Iterator<String> itKeys2 = jSONObjectA.keys();
                        while (itKeys2.hasNext()) {
                            String next2 = itKeys2.next();
                            s sVarA = o.a(jSONObjectA.optJSONObject(next2));
                            if (sVarA != null) {
                                if (z10 && !sVarA.f74875y && (next2.endsWith("32") || next2.endsWith("64") || next2.endsWith("v7") || next2.endsWith("v8"))) {
                                    sVarA.f74875y = true;
                                }
                                if (sVarA.f74872v) {
                                    arrayList4.add(next2);
                                }
                                if (!sVarA.f74875y) {
                                    arrayList3.add(sVarA);
                                }
                                int iIndexOf = listA.indexOf(sVarA);
                                if (iIndexOf < 0 || !sVarA.f74875y) {
                                    itKeys2 = itKeys2;
                                    jSONObjectA = jSONObjectA;
                                    z10 = z10;
                                    if (sVarA.f74875y) {
                                        arrayList2.add(sVarA);
                                    }
                                } else {
                                    s sVar = listA.get(iIndexOf);
                                    if (dl.b(sVarA.f74854d, sVar.f74854d)) {
                                        int i11 = sVarA.f74874x;
                                        if (i11 != sVar.f74874x) {
                                            this.f74915l.c(sVarA.f74851a, i11);
                                        }
                                        if (!this.f74915l.d(sVarA.f74851a)) {
                                            arrayList2.add(sVarA);
                                        }
                                    } else {
                                        this.f74917n.a(dn.f74759b, System.currentTimeMillis(), true);
                                        int i12 = sVarA.f74874x;
                                        if (i12 != sVar.f74874x) {
                                            this.f74915l.c(sVarA.f74851a, i12);
                                        }
                                        arrayList.add(sVarA);
                                    }
                                    listA.remove(iIndexOf);
                                }
                                jSONObjectA = jSONObjectA;
                                z10 = z10;
                                itKeys2 = itKeys2;
                            }
                        }
                        for (s sVar2 : listA) {
                            if (!arrayList4.contains(sVar2.f74853c)) {
                                List<Integer> list = this.f74912i;
                                if (list != null) {
                                    list.add(Integer.valueOf(sVar2.f74851a));
                                }
                                this.f74914k.a(sVar2.f74853c);
                            }
                        }
                        for (s sVar3 : arrayList3) {
                            if (!arrayList4.contains(sVar3.f74853c)) {
                                List<Integer> list2 = this.f74912i;
                                if (list2 != null) {
                                    list2.add(Integer.valueOf(sVar3.f74851a));
                                }
                                this.f74914k.a(sVar3.f74853c);
                            }
                        }
                        ArrayList<s> arrayList5 = new ArrayList();
                        if (arrayList2.size() != 0) {
                            arrayList5.addAll(arrayList2);
                        }
                        if (arrayList.size() != 0) {
                            arrayList5.addAll(arrayList);
                        }
                        for (s sVar4 : arrayList5) {
                            if (sVar4 != null) {
                                if (arrayList.contains(sVar4)) {
                                    this.f74914k.a(sVar4.f74851a, sVar4.f74854d, (PackageInfo) null);
                                } else if (arrayList2.contains(sVar4)) {
                                    a(sVar4);
                                }
                            }
                        }
                    } else {
                        this.f74914k.c();
                        this.f74915l.b();
                    }
                    WeaponHI.iD();
                } finally {
                    WeaponHI.iD();
                }
            }
        } catch (Throwable unused2) {
            this.f74914k.c();
            this.f74915l.b();
        }
    }

    private void a(s sVar) {
        try {
            if (!TextUtils.isEmpty(sVar.f74860j) && sVar.f74860j.length() >= 10) {
                if (!this.f74916m.exists()) {
                    this.f74916m.mkdir();
                }
                File file = new File(this.f74916m, sVar.f74851a + "-" + sVar.f74854d + ".tmp");
                File file2 = new File(this.f74916m, sVar.f74851a + "-" + sVar.f74854d + ".zip");
                boolean zA = l.a(this.f74913j).a(sVar.f74859i, file);
                if (!zA) {
                    zA = l.a(this.f74913j).a(sVar.f74859i, file);
                }
                if (zA) {
                    if (file2.exists()) {
                        file2.delete();
                    }
                    int iC = b.c(file.getAbsolutePath(), file2.getAbsolutePath(), c.a("a3NyaXNrY3RsYnVzaW5zc3Z4cHprd3NwYWlvcXBrc3M=".getBytes("utf-8"), 2));
                    if (iC != 0) {
                        if (file2.exists()) {
                            file2.delete();
                        }
                        zA = false;
                    }
                    if (iC == 0 && file.exists()) {
                        file.delete();
                    }
                } else {
                    this.f74921s.put(Integer.valueOf(sVar.f74851a), new a(3));
                }
                String strA = f.a(file2);
                if (zA && sVar.f74860j.equals(strA)) {
                    dl.a(file2.getAbsolutePath(), Boolean.TRUE);
                    sVar.f74855e = file2.getAbsolutePath();
                    if (this.f74914k.a(sVar, (String) null, (String) null)) {
                        Map<Integer, a> map = this.f74921s;
                        if (map != null && !map.containsKey(Integer.valueOf(sVar.f74851a))) {
                            this.f74921s.put(Integer.valueOf(sVar.f74851a), new a(1));
                        }
                        this.f74917n.a(dn.f74759b, System.currentTimeMillis(), true);
                        return;
                    }
                    Map<Integer, a> map2 = this.f74921s;
                    if (map2 != null && !map2.containsKey(Integer.valueOf(sVar.f74851a))) {
                        this.f74921s.put(Integer.valueOf(sVar.f74851a), new a(4));
                    }
                    this.f74914k.a(sVar.f74851a, sVar.f74854d, (PackageInfo) null);
                    return;
                }
                if (file.exists()) {
                    file.length();
                    file.delete();
                }
                this.f74914k.a(sVar.f74851a, sVar.f74854d, (PackageInfo) null);
                return;
            }
            this.f74914k.a(sVar.f74851a, sVar.f74854d, (PackageInfo) null);
        } catch (Throwable unused) {
            this.f74914k.a(sVar.f74851a, sVar.f74854d, (PackageInfo) null);
        }
    }
}
