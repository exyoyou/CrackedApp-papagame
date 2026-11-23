package com.sdk.p;

import com.sdk.base.module.manager.SDKManager;
import java.security.Security;
import org.bouncycastle.jce.provider.BouncyCastleProvider;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static f f78577c;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public com.sdk.q.a f78578a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f78579b;

    public f() {
        com.sdk.q.a cVar;
        String strB = com.sdk.t.a.b();
        this.f78579b = com.sdk.t.a.a();
        strB.hashCode();
        switch (strB) {
            case "C":
            case "D":
            case "E":
                if (SDKManager.isSupport_GM()) {
                    cVar = new com.sdk.q.c();
                    break;
                } else {
                    return;
                }
                break;
            default:
                cVar = new com.sdk.q.b();
                break;
        }
        this.f78578a = cVar;
    }

    public static f a() {
        if (f78577c == null) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append("SecurityPlan getInstance() 开始 ");
            sb2.append(System.currentTimeMillis());
            f78577c = new f();
            if (SDKManager.isSupport_GM()) {
                if (Security.getProvider("BC") != null) {
                    double version = Security.getProvider("BC").getVersion();
                    System.out.println(version);
                    if (version < 1.69d) {
                        Security.removeProvider("BC");
                    }
                }
                if (Security.getProvider("BC") == null) {
                    Security.addProvider(new BouncyCastleProvider());
                }
                if (Security.getProvider("BC") != null) {
                    System.out.println(Security.getProvider("BC").getVersion());
                }
            }
        }
        return f78577c;
    }
}
