package cn.fly.commons.cc;

import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Build;

/* JADX INFO: loaded from: classes7.dex */
public class e implements y<Context> {
    @Override // cn.fly.commons.cc.y
    public boolean a(Context context, Class<Context> cls, String str, Object[] objArr, boolean[] zArr, Object[] objArr2, Throwable[] thArr) {
        if (cn.fly.commons.m.a("016Lgl hkMgngehk:kh(fhgn[hTflfffk.eh").equals(str) && objArr.length == 1) {
            Object obj = objArr[0];
            if (obj instanceof String) {
                try {
                    objArr2[0] = context.getSystemService((String) obj);
                } catch (Throwable th) {
                    objArr2[0] = null;
                    thArr[0] = th;
                }
                return true;
            }
        }
        if ("getApplicationInfo".equals(str) && objArr.length == 0) {
            objArr2[0] = context.getApplicationInfo();
            return true;
        }
        if (cn.fly.commons.m.a("018[gl.hkEgffm(gkhgk$ilUhKhkfm]i]ffEhPfl").equals(str) && objArr.length == 0) {
            objArr2[0] = context.getContentResolver();
            return true;
        }
        if (cn.fly.commons.m.a("0146glMhk inQfe_gj@f+glMh6giWf1fh+h").equals(str) && objArr.length == 0) {
            objArr2[0] = context.getPackageName();
            return true;
        }
        if (cn.fly.commons.m.a("017?gl3hk,in-fe=gjWf)glLhAje5fgf*gl6hBfl").equals(str) && objArr.length == 0) {
            objArr2[0] = context.getPackageManager();
            return true;
        }
        if (cn.fly.commons.m.a("013%hkPkfQflVkChfTekHfkfffkVk*ge").equals(str) && objArr.length == 1) {
            Object obj2 = objArr[0];
            if (obj2 instanceof Intent) {
                context.startActivity((Intent) obj2);
                return true;
            }
        }
        if (cn.fly.commons.m.a("0111gl=hk3iefkUih3hkhnfkfl").equals(str)) {
            objArr2[0] = context.getFilesDir();
            return true;
        }
        if (cn.fly.commons.m.a("009HglVhkLhfhkhkWhkIhk").equals(str)) {
            objArr2[0] = context.getAssets();
            return true;
        }
        if (cn.fly.commons.m.a("019ejhe(gjgnXhi)ghinZhOflfhfkhkhkfkfm0g").equals(str) && objArr.length == 1) {
            Object obj3 = objArr[0];
            if (obj3 instanceof String) {
                if (Build.VERSION.SDK_INT >= 23) {
                    objArr2[0] = Integer.valueOf(context.checkSelfPermission((String) obj3));
                } else {
                    objArr2[0] = Integer.valueOf(context.getPackageManager().checkPermission((String) objArr[0], context.getPackageName()));
                }
                return true;
            }
        }
        if (cn.fly.commons.m.a("011:hhfkMg%fegn_h'flfffk6eh").equals(str) && objArr.length == 3) {
            objArr2[0] = Boolean.valueOf(context.bindService((Intent) objArr[0], (ServiceConnection) objArr[1], ((Integer) objArr[2]).intValue()));
            return true;
        }
        if (cn.fly.commons.m.a("013CfiTg:hhfk*gTfegn_h6flfffkSeh").equals(str) && objArr.length == 1) {
            Object obj4 = objArr[0];
            if (obj4 instanceof ServiceConnection) {
                context.unbindService((ServiceConnection) obj4);
                return true;
            }
        }
        return false;
    }
}
