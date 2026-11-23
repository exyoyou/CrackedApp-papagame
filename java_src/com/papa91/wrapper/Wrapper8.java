package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.os.Environment;
import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(8)
class Wrapper8 {
    Wrapper8() {
    }

    static File getExternalPicturesDirectory() {
        return Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES);
    }
}
