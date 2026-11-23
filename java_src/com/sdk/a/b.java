package com.sdk.a;

import android.annotation.SuppressLint;
import android.text.TextUtils;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static long f78385c = 60000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final ConcurrentHashMap<String, Boolean> f78386d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final com.sdk.b.c<String, String> f78387a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f78388b;

    public class a extends com.sdk.b.c<String, String> {
        public a(b bVar, int i10) {
            super(i10);
        }
    }

    static {
        ConcurrentHashMap<String, Boolean> concurrentHashMap = new ConcurrentHashMap<>(10);
        f78386d = concurrentHashMap;
        concurrentHashMap.put("GET", Boolean.TRUE);
        new ConcurrentHashMap(10);
    }

    public b(int i10, long j10) {
        this.f78388b = i10;
        f78385c = j10;
        this.f78387a = new a(this, i10);
    }

    public static long a() {
        return f78385c;
    }

    @SuppressLint({"DefaultLocale"})
    public boolean b(String str) {
        Boolean bool;
        if (TextUtils.isEmpty(str) || (bool = f78386d.get(str.toUpperCase())) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    public String a(String str) {
        Object obj = null;
        if (str == null) {
            return null;
        }
        com.sdk.b.c<String, String> cVar = this.f78387a;
        synchronized (cVar) {
            if (cVar.f78452d.containsKey(str)) {
                String str2 = cVar.f78449a.get(str);
                if (str2 != null) {
                    obj = str2;
                }
            } else {
                synchronized (cVar) {
                    String strRemove = cVar.f78449a.remove(str);
                    cVar.f78452d.a(str);
                    if (strRemove != null) {
                        cVar.f78450b -= cVar.a(str, strRemove);
                    }
                }
            }
        }
        return (String) obj;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    public void a(String str, String str2, long j10) {
        if (str == null || str2 == null || j10 < 1) {
            return;
        }
        com.sdk.b.c<String, String> cVar = this.f78387a;
        long jCurrentTimeMillis = System.currentTimeMillis() + j10;
        synchronized (cVar) {
            cVar.f78450b += cVar.a(str, str2);
            Object objPut = cVar.f78449a.put(str, str2);
            cVar.f78452d.put(str, Long.valueOf(jCurrentTimeMillis));
            if (objPut != null) {
                cVar.f78450b -= cVar.a(str, objPut);
            }
        }
        cVar.a(cVar.f78451c);
    }
}
