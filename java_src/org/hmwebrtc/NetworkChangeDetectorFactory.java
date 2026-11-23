package org.hmwebrtc;

import android.content.Context;

/* JADX INFO: loaded from: classes10.dex */
public interface NetworkChangeDetectorFactory {
    NetworkChangeDetector create(NetworkChangeDetector.Observer observer, Context context);
}
