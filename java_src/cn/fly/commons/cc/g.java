package cn.fly.commons.cc;

import android.content.Intent;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes7.dex */
public class g implements y<PackageManager> {
    @Override // cn.fly.commons.cc.y
    public boolean a(PackageManager packageManager, Class<PackageManager> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if (cn.fly.commons.x.b("019FcdcfFeScidbdd4dhedh5dkDe=ciccch:be-eh").equals(str) && objArr.length == 2) {
            Object obj = objArr[0];
            if (obj instanceof Intent) {
                Object obj2 = objArr[1];
                if (obj2 instanceof Integer) {
                    objArr2[0] = packageManager.queryIntentServices((Intent) obj, ((Integer) obj2).intValue());
                    return true;
                }
            }
        }
        if (cn.fly.commons.x.b("025?di:eh+ed2cZcf)dbg(dd.dhedh[fbcjcifkRcbWdg-cSdi2e").equals(str) && objArr.length == 1) {
            Object obj3 = objArr[0];
            if (obj3 instanceof String) {
                objArr2[0] = packageManager.getLaunchIntentForPackage((String) obj3);
                return true;
            }
        }
        if (cn.fly.commons.x.b("015=ciPeLehcjRfGcc$eWecSbhLchccch(h+db").equals(str) && objArr.length == 2) {
            Object obj4 = objArr[0];
            if (obj4 instanceof Integer) {
                Object obj5 = objArr[1];
                if (obj5 instanceof Integer) {
                    objArr2[0] = packageManager.resolveActivity((Intent) obj4, ((Integer) obj5).intValue());
                    return true;
                }
            }
        }
        return false;
    }
}
