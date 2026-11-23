package com.facebook.soloader;

import android.os.StrictMode;
import java.io.File;

/* JADX INFO: loaded from: classes9.dex */
public class s extends u {
    @Override // com.facebook.soloader.u
    public int e(String str, int i10, StrictMode.ThreadPolicy threadPolicy) {
        return 1;
    }

    @Override // com.facebook.soloader.u
    public File g(String str) {
        throw new UnsupportedOperationException("unpacking not supported in test mode");
    }
}
