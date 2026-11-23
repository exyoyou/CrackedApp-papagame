package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class o1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static o1 f94406c;
    private Context tt;
    private ArrayList ve = new ArrayList();

    private o1(Context context) {
        this.tt = null;
        this.tt = context;
    }

    public final int c() {
        Intent intentRegisterReceiver = this.tt.registerReceiver(null, new IntentFilter((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9ac916", new byte[]{41, 109, BinaryMemcacheOpcodes.DELETEQ, 95, 1, 40, 62, 14, HttpConstants.SEMICOLON, com.sigmob.sdk.archives.tar.e.T, 60, 102, BinaryMemcacheOpcodes.GATQ, 89, 64, 32, 57, 84, HttpConstants.SEMICOLON, 102, 38, 45, com.sigmob.sdk.archives.tar.e.J, 108, HttpConstants.COLON, BinaryMemcacheOpcodes.INCREMENTQ, 31, 114, 11, 86, 11, 75, com.sigmob.sdk.archives.tar.e.I, 99, 41, 4, BinaryMemcacheOpcodes.GATQ})));
        if (intentRegisterReceiver == null) {
            return -1;
        }
        return Math.round(((intentRegisterReceiver.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "5aa482", new byte[]{40, 102, 4, 69, 11}), -1) / intentRegisterReceiver.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "eeb620", new byte[]{com.sigmob.sdk.archives.tar.e.T, 100, 16, 78, 8}), -1)) * 100.0f) * 10.0f) / 10;
    }

    public final synchronized int[] n() {
        int size = this.ve.size();
        if (size <= 0) {
            return new int[0];
        }
        if (size == 1) {
            return new int[]{((Integer) this.ve.get(0)).intValue()};
        }
        try {
            ArrayList arrayList = this.ve;
            int i10 = size - 10;
            if (i10 <= 0) {
                i10 = 0;
            }
            List listSubList = arrayList.subList(i10, size);
            int[] iArr = new int[listSubList.size()];
            for (int i11 = 0; i11 < listSubList.size(); i11++) {
                iArr[i11] = ((Integer) listSubList.get(i11)).intValue();
            }
            return iArr;
        } catch (Throwable unused) {
            return new int[0];
        }
    }

    public final int tt() {
        Intent intentRegisterReceiver = this.tt.registerReceiver(null, new IntentFilter((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9db7e8", new byte[]{41, 104, BinaryMemcacheOpcodes.INCREMENTQ, 81, 85, 38, 62, 11, HttpConstants.COLON, 105, 60, 99, 31, 87, BinaryMemcacheOpcodes.DELETEQ, 46, 57, 81, HttpConstants.COLON, 104, 38, 40, com.sigmob.sdk.archives.tar.e.K, 98, 110, 27, 31, 119, 10, com.sigmob.sdk.archives.tar.e.S, 11, 78, com.sigmob.sdk.archives.tar.e.H, 109, 125, 10, BinaryMemcacheOpcodes.GATQ})));
        if (intentRegisterReceiver == null) {
            return -1;
        }
        int intExtra = intentRegisterReceiver.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "121b32", new byte[]{com.sigmob.sdk.archives.tar.e.K, BinaryMemcacheOpcodes.GATKQ, 67, 2, BinaryMemcacheOpcodes.APPENDQ, com.sigmob.sdk.archives.tar.e.N}), -1);
        return (intExtra == 2 || intExtra == 5) ? 1 : 0;
    }

    public final void uj() {
        byte b10;
        int i10;
        int iVe;
        int iC;
        try {
            b10 = pble.c() != null ? (byte) 1 : (byte) 0;
        } catch (Throwable unused) {
            b10 = -1;
        }
        if (b10 != 1) {
            com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d997ca", new byte[]{118, com.sigmob.sdk.archives.tar.e.K, 79, 64, 87, com.sigmob.sdk.archives.tar.e.N, 97, BinaryMemcacheOpcodes.GAT, 124, 100, 125, BinaryMemcacheOpcodes.APPENDQ, 75, 87, 72, 115, 117, 1, 91, 115, 116, 47, 95, 80, 111, 98, 117, BinaryMemcacheOpcodes.SETQ, 102, 96, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.J, 68, 3, 94, 119, 100, BinaryMemcacheOpcodes.REPLACEQ, 111, 117, 122, 46, 68, 71});
            return;
        }
        try {
            synchronized (this) {
                try {
                    iVe = ve();
                    iC = c();
                } catch (Throwable th) {
                    throw th;
                }
            }
            i10 = (iVe * 10000) + iC;
        } catch (Exception unused2) {
            i10 = -10001;
        }
        Integer numValueOf = Integer.valueOf(i10);
        if (numValueOf == null) {
            return;
        }
        this.ve.add(numValueOf);
        try {
            int size = this.ve.size();
            if (size > 20) {
                ArrayList arrayList = new ArrayList(this.ve.subList(size - 10, size));
                this.ve.clear();
                this.ve = arrayList;
            }
        } catch (Throwable unused3) {
        }
    }

    public final int ve() {
        Intent intentRegisterReceiver = this.tt.registerReceiver(null, new IntentFilter((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "06808f", new byte[]{32, HttpConstants.COLON, 79, 86, 8, com.sigmob.sdk.archives.tar.e.R, com.sigmob.sdk.archives.tar.e.O, 89, 96, 110, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.I, 69, 80, 73, 112, com.sigmob.sdk.archives.tar.e.H, 3, 96, 111, 47, 122, 105, 101, com.sigmob.sdk.archives.tar.e.K, 69, BinaryMemcacheOpcodes.DECREMENTQ, 37, 80, 95, 2, BinaryMemcacheOpcodes.TOUCH, 106, 106, 32, 84, BinaryMemcacheOpcodes.QUITQ})));
        if (intentRegisterReceiver == null) {
            return -1;
        }
        return intentRegisterReceiver.getIntExtra((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d6bce0", new byte[]{101, 56, 4, 16, 93, 34, 99}), -1);
    }

    public static o1 c(Context context) {
        if (f94406c == null) {
            synchronized (o1.class) {
                if (f94406c == null) {
                    f94406c = new o1(context);
                }
            }
        }
        return f94406c;
    }
}
