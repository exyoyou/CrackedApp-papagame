package com.sdk.n;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import com.join.android.app.common.utils.m;
import com.sdk.f.d;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes2.dex */
public class a extends com.sdk.h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f78555a = "com.sdk.n.a";

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f78556a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final b f78557b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final b f78558c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final b f78559d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final /* synthetic */ b[] f78560e;

        /* JADX INFO: renamed from: com.sdk.n.a$b$a, reason: collision with other inner class name */
        public final enum C1015a extends b {
            public C1015a(String str, int i10) {
                super(str, i10);
            }

            @Override // com.sdk.n.a.b
            public int a() {
                return 2;
            }
        }

        /* JADX INFO: renamed from: com.sdk.n.a$b$b, reason: collision with other inner class name */
        public final enum C1016b extends b {
            public C1016b(String str, int i10) {
                super(str, i10);
            }

            @Override // com.sdk.n.a.b
            public int a() {
                return 0;
            }
        }

        public final enum c extends b {
            public c(String str, int i10) {
                super(str, i10);
            }

            @Override // com.sdk.n.a.b
            public int a() {
                return 1;
            }
        }

        public final enum d extends b {
            public d(String str, int i10) {
                super(str, i10);
            }

            @Override // com.sdk.n.a.b
            public int a() {
                return -1;
            }
        }

        static {
            C1015a c1015a = new C1015a("WIFI_NET", 0);
            f78556a = c1015a;
            C1016b c1016b = new C1016b(t7.a.f97141e, 1);
            f78557b = c1016b;
            c cVar = new c("NET", 2);
            f78558c = cVar;
            d dVar = new d("UNKNOW", 3);
            f78559d = dVar;
            f78560e = new b[]{c1015a, c1016b, cVar, dVar};
        }

        public b(String str, int i10) {
            super(str, i10);
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f78560e.clone();
        }

        public abstract int a();
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    public static abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f78561a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final c f78562b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final c f78563c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final /* synthetic */ c[] f78564d;

        /* JADX INFO: renamed from: com.sdk.n.a$c$a, reason: collision with other inner class name */
        public final enum C1017a extends c {
            public C1017a(String str, int i10) {
                super(str, i10);
            }
        }

        public final enum b extends c {
            public b(String str, int i10) {
                super(str, i10);
            }
        }

        /* JADX INFO: renamed from: com.sdk.n.a$c$c, reason: collision with other inner class name */
        public final enum C1018c extends c {
            public C1018c(String str, int i10) {
                super(str, i10);
            }
        }

        static {
            C1017a c1017a = new C1017a("CMCC", 0);
            f78561a = c1017a;
            b bVar = new b("CUCC", 1);
            f78562b = bVar;
            C1018c c1018c = new C1018c("CTC", 2);
            f78563c = c1018c;
            f78564d = new c[]{c1017a, bVar, c1018c};
        }

        public c(String str, int i10) {
            super(str, i10);
        }

        public static c valueOf(String str) {
            return (c) Enum.valueOf(c.class, str);
        }

        public static c[] values() {
            return (c[]) f78564d.clone();
        }
    }

    static {
        boolean z10 = d.f78521a;
    }

    public static int a(Context context) {
        String simOperator = ((TelephonyManager) context.getSystemService("phone")).getSimOperator();
        if (com.sdk.r.a.a(simOperator).booleanValue() || com.sdk.r.a.a(simOperator).booleanValue()) {
            return 0;
        }
        if (!"46001".equals(simOperator) && !"46006".equals(simOperator) && !"46009".equals(simOperator)) {
            if (!"46000".equals(simOperator) && !"46002".equals(simOperator) && !"46004".equals(simOperator) && !"46007".equals(simOperator)) {
                if (!"46003".equals(simOperator) && !"46005".equals(simOperator) && !"46011".equals(simOperator)) {
                    NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
                    if (activeNetworkInfo == null) {
                        return 0;
                    }
                    String extraInfo = activeNetworkInfo.getExtraInfo();
                    if (!"cmnet".equals(extraInfo) && !m.f34792c.equals(extraInfo)) {
                        if (!m.f34793d.equals(extraInfo) && !m.f34794e.equals(extraInfo) && !"3gnet".equals(extraInfo) && !"uninet".equals(extraInfo)) {
                            if (!"ctnet".equals(extraInfo) && !m.f34791b.equals(extraInfo)) {
                                return 0;
                            }
                        }
                    }
                }
                return 2;
            }
            return 1;
        }
        return 3;
    }

    public static b b(Context context) {
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                boolean zBooleanValue = true;
                if (activeNetworkInfo.getType() != 1) {
                    if (activeNetworkInfo.getType() == 0) {
                        TextUtils.isEmpty(activeNetworkInfo.getExtraInfo());
                        return b.f78558c;
                    }
                    return b.f78559d;
                }
                try {
                    Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
                    declaredMethod.setAccessible(true);
                    zBooleanValue = ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                return zBooleanValue ? b.f78556a : b.f78557b;
            }
            return b.f78559d;
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }
}
