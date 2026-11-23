package t8;

import android.accounts.Account;
import android.content.SyncInfo;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class r {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final String f97321b = "r";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static Class<?> f97322c = com.xinzhu.haunted.d.a(SyncInfo.class);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static AtomicReference<Field> f97323d = new AtomicReference<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f97324e = false;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static AtomicReference<Method> f97325f = new AtomicReference<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f97326g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static AtomicReference<Constructor> f97327h = new AtomicReference<>();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f97328i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static AtomicReference<Constructor> f97329j = new AtomicReference<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static boolean f97330k = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public Object f97331a;

    public r(Object obj) {
        this.f97331a = obj;
    }

    public static boolean a(int i10, Account account, String str, long j10) {
        if (f97327h.get() != null) {
            return true;
        }
        if (f97328i) {
            return false;
        }
        androidx.lifecycle.i.a(f97327h, null, com.xinzhu.haunted.d.d(f97322c, "HtSyncInfo", Integer.TYPE, Account.class, String.class, Long.TYPE));
        f97328i = true;
        return f97327h.get() != null;
    }

    public static boolean b(SyncInfo syncInfo) {
        if (f97329j.get() != null) {
            return true;
        }
        if (f97330k) {
            return false;
        }
        androidx.lifecycle.i.a(f97329j, null, com.xinzhu.haunted.d.d(f97322c, "HtSyncInfo", SyncInfo.class));
        f97330k = true;
        return f97329j.get() != null;
    }

    public static boolean d(int i10, String str, long j10) {
        if (f97325f.get() != null) {
            return true;
        }
        if (f97326g) {
            return false;
        }
        androidx.lifecycle.i.a(f97325f, null, com.xinzhu.haunted.d.g(f97322c, "createAccountRedacted", Integer.TYPE, String.class, Long.TYPE));
        f97326g = true;
        return f97325f.get() != null;
    }

    public static r e(int i10, Account account, String str, long j10) {
        if (!a(i10, account, str, j10)) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.f97331a = f97327h.get().newInstance(Integer.valueOf(i10), account, str, Long.valueOf(j10));
            return rVar;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public static r f(SyncInfo syncInfo) {
        if (!b(syncInfo)) {
            return null;
        }
        try {
            r rVar = new r();
            rVar.f97331a = f97329j.get().newInstance(syncInfo);
            return rVar;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InstantiationException e11) {
            e11.printStackTrace();
            return null;
        } catch (InvocationTargetException e12) {
            e12.printStackTrace();
            return null;
        }
    }

    public static SyncInfo g(int i10, String str, long j10) {
        if (!d(i10, str, j10)) {
            return null;
        }
        try {
            return (SyncInfo) f97325f.get().invoke(null, Integer.valueOf(i10), str, Long.valueOf(j10));
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return null;
        } catch (InvocationTargetException e11) {
            e11.printStackTrace();
            return null;
        }
    }

    public boolean c() {
        if (f97323d.get() != null) {
            return true;
        }
        if (f97324e) {
            return false;
        }
        androidx.lifecycle.i.a(f97323d, null, com.xinzhu.haunted.d.f(f97322c, "authorityId"));
        f97324e = true;
        return f97323d.get() != null;
    }

    public int h() {
        if (!c()) {
            return 0;
        }
        try {
            return ((Integer) f97323d.get().get(this.f97331a)).intValue();
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return 0;
        }
    }

    public boolean i(int i10) {
        if (!c()) {
            return false;
        }
        try {
            f97323d.get().set(this.f97331a, Integer.valueOf(i10));
            return true;
        } catch (IllegalAccessException e10) {
            e10.printStackTrace();
            return false;
        }
    }

    private r() {
    }
}
