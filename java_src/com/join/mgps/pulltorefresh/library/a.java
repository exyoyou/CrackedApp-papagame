package com.join.mgps.pulltorefresh.library;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;

/* JADX INFO: loaded from: classes3.dex */
public interface a {
    void setLastUpdatedLabel(CharSequence label);

    void setLoadingDrawable(Drawable drawable);

    void setPullLabel(CharSequence pullLabel);

    void setRefreshingLabel(CharSequence refreshingLabel);

    void setReleaseLabel(CharSequence releaseLabel);

    void setTextTypeface(Typeface tf);
}
