package qb;

import android.annotation.TargetApi;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuItem;
import it.sephiroth.android.library.widget.AbsHListView;

/* JADX INFO: loaded from: classes.dex */
public class b implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a f96716a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private AbsHListView f96717b;

    public b(AbsHListView view) {
        this.f96717b = view;
    }

    @Override // qb.a
    @TargetApi(11)
    public void a(ActionMode mode, int position, long id2, boolean checked) {
        this.f96716a.a(mode, position, id2, checked);
        if (this.f96717b.getCheckedItemCount() == 0) {
            mode.finish();
        }
    }

    public boolean b() {
        return this.f96716a != null;
    }

    public void c(a wrapped) {
        this.f96716a = wrapped;
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public boolean onActionItemClicked(ActionMode mode, MenuItem item) {
        return this.f96716a.onActionItemClicked(mode, item);
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public boolean onCreateActionMode(ActionMode mode, Menu menu) {
        if (!this.f96716a.onCreateActionMode(mode, menu)) {
            return false;
        }
        this.f96717b.setLongClickable(false);
        return true;
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public void onDestroyActionMode(ActionMode mode) {
        this.f96716a.onDestroyActionMode(mode);
        AbsHListView absHListView = this.f96717b;
        absHListView.N = null;
        absHListView.Q();
        AbsHListView absHListView2 = this.f96717b;
        absHListView2.f91959n = true;
        absHListView2.r();
        this.f96717b.requestLayout();
        this.f96717b.setLongClickable(true);
    }

    @Override // android.view.ActionMode.Callback
    @TargetApi(11)
    public boolean onPrepareActionMode(ActionMode mode, Menu menu) {
        return this.f96716a.onPrepareActionMode(mode, menu);
    }
}
