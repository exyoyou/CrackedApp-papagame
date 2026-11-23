package com.wf.transfer.core;

import android.content.Context;
import android.net.Uri;
import android.os.IBinder;
import com.join.mgps.Util.o0;
import java.util.HashMap;

/* JADX INFO: loaded from: classes9.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Context f85814a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static HashMap<String, e> f85815b = new HashMap<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f85816c = "file_source";

    public static String a() {
        return "com.join.android.app.mgsim.wufun.transfer.BindProvider";
    }

    public static IBinder b() {
        return com.wf.transfer.utils.a.d(a(), f85816c);
    }

    public static e c(String str, String str2, boolean z10) {
        e eVar = f85815b.get(str);
        if (!z10 && eVar != null && eVar.asBinder().isBinderAlive()) {
            return eVar;
        }
        IBinder iBinderD = com.wf.transfer.utils.a.d(str + o0.f49827a + str2 + ".transfer", "transfer_" + str2);
        if (iBinderD == null) {
            throw new IllegalArgumentException("transfer binder is null");
        }
        e eVarAsInterface = e.b.asInterface(iBinderD);
        if (eVarAsInterface == null) {
            throw new IllegalArgumentException("transfer is null");
        }
        f85815b.put(str, eVarAsInterface);
        return eVarAsInterface;
    }

    public static void d(Context context) {
        f85814a = context;
    }

    public static boolean e(String str, String str2) {
        try {
            String str3 = str + o0.f49827a + str2 + ".transfer";
            StringBuilder sb2 = new StringBuilder();
            sb2.append("content://");
            sb2.append(str3);
            return com.wf.transfer.utils.a.b(Uri.parse(sb2.toString())) != null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return false;
        }
    }

    public static Context getContext() {
        return f85814a;
    }
}
