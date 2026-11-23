package ms.bz.bd.c.Pgl;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: loaded from: classes.dex */
final class s extends pblz.pgla {
    s() {
    }

    @Override // ms.bz.bd.c.Pgl.pblz.pgla
    public final Object c(long j10, String str, Object obj) throws Throwable {
        Context contextTt = pblw.c().tt();
        String[] strArr = (String[]) obj;
        if (contextTt == null || str == null || strArr == null || strArr.length % 2 != 0) {
            return null;
        }
        Intent intent = new Intent(str);
        intent.setPackage(contextTt.getPackageName());
        for (int i10 = 0; i10 < strArr.length; i10 += 2) {
            intent.putExtra(strArr[i10], strArr[i10 + 1]);
        }
        contextTt.sendBroadcast(intent);
        return null;
    }
}
