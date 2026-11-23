package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.text.TextUtils;
import androidx.core.view.InputDeviceCompat;
import com.volcengine.mobsecBiz.metasec.listener.PglITokenObserver;
import com.volcengine.mobsecBiz.metasec.ml.PglMSManager;
import com.volcengine.mobsecBiz.metasec.ml.PglMSManagerUtils;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;
import okio.Utf8;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes.dex */
public final class q0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f94456c = 0;
    private static volatile boolean tt;
    private static final ConcurrentHashMap ve = new ConcurrentHashMap();
    private static CopyOnWriteArraySet uj = new CopyOnWriteArraySet();

    public interface pgla {
        Map<String, String> getFeatureHash(String str, byte[] bArr);

        String getToken();

        void report(String str);

        void setBDDeviceID(String str);

        void setCollectMode(int i10);

        void setDeviceID(String str);

        void setInstallID(String str);
    }

    protected q0() {
    }

    public static synchronized void c(String str) {
        if (pblw.c().tt() != null) {
            pblv pblvVar = (pblv) ve.get(str);
            if (tt(str) != null && pblvVar != null) {
                uj.addAll(pblvVar.f94449p);
                PglMSManager pglMSManager = PglMSManagerUtils.get(str);
                if (pglMSManager != null) {
                    pglMSManager.report((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c029e4", new byte[]{77, HttpConstants.SEMICOLON, 79, 68, 78, BinaryMemcacheOpcodes.TOUCH, 114, BinaryMemcacheOpcodes.DELETEQ, 115, 102, 96, 38}));
                }
            }
        }
    }

    public static synchronized p0 tt(String str) {
        try {
            if (str == null) {
                throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "2284cd", new byte[]{34, 32, 91, 105, com.sigmob.sdk.archives.tar.e.R, com.sigmob.sdk.archives.tar.e.K, 60, 6, 122, 112, 99, com.sigmob.sdk.archives.tar.e.J, 78, 0, 79, 118, 37}));
            }
            if (!tt) {
                return null;
            }
            int i10 = pblz.f94453c;
            Object objA = com.volcengine.mobsecBiz.matrix.pgla.a(67108866, 0, 0L, str, null);
            if (objA == null) {
                return null;
            }
            pblv pblvVar = (pblv) ve.get(str);
            if (pblvVar == null) {
                return null;
            }
            return new p0(pblvVar, pblw.c().tt(), ((Long) objA).longValue());
        } catch (Throwable th) {
            throw th;
        }
    }

    public static void ve(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d42e40", new byte[]{122, 56, 115, BinaryMemcacheOpcodes.DELETEQ, 27, 40, 117, 1, 69, 60, 123, Utf8.REPLACEMENT_BYTE, 82, BinaryMemcacheOpcodes.APPENDQ, 75, com.sigmob.sdk.archives.tar.e.K, 104, BinaryMemcacheOpcodes.GATQ, 102, HttpConstants.SEMICOLON, com.sigmob.sdk.archives.tar.e.M, 123, 12, 92, 75});
        Iterator it2 = uj.iterator();
        while (it2.hasNext()) {
            ((PglITokenObserver) it2.next()).onTokenLoaded(str);
        }
    }

    public static synchronized boolean c(Context context, pblv pblvVar) {
        try {
            if (context == null) {
                throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d8dc29", new byte[]{118, com.sigmob.sdk.archives.tar.e.M, BinaryMemcacheOpcodes.APPENDQ, 3, 8, com.sigmob.sdk.archives.tar.e.N, 115, 89, com.sigmob.sdk.archives.tar.e.N, 60, 96, com.sigmob.sdk.archives.tar.e.N, BinaryMemcacheOpcodes.REPLACEQ, 87, 3, BinaryMemcacheOpcodes.SASL_AUTH, 115, 89, com.sigmob.sdk.archives.tar.e.O, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.L, 2, 27, 1}));
            }
            if (pblvVar == null) {
                throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cc6d77", new byte[]{113, 110, 75, BinaryMemcacheOpcodes.DECREMENTQ, 1, 39, 32, 65, 104, BinaryMemcacheOpcodes.SASL_AUTH, 126, 101, 5, BinaryMemcacheOpcodes.GATQ, 7, com.sigmob.sdk.archives.tar.e.L, 32, 64, 98, 116, 124, 116, 73, BinaryMemcacheOpcodes.TOUCH}));
            }
            String str = pblvVar.f94434a;
            String str2 = (str == null || str.length() <= 0) ? pblvVar.f94440g : pblvVar.f94434a;
            if (str2 == null || str2.length() <= 0) {
                throw new NullPointerException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5895b9", new byte[]{37, 42, 90, 104, 121, 110, HttpConstants.SEMICOLON, 12, 123, 113, 100, 56, 79, 1, 78, 43, 34}));
            }
            if (!tt) {
                synchronized (q0.class) {
                    if (!tt) {
                        c(context);
                        tt = true;
                    }
                }
            }
            if (ve.containsKey(str2)) {
                return false;
            }
            JSONArray jSONArray = new JSONArray();
            jSONArray.put(pblv.a(pblvVar.f94434a));
            jSONArray.put(pblv.a(pblvVar.f94441h));
            jSONArray.put(pblv.a(pblvVar.f94440g));
            jSONArray.put(pblv.a(pblvVar.f94442i));
            jSONArray.put(pblv.a(s1.c()));
            jSONArray.put(pblv.a(pblvVar.f94435b));
            jSONArray.put(pblv.a(pblvVar.f94436c));
            jSONArray.put(pblv.a(pblvVar.f94437d));
            jSONArray.put(pblv.a(pblvVar.f94438e));
            jSONArray.put(pblv.a(pblvVar.f94439f));
            jSONArray.put(String.valueOf(pblvVar.f94444k));
            jSONArray.put(String.valueOf(pblvVar.f94445l));
            jSONArray.put(String.valueOf(pblvVar.f94446m));
            JSONArray jSONArray2 = new JSONArray();
            for (Map.Entry<String, String> entry : pblvVar.f94447n.entrySet()) {
                if (!TextUtils.isEmpty(entry.getKey())) {
                    jSONArray2.put(pblv.a(entry.getKey()));
                    jSONArray2.put(pblv.a(entry.getValue()));
                }
            }
            jSONArray.put(jSONArray2);
            JSONArray jSONArray3 = new JSONArray();
            for (Map.Entry entry2 : pblvVar.f94448o.entrySet()) {
                if (!TextUtils.isEmpty((CharSequence) entry2.getKey())) {
                    if (((String) entry2.getKey()).equals("kOA1") && TextUtils.equals((CharSequence) entry2.getValue(), "1")) {
                        d1.f94396c = false;
                        d1.tt = pblvVar.f94443j;
                    }
                    jSONArray3.put(pblv.a(entry2.getKey()));
                    jSONArray3.put(pblv.a(entry2.getValue()));
                }
            }
            jSONArray.put(jSONArray3);
            String string = jSONArray.toString();
            int i10 = pblz.f94453c;
            if (!((Boolean) com.volcengine.mobsecBiz.matrix.pgla.a(67108865, 0, 0L, string, null)).booleanValue()) {
                return false;
            }
            ve.put(str2, pblvVar);
            r1.c(context).c();
            return true;
        } catch (Throwable th) {
            throw th;
        }
    }

    static synchronized void c(Context context) {
        if (!tt) {
            Context applicationContext = context.getApplicationContext();
            pblw.c().c(applicationContext);
            h1.c(applicationContext);
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a0b5d8", new byte[]{62, Utf8.REPLACEMENT_BYTE, 2});
            pblz.c(16777218, new k());
            pblz.c(16777217, new v());
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "1164aa", new byte[]{110, 62, 65});
            pblz.c(16777219, new g0());
            pblz.c(16777221, new j0());
            pblz.c(16777222, new k0());
            pblz.c(16777223, new l0());
            pblz.c(16777224, new m0());
            pblz.c(16777225, new n0());
            pblz.c(16777226, new o0());
            pblz.c(16777228, new a());
            pblz.c(InputDeviceCompat.SOURCE_JOYSTICK, new b());
            pblz.c(16777233, new c());
            pblz.c(16777235, new d());
            pblz.c(16777238, new e());
            pblz.c(16777239, new f());
            pblz.c(16777241, new g());
            pblz.c(16777242, new h());
            pblz.c(16777243, new i());
            pblz.c(16777244, new j());
            pblz.c(16777245, new l());
            pblz.c(16777246, new m());
            pblz.c(16777247, new n());
            pblz.c(16777248, new o());
            pblz.c(16777249, new p());
            pblz.c(16777250, new q());
            pblz.c(16777251, new r());
            pblz.c(16777240, new s());
            pblz.c(16777252, new t());
            pblz.c(16777253, new u());
            pblz.c(16777254, new w());
            pblz.c(16777255, new x());
            pblz.c(16777256, new y());
            pblz.c(16777257, new z());
            pblz.c(16777317, new a0());
            pblz.c(16777318, new b0());
            pblz.c(16777261, new c0());
            pblz.c(16777266, new d0());
            pblz.c(16777319, new e0());
            pblz.c(16777259, new f0());
            pblz.c(16777262, new h0());
            pblz.c(33554435, new i0());
            y0.c();
            z0.c();
            com.volcengine.mobsecBiz.matrix.pgla.a(16777219, 0, 0L, null, applicationContext);
            tt = true;
        }
    }
}
