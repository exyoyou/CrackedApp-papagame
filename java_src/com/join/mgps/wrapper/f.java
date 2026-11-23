package com.join.mgps.wrapper;

import android.annotation.TargetApi;
import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
@TargetApi(8)
class f {
    f() {
    }

    static File a() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
    }
}
