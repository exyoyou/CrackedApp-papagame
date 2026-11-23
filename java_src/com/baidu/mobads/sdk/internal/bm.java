package com.baidu.mobads.sdk.internal;

import android.text.TextUtils;
import com.baidu.mobads.sdk.api.IOAdEvent;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
class bm implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ IOAdEvent f7587a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ bj.a f7588b;

    bm(bj.a aVar, IOAdEvent iOAdEvent) {
        this.f7588b = aVar;
        this.f7587a = iOAdEvent;
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
    @Override // java.lang.Runnable
    public void run() {
        String str;
        Object obj;
        String str2;
        Object obj2;
        IOAdEvent iOAdEvent = this.f7587a;
        if (iOAdEvent == null || TextUtils.isEmpty(iOAdEvent.getType())) {
            return;
        }
        String type = this.f7587a.getType();
        if (z.J.equals(type)) {
            bj.this.a(this.f7587a);
            return;
        }
        if (z.M.equals(type)) {
            bj.this.f7580p = this.f7587a.getMessage();
            bj.this.q();
            return;
        }
        if (z.N.equals(type)) {
            bj.this.e(this.f7587a);
            return;
        }
        if (z.O.equals(type)) {
            bj.this.f(this.f7587a);
            return;
        }
        if (z.W.equals(type)) {
            bj.this.g(this.f7587a);
            return;
        }
        String str3 = "";
        int iIntValue = 0;
        int iIntValue2 = 0;
        if (z.f8076r.equals(type)) {
            HashMap map = (HashMap) this.f7587a.getData();
            if (map != null) {
                str3 = (String) map.get("error_message");
                Object obj3 = map.get("error_code");
                if (obj3 == null) {
                    obj2 = obj3;
                    obj2 = 0;
                }
                obj2 = obj3;
                iIntValue = ((Integer) obj2).intValue();
                bj.this.f7574j = (String) map.get(bj.f7569e);
                str2 = bj.this.f7574j;
            } else {
                str2 = "";
            }
            bj.this.a(str3, iIntValue, str2);
            return;
        }
        if (z.L.equals(type)) {
            HashMap map2 = (HashMap) this.f7587a.getData();
            if (map2 != null) {
                str3 = (String) map2.get("error_message");
                Object obj4 = map2.get("error_code");
                if (obj4 == null) {
                    obj = obj4;
                    obj = 0;
                }
                obj = obj4;
                iIntValue2 = ((Integer) obj).intValue();
                bj.this.f7574j = (String) map2.get(bj.f7569e);
                str = bj.this.f7574j;
            } else {
                str = "";
            }
            bj.this.a(iIntValue2, str3, str);
            return;
        }
        if (z.H.equals(type)) {
            bj.this.h(this.f7587a);
            return;
        }
        if (z.X.equals(type)) {
            bj.this.d();
            return;
        }
        if (z.Y.equals(type)) {
            bj.this.d(this.f7587a);
            return;
        }
        if (z.f8056aa.equals(type)) {
            bj.this.s();
            return;
        }
        if (z.f8057ab.equals(type)) {
            Map<String, Object> data = this.f7587a.getData();
            bj.this.a(data != null ? "1".equals((String) data.get("serverVerify")) : false, data);
            return;
        }
        if (z.f8058ac.equals(type)) {
            bj.this.b();
            return;
        }
        if (z.f8059ad.equals(type)) {
            bj.this.c();
            return;
        }
        if (z.ae.equals(type)) {
            bj.this.c();
            return;
        }
        if (z.K.equals(type)) {
            bj.this.b(this.f7587a);
            return;
        }
        if (z.af.equals(type)) {
            bj.this.a(this.f7587a.getMessage(), 1 == this.f7587a.getCode());
            return;
        }
        if (z.ag.equals(type)) {
            bj.this.e(this.f7587a.getMessage());
            return;
        }
        if (z.ah.equals(type)) {
            bj.this.f(this.f7587a.getMessage());
            return;
        }
        if (z.ai.equals(type)) {
            bj.this.d(this.f7587a.getMessage());
            return;
        }
        if (z.D.equals(type)) {
            bj.this.g(this.f7587a.getMessage());
            return;
        }
        if (z.Z.equals(type)) {
            bj.this.t();
            return;
        }
        if (z.aj.equals(type)) {
            bj.this.b(this.f7587a.getMessage(), 1 == this.f7587a.getCode());
            return;
        }
        if (z.am.equals(type)) {
            bj.this.c(this.f7587a);
            return;
        }
        if (z.ak.equals(type)) {
            bj.this.u();
            return;
        }
        if (z.al.equals(type)) {
            bj.this.v();
            return;
        }
        if (z.ao.equals(type)) {
            bj.this.i(this.f7587a);
            return;
        }
        if (z.ap.equals(type)) {
            bj.this.j(this.f7587a);
        } else if (z.an.equals(type)) {
            bj.this.k(this.f7587a);
        } else if (z.aq.equals(type)) {
            bj.this.l(this.f7587a);
        }
    }
}
