package com.baidu.mobads.sdk.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: loaded from: classes6.dex */
class cd extends Handler {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ cb f7707a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    cd(cb cbVar, Looper looper) {
        super(looper);
        this.f7707a = cbVar;
    }

    @Override // android.os.Handler
    public void handleMessage(Message message) {
        String string = message.getData().getString(cb.f7692n);
        bz bzVar = (bz) message.getData().getParcelable(cb.f7691m);
        if (!cb.f7689k.equals(string)) {
            this.f7707a.f7704z.a(cb.f7679a, "mOnApkDownloadCompleted: download failed, code: " + string);
            this.f7707a.a(false);
            if (this.f7707a.A) {
                this.f7707a.A = false;
                this.f7707a.a(false, "Refused to download remote for version...");
                return;
            }
            return;
        }
        bu buVar = new bu(bzVar.e(), this.f7707a.f7703y, bzVar);
        try {
            try {
                cb cbVar = this.f7707a;
                if (cbVar.f7700u == cb.f7698t) {
                    buVar.a();
                    buVar.a(cb.f());
                    if (cb.f7694p != null) {
                        cb.f7694p.f7613b = bzVar.b();
                    }
                    this.f7707a.l();
                    if (this.f7707a.A) {
                        this.f7707a.A = false;
                        cb cbVar2 = this.f7707a;
                        cbVar2.a(cbVar2.p(), "load remote file just downloaded");
                    }
                } else {
                    cbVar.a(buVar);
                    buVar.a(cb.f());
                    this.f7707a.a(true);
                }
            } catch (cb.a e10) {
                String str = "download apk file failed: " + e10.toString();
                this.f7707a.a(false);
                this.f7707a.f7704z.a(cb.f7679a, str);
            }
        } finally {
            buVar.delete();
        }
    }
}
