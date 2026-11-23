package com.byazt.xe;

import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.ResultReceiver;
import com.byazt.uq.sp;
import com.byazt.uq.x;
import com.bytedance.pangle.Zeus;
import com.bytedance.pangle.util.FieldUtils;
import com.bytedance.pangle.util.MethodUtils;
import com.haima.hmcp.widgets.BaseVideoView;
import java.io.File;
import java.io.FileDescriptor;
import java.lang.reflect.Field;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1093, 15})
public class uj implements n.c {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static volatile IBinder f21829c;
    public static volatile Object tt;

    public interface c {
    }

    @com.byazt.zqa.c(c = {0, 1, 1093, 153})
    private static class tt extends ResultReceiver {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public c f21830c;

        public tt(c cVar) {
            super(null);
            this.f21830c = cVar;
        }

        @Override // android.os.ResultReceiver
        public void onReceiveResult(int i10, Bundle bundle) {
            super.onReceiveResult(i10, bundle);
        }
    }

    private static String[] c(String... strArr) {
        return strArr;
    }

    private static void tt(String str, int i10) {
        if (str == null) {
            return;
        }
        String strTt = com.byazt.th.ve.tt(str, i10);
        String strN = com.byazt.th.ve.n(str, i10);
        c(strTt, strN);
        c(Zeus.getAppApplication().getPackageName(), strN, com.byazt.xe.tt.c());
    }

    private static void ve(String str, String str2, String str3) {
        if (tt == null || str == null || str2 == null || str3 == null) {
            return;
        }
        c(tt, "notifyDexLoad", new Object[]{str, Collections.singletonList("dalvik.system.DexClassLoader"), Collections.singletonList(str2), str3}, new Class[]{String.class, List.class, List.class, String.class});
    }

    @Override // com.byazt.xe.n.c
    public boolean c(String str, int i10) {
        c();
        tt(str, i10);
        boolean zC = c(BaseVideoView.GPS_SPEED, str, i10);
        ve(str, i10);
        return zC;
    }

    private static void ve(String str, int i10) {
        if (str == null) {
            return;
        }
        tt(com.byazt.th.ve.sp(str, i10), com.byazt.th.ve.a(str, i10));
        tt(com.byazt.th.ve.n(str, i10));
        tt();
    }

    private static void c() {
        PackageManager packageManager;
        Field fieldC;
        IBinder iBinderAsBinder;
        if (f21829c == null && (fieldC = c((packageManager = Zeus.getAppApplication().getPackageManager()), "mPM")) != null) {
            Object objC = c(fieldC, packageManager);
            tt = objC;
            if ((objC instanceof IInterface) && (iBinderAsBinder = ((IInterface) tt).asBinder()) != null) {
                f21829c = iBinderAsBinder;
            }
        }
    }

    private static void tt(String str, String str2, String str3) {
        if (tt == null || str == null || str2 == null || str3 == null) {
            return;
        }
        c(tt, "notifyDexLoad", new Object[]{str, Collections.singletonMap(str2, "PCL[]"), str3}, new Class[]{String.class, Map.class, String.class});
    }

    private static void tt() {
        c(ve(), (c) null);
    }

    private static void tt(String str, String str2) {
        try {
            sp.c(str, str2);
        } catch (Exception unused) {
        }
    }

    private static String[] ve() {
        return c("reconcile-secondary-dex-files", Zeus.getAppApplication().getPackageName());
    }

    private static void tt(String str) {
        try {
            File file = new File(str);
            if (file.exists()) {
                file.delete();
            }
        } catch (Exception unused) {
        }
    }

    private static boolean c(String str, String str2, int i10) {
        String strN = com.byazt.th.ve.n(str2, i10);
        String str3 = com.byazt.th.ve.x(str2, i10) + File.separator + com.byazt.xe.tt.c(strN);
        for (int i11 = 1; i11 <= 3; i11++) {
            c(c(str), (c) null);
            if (com.byazt.xe.tt.c(str3)) {
                return true;
            }
        }
        return false;
    }

    private static void c(String str, String str2, String str3) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 == 30) {
            tt(str, str2, str3);
        } else if (i10 == 29) {
            ve(str, str2, str3);
        }
    }

    private static void c(String[] strArr, c cVar) {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        parcelObtain.writeFileDescriptor(FileDescriptor.in);
        parcelObtain.writeFileDescriptor(FileDescriptor.out);
        parcelObtain.writeFileDescriptor(FileDescriptor.err);
        parcelObtain.writeStringArray(strArr);
        parcelObtain.writeStrongBinder(null);
        new tt(cVar).writeToParcel(parcelObtain, 0);
        try {
            f21829c.transact(1598246212, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
        } catch (Exception unused) {
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }

    private static String[] c(String str) {
        return c("compile", "-m", str, "-f", "--secondary-dex", Zeus.getAppApplication().getPackageName());
    }

    private static void c(String str, String str2) {
        try {
            x.c(str, str2);
        } catch (Exception unused) {
        }
    }

    public static Field c(Object obj, String str) {
        if (obj == null) {
            return null;
        }
        return c(obj.getClass(), str);
    }

    public static Field c(Class<?> cls, String str) {
        return FieldUtils.getField(cls, str);
    }

    public static Object c(Field field, Object obj) {
        try {
            if (!field.isAccessible()) {
                field.setAccessible(true);
            }
            Object obj2 = field.get(obj);
            field.setAccessible(false);
            return obj2;
        } catch (Exception unused) {
            return null;
        }
    }

    public static Object c(Object obj, String str, Object[] objArr, Class<?>[] clsArr) {
        try {
            return MethodUtils.invokeMethod(obj, str, objArr, clsArr);
        } catch (Exception unused) {
            return null;
        }
    }
}
