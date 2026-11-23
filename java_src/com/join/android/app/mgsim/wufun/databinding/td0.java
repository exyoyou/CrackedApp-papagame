package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class td0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f45194b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final Button f45195c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final Button f45196d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f45197e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final TextView f45198f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f45199g;

    private td0(@NonNull LinearLayout rootView, @NonNull Button btnOp, @NonNull Button del, @NonNull ImageView img, @NonNull TextView name, @NonNull TextView status) {
        this.f45194b = rootView;
        this.f45195c = btnOp;
        this.f45196d = del;
        this.f45197e = img;
        this.f45198f = name;
        this.f45199g = status;
    }

    @NonNull
    public static td0 bind(@NonNull View rootView) {
        int i10 = R.id.btnOp;
        Button button = (Button) ViewBindings.findChildViewById(rootView, R.id.btnOp);
        if (button != null) {
            i10 = R.id.del;
            Button button2 = (Button) ViewBindings.findChildViewById(rootView, R.id.del);
            if (button2 != null) {
                i10 = R.id.img;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.img);
                if (imageView != null) {
                    i10 = R.id.name;
                    TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.name);
                    if (textView != null) {
                        i10 = R.id.status;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.status);
                        if (textView2 != null) {
                            return new td0((LinearLayout) rootView, button, button2, imageView, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static td0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f45194b;
    }

    @NonNull
    public static td0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.listview_download_center_history, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
