package com.byazt.gh;

import android.text.TextUtils;
import com.byazt.ut.i;
import com.byazt.ut.sl;
import com.byazt.ut.uj;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.Function;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 1238, 20})
public class c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final com.byazt.ut.c f14528c;
    public List<String> tt;
    public i ve;

    public c(com.byazt.ut.c cVar) {
        this.f14528c = cVar;
    }

    public void c(i iVar) {
        this.ve = iVar;
    }

    public void c(List<String> list) {
        this.tt = list;
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
    public void c(Function function, boolean z10) {
        String name;
        Object objApply = function.apply(null);
        if (objApply instanceof Map) {
            int iC = com.byazt.ut.c.c(function);
            for (Map.Entry entry : new ArrayList(((Map) objApply).entrySet())) {
                String str = (String) entry.getKey();
                Object value = entry.getValue();
                sl slVarC = this.f14528c.sp().c(str);
                if (slVarC != null) {
                    if (!TextUtils.equals(str, slVarC.f20975a)) {
                        if (this.ve != null) {
                            JSONObject jSONObject = new JSONObject();
                            if (value != null) {
                                try {
                                    name = value.getClass().getName();
                                } catch (JSONException unused) {
                                }
                            } else {
                                name = "null";
                            }
                            uj ujVar = uj.getInstance();
                            jSONObject.put("model_key", slVarC.f20975a);
                            jSONObject.put("origin_key", str);
                            jSONObject.put("origin", name);
                            jSONObject.put("newRegAts", function);
                            jSONObject.put("old_sdk_version", iC);
                            jSONObject.put("current_sdk_version", ujVar.getVersion());
                            jSONObject.put("currentAts", ujVar);
                            jSONObject.put("msg", "key not equals model_key");
                            this.ve.c(slVarC, value, null, true, jSONObject, null);
                        }
                    } else if (value != null && slVarC.c((com.byazt.dna.c) null) == null) {
                        if (iC < 7500) {
                            c(str, slVarC, value, function, iC);
                        } else if (z10) {
                            c(str, slVarC, value, function, iC, false);
                        }
                    }
                }
            }
        }
    }

    private boolean c() {
        return getClass().getName().contains("byaztp");
    }

    @Deprecated
    private void c(String str, sl slVar, Object obj, Function function, int i10) {
        if (slVar.f20979n) {
            List<String> list = this.tt;
            if ((list == null || !list.contains(slVar.f20975a)) && slVar.uj <= 0) {
                c(str, slVar, obj, function, i10, true);
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:53:0x013b  */
    /* JADX WARN: Code duplicated, block: B:73:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v4, types: [com.byazt.ut.i] */
    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Throwable] */
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
    public void c(String str, sl slVar, Object obj, Function function, int i10, boolean z10) {
        Object obj2;
        boolean z11;
        Object obj3;
        JSONObject jSONObject;
        boolean z12;
        ?? r10;
        Object obj4;
        Object objC;
        boolean z13;
        JSONObject jSONObject2 = null;
        int i11 = 0;
        try {
            String name = obj.getClass().getName();
            boolean z14 = true;
            boolean z15 = obj.getClass().getClassLoader() == getClass().getClassLoader();
            if (c()) {
                if (z15) {
                    z13 = true;
                } else {
                    try {
                        if (name.contains("byaztp")) {
                            z13 = true;
                        } else {
                            z13 = false;
                        }
                    } catch (Throwable th) {
                        th = th;
                        obj2 = obj;
                        z11 = false;
                        obj3 = obj2;
                        jSONObject = jSONObject2;
                        z12 = z11;
                        jSONObject2 = th;
                        r10 = this.ve;
                        if (r10 != 0) {
                            r10.c(slVar, obj, obj3, z12, jSONObject, jSONObject2);
                        }
                    }
                }
                z11 = z13;
            } else {
                z11 = false;
            }
            if (z11) {
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    try {
                        Field[] declaredFields = obj.getClass().getDeclaredFields();
                        JSONObject jSONObject4 = new JSONObject();
                        int length = declaredFields.length;
                        while (i11 < length) {
                            Field field = declaredFields[i11];
                            field.setAccessible(z14);
                            obj4 = obj;
                            try {
                                Object obj5 = field.get(obj4);
                                jSONObject4.put(field.getName(), field.getType().getName());
                                jSONObject4.put(field.getName() + "_v", obj5);
                                i11++;
                                z14 = true;
                            } catch (Throwable unused) {
                            }
                        }
                        obj4 = obj;
                        jSONObject3.put("fieldInfo", jSONObject4);
                    } catch (Throwable unused2) {
                        obj4 = obj;
                    }
                    try {
                        uj ujVar = uj.getInstance();
                        jSONObject3.put("model_key", slVar.f20975a);
                        jSONObject3.put("origin_key", str);
                        jSONObject3.put("sameClassLoader", z15);
                        jSONObject3.put("origin", name);
                        jSONObject3.put("newRegAts", function);
                        jSONObject3.put("old_sdk_version", i10);
                        jSONObject3.put("current_sdk_version", ujVar.getVersion());
                        jSONObject3.put("currentAts", ujVar);
                        jSONObject3.put("msg", name + " is not plugin Clazz");
                        jSONObject = jSONObject3;
                        z12 = z11;
                        obj3 = obj4;
                    } catch (Throwable th2) {
                        th = th2;
                        jSONObject2 = jSONObject3;
                        obj2 = obj4;
                        obj3 = obj2;
                        jSONObject = jSONObject2;
                        z12 = z11;
                        jSONObject2 = th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    obj4 = obj;
                }
            } else {
                obj4 = obj;
                try {
                    if (z10) {
                        objC = this.f14528c.uj().tt(slVar, null, obj, function, true);
                    } else {
                        objC = this.f14528c.uj().c(slVar, null, obj, function, true);
                    }
                    obj2 = objC;
                    try {
                        String str2 = slVar.f20975a;
                        Objects.toString(obj2);
                        Objects.toString(function);
                        obj3 = obj2;
                        jSONObject = null;
                        z12 = z11;
                    } catch (Throwable th4) {
                        th = th4;
                        obj3 = obj2;
                        jSONObject = jSONObject2;
                        z12 = z11;
                        jSONObject2 = th;
                    }
                } catch (Throwable th5) {
                    th = th5;
                    obj2 = obj4;
                    obj3 = obj2;
                    jSONObject = jSONObject2;
                    z12 = z11;
                    jSONObject2 = th;
                    r10 = this.ve;
                    if (r10 != 0) {
                        r10.c(slVar, obj, obj3, z12, jSONObject, jSONObject2);
                    }
                }
            }
        } catch (Throwable th6) {
            th = th6;
            obj2 = obj;
        }
        r10 = this.ve;
        if (r10 != 0) {
            r10.c(slVar, obj, obj3, z12, jSONObject, jSONObject2);
        }
    }
}
