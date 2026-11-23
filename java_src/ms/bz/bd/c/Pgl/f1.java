package ms.bz.bd.c.Pgl;

import android.os.IBinder;
import android.os.IInterface;

/* JADX INFO: loaded from: classes.dex */
public final class f1 implements IInterface {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public IBinder f94401c;

    public f1(IBinder iBinder) {
        this.f94401c = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f94401c;
    }
}
