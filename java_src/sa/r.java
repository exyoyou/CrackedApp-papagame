package sa;

import com.xinzhu.overmind.Overmind;

/* JADX INFO: loaded from: classes8.dex */
public class r {
    public static int a(Object[] objArr, Class<?> cls) {
        return b(objArr, cls, 0);
    }

    public static int b(Object[] objArr, Class<?> cls, int i10) {
        if (objArr == null) {
            return -1;
        }
        while (i10 < objArr.length) {
            Object obj = objArr[i10];
            if (obj != null && (obj.getClass() == cls || cls.isInstance(obj))) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static void c(Object[] objArr) {
        if (objArr != null) {
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj instanceof String) {
                    if (Overmind.getMindPackageManager().t((String) obj, com.xinzhu.overmind.client.f.getUserId())) {
                        objArr[i10] = Overmind.getContext().getPackageName();
                    }
                }
            }
        }
    }

    public static String d(Object[] objArr) {
        if (objArr != null) {
            for (int i10 = 0; i10 < objArr.length; i10++) {
                Object obj = objArr[i10];
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (Overmind.getMindPackageManager().t(str, com.xinzhu.overmind.client.f.getUserId())) {
                        objArr[i10] = Overmind.getContext().getPackageName();
                        return str;
                    }
                }
            }
        }
        return null;
    }

    public static String e(Object[] objArr) {
        if (objArr != null) {
            for (int length = objArr.length - 1; length >= 0; length--) {
                Object obj = objArr[length];
                if (obj instanceof String) {
                    String str = (String) obj;
                    if (Overmind.getMindPackageManager().t(str, com.xinzhu.overmind.client.f.getUserId())) {
                        objArr[length] = Overmind.getContext().getPackageName();
                        return str;
                    }
                }
            }
        }
        return null;
    }

    public static void f(Object[] objArr) {
        if (objArr != null) {
            int length = objArr.length - 1;
            if (objArr[length].getClass() == Integer.class && ((Integer) objArr[length]).intValue() == com.xinzhu.overmind.client.f.getUserId()) {
                objArr[length] = Integer.valueOf(Overmind.getHostUserId());
            }
        }
    }
}
