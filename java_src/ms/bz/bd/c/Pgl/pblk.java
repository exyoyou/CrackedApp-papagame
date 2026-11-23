package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.byazt.jtc.ve;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import kotlin.jvm.internal.ByteCompanionObject;

/* JADX INFO: loaded from: classes.dex */
public final class pblk {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final pblb f94423c;

    public interface pblb {
        void c(String str);
    }

    final class pgla implements Runnable {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f94424c;

        pgla(Context context) {
            this.f94424c = context;
        }

        @Override // java.lang.Runnable
        public final void run() {
            try {
                if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "479b8e", new byte[]{4, 6, ByteCompanionObject.MAX_VALUE, 37})).equals(pblk.c(pblk.this).toUpperCase())) {
                    new ms.bz.bd.c.Pgl.pgla(this.f94424c).c(pblk.this.f94423c);
                    return;
                }
                if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b88cb8", new byte[]{91, 15, 106, 32, com.sigmob.sdk.archives.tar.e.R, 6})).equals(pblk.c(pblk.this).toUpperCase())) {
                    new pblp(this.f94424c).c(pblk.this.f94423c);
                    return;
                }
                if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "583e7a", new byte[]{11, 10, 112, 62})).equals(pblk.c(pblk.this).toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7cb84f", new byte[]{9, 79, com.sigmob.sdk.archives.tar.e.L, 124, 39, 68, 7})).equals(pblk.c(pblk.this).toUpperCase())) {
                    e1 e1Var = new e1(this.f94424c);
                    e1Var.c(pblk.this.f94423c);
                    return;
                }
                if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e9ad9a", new byte[]{78, 15, com.sigmob.sdk.archives.tar.e.O})).equals(pblk.c(pblk.this).toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "fadcbc", new byte[]{81, 70, 37, 37, 112, 81, 74, 115})).equals(pblk.c(pblk.this).toUpperCase())) {
                    return;
                }
                pblk.this.getClass();
                if (pblk.c() || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e581bb", new byte[]{71, 4, 126, 108})).equals(pblk.c(pblk.this).toUpperCase())) {
                    return;
                }
                pblk.this.getClass();
                if (pblk.tt() || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a9510b", new byte[]{67, 26, 107, 118, HttpConstants.COLON, 91, 69})).equals(pblk.c(pblk.this).toUpperCase())) {
                    return;
                }
                if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f62680", new byte[]{91, BinaryMemcacheOpcodes.SETQ, 111, 109, com.sigmob.sdk.archives.tar.e.I, 8})).equals(pblk.c(pblk.this).toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "36c235", new byte[]{15, 27, BinaryMemcacheOpcodes.GATKQ, 105, 32, 13, 2, com.sigmob.sdk.archives.tar.e.N})).equals(pblk.c(pblk.this).toUpperCase())) {
                    pblt pbltVar = new pblt(this.f94424c);
                    pbltVar.c(pblk.this.f94423c);
                }
            } catch (Throwable unused) {
            }
        }
    }

    public pblk(pblb pblbVar) {
        this.f94423c = pblbVar;
    }

    private static String c(String str) {
        if (str == null) {
            return null;
        }
        try {
            Class<?> cls = Class.forName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "6f53ff", new byte[]{38, 106, 66, 85, 86, com.sigmob.sdk.archives.tar.e.R, com.sigmob.sdk.archives.tar.e.I, 9, 107, 112, 105, 87, 95, 84, 77, 116, 56, 119, 118, 108, com.sigmob.sdk.archives.tar.e.O, 97, 84, com.sigmob.sdk.archives.tar.e.Q, 80, 116, 38}));
            return (String) cls.getMethod((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "058b47", new byte[]{38, com.sigmob.sdk.archives.tar.e.J, 95}), String.class, String.class).invoke(cls, str, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e71f7f", new byte[]{97, HttpConstants.SEMICOLON, 73, BinaryMemcacheOpcodes.TOUCH, 7, 102, 104}));
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean c() {
        String strC = c((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3fca99", new byte[]{com.sigmob.sdk.archives.tar.e.H, 107, 94, BinaryMemcacheOpcodes.QUITQ, BinaryMemcacheOpcodes.REPLACEQ, 39, 60, 67, 124, com.sigmob.sdk.archives.tar.e.O, com.sigmob.sdk.archives.tar.e.H, 97, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.FLUSHQ, 3, 96, 60, 70, com.sigmob.sdk.archives.tar.e.H, com.sigmob.sdk.archives.tar.e.L, 46}));
        return !TextUtils.isEmpty(strC) && strC.equalsIgnoreCase((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "dff479", new byte[]{com.sigmob.sdk.archives.tar.e.Q, 86, com.sigmob.sdk.archives.tar.e.H, 101, 37, 11, 72, 116}));
    }

    private void tt(Context context) {
        new ve(new pgla(context), "bd/c/Pgl/pblk").start();
    }

    static String c(pblk pblkVar) {
        pblkVar.getClass();
        return Build.MANUFACTURER.toUpperCase();
    }

    public static boolean tt() {
        String strC = c((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "3cea58", new byte[]{com.sigmob.sdk.archives.tar.e.H, 110, com.sigmob.sdk.archives.tar.e.S, 6, BinaryMemcacheOpcodes.APPENDQ, HttpConstants.COLON, 57, 12, BinaryMemcacheOpcodes.GATKQ, BinaryMemcacheOpcodes.GATK, 45, 101, 3, BinaryMemcacheOpcodes.DECREMENTQ, BinaryMemcacheOpcodes.GATQ}));
        return (TextUtils.isEmpty(strC) || strC.equalsIgnoreCase((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "cc8470", new byte[]{com.sigmob.sdk.archives.tar.e.T, 111, 64, 78, 7, com.sigmob.sdk.archives.tar.e.H, 110}))) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:41:0x023e  */
    public final void c(Context context) {
        String strC;
        String str = (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7fd210", new byte[]{7, 87, 34, 117});
        String str2 = Build.MANUFACTURER;
        if (str.equals(str2.toUpperCase().toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "a65732", new byte[]{com.sigmob.sdk.archives.tar.e.S, 1, com.sigmob.sdk.archives.tar.e.T, 116, 41, 12})).equals(str2.toUpperCase().toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "184382", new byte[]{12, 31, 105, 104, com.sigmob.sdk.archives.tar.e.I, 10})).equals(str2.toUpperCase().toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ddd091", new byte[]{com.sigmob.sdk.archives.tar.e.S, 73, BinaryMemcacheOpcodes.GATK, 107, 42, 9, 85, 100})).equals(str2.toUpperCase().toUpperCase())) {
            tt(context);
            strC = null;
        } else {
            if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b50d91", new byte[]{94, BinaryMemcacheOpcodes.ADDQ, 106, 42, com.sigmob.sdk.archives.tar.e.K})).equals(str2.toUpperCase().toUpperCase())) {
                new a1(context).c(this.f94423c);
            } else if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "ba8d8a", new byte[]{93, 86, 105, 57, 38})).equals(str2.toUpperCase().toUpperCase())) {
                strC = new c1(context).c();
            } else if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "82e3f9", new byte[]{6, 0, 38, 104})).equals(str2.toUpperCase().toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "0c839d", new byte[]{BinaryMemcacheOpcodes.ADDQ, 64, 102, 116, com.sigmob.sdk.archives.tar.e.K, 93, BinaryMemcacheOpcodes.DELETEQ})).equals(str2.toUpperCase().toUpperCase())) {
                tt(context);
            } else if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "109b73", new byte[]{BinaryMemcacheOpcodes.DECREMENTQ, 27, 124, 57})).equals(str2.toUpperCase().toUpperCase())) {
                strC = new z1(context).c();
            } else if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "16475b", new byte[]{BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.GAT, 102, 108, 39, 92})).equals(str2.toUpperCase().toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9de541", new byte[]{10, 74, com.sigmob.sdk.archives.tar.e.O, 98, 32, BinaryMemcacheOpcodes.INCREMENTQ, BinaryMemcacheOpcodes.ADDQ, 100, 6, 78})).equals(str2.toUpperCase().toUpperCase())) {
                strC = new a2(context).c();
            } else if (((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d3deb8", new byte[]{90, 31, com.sigmob.sdk.archives.tar.e.J, BinaryMemcacheOpcodes.SASL_AUTH, 113, 26, 84})).equals(str2.toUpperCase().toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "13043a", new byte[]{26, 5, 102})).equals(str2.toUpperCase().toUpperCase()) || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "682784", new byte[]{1, 31, 115, 113, 42, 6, 26, 42})).equals(str2.toUpperCase().toUpperCase()) || c() || ((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "016c3d", new byte[]{BinaryMemcacheOpcodes.ADDQ, 0, 112, 62})).equals(str2.toUpperCase().toUpperCase()) || tt()) {
                tt(context);
            }
            strC = null;
        }
        pblb pblbVar = this.f94423c;
        if (pblbVar != null) {
            pblbVar.c(strC);
        }
    }
}
