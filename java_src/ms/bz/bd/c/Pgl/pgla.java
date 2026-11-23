package ms.bz.bd.c.Pgl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.util.concurrent.LinkedBlockingQueue;
import kotlin.jvm.internal.ByteCompanionObject;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class pgla {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final LinkedBlockingQueue<IBinder> f94454c = new LinkedBlockingQueue<>(1024);
    ServiceConnection tt = new ServiceConnectionC1212pgla();
    private final Context ve;

    /* JADX INFO: renamed from: ms.bz.bd.c.Pgl.pgla$pgla, reason: collision with other inner class name */
    final class ServiceConnectionC1212pgla implements ServiceConnection {
        ServiceConnectionC1212pgla() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            try {
                pgla.this.f94454c.put(iBinder);
            } catch (Exception unused) {
            }
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
        }
    }

    public pgla(Context context) {
        this.ve = context;
    }

    public final void c(pblk.pblb pblbVar) {
        try {
            this.ve.getPackageManager().getPackageInfo((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "e5f052", new byte[]{119, 56, BinaryMemcacheOpcodes.FLUSHQ, 10, 11, com.sigmob.sdk.archives.tar.e.N, 115, 7, 121, 109, com.sigmob.sdk.archives.tar.e.T, com.sigmob.sdk.archives.tar.e.N, 91, 119, 31, com.sigmob.sdk.archives.tar.e.M, 118, BinaryMemcacheOpcodes.FLUSHQ, com.sigmob.sdk.archives.tar.e.J, 109, 113, 57, 1, 69, BinaryMemcacheOpcodes.FLUSHQ, 60, 66, 61, BinaryMemcacheOpcodes.REPLACEQ}), 0);
        } catch (Exception unused) {
        }
        Intent intent = new Intent();
        intent.setAction((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "366278", new byte[]{BinaryMemcacheOpcodes.SASL_AUTH, HttpConstants.SEMICOLON, 72, 8, 9, 60, 37, 4, 41, 111, com.sigmob.sdk.archives.tar.e.I, com.sigmob.sdk.archives.tar.e.M, 11, 71, 11, HttpConstants.SEMICOLON, 57, BinaryMemcacheOpcodes.FLUSHQ, 105, HttpConstants.COMMA, 3, BinaryMemcacheOpcodes.QUITQ, 102, 99, HttpConstants.SEMICOLON, BinaryMemcacheOpcodes.TOUCH, 15, com.sigmob.sdk.archives.tar.e.K, 78, 70}));
        intent.setComponent(new ComponentName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "b5cfb4", new byte[]{112, 56, BinaryMemcacheOpcodes.GAT, 92, 92, com.sigmob.sdk.archives.tar.e.H, 116, 7, 124, HttpConstants.SEMICOLON, 96, com.sigmob.sdk.archives.tar.e.N, 94, BinaryMemcacheOpcodes.SASL_AUTH, 72, com.sigmob.sdk.archives.tar.e.K, 113, BinaryMemcacheOpcodes.FLUSHQ, com.sigmob.sdk.archives.tar.e.O, HttpConstants.SEMICOLON, 118, 57, 4, BinaryMemcacheOpcodes.REPLACEQ, 79, HttpConstants.COLON, 69, 61, BinaryMemcacheOpcodes.DECREMENTQ}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "72fab2", new byte[]{37, Utf8.REPLACEMENT_BYTE, BinaryMemcacheOpcodes.FLUSHQ, 91, 92, com.sigmob.sdk.archives.tar.e.N, BinaryMemcacheOpcodes.SASL_AUTH, 0, 121, 60, com.sigmob.sdk.archives.tar.e.M, com.sigmob.sdk.archives.tar.e.I, 91, 38, 72, com.sigmob.sdk.archives.tar.e.M, BinaryMemcacheOpcodes.GATKQ, 31, com.sigmob.sdk.archives.tar.e.J, 60, BinaryMemcacheOpcodes.GATK, 62, 1, BinaryMemcacheOpcodes.DELETEQ, 79, 60, 16, HttpConstants.COLON, BinaryMemcacheOpcodes.REPLACEQ, ByteCompanionObject.MAX_VALUE, BinaryMemcacheOpcodes.INCREMENTQ, 37, 5, 5, 81, 32, 57, BinaryMemcacheOpcodes.DECREMENTQ, 57, 37, 39, 34, 12, com.sigmob.sdk.archives.tar.e.I, 116, 1, 7, BinaryMemcacheOpcodes.DECREMENTQ, 37, 39, 47, com.sigmob.sdk.archives.tar.e.K, 16})));
        if (this.ve.bindService(intent, this.tt, 1)) {
            try {
                String strC = new pblb(this.f94454c.take()).c();
                if (pblbVar != null) {
                    pblbVar.c(strC);
                }
            } catch (Exception unused2) {
            } finally {
                this.ve.unbindService(this.tt);
            }
        }
    }
}
