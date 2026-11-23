package com.join.mgps.adapter;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager.widget.PagerAdapter;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SimulatorFastEntryBean;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class b8 extends PagerAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f61356a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private List<List<SimulatorFastEntryBean.FastEntryBean>> f61357b;

    class a extends GridLayoutManager {
        a(Context context, int spanCount) {
            super(context, spanCount);
        }

        @Override // androidx.recyclerview.widget.LinearLayoutManager, androidx.recyclerview.widget.RecyclerView.LayoutManager
        public boolean canScrollVertically() {
            return false;
        }
    }

    public b8(Context context, List<List<SimulatorFastEntryBean.FastEntryBean>> list) {
        this.f61356a = context;
        this.f61357b = list;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public void destroyItem(ViewGroup container, int position, Object object) {
        container.removeView((View) object);
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public int getCount() {
        return this.f61357b.size();
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public Object instantiateItem(ViewGroup container, int position) {
        Context context = container.getContext();
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.layout_simulator_viewpgaer_item, (ViewGroup) null);
        RecyclerView recyclerView = (RecyclerView) viewInflate.findViewById(R.id.recyclerview);
        a aVar = new a(context, 5);
        recyclerView.setNestedScrollingEnabled(false);
        recyclerView.setHasFixedSize(true);
        recyclerView.setLayoutManager(aVar);
        recyclerView.setAdapter(new q7(this.f61357b.get(position)));
        container.addView(viewInflate);
        return viewInflate;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public boolean isViewFromObject(View view, Object object) {
        return view == object;
    }
}
