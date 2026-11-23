package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ProgressBar;

/* JADX INFO: loaded from: classes3.dex */
public class DownloadProgressBar extends ProgressBar {
    public DownloadProgressBar(Context context) {
        super(context);
    }

    public void update(String gameId, int type) {
    }

    public DownloadProgressBar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void update(String gameId) {
        update(gameId, 0);
    }

    public DownloadProgressBar(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
}
