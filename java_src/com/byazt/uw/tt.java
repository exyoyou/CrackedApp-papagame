package com.byazt.uw;

import android.app.Activity;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.byazt.ou.i;
import com.byazt.ou.rl;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1715, 13})
public class tt implements i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public rl f21051c;

    @Override // com.byazt.ou.i
    public void c(@NonNull Activity activity, @NonNull String[] strArr, rl rlVar) {
        if (Build.VERSION.SDK_INT >= 23) {
            this.f21051c = rlVar;
            activity.requestPermissions(strArr, 1);
        } else if (rlVar != null) {
            rlVar.c();
        }
    }

    @Override // com.byazt.ou.i
    public boolean c(@Nullable Context context, @NonNull String str) {
        return (context == null || str == null || context.checkPermission(str, Process.myPid(), Process.myUid()) != 0) ? false : true;
    }

    @Override // com.byazt.ou.i
    public void c(@NonNull Activity activity, int i10, @NonNull String[] strArr, @NonNull int[] iArr) {
        rl rlVar;
        if (iArr.length <= 0 || (rlVar = this.f21051c) == null) {
            return;
        }
        int i11 = iArr[0];
        if (i11 == -1) {
            rlVar.c(strArr[0]);
        } else if (i11 == 0) {
            rlVar.c();
        }
    }
}
