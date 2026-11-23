package com.facebook.imagepipeline.platform;

import android.os.Build;
import androidx.core.util.Pools;
import com.facebook.imagepipeline.memory.i0;
import com.facebook.infer.annotation.Nullsafe;

/* JADX INFO: loaded from: classes9.dex */
@Nullsafe(Nullsafe.Mode.LOCAL)
public class h {
    public static g a(i0 poolFactory, boolean gingerbreadDecoderEnabled) {
        if (Build.VERSION.SDK_INT >= 26) {
            int iE = poolFactory.e();
            return new f(poolFactory.b(), iE, new Pools.SynchronizedPool(iE));
        }
        int iE2 = poolFactory.e();
        return new a(poolFactory.b(), iE2, new Pools.SynchronizedPool(iE2));
    }
}
