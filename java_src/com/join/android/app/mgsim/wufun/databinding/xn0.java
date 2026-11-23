package com.join.android.app.mgsim.wufun.databinding;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes4.dex */
public final class xn0 implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final LinearLayout f47313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final ListView f47314c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final ImageView f47315d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final ImageView f47316e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f47317f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final TextView f47318g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final TextView f47319h;

    private xn0(@NonNull LinearLayout rootView, @NonNull ListView backupsList, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull LinearLayout startBackups, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f47313b = rootView;
        this.f47314c = backupsList;
        this.f47315d = imageView;
        this.f47316e = imageView2;
        this.f47317f = startBackups;
        this.f47318g = textView;
        this.f47319h = textView2;
    }

    @NonNull
    public static xn0 bind(@NonNull View rootView) {
        int i10 = R.id.backupsList;
        ListView listView = (ListView) ViewBindings.findChildViewById(rootView, R.id.backupsList);
        if (listView != null) {
            i10 = R.id.imageView;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView);
            if (imageView != null) {
                i10 = R.id.imageView2;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(rootView, R.id.imageView2);
                if (imageView2 != null) {
                    i10 = R.id.startBackups;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(rootView, R.id.startBackups);
                    if (linearLayout != null) {
                        i10 = R.id.textView;
                        TextView textView = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView);
                        if (textView != null) {
                            i10 = R.id.textView2;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(rootView, R.id.textView2);
                            if (textView2 != null) {
                                return new xn0((LinearLayout) rootView, listView, imageView, imageView2, linearLayout, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(rootView.getResources().getResourceName(i10)));
    }

    @NonNull
    public static xn0 inflate(@NonNull LayoutInflater inflater) {
        return inflate(inflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public LinearLayout getRoot() {
        return this.f47313b;
    }

    @NonNull
    public static xn0 inflate(@NonNull LayoutInflater inflater, @Nullable ViewGroup parent, boolean attachToParent) {
        View viewInflate = inflater.inflate(R.layout.mycloud_backups_layout, parent, false);
        if (attachToParent) {
            parent.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
