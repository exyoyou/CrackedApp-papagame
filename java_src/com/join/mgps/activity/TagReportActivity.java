package com.join.mgps.activity;

import android.graphics.Color;
import android.graphics.Typeface;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.GameTagsBean;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.RequestFeedbackUserCustomTag;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.TagReportReasonBean;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_tag_report)
public class TagReportActivity extends BaseFragmentActivity {

    @ViewById
    Button btn_commit;

    @ViewById
    EditText et_reason_text;

    @ViewById
    FlowLayout fl_tag_all;

    @Extra
    String gameId;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    ListView lv_reasons;
    SimpleBaseAdapter<TagReportReasonBean> reasonAdapter;

    @Extra
    ListUserCustomGameTagBean reportTags;
    com.join.mgps.rpc.impl.i rpcGameClient;

    @ViewById
    TextView title_textview;
    List<TagReportReasonBean> reasons = new ArrayList();
    List<GameTagsBean> reasonTags = new ArrayList();
    com.join.mgps.dialog.f1 dialog = null;

    class a extends SimpleBaseAdapter<TagReportReasonBean> {
        a() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int position, View convertView, ViewGroup parent, boolean isNew) {
            TagReportReasonBean item = getItem(position);
            TextView textView = (TextView) convertView.findViewById(R.id.tv_reason_text);
            ImageView imageView = (ImageView) convertView.findViewById(R.id.iv_check);
            textView.setText(item.getText());
            imageView.setImageResource(item.isChecked() ? R.drawable.ic_chk_simulator_h : R.drawable.ic_chk_simulator_n);
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_tag_report_reason;
        }
    }

    class b implements IOnItemClickListener {
        b() {
        }

        @Override // com.papa91.arc.interfaces.IOnItemClickListener
        public void onItemClick(int position) {
            Iterator<TagReportReasonBean> it2 = TagReportActivity.this.reasons.iterator();
            while (it2.hasNext()) {
                it2.next().setChecked(false);
            }
            TagReportActivity.this.reasons.get(position).setChecked(true);
            TagReportActivity.this.reasonAdapter.notifyDataSetChanged();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameTagsBean f56224b;

        c(final GameTagsBean val$gameTag) {
            this.f56224b = val$gameTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            TagReportActivity.this.fl_tag_all.removeAllViews();
            for (GameTagsBean gameTagsBean : TagReportActivity.this.reasonTags) {
                gameTagsBean.setChecked(false);
                this.f56224b.setChecked(true);
                TagReportActivity tagReportActivity = TagReportActivity.this;
                tagReportActivity.createAndAddTag(gameTagsBean, tagReportActivity.fl_tag_all);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createAndAddTag(GameTagsBean gameTag, FlowLayout fl_tag_view) {
        View viewInflate = View.inflate(this, R.layout.item_tag_report_view, null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_title);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_tag);
        textView.setText(gameTag.getName());
        linearLayout.setBackgroundResource(gameTag.isChecked() ? R.drawable.shape_ffa047_stroke_r_6 : R.drawable.shape_f7f7f7_r_6);
        textView.setTextColor(Color.parseColor(gameTag.isChecked() ? "#FFA047" : "#555555"));
        viewInflate.setOnClickListener(new c(gameTag));
        fl_tag_view.addView(viewInflate, layoutParams);
    }

    @AfterViews
    void afterViews() {
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.title_textview.setText("举报标签");
        this.title_textview.setTypeface(Typeface.defaultFromStyle(1));
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.reasons.add(new TagReportReasonBean(1, "标签不适合此游戏"));
        this.reasons.add(new TagReportReasonBean(2, "其他"));
        this.fl_tag_all.setHorizontalDivider((int) getResources().getDimension(R.dimen.wdp20));
        this.fl_tag_all.setVerticalDivider((int) getResources().getDimension(R.dimen.wdp28));
        if (this.reportTags == null) {
            showLoding();
            getListData();
        } else {
            hideLoding();
            if (this.reportTags.getGameTags() != null) {
                for (GameTagsBean gameTagsBean : this.reportTags.getGameTags()) {
                    if (gameTagsBean.getTagType().intValue() == 2 || gameTagsBean.getTagType().intValue() == 3) {
                        this.reasonTags.add(gameTagsBean);
                    }
                }
                for (GameTagsBean gameTagsBean2 : this.reportTags.getPersonalTags()) {
                    if (gameTagsBean2.getTagType().intValue() == 2 || gameTagsBean2.getTagType().intValue() == 3) {
                        this.reasonTags.add(gameTagsBean2);
                    }
                }
            }
            Iterator<GameTagsBean> it2 = this.reasonTags.iterator();
            while (it2.hasNext()) {
                createAndAddTag(it2.next(), this.fl_tag_all);
            }
        }
        if (this.reasonAdapter == null) {
            a aVar = new a();
            this.reasonAdapter = aVar;
            this.lv_reasons.setAdapter((ListAdapter) aVar);
            this.reasonAdapter.setItemClickListener(new b());
        }
        this.reasonAdapter.setDatas(this.reasons);
    }

    @Click
    void back_image() {
        finish();
    }

    @UiThread
    void dismissLodingDialog() {
        this.dialog.dismiss();
    }

    @Background
    void getListData() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            RequestModel requestModel = new RequestModel(this);
            RequestListUserCustomGameTagArgs requestListUserCustomGameTagArgs = new RequestListUserCustomGameTagArgs();
            requestListUserCustomGameTagArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            requestListUserCustomGameTagArgs.setGameId(this.gameId);
            requestModel.setArgs(requestListUserCustomGameTagArgs);
            ResponseModel<ListUserCustomGameTagBean> responseModelX0 = this.rpcGameClient.x0(requestModel.makeSign());
            if (responseModelX0 == null || responseModelX0.getData() == null) {
                showLodingFailed();
            } else {
                showMain(responseModelX0.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    @UiThread
    void hideLoding() {
        try {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click({R.id.btn_commit})
    void onCommit() {
        TagReportReasonBean tagReportReasonBean;
        GameTagsBean next;
        Iterator<GameTagsBean> it2 = this.reasonTags.iterator();
        do {
            tagReportReasonBean = null;
            if (!it2.hasNext()) {
                next = null;
                break;
            }
            next = it2.next();
        } while (!next.isChecked());
        if (next == null) {
            com.join.mgps.Util.a3.b(this).d("请选择想要投诉的标签");
            return;
        }
        for (TagReportReasonBean tagReportReasonBean2 : this.reasons) {
            if (tagReportReasonBean2.isChecked()) {
                tagReportReasonBean = tagReportReasonBean2;
                break;
            }
        }
        if (tagReportReasonBean == null) {
            com.join.mgps.Util.a3.b(this).d("请选择举报原因");
        } else if (tagReportReasonBean.getType() == 2 && com.join.mgps.Util.t2.h(this.et_reason_text.getText().toString())) {
            com.join.mgps.Util.a3.b(this).d("请输入举报说明");
        } else {
            onCommit(next.getName(), tagReportReasonBean.getType());
        }
    }

    @Click
    void relodingimag() {
        showLoding();
        getListData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    @UiThread
    void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingDialog() {
        this.dialog.b();
    }

    @UiThread
    void showLodingFailed() {
        try {
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMain(ListUserCustomGameTagBean subList) {
        if (subList == null) {
            return;
        }
        try {
            hideLoding();
            this.reasonTags.clear();
            for (GameTagsBean gameTagsBean : this.reportTags.getGameTags()) {
                if (gameTagsBean.getTagType().intValue() == 2 || gameTagsBean.getTagType().intValue() == 3) {
                    this.reasonTags.add(gameTagsBean);
                }
            }
            for (GameTagsBean gameTagsBean2 : this.reportTags.getPersonalTags()) {
                if (gameTagsBean2.getTagType().intValue() == 2 || gameTagsBean2.getTagType().intValue() == 3) {
                    this.reasonTags.add(gameTagsBean2);
                }
            }
            Iterator<GameTagsBean> it2 = this.reasonTags.iterator();
            while (it2.hasNext()) {
                createAndAddTag(it2.next(), this.fl_tag_all);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Background
    void onCommit(String tagName, int feedType) {
        try {
            if (com.join.android.app.common.utils.m.j(this)) {
                try {
                    showLodingDialog();
                    RequestModel requestModel = new RequestModel(this);
                    RequestFeedbackUserCustomTag requestFeedbackUserCustomTag = new RequestFeedbackUserCustomTag();
                    requestFeedbackUserCustomTag.setFeedbackUid(AccountUtil_.getInstance_(this).getUid());
                    requestFeedbackUserCustomTag.setGameId(this.gameId);
                    requestFeedbackUserCustomTag.setTagName(tagName);
                    requestFeedbackUserCustomTag.setFeedbackType(Integer.valueOf(feedType));
                    requestFeedbackUserCustomTag.setReason(this.et_reason_text.getText().toString());
                    requestFeedbackUserCustomTag.setReason(this.et_reason_text.getText().toString());
                    requestModel.setArgs(requestFeedbackUserCustomTag);
                    ResponseModel responseModelW = this.rpcGameClient.W(requestModel.makeSign());
                    if (responseModelW != null && responseModelW.getCode() == 200) {
                        com.join.mgps.Util.a3.b(this).d("举报标签成功");
                        dismissLodingDialog();
                        finish();
                    } else if (responseModelW != null && com.join.mgps.Util.t2.i(responseModelW.getMessage())) {
                        com.join.mgps.Util.a3.b(this).d(responseModelW.getMessage());
                    } else {
                        com.join.mgps.Util.a3.b(this).d("数据异常，请重试");
                    }
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
                return;
            }
            com.join.mgps.Util.a3.b(this).d("网络连接失败，请重试");
        } finally {
            dismissLodingDialog();
        }
    }
}
