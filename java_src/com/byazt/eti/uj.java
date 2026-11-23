package com.byazt.eti;

import android.text.TextUtils;
import com.byazt.aas.eo;
import com.coremedia.iso.boxes.k1;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 384, 15})
public class uj implements tt {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final com.byazt.iy.n f14014c = eo.c("open_ad_sdk_union_meta_cache_kv");

    private String ve(String str) {
        if (TextUtils.isEmpty(str)) {
            str = "0";
        }
        return "sp_reward_video_cache_".concat(String.valueOf(str));
    }

    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // com.byazt.eti.tt
    public void c(String str, sp.tt ttVar, a aVar, sp.c cVar, com.byazt.eti.c cVar2) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(f14014c.get(ve(str), copyOnWriteArraySet));
        if (cVar.uj() <= 0) {
            return;
        }
        if (cVar.uj() > 0 && copyOnWriteArraySet.size() >= cVar.uj()) {
            c cVar3 = null;
            long j10 = 0;
            String str2 = null;
            for (String str3 : copyOnWriteArraySet) {
                c cVarC = c.c(str3);
                if (str2 == null || j10 < cVarC.f14016c) {
                    j10 = cVarC.f14016c;
                    str2 = str3;
                    cVar3 = cVarC;
                }
            }
            if (cVar3 != null) {
                cVar2.c(new sp.tt(cVar3.uj, cVar3.f14016c, cVar3.tt, cVar3.f14015a));
            }
            copyOnWriteArraySet.remove(str2);
        }
        copyOnWriteArraySet.add(new c(ttVar.ve, ttVar.f14012c, ttVar.tt, aVar.f13997c, ttVar.f14013n, aVar.tt, aVar.ve).toString());
        f14014c.put(ve(str), copyOnWriteArraySet);
    }

    @Override // com.byazt.eti.tt
    public void tt(String str) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(f14014c.get(ve(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            c cVarC = c.c((String) it2.next());
            cVarC.ve = false;
            copyOnWriteArraySet2.add(cVarC.toString());
        }
        f14014c.put(ve(str), copyOnWriteArraySet2);
    }

    @com.byazt.zqa.c(c = {0, 1, 384, 123})
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public String f14015a;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public long f14016c;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f14017n;
        public long sp;
        public long tt;
        public String uj;
        public boolean ve;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f14018x;

        public c(String str, long j10, long j11, boolean z10, String str2, long j12, int i10, int i11) {
            this.f14016c = j10;
            this.tt = j11;
            this.ve = z10;
            this.uj = str;
            this.f14015a = str2;
            this.sp = j12;
            this.f14018x = i10;
            this.f14017n = i11;
        }

        public static c c(String str) {
            long jOptLong;
            long jOptLong2;
            boolean zOptBoolean;
            int iOptInt;
            String str2;
            String str3;
            String str4;
            long j10;
            boolean z10;
            long j11;
            long j12;
            int i10;
            int iOptInt2;
            String strOptString = "";
            long jOptLong3 = 0;
            try {
                JSONObject jSONObject = new JSONObject(str);
                jOptLong = jSONObject.optLong("create_time", 0L);
                try {
                    jOptLong2 = jSONObject.optLong("expire_time", 0L);
                    try {
                        zOptBoolean = jSONObject.optBoolean("is_using", false);
                        try {
                            String strOptString2 = jSONObject.optString("material_data", "");
                            try {
                                iOptInt = jSONObject.optInt("save_version", 0);
                                try {
                                    strOptString = jSONObject.optString(k1.f24950p, "");
                                    jOptLong3 = jSONObject.optLong("priority", 0L);
                                    str4 = strOptString;
                                    j10 = jOptLong3;
                                    z10 = zOptBoolean;
                                    iOptInt2 = jSONObject.optInt("index", 0);
                                    j11 = jOptLong;
                                    j12 = jOptLong2;
                                    str3 = strOptString2;
                                    i10 = iOptInt;
                                } catch (JSONException unused) {
                                    jOptLong3 = jOptLong3;
                                    str2 = strOptString;
                                    strOptString = strOptString2;
                                    str3 = strOptString;
                                    str4 = str2;
                                    j10 = jOptLong3;
                                    z10 = zOptBoolean;
                                    j11 = jOptLong;
                                    j12 = jOptLong2;
                                    i10 = iOptInt;
                                    iOptInt2 = 0;
                                }
                            } catch (JSONException unused2) {
                                iOptInt = 0;
                            }
                        } catch (JSONException unused3) {
                            zOptBoolean = zOptBoolean;
                            iOptInt = 0;
                            str2 = "";
                            str3 = strOptString;
                            str4 = str2;
                            j10 = jOptLong3;
                            z10 = zOptBoolean;
                            j11 = jOptLong;
                            j12 = jOptLong2;
                            i10 = iOptInt;
                            iOptInt2 = 0;
                            return new c(str3, j11, j12, z10, str4, j10, iOptInt2, i10);
                        }
                    } catch (JSONException unused4) {
                        zOptBoolean = true;
                        iOptInt = 0;
                    }
                } catch (JSONException unused5) {
                    jOptLong2 = 0;
                    zOptBoolean = true;
                    iOptInt = 0;
                    str2 = "";
                    jOptLong3 = jOptLong2;
                    str3 = strOptString;
                    str4 = str2;
                    j10 = jOptLong3;
                    z10 = zOptBoolean;
                    j11 = jOptLong;
                    j12 = jOptLong2;
                    i10 = iOptInt;
                    iOptInt2 = 0;
                    return new c(str3, j11, j12, z10, str4, j10, iOptInt2, i10);
                }
            } catch (JSONException unused6) {
                jOptLong = 0;
                jOptLong2 = 0;
            }
            return new c(str3, j11, j12, z10, str4, j10, iOptInt2, i10);
        }

        public String toString() {
            JSONObject jSONObject = new JSONObject();
            try {
                jSONObject.put("create_time", this.f14016c);
                jSONObject.put("expire_time", this.tt);
                jSONObject.put("is_using", this.ve);
                jSONObject.put("material_data", this.uj);
                jSONObject.put("save_version", this.f14017n);
                jSONObject.put(k1.f24950p, this.f14015a);
                jSONObject.put("priority", this.sp);
                jSONObject.put("index", this.f14018x);
            } catch (JSONException unused) {
            }
            return jSONObject.toString();
        }

        public boolean tt(sp.c cVar) {
            if (System.currentTimeMillis() <= this.tt && !TextUtils.isEmpty(this.uj)) {
                return cVar.ve() && 7611 != this.f14017n;
            }
            return true;
        }

        public c(String str, long j10, long j11, boolean z10, String str2, long j12, int i10) {
            this(str, j10, j11, z10, str2, j12, i10, 7611);
        }

        public boolean c(sp.c cVar) {
            return (tt(cVar) || this.ve) ? false : true;
        }
    }

    @Override // com.byazt.eti.tt
    public sp.tt c(String str, sp.c cVar, long j10, List<String> list) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet<>();
        copyOnWriteArraySet.addAll(f14014c.get(ve(str), copyOnWriteArraySet));
        return c(copyOnWriteArraySet, cVar, j10, list);
    }

    private sp.tt c(CopyOnWriteArraySet<String> copyOnWriteArraySet, sp.c cVar, long j10, List<String> list) {
        int i10;
        int i11;
        Iterator<String> it2 = copyOnWriteArraySet.iterator();
        c cVar2 = null;
        while (it2.hasNext()) {
            c cVarC = c.c(it2.next());
            if (cVarC.c(cVar)) {
                String str = cVarC.f14015a;
                if (list == null || str == null || !list.contains(str)) {
                    if (j10 <= 0 || cVarC.f14016c >= j10) {
                        int iN = cVar.n();
                        if (iN != 1) {
                            if (iN != 2) {
                                if (iN != 3) {
                                    return new sp.tt(cVarC.uj, cVarC.f14016c, cVarC.tt, cVarC.f14015a);
                                }
                                if (cVar2 == null || (i10 = cVar2.f14018x) > (i11 = cVarC.f14018x) || (i10 == i11 && cVar2.f14016c < cVarC.f14016c)) {
                                    cVar2 = cVarC;
                                }
                            } else if (cVar2 == null || cVar2.sp < cVarC.sp) {
                                cVar2 = cVarC;
                            }
                        } else if (cVar2 == null || cVar2.f14016c < cVarC.f14016c) {
                            cVar2 = cVarC;
                        }
                    }
                }
            }
        }
        if (cVar2 != null) {
            return new sp.tt(cVar2.uj, cVar2.f14016c, cVar2.tt, cVar2.f14015a);
        }
        return null;
    }

    @Override // com.byazt.eti.tt
    public void c(String str) {
        f14014c.remove(ve(str));
    }

    @Override // com.byazt.eti.tt
    public void c(sp.c cVar) {
        f14014c.clear();
    }

    @Override // com.byazt.eti.tt
    public void c(String str, sp.c cVar, com.byazt.eti.c cVar2) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(f14014c.get(ve(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            c cVarC = c.c((String) it2.next());
            if (!cVarC.tt(cVar)) {
                copyOnWriteArraySet2.add(cVarC.toString());
            } else if (cVar2 != null) {
                cVar2.c(new sp.tt(cVarC.uj, cVarC.f14016c, cVarC.tt, cVarC.f14015a));
            }
        }
        f14014c.put(ve(str), copyOnWriteArraySet2);
    }

    @Override // com.byazt.eti.tt
    public void c(String str, String str2) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(f14014c.get(ve(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        for (String str3 : copyOnWriteArraySet) {
            if (!TextUtils.equals(c.c(str3).f14015a, str2)) {
                copyOnWriteArraySet2.add(str3);
            }
        }
        f14014c.put(ve(str), copyOnWriteArraySet2);
    }

    @Override // com.byazt.eti.tt
    public void c(String str, String str2, boolean z10) {
        CopyOnWriteArraySet<String> copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(f14014c.get(ve(str), copyOnWriteArraySet));
        CopyOnWriteArraySet copyOnWriteArraySet2 = new CopyOnWriteArraySet();
        for (String str3 : copyOnWriteArraySet) {
            c cVarC = c.c(str3);
            if (TextUtils.equals(cVarC.f14015a, str2)) {
                cVarC.ve = z10;
                copyOnWriteArraySet2.add(cVarC.toString());
            } else {
                copyOnWriteArraySet2.add(str3);
            }
        }
        f14014c.put(ve(str), copyOnWriteArraySet2);
    }

    @Override // com.byazt.eti.tt
    public boolean c(String str, sp.c cVar) {
        CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
        copyOnWriteArraySet.addAll(f14014c.get(ve(str), copyOnWriteArraySet));
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            if (c.c((String) it2.next()).c(cVar)) {
                return true;
            }
        }
        return false;
    }
}
