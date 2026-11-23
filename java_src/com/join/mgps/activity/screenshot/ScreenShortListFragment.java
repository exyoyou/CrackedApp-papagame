package com.join.mgps.activity.screenshot;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.drawable.s;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.rpc.e;
import com.join.mgps.rpc.impl.d;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes9.dex */
@EFragment(R.layout.screenshort_list_fragment_layout)
public class ScreenShortListFragment extends Fragment {
    ScreenShortAdapter adapter;
    List<ScreenShortListItemBean> allItemBeans;
    e client;
    Context context;
    String gameId;

    @ViewById
    LinearLayout loading_none;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    int pn = 1;

    @ViewById
    XRecyclerView recycleView;
    int typeId;

    class MYHolder extends RecyclerView.ViewHolder {
        private SimpleDraweeView image;

        public MYHolder(View itemView) {
            super(itemView);
            this.image = (SimpleDraweeView) itemView.findViewById(R.id.image);
        }
    }

    class ScreenShortAdapter extends RecyclerView.Adapter {
        ScreenShortAdapter() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return ScreenShortListFragment.this.allItemBeans.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(RecyclerView.ViewHolder holder, final int position) {
            MYHolder mYHolder = (MYHolder) holder;
            l.i(mYHolder.image, ScreenShortListFragment.this.allItemBeans.get(position).getSmallPicPath(), s.c.f27292i);
            mYHolder.image.setOnClickListener(new View.OnClickListener() { // from class: com.join.mgps.activity.screenshot.ScreenShortListFragment.ScreenShortAdapter.1
                /* JADX WARN: Multi-variable type inference failed */
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    Bundle bundle = new Bundle();
                    bundle.putSerializable("datas", (Serializable) ScreenShortListFragment.this.allItemBeans);
                    ((ScreenShortBigImagActivity_.IntentBuilder_) ScreenShortBigImagActivity_.intent(ScreenShortListFragment.this.context).position(position).pn(ScreenShortListFragment.this.pn).gameId(ScreenShortListFragment.this.gameId).typeId(ScreenShortListFragment.this.typeId).extra("datas", bundle)).start();
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            MYHolder mYHolder = ScreenShortListFragment.this.new MYHolder(LayoutInflater.from(ScreenShortListFragment.this.context).inflate(R.layout.screenshort_imgs_list_itemlayout, parent, false));
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) mYHolder.image.getLayoutParams();
            layoutParams.height = layoutParams.width;
            return mYHolder;
        }
    }

    class SpacesItemDecoration extends RecyclerView.ItemDecoration {
        private int space;

        public SpacesItemDecoration(int space) {
            this.space = space;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            int i10 = this.space;
            outRect.left = i10;
            outRect.right = i10;
            outRect.bottom = i10;
            outRect.top = i10;
        }
    }

    @AfterViews
    void afterview() {
        this.client = d.O1();
        this.context = getActivity();
        this.allItemBeans = new ArrayList();
        Bundle arguments = getArguments();
        this.gameId = arguments.getString("gameId");
        this.typeId = arguments.getInt("typeId");
        this.pn = 1;
        loadListData(1);
        this.adapter = new ScreenShortAdapter();
        this.recycleView.setLayoutManager(new GridLayoutManager(this.context, 2));
        this.recycleView.setAdapter(this.adapter);
        this.recycleView.addItemDecoration(new SpacesItemDecoration(getResources().getDimensionPixelOffset(R.dimen.wdp16)));
        this.recycleView.setLoadingListener(new XRecyclerView.f() { // from class: com.join.mgps.activity.screenshot.ScreenShortListFragment.1
            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onLoadMore() {
                ScreenShortListFragment screenShortListFragment = ScreenShortListFragment.this;
                screenShortListFragment.loadListData(screenShortListFragment.pn);
            }

            @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
            public void onRefresh() {
                ScreenShortListFragment screenShortListFragment = ScreenShortListFragment.this;
                screenShortListFragment.pn = 1;
                screenShortListFragment.loadListData(1);
            }
        });
    }

    @Background
    void loadListData(int pn) {
        List<ScreenShortListItemBean> data;
        try {
            ResultMainBean<List<ScreenShortListItemBean>> resultMainBeanK = this.client.k(RequestBeanUtil.getInstance(this.context).getScreenShortListRequest(this.gameId, pn, this.typeId));
            if (resultMainBeanK != null && resultMainBeanK.getFlag() == 1) {
                List<ScreenShortListItemBean> data2 = resultMainBeanK.getMessages().getData();
                if (data2 == null || data2.size() <= 0) {
                    showNone();
                } else {
                    updateUi(data2);
                }
            } else if (resultMainBeanK == null || resultMainBeanK.getFlag() != 0 || (data = resultMainBeanK.getMessages().getData()) == null || data.size() != 0) {
                showError();
            } else {
                showNone();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showError();
        }
    }

    @UiThread
    void showError() {
        XRecyclerView xRecyclerView = this.recycleView;
        if (xRecyclerView == null) {
            return;
        }
        xRecyclerView.refreshComplete();
        this.recycleView.loadMoreComplete();
        if (this.allItemBeans.size() == 0) {
            this.loding_layout.setVisibility(8);
            this.recycleView.setVisibility(8);
            this.loding_faile.setVisibility(0);
        }
    }

    @UiThread
    void showNone() {
        if (this.allItemBeans.size() != 0) {
            this.recycleView.setNoMore();
            return;
        }
        this.loding_layout.setVisibility(8);
        this.recycleView.setVisibility(8);
        this.loding_faile.setVisibility(8);
        this.loading_none.setVisibility(0);
    }

    @UiThread
    void updateUi(List<ScreenShortListItemBean> itemBeans) {
        try {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
            this.recycleView.setVisibility(0);
            if (this.pn == 1) {
                this.allItemBeans.clear();
            }
            if (itemBeans.size() > 0) {
                this.pn++;
            }
            this.allItemBeans.addAll(itemBeans);
            this.adapter.notifyDataSetChanged();
            this.recycleView.refreshComplete();
            this.recycleView.loadMoreComplete();
            if (this.allItemBeans.size() < 20) {
                this.recycleView.setNoMore();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }
}
