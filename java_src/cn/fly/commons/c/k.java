package cn.fly.commons.c;

import android.content.ContentProviderClient;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import cn.fly.tools.FlyLog;
import cn.fly.tools.utils.DH;

/* JADX INFO: loaded from: classes7.dex */
public class k extends h {
    public k(Context context) {
        super(context);
    }

    private String a(String str, String str2) {
        Bundle bundleB = b(str, str2);
        if (a(bundleB)) {
            return bundleB.getString(cn.fly.commons.a.m.a("002Xejed"));
        }
        if (bundleB != null) {
            return bundleB.getString(cn.fly.commons.a.m.a("007!eg%gWgjgjQe:fk2g"));
        }
        return null;
    }

    @Override // cn.fly.commons.c.h
    protected h.b b() {
        h.b bVar = new h.b();
        bVar.f1176a = a(cn.fly.commons.a.m.a("007JfkSgj=higeffgm"), (String) null);
        return bVar;
    }

    private Bundle b(String str, String str2) {
        Bundle bundleCall = null;
        try {
            Uri uri = Uri.parse(cn.fly.commons.a.m.a("036d=el1fjgfjlmmdf1em[f=ehggejZe2emejedOgfjUejWj9fd8m>ejedGgfjAej;j'fd"));
            int oSVersionIntForFly = DH.SyncMtd.getOSVersionIntForFly();
            if (oSVersionIntForFly >= 17) {
                ContentProviderClient contentProviderClientAcquireUnstableContentProviderClient = this.f1168a.getContentResolver().acquireUnstableContentProviderClient(uri);
                bundleCall = contentProviderClientAcquireUnstableContentProviderClient.call(str, str2, null);
                if (oSVersionIntForFly >= 24) {
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                } else {
                    contentProviderClientAcquireUnstableContentProviderClient.release();
                }
            } else if (oSVersionIntForFly >= 11) {
                bundleCall = this.f1168a.getContentResolver().call(uri, str, str2, (Bundle) null);
            }
        } catch (Throwable th) {
            FlyLog.getInstance().d(th);
        }
        return bundleCall;
    }

    private boolean a(Bundle bundle) {
        return bundle != null && bundle.getInt(cn.fly.commons.a.m.a("004d.eledLg"), -1) == 0;
    }
}
