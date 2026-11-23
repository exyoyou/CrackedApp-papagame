package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.Space;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.util.views.DialogScrollView;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class d implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f93972b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxRelativeLayout f93973c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f93974d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f93975e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f93976f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final LinearLayout f93977g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f93978h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final FrameLayout f93979i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f93980j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f93981k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f93982l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final TextView f93983m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final ImageView f93984n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final DialogScrollView f93985o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final Space f93986p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @NonNull
    public final TextView f93987q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @NonNull
    public final TextView f93988r;

    private d(@NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull MaxRelativeLayout maxRelativeLayout, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull DialogScrollView dialogScrollView, @NonNull Space space, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f93972b = dialogXBaseRelativeLayout;
        this.f93973c = maxRelativeLayout;
        this.f93974d = relativeLayout;
        this.f93975e = linearLayout;
        this.f93976f = linearLayout2;
        this.f93977g = linearLayout3;
        this.f93978h = relativeLayout2;
        this.f93979i = frameLayout;
        this.f93980j = dialogXBaseRelativeLayout2;
        this.f93981k = textView;
        this.f93982l = textView2;
        this.f93983m = textView3;
        this.f93984n = imageView;
        this.f93985o = dialogScrollView;
        this.f93986p = space;
        this.f93987q = textView4;
        this.f93988r = textView5;
    }

    @NonNull
    public static d bind(@NonNull View view) {
        int i10 = R.id.bkg;
        MaxRelativeLayout maxRelativeLayout = (MaxRelativeLayout) ViewBindings.findChildViewById(view, i10);
        if (maxRelativeLayout != null) {
            i10 = R.id.box_bkg;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
            if (relativeLayout != null) {
                i10 = R.id.box_body;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.box_button;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i10);
                    if (linearLayout2 != null) {
                        i10 = R.id.box_content;
                        LinearLayout linearLayout3 = (LinearLayout) ViewBindings.findChildViewById(view, i10);
                        if (linearLayout3 != null) {
                            i10 = R.id.box_custom;
                            RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
                            if (relativeLayout2 != null) {
                                i10 = R.id.box_list;
                                FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, i10);
                                if (frameLayout != null) {
                                    DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) view;
                                    i10 = R.id.btn_selectNegative;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i10);
                                    if (textView != null) {
                                        i10 = R.id.btn_selectOther;
                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, i10);
                                        if (textView2 != null) {
                                            i10 = R.id.btn_selectPositive;
                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, i10);
                                            if (textView3 != null) {
                                                i10 = R.id.img_tab;
                                                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i10);
                                                if (imageView != null) {
                                                    i10 = R.id.scrollView;
                                                    DialogScrollView dialogScrollView = (DialogScrollView) ViewBindings.findChildViewById(view, i10);
                                                    if (dialogScrollView != null) {
                                                        i10 = R.id.space_other_button;
                                                        Space space = (Space) ViewBindings.findChildViewById(view, i10);
                                                        if (space != null) {
                                                            i10 = R.id.txt_dialog_tip;
                                                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i10);
                                                            if (textView4 != null) {
                                                                i10 = R.id.txt_dialog_title;
                                                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i10);
                                                                if (textView5 != null) {
                                                                    return new d(dialogXBaseRelativeLayout, maxRelativeLayout, relativeLayout, linearLayout, linearLayout2, linearLayout3, relativeLayout2, frameLayout, dialogXBaseRelativeLayout, textView, textView2, textView3, imageView, dialogScrollView, space, textView4, textView5);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static d inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f93972b;
    }

    @NonNull
    public static d inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_bottom_material_dark, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
