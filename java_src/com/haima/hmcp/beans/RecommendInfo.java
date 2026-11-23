package com.haima.hmcp.beans;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes5.dex */
public class RecommendInfo {
    public String downloadButtonTitle;
    public String downloadTips;
    public String downloadUrl;
    public String gameSize;
    public String gameTitle;
    public String iconUrl;
    public Bitmap mImageIcon;

    public void setBitmap(Bitmap bitmap) {
        this.mImageIcon = bitmap;
    }
}
