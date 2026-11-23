package org.repackage.com.meizu.flyme.openidsdk;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes10.dex */
final class a extends BroadcastReceiver {
    a() {
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002d  */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        b bVar;
        if (context == null || intent == null) {
            return;
        }
        boolean zContains = false;
        int intExtra = intent.getIntExtra("openIdNotifyFlag", 0);
        f.e("shouldUpdateId, notifyFlag : ".concat(String.valueOf(intExtra)));
        if (intExtra == 1) {
            if (TextUtils.equals(intent.getStringExtra("openIdPackage"), context.getPackageName())) {
                zContains = true;
            }
        } else if (intExtra == 2) {
            ArrayList<String> stringArrayListExtra = intent.getStringArrayListExtra("openIdPackageList");
            if (stringArrayListExtra != null) {
                zContains = stringArrayListExtra.contains(context.getPackageName());
            }
        } else if (intExtra == 0) {
            zContains = true;
        }
        if (zContains) {
            String stringExtra = intent.getStringExtra("openIdType");
            f fVarD = f.d();
            if ("oaid".equals(stringExtra)) {
                bVar = fVarD.f95977b;
            } else if ("vaid".equals(stringExtra)) {
                bVar = fVarD.f95979d;
            } else if ("aaid".equals(stringExtra)) {
                bVar = fVarD.f95978c;
            } else {
                bVar = "udid".equals(stringExtra) ? fVarD.f95976a : null;
            }
            if (bVar == null) {
                return;
            }
            bVar.e();
        }
    }
}
