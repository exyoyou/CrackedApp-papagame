package com.xinzhu.overmind.client.hook;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.xinzhu.haunted.android.os.g;
import com.xinzhu.haunted.android.os.t;
import java.io.FileDescriptor;
import java.lang.reflect.Method;

/* JADX INFO: loaded from: classes8.dex */
public abstract class BinderInvocationStub extends b implements IBinder {
    public static final String TAG = "BinderInvocationStub";
    private IBinder mBaseBinder;

    class a extends e {
        a() {
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected String c() {
            return "asBinder";
        }

        @Override // com.xinzhu.overmind.client.hook.e
        protected Object d(Object obj, Method method, Object[] objArr) throws Throwable {
            return BinderInvocationStub.this.mBaseBinder;
        }
    }

    public BinderInvocationStub(IBinder iBinder) {
        this.mBaseBinder = iBinder;
    }

    @Override // android.os.IBinder
    public void dump(@NonNull FileDescriptor fileDescriptor, @Nullable String[] strArr) throws RemoteException {
        this.mBaseBinder.dump(fileDescriptor, strArr);
    }

    @Override // android.os.IBinder
    public void dumpAsync(@NonNull FileDescriptor fileDescriptor, @Nullable String[] strArr) throws RemoteException {
        this.mBaseBinder.dumpAsync(fileDescriptor, strArr);
    }

    public IBinder getExtension() throws RemoteException {
        IBinder iBinderB = new g(this.mBaseBinder).b();
        com.xinzhu.overmind.b.c(TAG, "BinderInvocationStub getExtension get result:" + iBinderB);
        return iBinderB;
    }

    @Override // android.os.IBinder
    @Nullable
    public String getInterfaceDescriptor() throws RemoteException {
        return this.mBaseBinder.getInterfaceDescriptor();
    }

    @Override // android.os.IBinder
    public boolean isBinderAlive() {
        return this.mBaseBinder.isBinderAlive();
    }

    @Override // android.os.IBinder
    public void linkToDeath(@NonNull IBinder.DeathRecipient deathRecipient, int i10) throws RemoteException {
        this.mBaseBinder.linkToDeath(deathRecipient, i10);
    }

    @Override // com.xinzhu.overmind.client.hook.b
    protected void onBindMethod() {
        addMethodHook(new a());
    }

    @Override // android.os.IBinder
    public boolean pingBinder() {
        return this.mBaseBinder.pingBinder();
    }

    @Override // android.os.IBinder
    @Nullable
    public IInterface queryLocalInterface(@NonNull String str) {
        return (IInterface) getProxyInvocation();
    }

    protected void replaceSystemService(String str) {
        t.k().put(str, this);
    }

    @Override // android.os.IBinder
    public boolean transact(int i10, @NonNull Parcel parcel, @Nullable Parcel parcel2, int i11) throws RemoteException {
        return this.mBaseBinder.transact(i10, parcel, parcel2, i11);
    }

    @Override // android.os.IBinder
    public boolean unlinkToDeath(@NonNull IBinder.DeathRecipient deathRecipient, int i10) {
        return this.mBaseBinder.unlinkToDeath(deathRecipient, i10);
    }
}
