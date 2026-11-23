package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class ea implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f37854b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ImageView f37855c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ListView f37856d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f37857e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f37858f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final Button f37859g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f37860h;

    private ea(@NonNull FrameLayout rootView, @NonNull ImageView backImage, @NonNull ListView listview, @NonNull RelativeLayout relativeLayout, @NonNull TextView selectTxt, @NonNull Button sub, @NonNull TextView titleText) {
        this.f37854b = rootView;
        this.f37855c = backImage;
        this.f37856d = listview;
        this.f37857e = relativeLayout;
        this.f37858f = selectTxt;
        this.f37859g = sub;
        this.f37860h = titleText;
    }

    @NonNull
    public static ea bind(@NonNull View rootView) {
        int i10 = R.id.backImage;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.backImage);
        if (imageView != null) {
            i10 = R.id.listview;
            ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.listview);
            if (listView != null) {
                i10 = R.id.relativeLayout;
                RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(rootView, R.id.relativeLayout);
                if (relativeLayout != null) {
                    i10 = R.id.select_txt;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.select_txt);
                    if (textView != null) {
                        i10 = R.id.sub;
                        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.sub);
                        if (button != null) {
                            i10 = R.id.titleText;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.titleText);
                            if (textView2 != null) {
                                return new ea((FrameLayout) rootView, imageView, listView, relativeLayout, textView, button, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static ea inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f37854b;
    }

    @NonNull
    public static ea inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.cloud, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
