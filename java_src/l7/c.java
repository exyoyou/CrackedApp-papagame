package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
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
public final class c implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final DialogXBaseRelativeLayout f93957b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxRelativeLayout f93958c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f93959d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final LinearLayout f93960e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final LinearLayout f93961f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f93962g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @NonNull
    public final FrameLayout f93963h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f93964i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @NonNull
    public final TextView f93965j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @NonNull
    public final TextView f93966k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @NonNull
    public final TextView f93967l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    @NonNull
    public final ImageView f93968m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    @NonNull
    public final DialogScrollView f93969n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @NonNull
    public final TextView f93970o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NonNull
    public final TextView f93971p;

    private c(@NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull MaxRelativeLayout maxRelativeLayout, @NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull RelativeLayout relativeLayout2, @NonNull FrameLayout frameLayout, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout2, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull ImageView imageView, @NonNull DialogScrollView dialogScrollView, @NonNull TextView textView4, @NonNull TextView textView5) {
        this.f93957b = dialogXBaseRelativeLayout;
        this.f93958c = maxRelativeLayout;
        this.f93959d = relativeLayout;
        this.f93960e = linearLayout;
        this.f93961f = linearLayout2;
        this.f93962g = relativeLayout2;
        this.f93963h = frameLayout;
        this.f93964i = dialogXBaseRelativeLayout2;
        this.f93965j = textView;
        this.f93966k = textView2;
        this.f93967l = textView3;
        this.f93968m = imageView;
        this.f93969n = dialogScrollView;
        this.f93970o = textView4;
        this.f93971p = textView5;
    }

    @NonNull
    public static c bind(@NonNull View view) {
        int i10 = R.id.bkg;
        MaxRelativeLayout maxRelativeLayout = (MaxRelativeLayout) ViewBindings.findChildViewById(view, i10);
        if (maxRelativeLayout != null) {
            i10 = R.id.box_bkg;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
            if (relativeLayout != null) {
                i10 = R.id.box_body;
                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i10);
                if (linearLayout != null) {
                    i10 = R.id.box_content;
                    LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, i10);
                    if (linearLayout2 != null) {
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
                                                    i10 = R.id.txt_dialog_tip;
                                                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, i10);
                                                    if (textView4 != null) {
                                                        i10 = R.id.txt_dialog_title;
                                                        TextView textView5 = (TextView) ViewBindings.findChildViewById(view, i10);
                                                        if (textView5 != null) {
                                                            return new c(dialogXBaseRelativeLayout, maxRelativeLayout, relativeLayout, linearLayout, linearLayout2, relativeLayout2, frameLayout, dialogXBaseRelativeLayout, textView, textView2, textView3, imageView, dialogScrollView, textView4, textView5);
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
    public static c inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public DialogXBaseRelativeLayout getRoot() {
        return this.f93957b;
    }

    @NonNull
    public static c inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_bottom_material, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
