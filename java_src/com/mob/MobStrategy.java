package com.mob;

import cn.fly.FlyStrategy;
import com.mob.tools.proguard.PublicMemberKeeper;

/* JADX INFO: loaded from: classes2.dex */
public class MobStrategy implements PublicMemberKeeper {
    public static void setStrategy(int i10) {
        FlyStrategy.setStrategy(i10);
    }
}
