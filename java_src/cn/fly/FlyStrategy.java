package cn.fly;

import cn.fly.commons.ae;
import cn.fly.tools.proguard.PublicMemberKeeper;
import cn.fly.tools.utils.i;

/* JADX INFO: loaded from: classes7.dex */
public class FlyStrategy implements PublicMemberKeeper {
    public static void setStrategy(final int i10) {
        new Thread(new i() { // from class: cn.fly.FlyStrategy.1
            @Override // cn.fly.tools.utils.i
            protected void a() {
                ae.b().a(i10);
            }
        }).start();
    }
}
