package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.join.android.app.mgsim.wufun.R;
import m.framework.ui.widget.slidingmenu.SlidingMenu;

/* JADX INFO: loaded from: classes4.dex */
public final class lv0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final SlidingMenu f41584b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final SlidingMenu f41585c;

    private lv0(@NonNull SlidingMenu rootView, @NonNull SlidingMenu slidingmenumain) {
        this.f41584b = rootView;
        this.f41585c = slidingmenumain;
    }

    @NonNull
    public static lv0 bind(@NonNull View rootView) {
        if (rootView == null) {
            throw new NullPointerException("rootView");
        }
        SlidingMenu slidingMenu = (SlidingMenu) rootView;
        return new lv0(slidingMenu, slidingMenu);
    }

    @NonNull
    public static lv0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public SlidingMenu getRoot() {
        return this.f41584b;
    }

    @NonNull
    public static lv0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.slidingmenumain, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
