package m.framework.ui.widget.pulltorefresh;

import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
public abstract class PullToRefreshBaseListAdapter extends PullToRefreshAdatper {
    public PullToRefreshBaseListAdapter(PullToRefreshView pullToRefreshView) {
        super(pullToRefreshView);
    }

    public abstract int getCount();

    public abstract Object getItem(int i10);

    public abstract long getItemId(int i10);

    public abstract View getView(int i10, View view, ViewGroup viewGroup);

    public abstract boolean isFling();

    public abstract void onScroll(Scrollable scrollable, int i10, int i11, int i12);
}
