package com.danikula.videocache.file;

import android.text.TextUtils;
import com.danikula.videocache.p;
import com.join.mgps.Util.o0;

/* JADX INFO: loaded from: classes9.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f26033a = 4;

    private String a(String str) {
        int iLastIndexOf = str.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= str.lastIndexOf(47) || (iLastIndexOf + 2) + 4 <= str.length()) ? "" : str.substring(iLastIndexOf + 1, str.length());
    }

    @Override // com.danikula.videocache.file.c
    public String generate(String str) {
        String strA = a(str);
        String strD = p.d(str);
        if (TextUtils.isEmpty(strA)) {
            return strD;
        }
        return strD + o0.f49827a + strA;
    }
}
