package com.google.android.material.tabs;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.View;
import androidx.appcompat.widget.TintTypedArray;
import com.google.android.material.R;

/* JADX INFO: loaded from: classes5.dex */
public class TabItem extends View {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final CharSequence f31968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Drawable f31969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f31970d;

    public TabItem(Context context) {
        this(context, null);
    }

    public TabItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TintTypedArray tintTypedArrayObtainStyledAttributes = TintTypedArray.obtainStyledAttributes(context, attributeSet, R.styleable.TabItem);
        this.f31968b = tintTypedArrayObtainStyledAttributes.getText(R.styleable.TabItem_android_text);
        this.f31969c = tintTypedArrayObtainStyledAttributes.getDrawable(R.styleable.TabItem_android_icon);
        this.f31970d = tintTypedArrayObtainStyledAttributes.getResourceId(R.styleable.TabItem_android_layout, 0);
        tintTypedArrayObtainStyledAttributes.recycle();
    }
}
