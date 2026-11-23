package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
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
public final class g implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final FrameLayout f93993b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @NonNull
    public final MaxRelativeLayout f93994c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f93995d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @NonNull
    public final RelativeLayout f93996e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @NonNull
    public final DialogXBaseRelativeLayout f93997f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @NonNull
    public final ActivityScreenShotImageView f93998g;

    private g(@NonNull FrameLayout frameLayout, @NonNull MaxRelativeLayout maxRelativeLayout, @NonNull RelativeLayout relativeLayout, @NonNull RelativeLayout relativeLayout2, @NonNull DialogXBaseRelativeLayout dialogXBaseRelativeLayout, @NonNull ActivityScreenShotImageView activityScreenShotImageView) {
        this.f93993b = frameLayout;
        this.f93994c = maxRelativeLayout;
        this.f93995d = relativeLayout;
        this.f93996e = relativeLayout2;
        this.f93997f = dialogXBaseRelativeLayout;
        this.f93998g = activityScreenShotImageView;
    }

    @NonNull
    public static g bind(@NonNull View view) {
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
                            return new g((FrameLayout) view, maxRelativeLayout, relativeLayout, relativeLayout2, dialogXBaseRelativeLayout, activityScreenShotImageView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i10)));
    }

    @NonNull
    public static g inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public FrameLayout getRoot() {
        return this.f93993b;
    }

    @NonNull
    public static g inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_fullscreen, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
