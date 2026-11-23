package com.join.kotlin.ui.introduction;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.TextPaint;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.t2;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.callbacks.i;
import com.join.mgps.customview.textview.MovementTextView;
import com.join.mgps.dto.BbsCommentListBean;
import com.join.mgps.dto.RequestBbsCommentListArgs;
import com.join.mgps.dto.RequestBbsDispraiseArgs;
import com.join.mgps.dto.RequestBbsPraiseArgs;
import com.join.mgps.dto.RequestBbsReplyArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.k;
import com.papa.sim.statistic.Data;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa.sim.statistic.t;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_comment_list_introduction)
public class IntroductionCommentListFragment extends Fragment implements View.OnClickListener {
    private int commentId;
    BbsCommentListBean commentListBean;
    Context context;
    private List<BbsCommentListBean> datas;
    int duration;

    @ViewById
    EditText et_content;
    String gameId;

    @ViewById
    ImageView iv_back;

    @ViewById
    LinearLayout ll_empty;

    @ViewById
    View loding_faile;

    @ViewById
    View loding_faile_detail;

    @ViewById
    View loding_layout;

    @ViewById
    View loding_layout_detail;
    i mFragmentCallback;
    private ItemAdapter mItemAdapter;
    private ItemDetailAdapter mItemDetailAdapter;
    int pid;
    int posterId;
    String reportUrl;

    @ViewById
    RelativeLayout rl_comment_detail;

    @ViewById
    RelativeLayout rl_comment_list;
    k rpcGameClient;

    @ViewById
    XRecyclerView rv_comment_detail_list;

    @ViewById
    RecyclerView rv_list_data;

    @ViewById
    TextView textView2;

    @ViewById
    TextView tv_title;
    private int page = 1;
    boolean isVideo = false;
    private boolean dataChanged = false;
    private int detailPage = 1;
    private boolean showDetail = false;
    private boolean fromNotice = false;
    String regText = "(\\d{0,2}:[0-5][0-9]:[0-5][0-9])|([0-5][0-9]:[0-5][0-9])";
    boolean isRequestPraise = false;
    boolean isRequestDisPraise = false;

    class ItemAdapter extends BaseQuickAdapter<BbsCommentListBean, com.join.mgps.base.b> {
        public ItemAdapter() {
            super(R.layout.item_introduction_commont);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        public void convert(com.join.mgps.base.b helper, final BbsCommentListBean item) {
            helper.setText(R.id.userName, item.getNickname());
            l.h((SimpleDraweeView) helper.getView(R.id.siv_head), item.getAvatar());
            int i10 = R.id.content;
            MovementTextView movementTextView = (MovementTextView) helper.getView(R.id.content);
            movementTextView.setText(item.getMsg());
            IntroductionCommentListFragment introductionCommentListFragment = IntroductionCommentListFragment.this;
            if (introductionCommentListFragment.isVideo) {
                introductionCommentListFragment.matchText(movementTextView, movementTextView.getText().toString(), IntroductionCommentListFragment.this.regText, item.getNickname(), item.getRnickname(), false);
            }
            movementTextView.setClickTextListener(new MovementTextView.a() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.ItemAdapter.1
                @Override // com.join.mgps.customview.textview.MovementTextView.a
                public void onClickText() {
                    IntroductionCommentListFragment.this.showCommentDetail(item);
                }
            });
            helper.setText(R.id.tv_star_num, String.valueOf(item.getLike()));
            if (item.getPraise().booleanValue()) {
                helper.setImageResource(R.id.iv_praise, R.drawable.ic_introduction_star_blue_solid);
                helper.setTextColor(R.id.tv_star_num, item.getPraise().booleanValue() ? Color.parseColor("#3392FF") : Color.parseColor("#575F79"));
            } else {
                helper.setImageResource(R.id.iv_praise, R.drawable.ic_introduction_star_grey);
                helper.setTextColor(R.id.tv_star_num, item.getPraise().booleanValue() ? Color.parseColor("#3392FF") : Color.parseColor("#575F79"));
            }
            helper.addOnClickListener(R.id.iv_praise);
            helper.addOnClickListener(R.id.iv_more);
            helper.addOnClickListener(R.id.commentAllRootLl);
            LinearLayout linearLayout = (LinearLayout) helper.getView(R.id.ll_replay);
            linearLayout.removeAllViews();
            if (item.getReplyList() == null || item.getReplyList().size() <= 0) {
                helper.setGone(R.id.cll_view, false);
                return;
            }
            helper.setGone(R.id.cll_view, true);
            int i11 = 2;
            List<BbsCommentListBean> listSubList = item.getReplyList().subList(0, Math.min(2, item.getReplyList().size()));
            if (listSubList != null) {
                int i12 = 0;
                while (i12 < listSubList.size()) {
                    View viewInflate = View.inflate(IntroductionCommentListFragment.this.getContext(), R.layout.item_introduction_commont_list_replay, null);
                    MovementTextView movementTextView2 = (MovementTextView) viewInflate.findViewById(i10);
                    View viewFindViewById = viewInflate.findViewById(R.id.layoutTop);
                    final BbsCommentListBean bbsCommentListBean = listSubList.get(i12);
                    if (t2.h(bbsCommentListBean.getRnickname())) {
                        String string = IntroductionCommentListFragment.this.getString(R.string.introduction_comment_replay);
                        Object[] objArr = new Object[i11];
                        objArr[0] = bbsCommentListBean.getNickname();
                        objArr[1] = bbsCommentListBean.getMsg();
                        movementTextView2.setText(Html.fromHtml(String.format(string, objArr)));
                    } else {
                        String string2 = IntroductionCommentListFragment.this.getString(R.string.introduction_comment_replay1);
                        Object[] objArr2 = new Object[3];
                        objArr2[0] = bbsCommentListBean.getNickname();
                        objArr2[1] = bbsCommentListBean.getRnickname();
                        objArr2[i11] = bbsCommentListBean.getMsg();
                        movementTextView2.setText(Html.fromHtml(String.format(string2, objArr2)));
                    }
                    IntroductionCommentListFragment introductionCommentListFragment2 = IntroductionCommentListFragment.this;
                    if (introductionCommentListFragment2.isVideo) {
                        introductionCommentListFragment2.matchText(movementTextView2, movementTextView2.getText().toString(), IntroductionCommentListFragment.this.regText, bbsCommentListBean.getNickname(), bbsCommentListBean.getRnickname(), true);
                    }
                    movementTextView2.setClickTextListener(new MovementTextView.a() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.ItemAdapter.2
                        @Override // com.join.mgps.customview.textview.MovementTextView.a
                        public void onClickText() {
                            IntroductionCommentListFragment.this.showCommentDetail(item);
                        }
                    });
                    viewInflate.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.ItemAdapter.3
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v10) {
                            IntroductionCommentListFragment introductionCommentListFragment3 = IntroductionCommentListFragment.this;
                            introductionCommentListFragment3.commentListBean = bbsCommentListBean;
                            introductionCommentListFragment3.et_content.setHint("回复" + bbsCommentListBean.getNickname());
                        }
                    });
                    if (i12 == listSubList.size() - 1 && listSubList.size() == 1) {
                        viewFindViewById.setVisibility(8);
                    } else {
                        viewFindViewById.setVisibility(0);
                    }
                    linearLayout.addView(viewInflate);
                    i12++;
                    i10 = R.id.content;
                    i11 = 2;
                }
            }
            if (item.getReplies() <= 2) {
                helper.setGone(R.id.tv_replay_num, false);
                return;
            }
            helper.setText(R.id.tv_replay_num, "查看更多" + item.getReplies() + "条回复");
            helper.setGone(R.id.tv_replay_num, true);
        }
    }

    class ItemDetailAdapter extends RecyclerView.Adapter<com.join.mgps.base.b> {
        List<BbsCommentListBean> mData;

        public ItemDetailAdapter() {
            if (this.mData == null) {
                this.mData = new ArrayList();
            }
        }

        public void addData(@Nullable List<BbsCommentListBean> data) {
            if (this.mData == null) {
                this.mData = new ArrayList();
            }
            this.mData.addAll(data);
            notifyDataSetChanged();
        }

        public void clear() {
            List<BbsCommentListBean> list = this.mData;
            if (list == null || list.size() <= 0) {
                return;
            }
            this.mData.clear();
            notifyDataSetChanged();
        }

        @Nullable
        public BbsCommentListBean getItem(@IntRange(from = 0) int position) {
            if (position < 0 || position >= this.mData.size()) {
                return null;
            }
            return this.mData.get(position);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<BbsCommentListBean> list = this.mData;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int position) {
            return getItem(position).isReplay() ? 0 : 1;
        }

        public void setNewData(@Nullable List<BbsCommentListBean> data) {
            if (this.mData == null) {
                this.mData = new ArrayList();
            }
            notifyDataSetChanged();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(@NonNull com.join.mgps.base.b helper, int position) {
            final BbsCommentListBean item = getItem(position);
            TextView textView = (TextView) helper.getView(R.id.content);
            if (item.isReplay()) {
                helper.setText(R.id.userName, item.getNickname());
                l.h((SimpleDraweeView) helper.getView(R.id.siv_head), item.getAvatar());
                if (t2.h(item.getRnickname())) {
                    textView.setText(Html.fromHtml(String.format(IntroductionCommentListFragment.this.getString(R.string.introduction_comment_detail_replay), item.getMsg())));
                } else {
                    textView.setText(Html.fromHtml(String.format(IntroductionCommentListFragment.this.getString(R.string.introduction_comment_detail_replay1), item.getRnickname(), item.getMsg())));
                }
            } else {
                helper.setText(R.id.userName, item.getNickname());
                l.h((SimpleDraweeView) helper.getView(R.id.siv_head), item.getAvatar());
                textView.setText(item.getMsg());
                helper.setText(R.id.tv_star_num, String.valueOf(item.getLike()));
                helper.setImageResource(R.id.iv_praise, item.getPraise().booleanValue() ? R.drawable.ic_introduction_star_blue_solid : R.drawable.ic_introduction_star_grey);
                helper.setTextColor(R.id.tv_star_num, Color.parseColor(item.getPraise().booleanValue() ? "#3392FF" : "#575F79"));
                helper.getView(R.id.iv_praise).setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.ItemDetailAdapter.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        if (item.getPraise().booleanValue()) {
                            IntroductionCommentListFragment.this.onBbsDisPraise(item.getId(), item);
                        } else {
                            IntroductionCommentListFragment.this.onBbsPraise(String.valueOf(item.getRuid()), item.getId(), item);
                        }
                    }
                });
                final ImageView imageView = (ImageView) helper.getView(R.id.iv_more);
                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.ItemDetailAdapter.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v10) {
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.ItemDetailAdapter.2.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View v11) {
                                AnonymousClass2 anonymousClass2 = AnonymousClass2.this;
                                IntroductionCommentListFragment.this.onClickMore(imageView, item);
                            }
                        });
                    }
                });
            }
            IntroductionCommentListFragment.this.matchText(textView, textView.getText().toString(), IntroductionCommentListFragment.this.regText, item.getNickname(), item.getRnickname(), item.isReplay());
            helper.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.ItemDetailAdapter.3
                @Override // android.view.View.OnClickListener
                public void onClick(View v10) {
                    IntroductionCommentListFragment introductionCommentListFragment = IntroductionCommentListFragment.this;
                    introductionCommentListFragment.commentListBean = item;
                    introductionCommentListFragment.et_content.setHint("回复" + item.getNickname());
                }
            });
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @NonNull
        public com.join.mgps.base.b onCreateViewHolder(@NonNull ViewGroup parent, int viewType) {
            return viewType == 0 ? new com.join.mgps.base.b(View.inflate(IntroductionCommentListFragment.this.getContext(), R.layout.item_introduction_commont_detial_replay, null)) : new com.join.mgps.base.b(View.inflate(IntroductionCommentListFragment.this.getContext(), R.layout.item_introduction_commont_detail, null));
        }

        public void addData(@Nullable BbsCommentListBean data) {
            if (this.mData == null) {
                this.mData = new ArrayList();
            }
            this.mData.add(data);
            notifyDataSetChanged();
        }
    }

    private class TimeClickSpan extends p6.a {
        String clickStr;

        public TimeClickSpan(String str) {
            this.clickStr = str;
        }

        @Override // p6.a, android.text.style.ClickableSpan
        public void onClick(View widget) {
            String[] strArrSplit;
            int iIntValue;
            if (!t2.i(this.clickStr) || (strArrSplit = this.clickStr.split(":")) == null) {
                return;
            }
            if (strArrSplit.length == 2) {
                int iIntValue2 = t2.i(strArrSplit[0]) ? Integer.valueOf(strArrSplit[0]).intValue() * 60 : 0;
                iIntValue = t2.i(strArrSplit[1]) ? Integer.valueOf(strArrSplit[1]).intValue() : 0;
                IntroductionCommentListFragment introductionCommentListFragment = IntroductionCommentListFragment.this;
                i iVar = introductionCommentListFragment.mFragmentCallback;
                if (iVar != null) {
                    iVar.onHide(introductionCommentListFragment);
                    IntroductionCommentListFragment.this.mFragmentCallback.onTimeClick(iIntValue2 + iIntValue);
                    return;
                }
                return;
            }
            if (strArrSplit.length == 3) {
                int iIntValue3 = t2.i(strArrSplit[0]) ? Integer.valueOf(strArrSplit[0]).intValue() * 3600 : 0;
                int iIntValue4 = t2.i(strArrSplit[1]) ? Integer.valueOf(strArrSplit[1]).intValue() * 60 : 0;
                iIntValue = t2.i(strArrSplit[2]) ? Integer.valueOf(strArrSplit[2]).intValue() : 0;
                IntroductionCommentListFragment introductionCommentListFragment2 = IntroductionCommentListFragment.this;
                i iVar2 = introductionCommentListFragment2.mFragmentCallback;
                if (iVar2 != null) {
                    iVar2.onHide(introductionCommentListFragment2);
                    IntroductionCommentListFragment.this.mFragmentCallback.onTimeClick(iIntValue3 + iIntValue4 + iIntValue);
                }
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.bgColor = Color.parseColor("#00000000");
            ds.setUnderlineText(false);
            ds.clearShadowLayer();
        }
    }

    static /* synthetic */ int access$008(IntroductionCommentListFragment introductionCommentListFragment) {
        int i10 = introductionCommentListFragment.page;
        introductionCommentListFragment.page = i10 + 1;
        return i10;
    }

    static /* synthetic */ int access$208(IntroductionCommentListFragment introductionCommentListFragment) {
        int i10 = introductionCommentListFragment.detailPage;
        introductionCommentListFragment.detailPage = i10 + 1;
        return i10;
    }

    private int getUid() {
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        if (accountData != null) {
            return accountData.getUid();
        }
        return 0;
    }

    private boolean validTime(String clickStr, int max) {
        String[] strArrSplit;
        int i10;
        int iIntValue;
        int iIntValue2;
        if (t2.h(clickStr) || (strArrSplit = clickStr.split(":")) == null || strArrSplit.length <= 0) {
            return false;
        }
        if (strArrSplit.length != 2) {
            if (strArrSplit.length == 3) {
                int iIntValue3 = t2.i(strArrSplit[0]) ? Integer.valueOf(strArrSplit[0]).intValue() * 3600 : 0;
                int iIntValue4 = t2.i(strArrSplit[1]) ? Integer.valueOf(strArrSplit[1]).intValue() * 60 : 0;
                iIntValue = t2.i(strArrSplit[2]) ? Integer.valueOf(strArrSplit[2]).intValue() : 0;
                iIntValue2 = iIntValue3 + iIntValue4;
            } else {
                i10 = 0;
            }
            return i10 > 0 && i10 <= max;
        }
        iIntValue2 = t2.i(strArrSplit[0]) ? Integer.valueOf(strArrSplit[0]).intValue() * 60 : 0;
        iIntValue = t2.i(strArrSplit[1]) ? Integer.valueOf(strArrSplit[1]).intValue() : 0;
        i10 = iIntValue2 + iIntValue;
        if (i10 > 0) {
            return false;
        }
    }

    @AfterViews
    void aftervidew() {
        this.context = getActivity();
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.rv_list_data.setLayoutManager(new LinearLayoutManager(this.context));
        if (this.mItemAdapter == null) {
            this.mItemAdapter = new ItemAdapter();
            final com.join.mgps.base.decoration.b.a aVar = new com.join.mgps.base.decoration.b.a();
            aVar.f64116f = 0;
            aVar.f64120d = (int) getResources().getDimension(R.dimen.wdp1);
            this.rv_list_data.addItemDecoration(new com.join.mgps.base.decoration.b() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.1
                @Override // com.join.mgps.base.decoration.b
                public com.join.mgps.base.decoration.b.AbstractC0703b getItemOffsets(int position) {
                    return aVar;
                }
            });
            this.mItemAdapter.setOnLoadMoreListener(new BaseQuickAdapter.l() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.2
                @Override // com.join.mgps.base.BaseQuickAdapter.l
                public void onLoadMoreRequested() {
                    IntroductionCommentListFragment.access$008(IntroductionCommentListFragment.this);
                    IntroductionCommentListFragment introductionCommentListFragment = IntroductionCommentListFragment.this;
                    introductionCommentListFragment.loadData(introductionCommentListFragment.page);
                }
            }, this.rv_list_data);
        }
        this.rv_list_data.setAdapter(this.mItemAdapter);
        this.mItemAdapter.setOnItemChildClickListener(new BaseQuickAdapter.h() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.3
            @Override // com.join.mgps.base.BaseQuickAdapter.h
            public void onItemChildClick(BaseQuickAdapter adapter, View view, int position) {
                BbsCommentListBean item = IntroductionCommentListFragment.this.mItemAdapter.getItem(position);
                if (view.getId() == R.id.iv_more) {
                    IntroductionCommentListFragment.this.onClickMore(view, item);
                    return;
                }
                if (view.getId() != R.id.iv_praise) {
                    if (view.getId() == R.id.commentAllRootLl) {
                        IntroductionCommentListFragment.this.showCommentDetail(item);
                    }
                } else if (!item.getPraise().booleanValue()) {
                    IntroductionCommentListFragment.this.onBbsPraise(String.valueOf(item.getRuid()), Integer.valueOf(IntroductionCommentListFragment.this.pid), item);
                } else {
                    IntroductionCommentListFragment introductionCommentListFragment = IntroductionCommentListFragment.this;
                    introductionCommentListFragment.onBbsDisPraise(Integer.valueOf(introductionCommentListFragment.pid), item);
                }
            }
        });
        if (this.mItemDetailAdapter == null) {
            this.mItemDetailAdapter = new ItemDetailAdapter();
            this.rv_comment_detail_list.setLayoutManager(new LinearLayoutManager(getContext()));
            this.rv_comment_detail_list.setAdapter(this.mItemDetailAdapter);
            this.rv_comment_detail_list.setLoadingListener(new XRecyclerView.f() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.4
                @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
                public void onLoadMore() {
                    IntroductionCommentListFragment.access$208(IntroductionCommentListFragment.this);
                    if (IntroductionCommentListFragment.this.fromNotice) {
                        IntroductionCommentListFragment introductionCommentListFragment = IntroductionCommentListFragment.this;
                        introductionCommentListFragment.loadDataDetailFromNotice(introductionCommentListFragment.detailPage);
                    } else {
                        IntroductionCommentListFragment introductionCommentListFragment2 = IntroductionCommentListFragment.this;
                        introductionCommentListFragment2.loadDataDetail(introductionCommentListFragment2.detailPage);
                    }
                }

                @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
                public void onRefresh() {
                }
            });
        }
        loadData(1);
        if (this.fromNotice) {
            this.et_content.setText("");
            this.et_content.setHint("请输入评论内容");
            this.iv_back.setVisibility(0);
            this.rl_comment_list.setVisibility(8);
            this.rl_comment_detail.setVisibility(0);
            this.showDetail = true;
            loadDataDetailFromNotice(this.detailPage);
        }
    }

    @Background
    void commitComment(String content) {
        if (!m.j(this.context)) {
            hideLoading();
            return;
        }
        try {
            RequestBbsReplyArgs requestBbsReplyArgs = new RequestBbsReplyArgs();
            requestBbsReplyArgs.setPid(Integer.valueOf(this.pid));
            requestBbsReplyArgs.setUid(Integer.valueOf(getUid()));
            requestBbsReplyArgs.setContent(content);
            requestBbsReplyArgs.setRuid(Integer.valueOf(this.posterId));
            BbsCommentListBean bbsCommentListBean = this.commentListBean;
            if (bbsCommentListBean != null) {
                requestBbsReplyArgs.setCommentId(bbsCommentListBean.getId());
                requestBbsReplyArgs.setRuid(this.commentListBean.getUid());
            }
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsReplyArgs);
            ResponseModel<Boolean> responseModelF0 = this.rpcGameClient.F0(requestModel.makeSign());
            try {
                hideLoading();
                if (responseModelF0 == null || responseModelF0.getData() == null) {
                    hideLoading();
                } else {
                    updateCommentInput();
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                hideLoading();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            hideLoading();
        }
    }

    String getReportUrl(int ruid, int rid) {
        if (!t2.i(this.reportUrl)) {
            return "";
        }
        if (this.reportUrl.contains("?")) {
            return this.reportUrl + "&resourceType=COMMENT&ruid=" + ruid + "&resourceId=" + rid;
        }
        return this.reportUrl + "?resourceType=COMMENT&ruid=" + ruid + "&resourceId=" + rid;
    }

    @UiThread
    void hideLoading() {
        View view = this.loding_layout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        RecyclerView recyclerView = this.rv_list_data;
        if (recyclerView != null) {
            recyclerView.setVisibility(0);
        }
    }

    @UiThread
    void hideLoadingDetail() {
        View view = this.loding_layout_detail;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile_detail;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        RelativeLayout relativeLayout = this.rl_comment_detail;
        if (relativeLayout != null) {
            relativeLayout.setVisibility(0);
        }
        XRecyclerView xRecyclerView = this.rv_comment_detail_list;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(0);
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:25:0x007a */
    @Background
    public void loadCommentDetail(int page) {
        showLoadingView();
        if (!m.j(this.context)) {
            showLoadFailed();
            return;
        }
        try {
            RequestBbsCommentListArgs requestBbsCommentListArgs = new RequestBbsCommentListArgs();
            requestBbsCommentListArgs.setPid(Integer.valueOf(this.pid));
            requestBbsCommentListArgs.setPage(Integer.valueOf(page));
            requestBbsCommentListArgs.setUid(Integer.valueOf(getUid()));
            requestBbsCommentListArgs.setCommentId(Integer.valueOf(this.commentId));
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsCommentListArgs);
            ResponseModel<List<BbsCommentListBean>> responseModelL0 = this.rpcGameClient.L0(requestModel.makeSign());
            try {
                hideLoading();
                if (responseModelL0 == null || responseModelL0.getData() == null) {
                    showDetail(null, false);
                } else {
                    showDetail(responseModelL0.getData(), page > 1);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLoadFailed();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            showLoadFailed();
        }
    }

    @Background
    void loadData(int page) {
        showLoadingView();
        if (!m.j(this.context)) {
            showLoadFailed();
            return;
        }
        try {
            RequestBbsCommentListArgs requestBbsCommentListArgs = new RequestBbsCommentListArgs();
            requestBbsCommentListArgs.setPid(Integer.valueOf(this.pid));
            requestBbsCommentListArgs.setPage(Integer.valueOf(page));
            requestBbsCommentListArgs.setUid(Integer.valueOf(getUid()));
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsCommentListArgs);
            ResponseModel<List<BbsCommentListBean>> responseModelU = this.rpcGameClient.u(requestModel.makeSign());
            try {
                hideLoading();
                if (responseModelU == null || responseModelU.getData() == null) {
                    showLoadFailed();
                } else {
                    List<BbsCommentListBean> data = responseModelU.getData();
                    boolean z10 = true;
                    if (page <= 1) {
                        z10 = false;
                    }
                    showMain(data, z10);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLoadFailed();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            showLoadFailed();
        }
    }

    /* JADX INFO: Removed unreachable split cross block B:25:0x007a */
    @Background
    void loadDataDetail(int page) {
        showLoadingViewDetail();
        if (!m.j(this.context)) {
            showLoadFailedDetail();
            return;
        }
        try {
            RequestBbsCommentListArgs requestBbsCommentListArgs = new RequestBbsCommentListArgs();
            requestBbsCommentListArgs.setPid(Integer.valueOf(this.pid));
            requestBbsCommentListArgs.setPage(Integer.valueOf(page));
            requestBbsCommentListArgs.setUid(Integer.valueOf(getUid()));
            requestBbsCommentListArgs.setCommentId(Integer.valueOf(this.commentId));
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsCommentListArgs);
            ResponseModel<List<BbsCommentListBean>> responseModelL0 = this.rpcGameClient.L0(requestModel.makeSign());
            try {
                hideLoadingDetail();
                if (responseModelL0 == null || responseModelL0.getData() == null) {
                    showDetail(null, false);
                } else {
                    showDetail(responseModelL0.getData(), page > 1);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLoadFailedDetail();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            showLoadFailedDetail();
        }
    }

    @Background
    void loadDataDetailFromNotice(int page) {
        showLoadingViewDetail();
        if (!m.j(this.context)) {
            showLoadFailedDetail();
            return;
        }
        try {
            RequestBbsCommentListArgs requestBbsCommentListArgs = new RequestBbsCommentListArgs();
            requestBbsCommentListArgs.setPid(Integer.valueOf(this.pid));
            requestBbsCommentListArgs.setPage(Integer.valueOf(page));
            requestBbsCommentListArgs.setUid(Integer.valueOf(getUid()));
            requestBbsCommentListArgs.setCommentId(Integer.valueOf(this.commentId));
            RequestModel requestModel = new RequestModel(this.context);
            requestModel.setArgs(requestBbsCommentListArgs);
            ResponseModel<List<BbsCommentListBean>> responseModelQ0 = this.rpcGameClient.q0(requestModel.makeSign());
            try {
                hideLoadingDetail();
                if (responseModelQ0 == null || responseModelQ0.getData() == null) {
                    showNoticeDetail(responseModelQ0.getData(), false);
                } else {
                    showNoticeDetail(responseModelQ0.getData(), page > 1);
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showLoadFailedDetail();
            }
        } catch (Exception e11) {
            e11.printStackTrace();
            showLoadFailedDetail();
        }
    }

    public void matchText(TextView tv2, String text, String regExp, String firstName, String replayName, boolean isReplay) {
        if (this.duration > 0) {
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(text);
            Matcher matcher = Pattern.compile(regExp, 2).matcher(text);
            while (matcher.find()) {
                int iStart = matcher.start(0);
                int iEnd = matcher.end(0);
                String strSubstring = text.substring(iStart, iEnd);
                if (validTime(strSubstring, this.duration)) {
                    spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#3392FF")), iStart, iEnd, 33);
                    spannableStringBuilder.setSpan(new TimeClickSpan(strSubstring), iStart, iEnd, 33);
                }
            }
            if (isReplay) {
                if (t2.i(firstName)) {
                    int iIndexOf = text.indexOf(firstName);
                    int length = firstName.length() + iIndexOf;
                    if (iIndexOf >= 0) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#82888E")), iIndexOf, length, 33);
                    }
                }
                if (t2.i(replayName)) {
                    int iIndexOf2 = text.indexOf("回复 " + replayName) + 3;
                    int length2 = replayName.length() + iIndexOf2;
                    if (iIndexOf2 >= 0) {
                        spannableStringBuilder.setSpan(new ForegroundColorSpan(Color.parseColor("#82888E")), iIndexOf2, length2, 33);
                    }
                }
            }
            tv2.setText(spannableStringBuilder);
        }
    }

    public void notifyDataChanged(int pid) {
        this.dataChanged = this.pid != pid;
    }

    @Click({R.id.iv_back})
    void onBackClick() {
        this.tv_title.setText("评论");
        this.iv_back.setVisibility(8);
        this.rl_comment_list.setVisibility(0);
        this.rv_list_data.setVisibility(0);
        this.rl_comment_detail.setVisibility(8);
        this.rv_comment_detail_list.setVisibility(8);
        this.ll_empty.setVisibility(8);
        ItemDetailAdapter itemDetailAdapter = this.mItemDetailAdapter;
        if (itemDetailAdapter != null) {
            itemDetailAdapter.clear();
            this.mItemDetailAdapter.notifyDataSetChanged();
        }
        this.detailPage = 1;
        this.fromNotice = false;
        this.showDetail = false;
        this.et_content.setText("");
        this.et_content.setHint("请输入评论内容");
        this.commentListBean = null;
    }

    @Background
    void onBbsDisPraise(Integer resourceId, BbsCommentListBean item) {
        try {
            if (this.isRequestDisPraise) {
                return;
            }
            if (!m.j(getContext())) {
                this.isRequestDisPraise = false;
                showTost(getResources().getString(R.string.net_connect_failed));
                return;
            }
            if (IntentUtil.getInstance().goLogin(getContext())) {
                showTost("您还未登录请先登录帐号！");
                this.isRequestDisPraise = false;
                return;
            }
            try {
                this.isRequestDisPraise = true;
                RequestBbsDispraiseArgs requestBbsDispraiseArgs = new RequestBbsDispraiseArgs();
                requestBbsDispraiseArgs.setResourceType("COMMENT");
                requestBbsDispraiseArgs.setResourceId(resourceId);
                requestBbsDispraiseArgs.setUid(Integer.valueOf(getUid()));
                RequestModel requestModel = new RequestModel(getContext());
                requestModel.setArgs(requestBbsDispraiseArgs);
                ResponseModel<Boolean> responseModelI0 = this.rpcGameClient.i0(requestModel.makeSign());
                this.isRequestDisPraise = false;
                if (responseModelI0 == null || !responseModelI0.getData().booleanValue()) {
                    return;
                }
                updatePraise(false, item);
            } catch (Exception e10) {
                e10.printStackTrace();
                this.isRequestDisPraise = false;
            }
        } catch (Exception e11) {
            this.isRequestDisPraise = false;
            e11.printStackTrace();
        }
    }

    @Background
    void onBbsPraise(String ruid, Integer resourceId, BbsCommentListBean item) {
        try {
            if (this.isRequestPraise) {
                return;
            }
            if (!m.j(getContext())) {
                this.isRequestPraise = false;
                showTost(getResources().getString(R.string.net_connect_failed));
                return;
            }
            if (IntentUtil.getInstance().goLogin(getContext())) {
                showTost("您还未登录请先登录帐号！");
                this.isRequestPraise = false;
                return;
            }
            try {
                this.isRequestPraise = true;
                RequestBbsPraiseArgs requestBbsPraiseArgs = new RequestBbsPraiseArgs();
                requestBbsPraiseArgs.setResourceType("COMMENT");
                requestBbsPraiseArgs.setResourceId(resourceId);
                requestBbsPraiseArgs.setRuid(ruid);
                requestBbsPraiseArgs.setUid(Integer.valueOf(getUid()));
                RequestModel requestModel = new RequestModel(getContext());
                requestModel.setArgs(requestBbsPraiseArgs);
                ResponseModel<Boolean> responseModelK = this.rpcGameClient.K(requestModel.makeSign());
                this.isRequestPraise = false;
                if (responseModelK == null || !responseModelK.getData().booleanValue()) {
                    return;
                }
                updatePraise(true, item);
                t.l(getContext()).s1(Event.singleStartGamePageDetail, Event.CommentClickLike, "", new Ext().setFrom("1").setArticleId(String.valueOf(this.pid)), new Data().setGameId(this.gameId));
            } catch (Exception e10) {
                this.isRequestPraise = false;
                e10.printStackTrace();
            }
        } catch (Exception e11) {
            this.isRequestPraise = false;
            e11.printStackTrace();
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
    }

    @Click({R.id.tv_commit})
    void onClickComment() {
        if (IntentUtil.getInstance().goLogin(getActivity())) {
            showTost("您还未登录请先登录帐号！");
            return;
        }
        String string = this.et_content.getText().toString();
        if (t2.h(string)) {
            showTost("请输入评论/回复内容");
        } else {
            commitComment(string);
        }
    }

    void onClickMore(View targetView, final BbsCommentListBean item) {
        View viewInflate = getLayoutInflater().inflate(R.layout.introduction_comment_list_popwin, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_pop_report);
        final PopupWindow popupWindow = new PopupWindow(viewInflate, -2, -2);
        popupWindow.setBackgroundDrawable(new ColorDrawable(Color.parseColor("#00000000")));
        popupWindow.setFocusable(true);
        popupWindow.setOutsideTouchable(true);
        popupWindow.update();
        Rect rect = new Rect();
        targetView.getGlobalVisibleRect(rect);
        popupWindow.showAtLocation(targetView, 0, (int) (rect.left - getResources().getDimension(R.dimen.wdp159)), rect.bottom);
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.join.kotlin.ui.introduction.IntroductionCommentListFragment.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                popupWindow.dismiss();
                IntentUtil.getInstance().goShareWebActivity(IntroductionCommentListFragment.this.getActivity(), IntroductionCommentListFragment.this.getReportUrl(item.getUid().intValue(), item.getId().intValue()));
            }
        });
    }

    @Click({R.id.iv_close})
    void onClockClick() {
        if (getActivity() instanceof i) {
            ((i) getActivity()).onHide(this);
        }
        this.et_content.setText("");
        this.et_content.setHint("请输入评论内容");
        this.iv_back.setVisibility(8);
        this.rl_comment_list.setVisibility(0);
        this.tv_title.setText("评论");
        this.fromNotice = false;
        this.showDetail = false;
        this.rl_comment_detail.setVisibility(8);
        ItemAdapter itemAdapter = this.mItemAdapter;
        if (itemAdapter != null && itemAdapter.getData() != null) {
            this.mItemAdapter.getData().clear();
            this.mItemAdapter.notifyDataSetChanged();
        }
        ItemDetailAdapter itemDetailAdapter = this.mItemDetailAdapter;
        if (itemDetailAdapter != null) {
            itemDetailAdapter.clear();
            this.mItemDetailAdapter.notifyDataSetChanged();
        }
        ((InputMethodManager) this.et_content.getContext().getSystemService("input_method")).hideSoftInputFromWindow(this.et_content.getWindowToken(), 0);
    }

    @Override // androidx.fragment.app.Fragment
    public void onHiddenChanged(boolean hidden) {
        super.onHiddenChanged(hidden);
        if (hidden) {
            return;
        }
        this.page = 1;
        loadData(1);
    }

    public void onShow() {
        loadData(1);
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NonNull View view, @Nullable Bundle savedInstanceState) {
        view.setOnClickListener(this);
    }

    @Click
    void relodingimag() {
        loadData(1);
    }

    @Click({R.id.relodingimag_detail})
    void relodingimagDetail() {
        if (this.fromNotice) {
            loadDataDetailFromNotice(this.detailPage);
        } else {
            loadDataDetail(this.detailPage);
        }
    }

    public void setCommentId(int commentId) {
        this.commentId = commentId;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public void setFragmentCallback(i callback) {
        this.mFragmentCallback = callback;
    }

    public void setFromNotice(boolean fromNotice) {
        this.fromNotice = fromNotice;
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this.context);
    }

    @Click({R.id.setNetwork_detail})
    void setNetworkDetail() {
        UtilsMy.N3(this.context);
    }

    public void setParams(int pid, int posterId, String reportUrl, String gameId) {
        this.pid = pid;
        this.posterId = posterId;
        this.reportUrl = reportUrl;
        this.gameId = gameId;
    }

    public void setVideo(boolean video) {
        this.isVideo = video;
    }

    public void showCommentDetail(BbsCommentListBean item) {
        this.commentListBean = item;
        this.et_content.setText("");
        this.et_content.setHint("请输入评论内容");
        this.iv_back.setVisibility(0);
        this.rl_comment_list.setVisibility(8);
        this.rl_comment_detail.setVisibility(0);
        this.tv_title.setText(item.getReplies() + "回复");
        this.detailPage = 1;
        this.commentId = item.getId().intValue();
        item.setReplay(false);
        this.mItemDetailAdapter.addData(item);
        this.showDetail = true;
        loadDataDetail(this.detailPage);
    }

    @UiThread
    void showDetail(List<BbsCommentListBean> list, boolean loadMore) {
        if (list != null && list.size() > 0) {
            if (loadMore) {
                this.mItemDetailAdapter.addData(list);
            } else {
                this.mItemDetailAdapter.addData(list);
            }
            XRecyclerView xRecyclerView = this.rv_comment_detail_list;
            if (xRecyclerView != null) {
                xRecyclerView.loadMoreComplete();
                return;
            }
            return;
        }
        this.mItemDetailAdapter.addData(list);
        XRecyclerView xRecyclerView2 = this.rv_comment_detail_list;
        if (xRecyclerView2 != null) {
            xRecyclerView2.loadMoreComplete();
            this.rv_comment_detail_list.setNoMore();
        }
        if (loadMore) {
            return;
        }
        showEmpty();
    }

    @UiThread
    void showEmpty() {
        View view = this.loding_layout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile;
        if (view2 != null) {
            view2.setVisibility(8);
        }
        RecyclerView recyclerView = this.rv_list_data;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        LinearLayout linearLayout = this.ll_empty;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
    }

    void showLoadFailed() {
        showLoadFailed("");
    }

    void showLoadFailedDetail() {
        showLoadFailedDetail("");
    }

    @UiThread
    void showLoadingView() {
        ItemAdapter itemAdapter = this.mItemAdapter;
        if (itemAdapter == null || itemAdapter.getItemCount() <= 0) {
            RecyclerView recyclerView = this.rv_list_data;
            if (recyclerView != null) {
                recyclerView.setVisibility(8);
            }
            View view = this.loding_layout;
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            RecyclerView recyclerView2 = this.rv_list_data;
            if (recyclerView2 != null && recyclerView2.getVisibility() == 8) {
                this.rv_list_data.setVisibility(0);
            }
            View view2 = this.loding_layout;
            if (view2 != null && view2.getVisibility() == 0) {
                this.loding_layout.setVisibility(8);
            }
        }
        View view3 = this.loding_faile;
        if (view3 != null) {
            view3.setVisibility(8);
        }
        LinearLayout linearLayout = this.ll_empty;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
    }

    @UiThread
    void showLoadingViewDetail() {
        ItemDetailAdapter itemDetailAdapter = this.mItemDetailAdapter;
        if (itemDetailAdapter == null || itemDetailAdapter.getItemCount() <= 0) {
            RelativeLayout relativeLayout = this.rl_comment_detail;
            if (relativeLayout != null) {
                relativeLayout.setVisibility(8);
            }
            View view = this.loding_layout_detail;
            if (view != null) {
                view.setVisibility(0);
            }
        } else {
            RelativeLayout relativeLayout2 = this.rl_comment_detail;
            if (relativeLayout2 != null && relativeLayout2.getVisibility() == 8) {
                this.rl_comment_detail.setVisibility(0);
            }
            View view2 = this.loding_layout_detail;
            if (view2 != null && view2.getVisibility() == 0) {
                this.loding_layout_detail.setVisibility(8);
            }
        }
        View view3 = this.loding_faile_detail;
        if (view3 != null) {
            view3.setVisibility(8);
        }
    }

    @UiThread
    void showMain(List<BbsCommentListBean> list, boolean loadMore) {
        this.datas = list;
        if (list != null && list.size() > 0) {
            if (loadMore) {
                this.mItemAdapter.addData((Collection) this.datas);
            } else {
                this.mItemAdapter.setNewData(this.datas);
            }
            this.mItemAdapter.loadMoreComplete();
            return;
        }
        this.mItemAdapter.loadMoreComplete();
        this.mItemAdapter.loadMoreEnd();
        if (loadMore) {
            return;
        }
        showEmpty();
    }

    @UiThread
    void showNoticeDetail(List<BbsCommentListBean> list, boolean loadMore) {
        BbsCommentListBean bbsCommentListBean;
        if (!loadMore && list != null && list.size() > 0 && (bbsCommentListBean = list.get(0)) != null) {
            this.tv_title.setText(bbsCommentListBean.getReplies() + "回复");
            this.detailPage = 1;
            this.commentId = bbsCommentListBean.getId().intValue();
            bbsCommentListBean.setReplay(false);
        }
        if (list != null && list.size() > 0) {
            if (loadMore) {
                this.mItemDetailAdapter.addData(list);
            } else {
                this.mItemDetailAdapter.addData(list);
            }
            XRecyclerView xRecyclerView = this.rv_comment_detail_list;
            if (xRecyclerView != null) {
                xRecyclerView.loadMoreComplete();
                return;
            }
            return;
        }
        this.mItemDetailAdapter.addData(list);
        XRecyclerView xRecyclerView2 = this.rv_comment_detail_list;
        if (xRecyclerView2 != null) {
            xRecyclerView2.loadMoreComplete();
            this.rv_comment_detail_list.setNoMore();
        }
        if (loadMore) {
            return;
        }
        showEmpty();
    }

    @UiThread
    void showTost(String message) {
        a3.b(getActivity()).d(message);
    }

    @UiThread
    void updateCommentInput() {
        this.et_content.setText("");
        this.et_content.setHint("请输入评论内容");
        showTost("评论成功，内容将在将在审核后展示");
        i iVar = this.mFragmentCallback;
        if (iVar != null) {
            iVar.onCommentCommitSuccess();
        }
    }

    @UiThread
    void updatePraise(boolean praise, BbsCommentListBean item) {
        if (praise) {
            item.setLike(Integer.valueOf(item.getLike().intValue() + 1));
        } else {
            item.setLike(Integer.valueOf(item.getLike().intValue() - 1));
        }
        item.setPraise(Boolean.valueOf(praise));
        ItemDetailAdapter itemDetailAdapter = this.mItemDetailAdapter;
        if (itemDetailAdapter != null) {
            itemDetailAdapter.notifyDataSetChanged();
        }
        ItemAdapter itemAdapter = this.mItemAdapter;
        if (itemAdapter != null) {
            itemAdapter.notifyDataSetChanged();
        }
    }

    @UiThread
    void showLoadFailed(String msg) {
        RecyclerView recyclerView = this.rv_list_data;
        if (recyclerView != null) {
            recyclerView.setVisibility(8);
        }
        View view = this.loding_layout;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile;
        if (view2 != null) {
            view2.setVisibility(0);
        }
    }

    @UiThread
    void showLoadFailedDetail(String msg) {
        View view = this.loding_layout_detail;
        if (view != null) {
            view.setVisibility(8);
        }
        View view2 = this.loding_faile_detail;
        if (view2 != null) {
            view2.setVisibility(0);
        }
        XRecyclerView xRecyclerView = this.rv_comment_detail_list;
        if (xRecyclerView != null) {
            xRecyclerView.setVisibility(8);
        }
    }
}
