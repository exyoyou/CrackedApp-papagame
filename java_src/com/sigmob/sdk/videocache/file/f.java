package com.sigmob.sdk.videocache.file;

import android.text.TextUtils;
import com.join.mgps.Util.o0;
import com.sigmob.sdk.videocache.q;

/* JADX INFO: loaded from: classes3.dex */
public class f implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f81923a = 4;

    private String b(String url) {
        int iLastIndexOf = url.lastIndexOf(46);
        return (iLastIndexOf == -1 || iLastIndexOf <= url.lastIndexOf(47) || (iLastIndexOf + 2) + 4 <= url.length()) ? "" : url.substring(iLastIndexOf + 1, url.length());
    }

    @Override // com.sigmob.sdk.videocache.file.c
    public String a(String url) {
        String strB = b(url);
        String strD = q.d(url);
        if (TextUtils.isEmpty(strB)) {
            return strD;
        }
        return strD + o0.f49827a + strB;
    }
}
