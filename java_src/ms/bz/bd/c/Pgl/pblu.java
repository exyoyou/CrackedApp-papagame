package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;
import okio.Utf8;

/* JADX INFO: loaded from: classes.dex */
public final class pblu implements IInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IBinder f94433c;

    public pblu(IBinder iBinder) {
        this.f94433c = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return null;
    }

    public final String c() {
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "88ccbe", new byte[]{42, com.sigmob.sdk.archives.tar.e.M, BinaryMemcacheOpcodes.GAT, 89, 71, com.sigmob.sdk.archives.tar.e.T, com.sigmob.sdk.archives.tar.e.J, 87, com.sigmob.sdk.archives.tar.e.N, com.sigmob.sdk.archives.tar.e.N, Utf8.REPLACEMENT_BYTE, com.sigmob.sdk.archives.tar.e.K, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.ADDQ, 84, 118, 40, BinaryMemcacheOpcodes.TOUCH, 32, 37, 32, 57, BinaryMemcacheOpcodes.INCREMENTQ, 89, 116, 86, 62, 15, HttpConstants.SEMICOLON, com.sigmob.sdk.archives.tar.e.H, HttpConstants.COMMA, com.sigmob.sdk.archives.tar.e.K, BinaryMemcacheOpcodes.DELETEQ, 62, com.sigmob.sdk.archives.tar.e.Q, 102, 62, 11, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.J, 42, Utf8.REPLACEMENT_BYTE}));
            this.f94433c.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            return parcelObtain2.readString();
        } catch (Exception e10) {
            com.byazt.nr.m.c(e10);
            return null;
        } finally {
            parcelObtain2.recycle();
            parcelObtain.recycle();
        }
    }
}
