package com.join.mgps.dto;

import android.view.View;
import com.facebook.drawee.view.SimpleDraweeView;

/* JADX INFO: loaded from: classes3.dex */
public class BannerImage {
    private View container;
    private SimpleDraweeView imageView;
    private String url;

    public View getContainer() {
        return this.container;
    }

    public SimpleDraweeView getImageView() {
        return this.imageView;
    }

    public String getUrl() {
        return this.url;
    }

    public void setContainer(View container) {
        this.container = container;
    }

    public void setImageView(SimpleDraweeView imageView) {
        this.imageView = imageView;
    }

    public void setUrl(String url) {
        this.url = url;
    }
}
