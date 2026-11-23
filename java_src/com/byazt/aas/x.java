package com.byazt.aas;

import android.content.Intent;
import android.content.pm.ResolveInfo;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 131, 71})
public class x {
    public static List<ResolveInfo> c(Intent intent, int i10) {
        return com.byazt.omf.gt.getContext().getPackageManager().queryIntentActivities(intent, i10);
    }
}
