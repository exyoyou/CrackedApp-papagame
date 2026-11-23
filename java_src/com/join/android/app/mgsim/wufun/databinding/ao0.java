package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.ScrollView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ao0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f35945b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ScrollView f35946c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f35947d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f35948e;

    private ao0(@NonNull LinearLayout rootView, @NonNull ScrollView scrollView, @NonNull TextView testTextview, @NonNull Button testbutn) {
        this.f35945b = rootView;
        this.f35946c = scrollView;
        this.f35947d = testTextview;
        this.f35948e = testbutn;
    }

    @NonNull
    public static ao0 bind(@NonNull View rootView) {
        int i10 = R.id.scrollView;
        ScrollView scrollView = (ScrollView) ViewBindings.findChildViewById(rootView, R.id.scrollView);
        if (scrollView != null) {
            i10 = R.id.testTextview;
            TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.testTextview);
            if (textView != null) {
                i10 = R.id.testbutn;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.testbutn);
                if (button != null) {
                    return new ao0((LinearLayout) rootView, scrollView, textView, button);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ao0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f35945b;
    }

    @NonNull
    public static ao0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mytestactivitylayout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
