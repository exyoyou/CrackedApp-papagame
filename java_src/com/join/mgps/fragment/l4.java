package com.join.mgps.fragment;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import androidx.fragment.app.Fragment;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.customview.XListView2;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_papa_game_local)
public class l4 extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    XListView2 f70132c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.adapter.u4 f70133d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<Object> f70134e = new ArrayList();

    class a implements AdapterView.OnItemClickListener {
        a() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            DownloadTask downloadTask = (DownloadTask) l4.this.f70134e.get(position);
            Intent intent = new Intent();
            intent.putExtra("gameInfo", downloadTask);
            ((Activity) l4.this.getContext()).setResult(-1, intent);
            ((Activity) l4.this.getContext()).finish();
        }
    }

    @UiThread
    public void N(List<DownloadTask> tasks) {
        if (this.f70133d != null) {
            this.f70134e.clear();
            this.f70134e.addAll(tasks);
            this.f70133d.notifyDataSetChanged();
        }
        this.f70132c.v();
        this.f70132c.u();
        this.f70132c.setNoMore();
    }

    public void O(List<DownloadTask> tasks) {
        this.f70134e.clear();
        this.f70134e.addAll(tasks);
    }

    @AfterViews
    void afterViews() {
        com.join.mgps.adapter.u4 u4Var = new com.join.mgps.adapter.u4(this.f70134e);
        this.f70133d = u4Var;
        this.f70132c.setAdapter((ListAdapter) u4Var);
        this.f70132c.setOnItemClickListener(new a());
    }

    @UiThread
    public void notifyDataSetChanged() {
        com.join.mgps.adapter.u4 u4Var = this.f70133d;
        if (u4Var != null) {
            u4Var.notifyDataSetChanged();
        }
        this.f70132c.v();
        this.f70132c.u();
        this.f70132c.setNoMore();
    }
}
