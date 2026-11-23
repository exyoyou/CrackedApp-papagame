package j7;

import android.R;
import android.app.Activity;
import android.view.View;
import android.view.ViewGroup;
import com.kingja.loadsir.callback.Callback;
import com.kingja.loadsir.callback.SuccessCallback;
import com.kingja.loadsir.core.LoadLayout;

/* JADX INFO: loaded from: classes3.dex */
public class a implements b {
    @Override // j7.b
    public LoadLayout a(Object obj, Callback.OnReloadListener onReloadListener) {
        Activity activity = (Activity) obj;
        ViewGroup viewGroup = (ViewGroup) activity.findViewById(R.id.content);
        View childAt = viewGroup.getChildAt(0);
        viewGroup.removeView(childAt);
        ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
        LoadLayout loadLayout = new LoadLayout(activity, onReloadListener);
        loadLayout.setupSuccessLayout(new SuccessCallback(childAt, activity, onReloadListener));
        viewGroup.addView(loadLayout, 0, layoutParams);
        return loadLayout;
    }

    @Override // j7.b
    public boolean equals(Object obj) {
        return obj instanceof Activity;
    }
}
