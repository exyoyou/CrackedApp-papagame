package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import io.netty.handler.codec.http.HttpConstants;
import io.netty.handler.codec.memcache.binary.BinaryMemcacheOpcodes;

/* JADX INFO: loaded from: classes.dex */
public final class pblb implements IInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final IBinder f94412c;

    public pblb(IBinder iBinder) {
        this.f94412c = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f94412c;
    }

    public final String c() {
        String string;
        Parcel parcelObtain = Parcel.obtain();
        Parcel parcelObtain2 = Parcel.obtain();
        try {
            parcelObtain.writeInterfaceToken((String) com.volcengine.mobsecBiz.matrix.pgla.a(16777217, 0, 0L, "7b1f8e", new byte[]{37, 111, 79, 92, 6, 97, BinaryMemcacheOpcodes.SASL_AUTH, 80, 46, HttpConstants.SEMICOLON, com.sigmob.sdk.archives.tar.e.M, 97, 12, BinaryMemcacheOpcodes.SASL_AUTH, BinaryMemcacheOpcodes.ADDQ, 98, BinaryMemcacheOpcodes.GATKQ, 79, 101, HttpConstants.SEMICOLON, BinaryMemcacheOpcodes.GATK, 110, 86, BinaryMemcacheOpcodes.REPLACEQ, BinaryMemcacheOpcodes.INCREMENTQ, 107, 16, 106, 68, com.sigmob.sdk.archives.tar.e.R, 15, 68, 75, BinaryMemcacheOpcodes.DECREMENTQ, 38, 123, com.sigmob.sdk.archives.tar.e.H, 79, 73, 56, com.sigmob.sdk.archives.tar.e.J, 101, 80, BinaryMemcacheOpcodes.DELETEQ, 6, 113, com.sigmob.sdk.archives.tar.e.I}));
            this.f94412c.transact(3, parcelObtain, parcelObtain2, 0);
            parcelObtain2.readException();
            string = parcelObtain2.readString();
        } catch (Throwable unused) {
            parcelObtain.recycle();
            parcelObtain2.recycle();
            string = null;
        }
        parcelObtain.recycle();
        parcelObtain2.recycle();
        return string;
    }
}
