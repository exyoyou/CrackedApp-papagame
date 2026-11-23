package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class qj implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f43848b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final TextView f43849c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final TextView f43850d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final Button f43851e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final CheckBox f43852f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f43853g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f43854h;

    private qj(@NonNull RelativeLayout rootView, @NonNull TextView content, @NonNull TextView content1, @NonNull Button ok, @NonNull CheckBox opt, @NonNull TextView subTitle, @NonNull TextView title) {
        this.f43848b = rootView;
        this.f43849c = content;
        this.f43850d = content1;
        this.f43851e = ok;
        this.f43852f = opt;
        this.f43853g = subTitle;
        this.f43854h = title;
    }

    @NonNull
    public static qj bind(@NonNull View rootView) {
        int i10 = R.id.content;
        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.content);
        if (textView != null) {
            i10 = R.id.content1;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.content1);
            if (textView2 != null) {
                i10 = R.id.ok;
                Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.ok);
                if (button != null) {
                    i10 = R.id.opt;
                    CheckBox checkBox = (CheckBox) ViewBindings.findChildViewById(rootView, R.id.opt);
                    if (checkBox != null) {
                        i10 = R.id.sub_title;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(rootView, R.id.sub_title);
                        if (textView3 != null) {
                            i10 = R.id.title;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(rootView, R.id.title);
                            if (textView4 != null) {
                                return new qj((RelativeLayout) rootView, textView, textView2, button, checkBox, textView3, textView4);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static qj inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f43848b;
    }

    @NonNull
    public static qj inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.favorite_dialog, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
