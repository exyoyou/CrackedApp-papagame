package com.byazt.xe;

import android.os.Build;
import androidx.annotation.NonNull;
import com.bytedance.pangle.log.ZeusLogger;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
@com.byazt.zqa.c(c = {0, 1, 1093, 54})
public class ve implements n.c {
    private static boolean tt(@NonNull String str, @NonNull String str2) {
        try {
            return c.c(tt.c(str, str2, tt.tt));
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // com.byazt.xe.n.c
    public boolean c(String str, int i10) {
        String strTt = com.byazt.th.ve.tt(str, i10);
        ZeusLogger.d(ZeusLogger.TAG_INSTALL, "full DexOpt:".concat(String.valueOf(strTt)));
        String strVe = com.byazt.th.ve.ve(str, i10);
        StringBuilder sb2 = new StringBuilder();
        sb2.append(strVe);
        String str2 = File.separator;
        sb2.append(str2);
        sb2.append("compFully");
        sb2.append(tt.tt(strTt));
        String string = sb2.toString();
        String str3 = strVe + str2 + tt.c(strTt);
        if (!tt(strTt, string)) {
            return false;
        }
        c(string, str3);
        boolean zC = tt.c(str3);
        ZeusLogger.i(ZeusLogger.TAG_INSTALL, "full DexOpt result:".concat(String.valueOf(zC)));
        return zC;
    }

    private void c(String str, String str2) {
        File file = new File(str);
        if (file.exists()) {
            file.renameTo(new File(str2));
        }
        String str3 = Build.VERSION.SDK_INT >= 26 ? ".odex" : ".dex";
        File file2 = new File(str.replace(str3, ".vdex"));
        if (file2.exists()) {
            file2.renameTo(new File(str2.replace(str3, ".vdex")));
        }
    }
}
