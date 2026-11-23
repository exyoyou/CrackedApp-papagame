package com.youth.banner.loader;

import android.content.Context;
import android.view.View;
import java.io.Serializable;

/* JADX INFO: loaded from: classes8.dex */
public interface ImageLoaderInterface<T extends View> extends Serializable {
    T createImageView(Context context, Object obj);

    void displayImage(Context context, Object obj, T t10);
}
