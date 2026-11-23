package com.youth.banner.loader;

import android.content.Context;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes8.dex */
public abstract class ImageLoader implements ImageLoaderInterface<ImageView> {
    @Override // com.youth.banner.loader.ImageLoaderInterface
    public ImageView createImageView(Context context, Object obj) {
        return new ImageView(context);
    }
}
