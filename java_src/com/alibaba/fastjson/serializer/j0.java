package com.alibaba.fastjson.serializer;

import java.lang.reflect.Type;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public class j0 {
    public static boolean a(v0 v0Var, Object obj, String str, byte b10) {
        List<n1> listQ = v0Var.q();
        if (listQ != null) {
            Byte bValueOf = Byte.valueOf(b10);
            Iterator<n1> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (!it2.next().b(obj, str, bValueOf)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean b(v0 v0Var, Object obj, String str, char c10) {
        List<n1> listQ = v0Var.q();
        if (listQ != null) {
            Character chValueOf = Character.valueOf(c10);
            Iterator<n1> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (!it2.next().b(obj, str, chValueOf)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean c(v0 v0Var, Object obj, String str, double d10) {
        List<n1> listQ = v0Var.q();
        if (listQ != null) {
            Double dValueOf = Double.valueOf(d10);
            Iterator<n1> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (!it2.next().b(obj, str, dValueOf)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean d(v0 v0Var, Object obj, String str, float f10) {
        List<n1> listQ = v0Var.q();
        if (listQ != null) {
            Float fValueOf = Float.valueOf(f10);
            Iterator<n1> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (!it2.next().b(obj, str, fValueOf)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean e(v0 v0Var, Object obj, String str, int i10) {
        List<n1> listQ = v0Var.q();
        if (listQ != null) {
            Integer numValueOf = Integer.valueOf(i10);
            Iterator<n1> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (!it2.next().b(obj, str, numValueOf)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean f(v0 v0Var, Object obj, String str, long j10) {
        List<n1> listQ = v0Var.q();
        if (listQ != null) {
            Long lValueOf = Long.valueOf(j10);
            Iterator<n1> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (!it2.next().b(obj, str, lValueOf)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean g(v0 v0Var, Object obj, String str, Object obj2) {
        List<n1> listQ = v0Var.q();
        if (listQ == null) {
            return true;
        }
        Iterator<n1> it2 = listQ.iterator();
        while (it2.hasNext()) {
            if (!it2.next().b(obj, str, obj2)) {
                return false;
            }
        }
        return true;
    }

    public static boolean h(v0 v0Var, Object obj, String str, short s10) {
        List<n1> listQ = v0Var.q();
        if (listQ != null) {
            Short shValueOf = Short.valueOf(s10);
            Iterator<n1> it2 = listQ.iterator();
            while (it2.hasNext()) {
                if (!it2.next().b(obj, str, shValueOf)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static boolean i(v0 v0Var, Object obj, String str) {
        List<o1> listS = v0Var.s();
        if (listS == null) {
            return true;
        }
        Iterator<o1> it2 = listS.iterator();
        while (it2.hasNext()) {
            if (!it2.next().c(v0Var, obj, str)) {
                return false;
            }
        }
        return true;
    }

    public static Type j(com.alibaba.fastjson.parser.c cVar, Object obj, String str) {
        List<com.alibaba.fastjson.parser.deserializer.q> listS = cVar.s();
        Type typeB = null;
        if (listS == null) {
            return null;
        }
        Iterator<com.alibaba.fastjson.parser.deserializer.q> it2 = listS.iterator();
        while (it2.hasNext()) {
            typeB = it2.next().b(obj, str);
        }
        return typeB;
    }

    public static void k(com.alibaba.fastjson.parser.c cVar, Object obj, String str, Object obj2) {
        List<com.alibaba.fastjson.parser.deserializer.p> listP = cVar.p();
        if (listP == null) {
            return;
        }
        Iterator<com.alibaba.fastjson.parser.deserializer.p> it2 = listP.iterator();
        while (it2.hasNext()) {
            it2.next().a(obj, str, obj2);
        }
    }

    public static String l(v0 v0Var, Object obj, String str, byte b10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Byte bValueOf = Byte.valueOf(b10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, bValueOf);
            }
        }
        return str;
    }

    public static String m(v0 v0Var, Object obj, String str, char c10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Character chValueOf = Character.valueOf(c10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, chValueOf);
            }
        }
        return str;
    }

    public static String n(v0 v0Var, Object obj, String str, double d10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Double dValueOf = Double.valueOf(d10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, dValueOf);
            }
        }
        return str;
    }

    public static String o(v0 v0Var, Object obj, String str, float f10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Float fValueOf = Float.valueOf(f10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, fValueOf);
            }
        }
        return str;
    }

    public static String p(v0 v0Var, Object obj, String str, int i10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Integer numValueOf = Integer.valueOf(i10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, numValueOf);
            }
        }
        return str;
    }

    public static String q(v0 v0Var, Object obj, String str, long j10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Long lValueOf = Long.valueOf(j10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, lValueOf);
            }
        }
        return str;
    }

    public static String r(v0 v0Var, Object obj, String str, Object obj2) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, obj2);
            }
        }
        return str;
    }

    public static String s(v0 v0Var, Object obj, String str, short s10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Short shValueOf = Short.valueOf(s10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, shValueOf);
            }
        }
        return str;
    }

    public static String t(v0 v0Var, Object obj, String str, boolean z10) {
        List<f1> listN = v0Var.n();
        if (listN != null) {
            Boolean boolValueOf = Boolean.valueOf(z10);
            Iterator<f1> it2 = listN.iterator();
            while (it2.hasNext()) {
                str = it2.next().a(obj, str, boolValueOf);
            }
        }
        return str;
    }

    public static Object u(v0 v0Var, Object obj, String str, Object obj2) {
        List<e2> listV = v0Var.v();
        if (listV != null) {
            Iterator<e2> it2 = listV.iterator();
            while (it2.hasNext()) {
                obj2 = it2.next().a(obj, str, obj2);
            }
        }
        return obj2;
    }

    public static char v(v0 v0Var, Object obj, char c10) {
        List<c> listF = v0Var.f();
        if (listF != null) {
            Iterator<c> it2 = listF.iterator();
            while (it2.hasNext()) {
                c10 = it2.next().d(v0Var, obj, c10);
            }
        }
        return c10;
    }

    public static char w(v0 v0Var, Object obj, char c10) {
        List<l> listH = v0Var.h();
        if (listH != null) {
            Iterator<l> it2 = listH.iterator();
            while (it2.hasNext()) {
                c10 = it2.next().d(v0Var, obj, c10);
            }
        }
        return c10;
    }
}
