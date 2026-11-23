package ms.bz.bd.c.Pgl;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.Signature;
import android.os.IBinder;
import android.os.Looper;
import android.os.Parcel;
import android.os.SystemClock;
import com.haima.hmcp.cloud.BaseCloudFileManager;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import java.security.MessageDigest;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class e1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    ServiceConnection f94399c;
    private final Context tt;
    private f1 uj;
    private String ve;

    final class pgla implements ServiceConnection {
        pgla() {
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            e1.this.uj = new f1(iBinder);
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            e1.this.uj = null;
        }
    }

    public e1(Context context) {
        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "8ea24d", new byte[]{6, 82, HttpConstants.SEMICOLON, 98});
        this.f94399c = new pgla();
        this.tt = context;
    }

    public final void c(pblk.pblb pblbVar) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            throw new IllegalStateException((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "c79b4c", new byte[]{81, com.sigmob.sdk.archives.tar.e.L, 68, BinaryMemcacheOpcodes.FLUSHQ, 4, 96, 32, 4, 125, 60, com.sigmob.sdk.archives.tar.e.J, HttpConstants.COLON, 68, 86, 38, 117, 105, BinaryMemcacheOpcodes.FLUSHQ, 92, HttpConstants.COLON, 96, com.sigmob.sdk.archives.tar.e.H, 75, BinaryMemcacheOpcodes.ADDQ}));
        }
        Intent intent = new Intent();
        intent.setComponent(new ComponentName((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d01b79", new byte[]{118, 61, 79, com.sigmob.sdk.archives.tar.e.S, 0, 43, 126, 5, 97, 34, HttpConstants.SEMICOLON, 61, 82, BinaryMemcacheOpcodes.REPLACEQ, 6, 39, 99}), (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "126c53", new byte[]{BinaryMemcacheOpcodes.GATK, Utf8.REPLACEMENT_BYTE, 72, 89, 2, BinaryMemcacheOpcodes.SASL_AUTH, 43, 7, 102, BinaryMemcacheOpcodes.GATK, 110, Utf8.REPLACEMENT_BYTE, 85, BinaryMemcacheOpcodes.ADDQ, 4, 45, com.sigmob.sdk.archives.tar.e.N, 93, 78, com.sigmob.sdk.archives.tar.e.O, 37, 62, 81, BinaryMemcacheOpcodes.GATQ, 12, 61, 1, BinaryMemcacheOpcodes.DECREMENTQ, 117, 37, 41, com.sigmob.sdk.archives.tar.e.K, 64})));
        intent.setAction((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "9aa7f0", new byte[]{41, 96, 6, 74, 86, 41, 116, 67, Utf8.REPLACEMENT_BYTE, 106, 102, 107, BinaryMemcacheOpcodes.QUITQ, 90, 77, 38, 42, 14, Utf8.REPLACEMENT_BYTE, 119, 45, 109, 27, 71, BinaryMemcacheOpcodes.QUITQ, 8, 10, 101, BinaryMemcacheOpcodes.GATQ, com.sigmob.sdk.archives.tar.e.S, 1, 71, 45, 112, 124, BinaryMemcacheOpcodes.INCREMENTQ, 12, 105, BinaryMemcacheOpcodes.REPLACEQ, 66}));
        boolean z10 = false;
        try {
            if (this.tt.bindService(intent, this.f94399c, 1)) {
                try {
                    try {
                        SystemClock.sleep(BaseCloudFileManager.ACK_TIMEOUT);
                    } catch (Exception unused) {
                    }
                    f1 f1Var = this.uj;
                    if (f1Var != null) {
                        String strC = c(f1Var, (String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "2d3ffa", new byte[]{12, com.sigmob.sdk.archives.tar.e.Q, 105, com.sigmob.sdk.archives.tar.e.N}));
                        if (pblbVar != null) {
                            pblbVar.c(strC);
                        }
                    }
                    z10 = true;
                } catch (Throwable unused2) {
                    z10 = true;
                    try {
                        com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "00fb13", new byte[]{46, 34});
                        if (!z10) {
                            return;
                        }
                    } finally {
                        if (z10) {
                            this.tt.unbindService(this.f94399c);
                        }
                    }
                }
            }
            if (!z10) {
            }
        } catch (Throwable unused3) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:18:0x006b  */
    private String c(f1 f1Var, String str) {
        Signature[] signatureArr;
        String string;
        String packageName = this.tt.getPackageName();
        String string2 = null;
        if (this.ve == null) {
            try {
                signatureArr = this.tt.getPackageManager().getPackageInfo(packageName, 64).signatures;
            } catch (Exception unused) {
                signatureArr = null;
            }
            if (signatureArr == null || signatureArr.length <= 0) {
                string = null;
            } else {
                byte[] byteArray = signatureArr[0].toByteArray();
                try {
                    MessageDigest messageDigest = MessageDigest.getInstance((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "f67ad6", new byte[]{68, BinaryMemcacheOpcodes.TOUCH, 101, 68}));
                    if (messageDigest != null) {
                        byte[] bArrDigest = messageDigest.digest(byteArray);
                        StringBuilder sb2 = new StringBuilder();
                        for (byte b10 : bArrDigest) {
                            sb2.append(Integer.toHexString((b10 & 255) | 256).substring(1, 3));
                        }
                        string = sb2.toString();
                    } else {
                        string = null;
                    }
                } catch (Exception unused2) {
                }
            }
            this.ve = string;
        }
        String str2 = this.ve;
        f1Var.getClass();
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            try {
                parcelObtain.writeInterfaceToken((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "4e77bc", new byte[]{38, 104, 73, 13, 85, 113, 46, 80, com.sigmob.sdk.archives.tar.e.T, 119, 107, 104, 84, 70, com.sigmob.sdk.archives.tar.e.Q, 125, com.sigmob.sdk.archives.tar.e.K, 10, 79, 72, com.sigmob.sdk.archives.tar.e.M, 98, 74, 106, 121}));
                parcelObtain.writeString(packageName);
                parcelObtain.writeString(str2);
                parcelObtain.writeString(str);
                f1Var.f94401c.transact(1, parcelObtain, parcelObtain2, 0);
                parcelObtain2.readException();
                string2 = parcelObtain2.readString();
            } catch (Exception unused3) {
                com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "d4e50b", new byte[]{122, 38, 31});
            }
            return string2;
        } finally {
            parcelObtain.recycle();
            parcelObtain2.recycle();
        }
    }
}
