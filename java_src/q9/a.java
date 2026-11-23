package q9;

import androidx.lifecycle.i;
import java.lang.reflect.Field;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes8.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f96591a = "a";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Class<?> f96592b = com.xinzhu.haunted.d.b("com.android.internal.R");

    /* JADX INFO: renamed from: q9.a$a, reason: collision with other inner class name */
    public static final class C1238a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96593a = com.xinzhu.haunted.d.b("com.android.internal.R$id");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f96594b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96595c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static AtomicReference<Field> f96596d = new AtomicReference<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static boolean f96597e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static AtomicReference<Field> f96598f = new AtomicReference<>();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static boolean f96599g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static AtomicReference<Field> f96600h = new AtomicReference<>();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static boolean f96601i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static AtomicReference<Field> f96602j = new AtomicReference<>();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static boolean f96603k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static AtomicReference<Field> f96604l = new AtomicReference<>();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static boolean f96605m = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static AtomicReference<Field> f96606n = new AtomicReference<>();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static boolean f96607o = false;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static AtomicReference<Field> f96608p = new AtomicReference<>();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static boolean f96609q = false;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static AtomicReference<Field> f96610r = new AtomicReference<>();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static boolean f96611s = false;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static AtomicReference<Field> f96612t = new AtomicReference<>();

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private static boolean f96613u = false;

        public static boolean A(int i10) {
            if (!g()) {
                return false;
            }
            try {
                f96602j.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean B(int i10) {
            if (!h()) {
                return false;
            }
            try {
                f96612t.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean C(int i10) {
            if (!i()) {
                return false;
            }
            try {
                f96606n.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean D(int i10) {
            if (!j()) {
                return false;
            }
            try {
                f96604l.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean a() {
            if (f96608p.get() != null) {
                return true;
            }
            if (f96609q) {
                return false;
            }
            i.a(f96608p, null, com.xinzhu.haunted.d.f(f96593a, "account_name"));
            f96609q = true;
            return f96608p.get() != null;
        }

        public static boolean b() {
            if (f96596d.get() != null) {
                return true;
            }
            if (f96597e) {
                return false;
            }
            i.a(f96596d, null, com.xinzhu.haunted.d.f(f96593a, "account_row_icon"));
            f96597e = true;
            return f96596d.get() != null;
        }

        public static boolean c() {
            if (f96594b.get() != null) {
                return true;
            }
            if (f96595c) {
                return false;
            }
            i.a(f96594b, null, com.xinzhu.haunted.d.f(f96593a, "account_row_text"));
            f96595c = true;
            return f96594b.get() != null;
        }

        public static boolean d() {
            if (f96610r.get() != null) {
                return true;
            }
            if (f96611s) {
                return false;
            }
            i.a(f96610r, null, com.xinzhu.haunted.d.f(f96593a, "account_type"));
            f96611s = true;
            return f96610r.get() != null;
        }

        public static boolean e() {
            if (f96600h.get() != null) {
                return true;
            }
            if (f96601i) {
                return false;
            }
            i.a(f96600h, null, com.xinzhu.haunted.d.f(f96593a, "allow_button"));
            f96601i = true;
            return f96600h.get() != null;
        }

        public static boolean f() {
            if (f96598f.get() != null) {
                return true;
            }
            if (f96599g) {
                return false;
            }
            i.a(f96598f, null, com.xinzhu.haunted.d.f(f96593a, "authtoken_type"));
            f96599g = true;
            return f96598f.get() != null;
        }

        public static boolean g() {
            if (f96602j.get() != null) {
                return true;
            }
            if (f96603k) {
                return false;
            }
            i.a(f96602j, null, com.xinzhu.haunted.d.f(f96593a, "deny_button"));
            f96603k = true;
            return f96602j.get() != null;
        }

        public static boolean h() {
            if (f96612t.get() != null) {
                return true;
            }
            if (f96613u) {
                return false;
            }
            i.a(f96612t, null, com.xinzhu.haunted.d.f(f96593a, com.xinzhu.overmind.client.hook.proxies.context.providers.b.f89370k));
            f96613u = true;
            return f96612t.get() != null;
        }

        public static boolean i() {
            if (f96606n.get() != null) {
                return true;
            }
            if (f96607o) {
                return false;
            }
            i.a(f96606n, null, com.xinzhu.haunted.d.f(f96593a, "package_label"));
            f96607o = true;
            return f96606n.get() != null;
        }

        public static boolean j() {
            if (f96604l.get() != null) {
                return true;
            }
            if (f96605m) {
                return false;
            }
            i.a(f96604l, null, com.xinzhu.haunted.d.f(f96593a, "packages_list"));
            f96605m = true;
            return f96604l.get() != null;
        }

        public static int k() {
            if (!a()) {
                return 0;
            }
            try {
                return ((Integer) f96608p.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int l() {
            if (!b()) {
                return 0;
            }
            try {
                return ((Integer) f96596d.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int m() {
            if (!c()) {
                return 0;
            }
            try {
                return ((Integer) f96594b.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int n() {
            if (!d()) {
                return 0;
            }
            try {
                return ((Integer) f96610r.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int o() {
            if (!e()) {
                return 0;
            }
            try {
                return ((Integer) f96600h.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int p() {
            if (!f()) {
                return 0;
            }
            try {
                return ((Integer) f96598f.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int q() {
            if (!g()) {
                return 0;
            }
            try {
                return ((Integer) f96602j.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int r() {
            if (!h()) {
                return 0;
            }
            try {
                return ((Integer) f96612t.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int s() {
            if (!i()) {
                return 0;
            }
            try {
                return ((Integer) f96606n.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int t() {
            if (!j()) {
                return 0;
            }
            try {
                return ((Integer) f96604l.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static boolean u(int i10) {
            if (!a()) {
                return false;
            }
            try {
                f96608p.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean v(int i10) {
            if (!b()) {
                return false;
            }
            try {
                f96596d.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean w(int i10) {
            if (!c()) {
                return false;
            }
            try {
                f96594b.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean x(int i10) {
            if (!d()) {
                return false;
            }
            try {
                f96610r.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean y(int i10) {
            if (!e()) {
                return false;
            }
            try {
                f96600h.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean z(int i10) {
            if (!f()) {
                return false;
            }
            try {
                f96598f.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96614a = com.xinzhu.haunted.d.b("com.android.internal.R$layout");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f96615b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96616c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static AtomicReference<Field> f96617d = new AtomicReference<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static boolean f96618e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static AtomicReference<Field> f96619f = new AtomicReference<>();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static boolean f96620g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static AtomicReference<Field> f96621h = new AtomicReference<>();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static boolean f96622i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static AtomicReference<Field> f96623j = new AtomicReference<>();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static boolean f96624k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static AtomicReference<Field> f96625l = new AtomicReference<>();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static boolean f96626m = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static AtomicReference<Field> f96627n = new AtomicReference<>();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static boolean f96628o = false;

        public static boolean a() {
            if (f96625l.get() != null) {
                return true;
            }
            if (f96626m) {
                return false;
            }
            i.a(f96625l, null, com.xinzhu.haunted.d.f(f96614a, "app_not_authorized"));
            f96626m = true;
            return f96625l.get() != null;
        }

        public static boolean b() {
            if (f96615b.get() != null) {
                return true;
            }
            if (f96616c) {
                return false;
            }
            i.a(f96615b, null, com.xinzhu.haunted.d.f(f96614a, "choose_account"));
            f96616c = true;
            return f96615b.get() != null;
        }

        public static boolean c() {
            if (f96617d.get() != null) {
                return true;
            }
            if (f96618e) {
                return false;
            }
            i.a(f96617d, null, com.xinzhu.haunted.d.f(f96614a, "choose_account_row"));
            f96618e = true;
            return f96617d.get() != null;
        }

        public static boolean d() {
            if (f96619f.get() != null) {
                return true;
            }
            if (f96620g) {
                return false;
            }
            i.a(f96619f, null, com.xinzhu.haunted.d.f(f96614a, "choose_account_type"));
            f96620g = true;
            return f96619f.get() != null;
        }

        public static boolean e() {
            if (f96627n.get() != null) {
                return true;
            }
            if (f96628o) {
                return false;
            }
            i.a(f96627n, null, com.xinzhu.haunted.d.f(f96614a, "choose_type_and_account"));
            f96628o = true;
            return f96627n.get() != null;
        }

        public static boolean f() {
            if (f96621h.get() != null) {
                return true;
            }
            if (f96622i) {
                return false;
            }
            i.a(f96621h, null, com.xinzhu.haunted.d.f(f96614a, "grant_credentials_permission"));
            f96622i = true;
            return f96621h.get() != null;
        }

        public static boolean g() {
            if (f96623j.get() != null) {
                return true;
            }
            if (f96624k) {
                return false;
            }
            i.a(f96623j, null, com.xinzhu.haunted.d.f(f96614a, "permissions_package_list_item"));
            f96624k = true;
            return f96623j.get() != null;
        }

        public static int h() {
            if (!a()) {
                return 0;
            }
            try {
                return ((Integer) f96625l.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int i() {
            if (!b()) {
                return 0;
            }
            try {
                return ((Integer) f96615b.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int j() {
            if (!c()) {
                return 0;
            }
            try {
                return ((Integer) f96617d.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int k() {
            if (!d()) {
                return 0;
            }
            try {
                return ((Integer) f96619f.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int l() {
            if (!e()) {
                return 0;
            }
            try {
                return ((Integer) f96627n.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int m() {
            if (!f()) {
                return 0;
            }
            try {
                return ((Integer) f96621h.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int n() {
            if (!g()) {
                return 0;
            }
            try {
                return ((Integer) f96623j.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static boolean o(int i10) {
            if (!a()) {
                return false;
            }
            try {
                f96625l.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean p(int i10) {
            if (!b()) {
                return false;
            }
            try {
                f96615b.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean q(int i10) {
            if (!c()) {
                return false;
            }
            try {
                f96617d.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean r(int i10) {
            if (!d()) {
                return false;
            }
            try {
                f96619f.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean s(int i10) {
            if (!e()) {
                return false;
            }
            try {
                f96627n.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean t(int i10) {
            if (!f()) {
                return false;
            }
            try {
                f96621h.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean u(int i10) {
            if (!g()) {
                return false;
            }
            try {
                f96623j.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96629a = com.xinzhu.haunted.d.b("com.android.internal.R$string");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f96630b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96631c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static AtomicReference<Field> f96632d = new AtomicReference<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static boolean f96633e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static AtomicReference<Field> f96634f = new AtomicReference<>();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static boolean f96635g = false;

        public static boolean a() {
            if (f96634f.get() != null) {
                return true;
            }
            if (f96635g) {
                return false;
            }
            i.a(f96634f, null, com.xinzhu.haunted.d.f(f96629a, "add_account_button_label"));
            f96635g = true;
            return f96634f.get() != null;
        }

        public static boolean b() {
            if (f96632d.get() != null) {
                return true;
            }
            if (f96633e) {
                return false;
            }
            i.a(f96632d, null, com.xinzhu.haunted.d.f(f96629a, "config_chooseTypeAndAccountActivity"));
            f96633e = true;
            return f96632d.get() != null;
        }

        public static boolean c() {
            if (f96630b.get() != null) {
                return true;
            }
            if (f96631c) {
                return false;
            }
            i.a(f96630b, null, com.xinzhu.haunted.d.f(f96629a, "grant_permissions_header_text"));
            f96631c = true;
            return f96630b.get() != null;
        }

        public static int d() {
            if (!a()) {
                return 0;
            }
            try {
                return ((Integer) f96634f.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int e() {
            if (!b()) {
                return 0;
            }
            try {
                return ((Integer) f96632d.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static String f() {
            if (!c()) {
                return null;
            }
            try {
                return (String) f96630b.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static boolean g(int i10) {
            if (!a()) {
                return false;
            }
            try {
                f96634f.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean h(int i10) {
            if (!b()) {
                return false;
            }
            try {
                f96632d.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean i(String str) {
            if (!c()) {
                return false;
            }
            try {
                f96630b.get().set(null, str);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96636a = com.xinzhu.haunted.d.b("com.android.internal.R$style");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f96637b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96638c = false;

        public static boolean a() {
            if (f96637b.get() != null) {
                return true;
            }
            if (f96638c) {
                return false;
            }
            i.a(f96637b, null, com.xinzhu.haunted.d.f(f96636a, "Theme_DeviceDefault_Light_Dialog_NoActionBar"));
            f96638c = true;
            return f96637b.get() != null;
        }

        public static int b() {
            if (!a()) {
                return 0;
            }
            try {
                return ((Integer) f96637b.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static boolean c(int i10) {
            if (!a()) {
                return false;
            }
            try {
                f96637b.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }

    public static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static Class<?> f96639a = com.xinzhu.haunted.d.b("com.android.internal.R$styleable");

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static AtomicReference<Field> f96641b = new AtomicReference<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static boolean f96642c = false;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static AtomicReference<Field> f96643d = new AtomicReference<>();

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static boolean f96644e = false;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static AtomicReference<Field> f96645f = new AtomicReference<>();

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static boolean f96646g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static AtomicReference<Field> f96647h = new AtomicReference<>();

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static boolean f96648i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static AtomicReference<Field> f96649j = new AtomicReference<>();

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static boolean f96650k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static AtomicReference<Field> f96651l = new AtomicReference<>();

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static boolean f96652m = false;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static AtomicReference<Field> f96653n = new AtomicReference<>();

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static boolean f96654o = false;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private static AtomicReference<Field> f96655p = new AtomicReference<>();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private static boolean f96656q = false;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static AtomicReference<Field> f96657r = new AtomicReference<>();

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private static boolean f96658s = false;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static AtomicReference<Field> f96659t = new AtomicReference<>();

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private static boolean f96660u = false;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private static AtomicReference<Field> f96661v = new AtomicReference<>();

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private static boolean f96662w = false;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        private static AtomicReference<Field> f96663x = new AtomicReference<>();

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private static boolean f96664y = false;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static AtomicReference<Field> f96665z = new AtomicReference<>();
        private static boolean A = false;
        private static AtomicReference<Field> B = new AtomicReference<>();
        private static boolean C = false;
        private static AtomicReference<Field> D = new AtomicReference<>();
        private static boolean E = false;
        private static AtomicReference<Field> F = new AtomicReference<>();
        private static boolean G = false;
        private static AtomicReference<Field> H = new AtomicReference<>();
        private static boolean I = false;
        private static AtomicReference<Field> J = new AtomicReference<>();
        private static boolean K = false;
        private static AtomicReference<Field> L = new AtomicReference<>();
        private static boolean M = false;
        private static AtomicReference<Field> N = new AtomicReference<>();
        private static boolean O = false;
        private static AtomicReference<Field> P = new AtomicReference<>();
        private static boolean Q = false;
        private static AtomicReference<Field> R = new AtomicReference<>();
        private static boolean S = false;
        private static AtomicReference<Field> T = new AtomicReference<>();
        private static boolean U = false;
        private static AtomicReference<Field> V = new AtomicReference<>();
        private static boolean W = false;
        private static AtomicReference<Field> X = new AtomicReference<>();
        private static boolean Y = false;
        private static AtomicReference<Field> Z = new AtomicReference<>();

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        private static boolean f96640a0 = false;

        public static int[] A() {
            if (!a()) {
                return null;
            }
            try {
                return (int[]) f96641b.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static int B() {
            if (!b()) {
                return 0;
            }
            try {
                return ((Integer) f96643d.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int C() {
            if (!c()) {
                return 0;
            }
            try {
                return ((Integer) f96645f.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int D() {
            if (!d()) {
                return 0;
            }
            try {
                return ((Integer) f96647h.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int E() {
            if (!e()) {
                return 0;
            }
            try {
                return ((Integer) f96649j.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int F() {
            if (!f()) {
                return 0;
            }
            try {
                return ((Integer) f96651l.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int G() {
            if (!g()) {
                return 0;
            }
            try {
                return ((Integer) f96653n.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int[] H() {
            if (!h()) {
                return null;
            }
            try {
                return (int[]) f96655p.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static int I() {
            if (!i()) {
                return 0;
            }
            try {
                return ((Integer) f96657r.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int J() {
            if (!j()) {
                return 0;
            }
            try {
                return ((Integer) f96659t.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int K() {
            if (!k()) {
                return 0;
            }
            try {
                return ((Integer) f96661v.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int L() {
            if (!l()) {
                return 0;
            }
            try {
                return ((Integer) f96663x.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int M() {
            if (!m()) {
                return 0;
            }
            try {
                return ((Integer) f96665z.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int N() {
            if (!n()) {
                return 0;
            }
            try {
                return ((Integer) B.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int O() {
            if (!o()) {
                return 0;
            }
            try {
                return ((Integer) D.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int[] P() {
            if (!p()) {
                return null;
            }
            try {
                return (int[]) H.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static int Q() {
            if (!q()) {
                return 0;
            }
            try {
                return ((Integer) L.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int[] R() {
            if (!r()) {
                return null;
            }
            try {
                return (int[]) F.get().get(null);
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return null;
            }
        }

        public static int S() {
            if (!s()) {
                return 0;
            }
            try {
                return ((Integer) J.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int T() {
            if (!t()) {
                return 0;
            }
            try {
                return ((Integer) P.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int U() {
            if (!u()) {
                return 0;
            }
            try {
                return ((Integer) N.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int V() {
            if (!v()) {
                return 0;
            }
            try {
                return ((Integer) R.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int W() {
            if (!w()) {
                return 0;
            }
            try {
                return ((Integer) T.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int X() {
            if (!x()) {
                return 0;
            }
            try {
                return ((Integer) V.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int Y() {
            if (!y()) {
                return 0;
            }
            try {
                return ((Integer) X.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static int Z() {
            if (!z()) {
                return 0;
            }
            try {
                return ((Integer) Z.get().get(null)).intValue();
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return 0;
            }
        }

        public static boolean a() {
            if (f96641b.get() != null) {
                return true;
            }
            if (f96642c) {
                return false;
            }
            i.a(f96641b, null, com.xinzhu.haunted.d.f(f96639a, "AccountAuthenticator"));
            f96642c = true;
            return f96641b.get() != null;
        }

        public static boolean a0(int[] iArr) {
            if (!a()) {
                return false;
            }
            try {
                f96641b.get().set(null, iArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean b() {
            if (f96643d.get() != null) {
                return true;
            }
            if (f96644e) {
                return false;
            }
            i.a(f96643d, null, com.xinzhu.haunted.d.f(f96639a, "AccountAuthenticator_accountPreferences"));
            f96644e = true;
            return f96643d.get() != null;
        }

        public static boolean b0(int i10) {
            if (!b()) {
                return false;
            }
            try {
                f96643d.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean c() {
            if (f96645f.get() != null) {
                return true;
            }
            if (f96646g) {
                return false;
            }
            i.a(f96645f, null, com.xinzhu.haunted.d.f(f96639a, "AccountAuthenticator_accountType"));
            f96646g = true;
            return f96645f.get() != null;
        }

        public static boolean c0(int i10) {
            if (!c()) {
                return false;
            }
            try {
                f96645f.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean d() {
            if (f96647h.get() != null) {
                return true;
            }
            if (f96648i) {
                return false;
            }
            i.a(f96647h, null, com.xinzhu.haunted.d.f(f96639a, "AccountAuthenticator_customTokens"));
            f96648i = true;
            return f96647h.get() != null;
        }

        public static boolean d0(int i10) {
            if (!d()) {
                return false;
            }
            try {
                f96647h.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean e() {
            if (f96649j.get() != null) {
                return true;
            }
            if (f96650k) {
                return false;
            }
            i.a(f96649j, null, com.xinzhu.haunted.d.f(f96639a, "AccountAuthenticator_icon"));
            f96650k = true;
            return f96649j.get() != null;
        }

        public static boolean e0(int i10) {
            if (!e()) {
                return false;
            }
            try {
                f96649j.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean f() {
            if (f96651l.get() != null) {
                return true;
            }
            if (f96652m) {
                return false;
            }
            i.a(f96651l, null, com.xinzhu.haunted.d.f(f96639a, "AccountAuthenticator_label"));
            f96652m = true;
            return f96651l.get() != null;
        }

        public static boolean f0(int i10) {
            if (!f()) {
                return false;
            }
            try {
                f96651l.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean g() {
            if (f96653n.get() != null) {
                return true;
            }
            if (f96654o) {
                return false;
            }
            i.a(f96653n, null, com.xinzhu.haunted.d.f(f96639a, "AccountAuthenticator_smallIcon"));
            f96654o = true;
            return f96653n.get() != null;
        }

        public static boolean g0(int i10) {
            if (!g()) {
                return false;
            }
            try {
                f96653n.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean h() {
            if (f96655p.get() != null) {
                return true;
            }
            if (f96656q) {
                return false;
            }
            i.a(f96655p, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter"));
            f96656q = true;
            return f96655p.get() != null;
        }

        public static boolean h0(int[] iArr) {
            if (!h()) {
                return false;
            }
            try {
                f96655p.get().set(null, iArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean i() {
            if (f96657r.get() != null) {
                return true;
            }
            if (f96658s) {
                return false;
            }
            i.a(f96657r, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter_accountType"));
            f96658s = true;
            return f96657r.get() != null;
        }

        public static boolean i0(int i10) {
            if (!i()) {
                return false;
            }
            try {
                f96657r.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean j() {
            if (f96659t.get() != null) {
                return true;
            }
            if (f96660u) {
                return false;
            }
            i.a(f96659t, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter_allowParallelSyncs"));
            f96660u = true;
            return f96659t.get() != null;
        }

        public static boolean j0(int i10) {
            if (!j()) {
                return false;
            }
            try {
                f96659t.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean k() {
            if (f96661v.get() != null) {
                return true;
            }
            if (f96662w) {
                return false;
            }
            i.a(f96661v, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter_contentAuthority"));
            f96662w = true;
            return f96661v.get() != null;
        }

        public static boolean k0(int i10) {
            if (!k()) {
                return false;
            }
            try {
                f96661v.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean l() {
            if (f96663x.get() != null) {
                return true;
            }
            if (f96664y) {
                return false;
            }
            i.a(f96663x, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter_isAlwaysSyncable"));
            f96664y = true;
            return f96663x.get() != null;
        }

        public static boolean l0(int i10) {
            if (!l()) {
                return false;
            }
            try {
                f96663x.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean m() {
            if (f96665z.get() != null) {
                return true;
            }
            if (A) {
                return false;
            }
            i.a(f96665z, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter_settingsActivity"));
            A = true;
            return f96665z.get() != null;
        }

        public static boolean m0(int i10) {
            if (!m()) {
                return false;
            }
            try {
                f96665z.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean n() {
            if (B.get() != null) {
                return true;
            }
            if (C) {
                return false;
            }
            i.a(B, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter_supportsUploading"));
            C = true;
            return B.get() != null;
        }

        public static boolean n0(int i10) {
            if (!n()) {
                return false;
            }
            try {
                B.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean o() {
            if (D.get() != null) {
                return true;
            }
            if (E) {
                return false;
            }
            i.a(D, null, com.xinzhu.haunted.d.f(f96639a, "SyncAdapter_userVisible"));
            E = true;
            return D.get() != null;
        }

        public static boolean o0(int i10) {
            if (!o()) {
                return false;
            }
            try {
                D.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean p() {
            if (H.get() != null) {
                return true;
            }
            if (I) {
                return false;
            }
            i.a(H, null, com.xinzhu.haunted.d.f(f96639a, "View"));
            I = true;
            return H.get() != null;
        }

        public static boolean p0(int[] iArr) {
            if (!p()) {
                return false;
            }
            try {
                H.get().set(null, iArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean q() {
            if (L.get() != null) {
                return true;
            }
            if (M) {
                return false;
            }
            i.a(L, null, com.xinzhu.haunted.d.f(f96639a, "View_background"));
            M = true;
            return L.get() != null;
        }

        public static boolean q0(int i10) {
            if (!q()) {
                return false;
            }
            try {
                L.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean r() {
            if (F.get() != null) {
                return true;
            }
            if (G) {
                return false;
            }
            i.a(F, null, com.xinzhu.haunted.d.f(f96639a, "Window"));
            G = true;
            return F.get() != null;
        }

        public static boolean r0(int[] iArr) {
            if (!r()) {
                return false;
            }
            try {
                F.get().set(null, iArr);
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean s() {
            if (J.get() != null) {
                return true;
            }
            if (K) {
                return false;
            }
            i.a(J, null, com.xinzhu.haunted.d.f(f96639a, "Window_background"));
            K = true;
            return J.get() != null;
        }

        public static boolean s0(int i10) {
            if (!s()) {
                return false;
            }
            try {
                J.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean t() {
            if (P.get() != null) {
                return true;
            }
            if (Q) {
                return false;
            }
            i.a(P, null, com.xinzhu.haunted.d.f(f96639a, "Window_windowBackground"));
            Q = true;
            return P.get() != null;
        }

        public static boolean t0(int i10) {
            if (!t()) {
                return false;
            }
            try {
                P.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean u() {
            if (N.get() != null) {
                return true;
            }
            if (O) {
                return false;
            }
            i.a(N, null, com.xinzhu.haunted.d.f(f96639a, "Window_windowDisablePreview"));
            O = true;
            return N.get() != null;
        }

        public static boolean u0(int i10) {
            if (!u()) {
                return false;
            }
            try {
                N.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean v() {
            if (R.get() != null) {
                return true;
            }
            if (S) {
                return false;
            }
            i.a(R, null, com.xinzhu.haunted.d.f(f96639a, "Window_windowFullscreen"));
            S = true;
            return R.get() != null;
        }

        public static boolean v0(int i10) {
            if (!v()) {
                return false;
            }
            try {
                R.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean w() {
            if (T.get() != null) {
                return true;
            }
            if (U) {
                return false;
            }
            i.a(T, null, com.xinzhu.haunted.d.f(f96639a, "Window_windowIsFloating"));
            U = true;
            return T.get() != null;
        }

        public static boolean w0(int i10) {
            if (!w()) {
                return false;
            }
            try {
                T.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean x() {
            if (V.get() != null) {
                return true;
            }
            if (W) {
                return false;
            }
            i.a(V, null, com.xinzhu.haunted.d.f(f96639a, "Window_windowIsTranslucent"));
            W = true;
            return V.get() != null;
        }

        public static boolean x0(int i10) {
            if (!x()) {
                return false;
            }
            try {
                V.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean y() {
            if (X.get() != null) {
                return true;
            }
            if (Y) {
                return false;
            }
            i.a(X, null, com.xinzhu.haunted.d.f(f96639a, "Window_windowShowWallpaper"));
            Y = true;
            return X.get() != null;
        }

        public static boolean y0(int i10) {
            if (!y()) {
                return false;
            }
            try {
                X.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }

        public static boolean z() {
            if (Z.get() != null) {
                return true;
            }
            if (f96640a0) {
                return false;
            }
            i.a(Z, null, com.xinzhu.haunted.d.f(f96639a, "Window_windowSwipeToDismiss"));
            f96640a0 = true;
            return Z.get() != null;
        }

        public static boolean z0(int i10) {
            if (!z()) {
                return false;
            }
            try {
                Z.get().set(null, Integer.valueOf(i10));
                return true;
            } catch (IllegalAccessException e10) {
                e10.printStackTrace();
                return false;
            }
        }
    }
}
