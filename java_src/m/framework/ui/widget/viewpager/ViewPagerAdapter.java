package m.framework.ui.widget.viewpager;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class ViewPagerAdapter {
    public abstract int getCount();

    public abstract View getView(int i10, ViewGroup viewGroup);

    public void onScreenChange(int i10, int i11) {
    }
}
