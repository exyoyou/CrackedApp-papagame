package com.xinzhu.overmind.server.accounts;

import android.accounts.AuthenticatorDescription;
import android.os.Handler;
import com.xinzhu.overmind.server.pm.RegisteredServicesCache;
import com.xinzhu.overmind.server.pm.t;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.Collection;

/* JADX INFO: loaded from: classes8.dex */
public interface d {
    void a(int i10);

    RegisteredServicesCache.c<AuthenticatorDescription> b(AuthenticatorDescription authenticatorDescription, int i10);

    Collection<RegisteredServicesCache.c<AuthenticatorDescription>> c(int i10);

    void d(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr, int i10);

    void e(int i10);

    void f(t<AuthenticatorDescription> tVar, Handler handler);
}
