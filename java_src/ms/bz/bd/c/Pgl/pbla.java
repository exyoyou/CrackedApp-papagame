package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes.dex */
public final class pbla implements IInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IBinder f94411c;

    public pbla(IBinder iBinder) {
        this.f94411c = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f94411c;
    }

    public final String c() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "90fe61", new byte[]{43, 61, BinaryMemcacheOpcodes.FLUSHQ, 95, BinaryMemcacheOpcodes.TOUCH, 41, 62, BinaryMemcacheOpcodes.FLUSHQ, BinaryMemcacheOpcodes.GATKQ, 123, 39, 34, 16, 31, 13, BinaryMemcacheOpcodes.GATK, HttpConstants.COMMA, BinaryMemcacheOpcodes.FLUSHQ, com.sigmob.sdk.archives.tar.e.L, com.sigmob.sdk.archives.tar.e.H, 102, com.sigmob.sdk.archives.tar.e.K, BinaryMemcacheOpcodes.TOUCH, BinaryMemcacheOpcodes.INCREMENTQ, 5, 104, BinaryMemcacheOpcodes.INCREMENTQ, 1, com.sigmob.sdk.archives.tar.e.J, HttpConstants.SEMICOLON, 12, com.sigmob.sdk.archives.tar.e.O, 3, BinaryMemcacheOpcodes.FLUSHQ, 10, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.INCREMENTQ, com.sigmob.sdk.archives.tar.e.J, HttpConstants.SEMICOLON, 60, HttpConstants.SEMICOLON, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.FLUSHQ, 12, com.sigmob.sdk.archives.tar.e.L, 9, BinaryMemcacheOpcodes.DELETEQ, 37, BinaryMemcacheOpcodes.GATK, BinaryMemcacheOpcodes.SASL_AUTH, com.sigmob.sdk.archives.tar.e.I, 16}));
            this.f94411c.transact(1, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Throwable th) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            com.byazt.nr.m.c(th);
            string = null;
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return string;
    }
}
