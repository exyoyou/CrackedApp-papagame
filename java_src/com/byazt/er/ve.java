package com.byazt.er;

import android.os.RemoteException;
import com.byazt.uk.uj;
import com.bytedance.pangle.ZeusPluginStateListener;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 964, 54})
public class ve extends ZeusPluginStateListener {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final uj f13568c;
    public final int tt;

    public ve(uj ujVar, int i10) {
        this.f13568c = ujVar;
        this.tt = i10;
    }

    public int c() {
        return this.tt;
    }

    @Override // com.bytedance.pangle.ZeusPluginStateListener
    public void onStateChangeOnCurThread(String str, int i10, Object... objArr) {
        if (i10 == 5 || i10 == 7 || i10 == 6) {
            String strValueOf = "";
            if (objArr != null) {
                try {
                    if (objArr.length > 0) {
                        strValueOf = String.valueOf(objArr[0]);
                    }
                } catch (RemoteException unused) {
                    return;
                }
            }
            this.f13568c.c(str, i10, strValueOf);
        }
    }
}
