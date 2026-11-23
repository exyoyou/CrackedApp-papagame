package com.papa91.wrapper;

import android.annotation.TargetApi;
import android.view.KeyEvent;

/* JADX INFO: loaded from: classes2.dex */
@TargetApi(12)
class Wrapper12 {
    Wrapper12() {
    }

    static String keyCodeToString(int i10) {
        return KeyEvent.keyCodeToString(i10);
    }
}
