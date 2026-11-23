package ms.bz.bd.c.Pgl;

import android.text.TextUtils;
import android.view.Display;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes.dex */
public final class q1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static q1 f94457c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private long f94458a;

    /* JADX INFO: renamed from: da, reason: collision with root package name */
    private boolean f94459da;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f94460i;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f94461n = 1;
    private String sp;
    private long tt;
    private long uj;
    private long ve;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private String f94462x;

    private q1() {
    }

    public static Object c(Object obj, String str) {
        Field field;
        try {
            Method declaredMethod = Class.class.getDeclaredMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "bd8d6e", new byte[]{116, 99, 95, com.sigmob.sdk.archives.tar.e.L, 12, 113, 109, 68, 123, com.sigmob.sdk.archives.tar.e.I, 119, 64, 66, BinaryMemcacheOpcodes.INCREMENTQ, 5, 118}), String.class);
            if (declaredMethod == null || (field = (Field) declaredMethod.invoke(obj.getClass(), str)) == null) {
                return null;
            }
            field.setAccessible(true);
            return field.get(obj);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static String tt(Display[] displayArr) {
        try {
            StringBuilder sb2 = new StringBuilder();
            for (Display display : displayArr) {
                StringBuilder sb3 = new StringBuilder();
                Object objC = c(display, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "fbb0ac", new byte[]{122, 68, BinaryMemcacheOpcodes.FLUSHQ, 87, 78, com.sigmob.sdk.archives.tar.e.R, 100, 90, 26, 110, 113, 111}));
                sb3.append(c(objC, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f42403", new byte[]{com.sigmob.sdk.archives.tar.e.R, BinaryMemcacheOpcodes.SASL_AUTH, 79, 69, BinaryMemcacheOpcodes.GAT, BinaryMemcacheOpcodes.DELETEQ, 100, BinaryMemcacheOpcodes.DECREMENTQ, 104, 101, 112, com.sigmob.sdk.archives.tar.e.K, 111, 65, 2, BinaryMemcacheOpcodes.SASL_AUTH})));
                sb3.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "998e4c", new byte[]{100}));
                sb3.append(c(objC, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9b3c3e", new byte[]{46, 108, 65, 16, 31})));
                sb3.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0740f6", new byte[]{109}));
                sb3.append(c(objC, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "de4d23", new byte[]{123, 102, 74, BinaryMemcacheOpcodes.INCREMENTQ})));
                sb3.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6e7e5e", new byte[]{107}));
                sb3.append(c(objC, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ce6dea", new byte[]{102, 126, 85, BinaryMemcacheOpcodes.INCREMENTQ})));
                if (!sb2.toString().contains(sb3.toString())) {
                    if (sb2.length() > 0) {
                        sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d3b45b", new byte[]{46}));
                    }
                    sb2.append((CharSequence) sb3);
                }
            }
            if (sb2.length() > 0) {
                return sb2.toString();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final boolean uj() {
        return this.tt > 0 || this.ve > 0 || this.f94458a > 0;
    }

    public final JSONObject ve() {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "315e4f", new byte[]{BinaryMemcacheOpcodes.GATK, 39}), this.tt);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "12d1e2", new byte[]{com.sigmob.sdk.archives.tar.e.J, BinaryMemcacheOpcodes.GATKQ}), this.ve);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f6de21", new byte[]{115, 57}), this.f94461n);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "01d3d1", new byte[]{37, 39}), this.f94458a);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1d94a2", new byte[]{BinaryMemcacheOpcodes.GATK, com.sigmob.sdk.archives.tar.e.T, 78}), this.f94459da ? 1 : 0);
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "596875", new byte[]{41, Utf8.REPLACEMENT_BYTE}), this.sp);
            if (!TextUtils.isEmpty(this.f94462x)) {
                jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6e2e84", new byte[]{com.sigmob.sdk.archives.tar.e.O, 108}), this.f94462x);
            }
            if (!TextUtils.isEmpty(this.f94460i)) {
                jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "861d89", new byte[]{45, 61}), this.f94460i);
            }
            this.uj = System.currentTimeMillis();
            jSONObject.put((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "881a67", new byte[]{42, 46}), this.uj / 1000);
            if (jSONObject.length() > 0) {
                return jSONObject;
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public static String c(Display[] displayArr) {
        try {
            StringBuilder sb2 = new StringBuilder();
            for (Display display : displayArr) {
                Object objC = c(display, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c92e80", new byte[]{ByteCompanionObject.MAX_VALUE, BinaryMemcacheOpcodes.DELETEQ, 86, 31, 2, com.sigmob.sdk.archives.tar.e.M, 80, BinaryMemcacheOpcodes.APPENDQ, 96, 62, 115, 60, 68, Utf8.REPLACEMENT_BYTE, 6, 42, 101}));
                if (objC != null && !sb2.toString().contains(objC.toString())) {
                    sb2.append(objC);
                    sb2.append((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a8f663", new byte[]{43}));
                }
            }
            if (sb2.length() > 0) {
                return sb2.toString();
            }
            return null;
        } catch (Exception unused) {
            return null;
        }
    }

    public final void tt() {
        this.f94459da = true;
    }

    public static q1 c() {
        if (f94457c == null) {
            f94457c = new q1();
        }
        return f94457c;
    }

    public final void tt(long j10) {
        this.ve = j10;
        this.sp = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0c789b", new byte[]{com.sigmob.sdk.archives.tar.e.K, 100, 73, 67, 16, 112});
    }

    public final void c(int i10) {
        if (this.f94461n != i10) {
            this.f94458a = System.currentTimeMillis() / 1000;
        }
        this.f94461n = i10;
    }

    public final void tt(String str) {
        this.f94460i = str;
    }

    public final void c(long j10) {
        this.tt = j10;
        this.sp = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4a97c0", new byte[]{BinaryMemcacheOpcodes.GATKQ, com.sigmob.sdk.archives.tar.e.T, 78});
    }

    public final void c(String str) {
        this.f94462x = str;
    }
}
