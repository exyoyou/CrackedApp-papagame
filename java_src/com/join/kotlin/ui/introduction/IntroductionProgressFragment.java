package com.join.kotlin.ui.introduction;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.e0;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.callbacks.i;
import com.join.mgps.dto.BbsDetailBean;
import com.join.mgps.dto.CommentAlllistIntentData;
import com.join.mgps.dto.TimingBean;
import com.join.mgps.dto.VideoChaptersBean;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.introduction_progress_fragment)
public class IntroductionProgressFragment extends Fragment implements View.OnClickListener {
    private int curSelected = -1;
    private boolean dataChanged = false;
    BbsDetailBean detailBean;

    @ViewById
    LinearLayout ll_empty;
    private ItemAdapter mItemAdapter;

    @ViewById
    RecyclerView rv_list_data;

    @ViewById
    TextView tv_title;

    class ItemAdapter<T> extends BaseQuickAdapter<T, com.join.mgps.base.b> {
        public ItemAdapter() {
            super(R.layout.item_introduction_progress);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.join.mgps.base.BaseQuickAdapter
        protected void convert(com.join.mgps.base.b helper, T item) {
            boolean z10 = item instanceof TimingBean;
            int i10 = R.drawable.shape_introduction_progress_selected;
            if (z10) {
                TimingBean timingBean = (TimingBean) item;
                helper.setText(R.id.tv_time, e0.h(timingBean.getTime().intValue()));
                helper.setText(R.id.tv_title, timingBean.getTitle());
                helper.setGone(R.id.tv_type, false);
                if (!timingBean.isChecked()) {
                    i10 = R.drawable.shape_introduction_progress_normal;
                }
                helper.setBackgroundRes(R.id.ll_root, i10);
                return;
            }
            if (item instanceof VideoChaptersBean) {
                VideoChaptersBean videoChaptersBean = (VideoChaptersBean) item;
                helper.setText(R.id.tv_time, e0.h(videoChaptersBean.getDuration().intValue()));
                helper.setText(R.id.tv_title, videoChaptersBean.getTitle());
                helper.setGone(R.id.tv_type, true);
                helper.setText(R.id.tv_type, "P" + videoChaptersBean.getPage());
                if (!videoChaptersBean.isChecked()) {
                    i10 = R.drawable.shape_introduction_progress_normal;
                }
                helper.setBackgroundRes(R.id.ll_root, i10);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public /* synthetic */ void lambda$afterView$0(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
        if (this.curSelected == -1) {
            this.curSelected = i10;
        }
        if (this.mItemAdapter.getItem(this.curSelected) instanceof TimingBean) {
            ((TimingBean) this.mItemAdapter.getItem(this.curSelected)).setChecked(false);
            this.curSelected = i10;
            ((TimingBean) this.mItemAdapter.getItem(i10)).setChecked(true);
            this.mItemAdapter.notifyDataSetChanged();
        } else if (this.mItemAdapter.getItem(this.curSelected) instanceof VideoChaptersBean) {
            ((VideoChaptersBean) this.mItemAdapter.getItem(this.curSelected)).setChecked(false);
            this.curSelected = i10;
            ((VideoChaptersBean) this.mItemAdapter.getItem(i10)).setChecked(true);
            this.mItemAdapter.notifyDataSetChanged();
        }
        if (getActivity() instanceof i) {
            ((i) getActivity()).onHide(this);
            ((i) getActivity()).onProgressItemClick(this.mItemAdapter.getItem(i10));
        }
    }

    public static IntroductionProgressFragment newInstance(CommentAlllistIntentData intentData) {
        Bundle bundle = new Bundle();
        IntroductionProgressFragment_ introductionProgressFragment_ = new IntroductionProgressFragment_();
        introductionProgressFragment_.setArguments(bundle);
        return introductionProgressFragment_;
    }

    private void updateUI() {
        BbsDetailBean bbsDetailBean = this.detailBean;
        if (bbsDetailBean != null) {
            if (bbsDetailBean.getIsCollection().intValue() != 1) {
                this.tv_title.setText("剧情进度");
                if (this.detailBean.getTiming() == null || this.detailBean.getTiming().size() <= 0) {
                    this.ll_empty.setVisibility(0);
                    this.rv_list_data.setVisibility(8);
                    return;
                } else {
                    this.mItemAdapter.setNewData(this.detailBean.getTiming());
                    this.rv_list_data.setVisibility(0);
                    this.ll_empty.setVisibility(8);
                    return;
                }
            }
            this.tv_title.setText("视频合集");
            if (this.detailBean.getVideoChapters() == null || this.detailBean.getVideoChapters().size() <= 0) {
                this.ll_empty.setVisibility(0);
                this.rv_list_data.setVisibility(8);
                return;
            }
            this.curSelected = 0;
            this.detailBean.getVideoChapters().get(this.curSelected).setChecked(true);
            this.mItemAdapter.setNewData(this.detailBean.getVideoChapters());
            this.rv_list_data.setVisibility(0);
            this.ll_empty.setVisibility(8);
        }
    }

    @AfterViews
    void afterView() {
        this.rv_list_data.setLayoutManager(new LinearLayoutManager(getContext()));
        if (this.mItemAdapter == null) {
            this.mItemAdapter = new ItemAdapter();
            final com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            aVar.f64120d = (int) getResources().getDimension(R.dimen.wdp20);
            this.rv_list_data.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.introduction.IntroductionProgressFragment.1
                @Override // com.join.mgps.base.decoration.b
                public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                    return aVar;
                }
            });
            this.mItemAdapter.setOnItemClickListener(new BaseQuickAdapter.j() { // from class: com.join.kotlin.ui.introduction.a
                @Override // com.join.mgps.base.BaseQuickAdapter.j
                public final void onItemClick(BaseQuickAdapter baseQuickAdapter, View view, int i10) {
                    this.f49243a.lambda$afterView$0(baseQuickAdapter, view, i10);
                }
            });
            this.rv_list_data.setAdapter(this.mItemAdapter);
        }
        updateUI();
    }

    public void notifyDataChanged(BbsDetailBean detailBean) {
        this.dataChanged = this.detailBean.getId() != detailBean.getId();
        this.detailBean = detailBean;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Click({R.id.iv_close})
    void onClockClick() {
        if (getActivity() instanceof i) {
            ((i) getActivity()).onHide(this);
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (!this.dataChanged || hidden) {
            return;
        }
        updateUI();
        this.dataChanged = false;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        view.setOnClickListener(this);
    }

    public void setData(BbsDetailBean detailBean) {
        this.detailBean = detailBean;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        a3.b(getContext()).d(message);
    }
}
