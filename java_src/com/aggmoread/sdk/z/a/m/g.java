package com.aggmoread.sdk.z.a.m;

import android.content.Context;
import android.text.TextUtils;

/* JADX INFO: loaded from: classes7.dex */
public class g implements k {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final String f3705b = "g";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    h f3706a;

    public g(Context context) {
        this.f3706a = h.a(context, "CacheSpSimple");
    }

    private String b(String str) {
        return str + "_savetime";
    }

    private long[] c(String str) {
        String[] strArrSplit;
        String strA = this.f3706a.a(b(str), "");
        if (!TextUtils.isEmpty(strA) && strA.contains("_") && (strArrSplit = strA.split("_")) != null && strArrSplit.length != 0) {
            String str2 = strArrSplit[0];
            String str3 = strArrSplit[1];
            if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
                return new long[]{Long.valueOf(str2).longValue(), Long.valueOf(str3).longValue()};
            }
        }
        return null;
    }

    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        	at jadx.core.dex.visitors.ConstructorVisitor.visit(ConstructorVisitor.java:42)
        */
    @Override // com.aggmoread.sdk.z.a.m.k
    public java.lang.String a(
    /*  JADX ERROR: ConcurrentModificationException in pass: ConstructorVisitor
        java.util.ConcurrentModificationException
        	at java.base/java.util.ArrayList$Itr.checkForComodification(ArrayList.java:1095)
        	at java.base/java.util.ArrayList$Itr.next(ArrayList.java:1049)
        	at jadx.core.dex.visitors.ConstructorVisitor.insertPhiInsn(ConstructorVisitor.java:139)
        	at jadx.core.dex.visitors.ConstructorVisitor.processInvoke(ConstructorVisitor.java:91)
        	at jadx.core.dex.visitors.ConstructorVisitor.replaceInvoke(ConstructorVisitor.java:56)
        */
    /*  JADX ERROR: Method generation error
        jadx.core.utils.exceptions.JadxRuntimeException: Code variable not set in r10v0 ??
        	at jadx.core.dex.instructions.args.SSAVar.getCodeVar(SSAVar.java:236)
        	at jadx.core.codegen.MethodGen.addMethodArguments(MethodGen.java:215)
        	at jadx.core.codegen.MethodGen.addDefinition(MethodGen.java:150)
        	at jadx.core.codegen.ClassGen.addMethodCode(ClassGen.java:415)
        	at jadx.core.codegen.ClassGen.addMethod(ClassGen.java:345)
        	at jadx.core.codegen.ClassGen.lambda$addInnerClsAndMethods$3(ClassGen.java:299)
        	at java.base/java.util.stream.ForEachOps$ForEachOp$OfRef.accept(ForEachOps.java:184)
        	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
        	at java.base/java.util.stream.SortedOps$RefSortingSink.end(SortedOps.java:395)
        	at java.base/java.util.stream.Sink$ChainedReference.end(Sink.java:261)
        */

    public boolean d(String str) {
        this.f3706a.a(str);
        this.f3706a.a(b(str));
        return true;
    }

    @Override // com.aggmoread.sdk.z.a.m.k
    public void a(String str, String str2) {
        if (TextUtils.isEmpty(str) || TextUtils.isEmpty(str2)) {
            return;
        }
        com.aggmoread.sdk.z.a.d.d(f3705b, "put enter , key = " + str);
        this.f3706a.b(str, str2);
    }
}
