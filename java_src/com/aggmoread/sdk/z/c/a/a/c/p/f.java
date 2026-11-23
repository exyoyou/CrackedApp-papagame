package com.aggmoread.sdk.z.c.a.a.c.p;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import java.util.List;

/* JADX INFO: loaded from: classes7.dex */
public interface f extends com.aggmoread.sdk.z.c.a.a.c.a {

    public interface a extends com.aggmoread.sdk.z.c.a.a.c.g {
        void onAdClicked();

        void onAdExposed();
    }

    public interface b extends a {
        void onADStatusChanged(int i10);

        void onLoadApkProgress(int i10);
    }

    View a(@NonNull Context context, @NonNull View view, FrameLayout.LayoutParams layoutParams, List<View> list, View view2, List<View> list2, @NonNull a aVar);

    void a(@NonNull ViewGroup viewGroup, com.aggmoread.sdk.z.c.a.a.c.u.a aVar);

    void bindCTAViews(List<View> list);

    void destroy();

    int f();

    com.aggmoread.sdk.z.c.a.a.c.c g();

    int getAdPatternType();

    double getAppPrice();

    int getAppScore();

    int getAppStatus();

    String getCTAText();

    String getDesc();

    long getDownloadCount();

    String getIconUrl();

    String getImageUrl();

    List<String> getImageUrlList();

    int getPictureHeight();

    int getPictureWidth();

    int getProgress();

    String getTitle();

    int getVideoCurrentPosition();

    boolean isAppAd();

    boolean isVideoAd();

    void pauseVideo();

    View renderView(View view);

    void resume();

    void resumeVideo();

    void setVideoMute(boolean z10);

    void startVideo();

    void stopVideo();
}
