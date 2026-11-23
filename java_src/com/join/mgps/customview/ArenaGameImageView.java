package com.join.mgps.customview;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;

/* JADX INFO: loaded from: classes3.dex */
public class ArenaGameImageView extends ImageView {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f64327b;

    public ArenaGameImageView(Context context) {
        super(context);
        this.f64327b = context;
    }

    public void setImageView(int gameId) {
    }

    public ArenaGameImageView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.f64327b = context;
    }

    public ArenaGameImageView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.f64327b = context;
    }

    public ArenaGameImageView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.f64327b = context;
    }
}
