package com.mob.tools.utils;

import cn.fly.tools.utils.FlyRSA;
import com.mob.tools.proguard.PublicMemberKeeper;
import java.math.BigInteger;

/* JADX INFO: loaded from: classes2.dex */
public class MobRSA implements PublicMemberKeeper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final FlyRSA f75548a;

    public MobRSA(int i10) {
        this.f75548a = new FlyRSA(i10);
    }

    public byte[] encode(byte[] bArr, BigInteger bigInteger, BigInteger bigInteger2) throws Throwable {
        return this.f75548a.encode(bArr, bigInteger, bigInteger2);
    }
}
