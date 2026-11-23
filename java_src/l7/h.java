package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.kongzue.dialogx.R;
import com.kongzue.dialogx.util.views.ActivityScreenShotImageView;
import com.kongzue.dialogx.util.views.DialogXBaseRelativeLayout;
import com.kongzue.dialogx.util.views.MaxRelativeLayout;

/* JADX INFO: loaded from: classes3.dex */
public final class h implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f93999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxRelativeLayout f94000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f94001d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f94002e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f94003f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ActivityScreenShotImageView f94004g;

    private h(@NonNull RelativeLayout relativeLayout, @NonNull MaxRelativeLayout maxRelativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull RelativeLayout relativeLayout3, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull ActivityScreenShotImageView activityScreenShotImageView) {
        this.f93999b = relativeLayout;
        this.f94000c = maxRelativeLayout;
        this.f94001d = relativeLayout2;
        this.f94002e = relativeLayout3;
        this.f94003f = dialogXBaseRelativeLayout;
        this.f94004g = activityScreenShotImageView;
    }

    @NonNull
    public static h bind(@NonNull View view) {
        int i10 = R.id.bkg;
        MaxRelativeLayout maxRelativeLayout = (MaxRelativeLayout) ViewBindings.findChildViewById(view, i10);
        if (maxRelativeLayout != null) {
            i10 = R.id.box_bkg;
            RelativeLayout relativeLayout = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
            if (relativeLayout != null) {
                i10 = R.id.box_custom;
                RelativeLayout relativeLayout2 = (RelativeLayout) ViewBindings.findChildViewById(view, i10);
                if (relativeLayout2 != null) {
                    i10 = R.id.box_root;
                    DialogXBaseRelativeLayout dialogXBaseRelativeLayout = (DialogXBaseRelativeLayout) ViewBindings.findChildViewById(view, i10);
                    if (dialogXBaseRelativeLayout != null) {
                        i10 = R.id.img_zoom_activity;
                        ActivityScreenShotImageView activityScreenShotImageView = (ActivityScreenShotImageView) ViewBindings.findChildViewById(view, i10);
                        if (activityScreenShotImageView != null) {
                            return new h((RelativeLayout) view, maxRelativeLayout, relativeLayout, relativeLayout2, dialogXBaseRelativeLayout, activityScreenShotImageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static h inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f93999b;
    }

    @NonNull
    public static h inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_fullscreen_dark, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
