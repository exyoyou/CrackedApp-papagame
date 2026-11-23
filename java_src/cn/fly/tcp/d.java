package cn.fly.tcp;

import cn.fly.FlySDK;
import cn.fly.commons.ac;
import cn.fly.tools.utils.DH;
import cn.fly.tools.utils.i;

/* JADX INFO: loaded from: classes7.dex */
public class d {
    public static void a() {
        ac.f1042a.execute(new i() { // from class: cn.fly.tcp.d.1
            @Override // cn.fly.tools.utils.i
            protected void a() throws Throwable {
                boolean zIsInMainProcess = DH.SyncMtd.isInMainProcess();
                cn.fly.tcp.f.c.a().b("TpEntrance init, main p: " + zIsInMainProcess);
                if (zIsInMainProcess && !FlySDK.isForb()) {
                    a.a().b();
                    b.a().b();
                }
            }
        });
    }
}
