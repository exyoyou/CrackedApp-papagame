package cn.fly.commons.cc;

import java.util.ArrayList;
import java.util.LinkedList;

/* JADX INFO: loaded from: classes7.dex */
public class ab {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f1206a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1207b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private t f1208c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f1209d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f1210e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private u f1211f;

    public static class a implements y<a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public Throwable f1212a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Object f1213b;

        public boolean a() {
            return this.f1212a != null;
        }

        @Override // cn.fly.commons.cc.y
        public boolean a(a aVar, Class<a> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
            if ("isError".equals(str) && objArr.length == 0) {
                objArr2[0] = Boolean.valueOf(aVar.a());
                return true;
            }
            if ("getError".equals(str) && objArr.length == 0) {
                objArr2[0] = aVar.f1212a;
                return true;
            }
            if (!"getResult".equals(str) || objArr.length != 0) {
                return false;
            }
            objArr2[0] = aVar.f1213b;
            return true;
        }
    }

    public ab(String str, int i10, u uVar, int i11, int i12, t tVar) {
        this.f1206a = str;
        this.f1207b = i10;
        this.f1211f = uVar;
        this.f1209d = i11;
        this.f1210e = i12;
        this.f1208c = tVar;
    }

    public a a(Object... objArr) {
        a aVar = new a();
        try {
            LinkedList<Object> linkedListB = b(objArr);
            if (!linkedListB.isEmpty()) {
                aVar.f1213b = linkedListB.get(0);
            }
        } catch (Throwable th) {
            aVar.f1212a = th;
        }
        return aVar;
    }

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
    public LinkedList<Object> b(Object... objArr) throws Throwable {
        t tVarC = this.f1208c.c();
        int i10 = this.f1207b;
        if (i10 != 0) {
            if (objArr.length == i10) {
                for (int length = objArr.length - 1; length >= 0; length--) {
                    tVarC.a(objArr[length]);
                }
            } else if (objArr.length < i10) {
                for (int length2 = objArr.length; length2 < this.f1207b; length2++) {
                    tVarC.a((Object) null);
                }
                for (int length3 = objArr.length - 1; length3 >= 0; length3--) {
                    tVarC.a(objArr[length3]);
                }
            } else {
                ArrayList arrayList = new ArrayList(0);
                for (int i11 = this.f1207b - 1; i11 < objArr.length; i11++) {
                    arrayList.add(objArr[i11]);
                }
                tVarC.a(arrayList);
                for (int i12 = this.f1207b - 2; i12 >= 0; i12--) {
                    tVarC.a(objArr[i12]);
                }
            }
        }
        LinkedList<Object> linkedList = new LinkedList<>();
        this.f1211f.a(this.f1209d, this.f1210e, tVarC, linkedList);
        return linkedList;
    }

    public static ab a(String str, int i10, t tVar) {
        return new ab(str, i10, null, 0, 0, tVar) { // from class: cn.fly.commons.cc.ab.1
            @Override // cn.fly.commons.cc.ab
            public LinkedList<Object> b(Object... objArr) throws Throwable {
                return new LinkedList<>();
            }
        };
    }
}
