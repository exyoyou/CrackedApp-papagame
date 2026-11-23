package l7;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.kongzue.dialogx.R;

/* JADX INFO: loaded from: classes3.dex */
public final class f implements ViewBinding {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @NonNull
    private final RelativeLayout f93992b;

    private f(@NonNull RelativeLayout relativeLayout) {
        this.f93992b = relativeLayout;
    }

    @NonNull
    public static f bind(@NonNull View view) {
        if (view != null) {
            return new f((RelativeLayout) view);
        }
        throw new NullPointerException("rootView");
    }

    @NonNull
    public static f inflate(@NonNull LayoutInflater layoutInflater) {
        return inflate(layoutInflater, null, false);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public RelativeLayout getRoot() {
        return this.f93992b;
    }

    @NonNull
    public static f inflate(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z10) {
        View viewInflate = layoutInflater.inflate(R.layout.layout_dialogx_empty, viewGroup, false);
        if (z10) {
            viewGroup.addView(viewInflate);
        }
        return bind(viewInflate);
    }
}
