package com.haima.hmcp.listeners;

import android.view.View;

/* JADX INFO: loaded from: classes5.dex */
public interface IRenderViewBase {
    float getLandscapeX(float f10, float f11);

    float getLandscapeY(float f10, float f11);

    float getPortaitX(float f10, float f11);

    float getPortaitY(float f10, float f11);

    View getView();

    void setVideoRotation(int i10);
}
