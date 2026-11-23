package com.ta.utdid2.device;

import android.content.Context;
import android.provider.Settings;
import com.ta.utdid2.android.utils.g;
import com.ta.utdid2.android.utils.i;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.util.Random;
import java.util.regex.Pattern;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String f82992i = "d6fc3a4a06adbde89223bvefedc24fecde188aaa9161";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static d f82994k = null;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    static final String f82995l = "dxCRMxhQkdGePGnp";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    static final String f82996m = "mqBRboGZkQPcAkyk";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f82997n = ".DataStorage";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final String f82998o = "ContextData";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final String f83000q = "Alvin2";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f83001a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private f f83003c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f83004d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f83005e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private com.ta.utdid2.core.persistent.c f83006f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.ta.utdid2.core.persistent.c f83007g;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Object f82993j = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final String f82999p = ".UTSystemConfig" + File.separator + "Global";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f83002b = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Pattern f83008h = Pattern.compile("[^0-9a-zA-Z=/+]+");

    public d(Context context) {
        this.f83001a = null;
        this.f83003c = null;
        this.f83004d = "xx_utdid_key";
        this.f83005e = "xx_utdid_domain";
        this.f83006f = null;
        this.f83007g = null;
        this.f83001a = context;
        this.f83007g = new com.ta.utdid2.core.persistent.c(context, f82999p, f83000q, false, true);
        this.f83006f = new com.ta.utdid2.core.persistent.c(context, f82997n, f82998o, false, true);
        this.f83003c = new f();
        this.f83004d = String.format("K_%d", Integer.valueOf(i.b(this.f83004d)));
        this.f83005e = String.format("D_%d", Integer.valueOf(i.b(this.f83005e)));
    }

    private static String a(byte[] bArr) throws Exception {
        Mac mac = Mac.getInstance(com.alipay.security.mobile.module.commonutils.crypto.c.f7275a);
        mac.init(new SecretKeySpec(f82992i.getBytes(), mac.getAlgorithm()));
        return com.ta.utdid2.android.utils.b.f(mac.doFinal(bArr), 2);
    }

    private final byte[] b() throws Exception {
        String string;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int iCurrentTimeMillis = (int) (System.currentTimeMillis() / 1000);
        int iNextInt = new Random().nextInt();
        byte[] bArrA = com.ta.utdid2.android.utils.e.a(iCurrentTimeMillis);
        byte[] bArrA2 = com.ta.utdid2.android.utils.e.a(iNextInt);
        byteArrayOutputStream.write(bArrA, 0, 4);
        byteArrayOutputStream.write(bArrA2, 0, 4);
        byteArrayOutputStream.write(3);
        byteArrayOutputStream.write(0);
        try {
            string = g.a(this.f83001a);
        } catch (Exception unused) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(new Random().nextInt());
            string = sb2.toString();
        }
        byteArrayOutputStream.write(com.ta.utdid2.android.utils.e.a(i.b(string)), 0, 4);
        byteArrayOutputStream.write(com.ta.utdid2.android.utils.e.a(i.b(a(byteArrayOutputStream.toByteArray()))));
        return byteArrayOutputStream.toByteArray();
    }

    private void c() {
        boolean z10;
        com.ta.utdid2.core.persistent.c cVar = this.f83007g;
        if (cVar != null) {
            if (i.c(cVar.l("UTDID2"))) {
                String strL = this.f83007g.l("UTDID");
                if (!i.c(strL)) {
                    k(strL);
                }
            }
            boolean z11 = true;
            if (i.c(this.f83007g.l("DID"))) {
                z10 = false;
            } else {
                this.f83007g.u("DID");
                z10 = true;
            }
            if (!i.c(this.f83007g.l("EI"))) {
                this.f83007g.u("EI");
                z10 = true;
            }
            if (i.c(this.f83007g.l("SI"))) {
                z11 = z10;
            } else {
                this.f83007g.u("SI");
            }
            if (z11) {
                this.f83007g.c();
            }
        }
    }

    private String d() {
        com.ta.utdid2.core.persistent.c cVar = this.f83007g;
        if (cVar == null) {
            return null;
        }
        String strL = cVar.l("UTDID2");
        if (i.c(strL) || this.f83003c.d(strL) == null) {
            return null;
        }
        return strL;
    }

    public static d f(Context context) {
        if (context != null && f82994k == null) {
            synchronized (f82993j) {
                if (f82994k == null) {
                    d dVar = new d(context);
                    f82994k = dVar;
                    dVar.c();
                }
            }
        }
        return f82994k;
    }

    private boolean g(String str) {
        if (str != null) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length() && !this.f83008h.matcher(str).find()) {
                return true;
            }
        }
        return false;
    }

    private void h(String str) {
        com.ta.utdid2.core.persistent.c cVar;
        if (str == null || (cVar = this.f83006f) == null || str.equals(cVar.l(this.f83004d))) {
            return;
        }
        this.f83006f.s(this.f83004d, str);
        this.f83006f.c();
    }

    private void i(String str) {
        String string;
        if (this.f83001a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") == 0 && g(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (24 == str.length()) {
                try {
                    string = Settings.System.getString(this.f83001a.getContentResolver(), f82996m);
                } catch (Exception unused) {
                    string = null;
                }
                if (g(string)) {
                    return;
                }
                try {
                    Settings.System.putString(this.f83001a.getContentResolver(), f82996m, str);
                } catch (Exception unused2) {
                }
            }
        }
    }

    private void j(String str) {
        if (this.f83001a.checkCallingOrSelfPermission("android.permission.WRITE_SETTINGS") != 0 || str == null) {
            return;
        }
        l(str);
    }

    private void k(String str) {
        com.ta.utdid2.core.persistent.c cVar;
        if (g(str)) {
            if (str.endsWith("\n")) {
                str = str.substring(0, str.length() - 1);
            }
            if (str.length() != 24 || (cVar = this.f83007g) == null) {
                return;
            }
            cVar.s("UTDID2", str);
            this.f83007g.c();
        }
    }

    private void l(String str) {
        String string;
        try {
            string = Settings.System.getString(this.f83001a.getContentResolver(), f82995l);
        } catch (Exception unused) {
            string = null;
        }
        if (str.equals(string)) {
            return;
        }
        try {
            Settings.System.putString(this.f83001a.getContentResolver(), f82995l, str);
        } catch (Exception unused2) {
        }
    }

    public synchronized String e() {
        String string;
        boolean z10;
        try {
            String str = this.f83002b;
            if (str != null) {
                return str;
            }
            String string2 = "";
            try {
                string2 = Settings.System.getString(this.f83001a.getContentResolver(), f82996m);
            } catch (Exception unused) {
            }
            if (g(string2)) {
                return string2;
            }
            e eVar = new e();
            try {
                string = Settings.System.getString(this.f83001a.getContentResolver(), f82995l);
            } catch (Exception unused2) {
                string = null;
            }
            if (i.c(string)) {
                z10 = true;
            } else {
                String strB = eVar.b(string);
                if (g(strB)) {
                    i(strB);
                    return strB;
                }
                String strA = eVar.a(string);
                if (g(strA)) {
                    String strD = this.f83003c.d(strA);
                    if (!i.c(strD)) {
                        j(strD);
                        try {
                            string = Settings.System.getString(this.f83001a.getContentResolver(), f82995l);
                        } catch (Exception unused3) {
                        }
                    }
                }
                String strA2 = this.f83003c.a(string);
                if (g(strA2)) {
                    this.f83002b = strA2;
                    k(strA2);
                    h(string);
                    i(this.f83002b);
                    return this.f83002b;
                }
                z10 = false;
            }
            String strD2 = d();
            if (g(strD2)) {
                String strD3 = this.f83003c.d(strD2);
                if (z10) {
                    j(strD3);
                }
                i(strD2);
                h(strD3);
                this.f83002b = strD2;
                return strD2;
            }
            String strL = this.f83006f.l(this.f83004d);
            if (!i.c(strL)) {
                String strA3 = eVar.a(strL);
                if (!g(strA3)) {
                    strA3 = this.f83003c.a(strL);
                }
                if (g(strA3)) {
                    String strD4 = this.f83003c.d(strA3);
                    if (!i.c(strA3)) {
                        this.f83002b = strA3;
                        if (z10) {
                            j(strD4);
                        }
                        k(this.f83002b);
                        return this.f83002b;
                    }
                }
            }
            try {
                byte[] bArrB = b();
                if (bArrB != null) {
                    String strF = com.ta.utdid2.android.utils.b.f(bArrB, 2);
                    this.f83002b = strF;
                    k(strF);
                    String strC = this.f83003c.c(bArrB);
                    if (strC != null) {
                        if (z10) {
                            j(strC);
                        }
                        h(strC);
                    }
                    return this.f83002b;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return null;
        } catch (Throwable th) {
            throw th;
        }
    }
}
