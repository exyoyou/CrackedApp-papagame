package com.tencent.stat;

import android.content.Context;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
class i implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f83941a;

    public i(Context context) {
        this.f83941a = context;
    }

    @Override // java.lang.Runnable
    public void run() {
        for (File file : StatNativeCrashReport.a(this.f83941a)) {
            String strA = StatNativeCrashReport.a(file);
            Context context = this.f83941a;
            com.tencent.stat.a.d dVar = new com.tencent.stat.a.d(context, StatService.a(context, false), strA, 3, com.sigmob.sdk.archives.tar.d.f78732b);
            dVar.a(StatNativeCrashReport.b(file));
            if (StatService.c(this.f83941a) != null) {
                StatService.c(this.f83941a).post(new k(dVar));
            }
            file.delete();
            StatService.f83814i.d("delete tombstone file:" + file.getAbsolutePath().toString());
        }
    }
}
