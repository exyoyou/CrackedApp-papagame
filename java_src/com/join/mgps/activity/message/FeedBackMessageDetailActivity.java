package com.join.mgps.activity.message;

import android.graphics.Color;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseFragmentActivity;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.common.utils.l;
import com.join.android.app.common.utils.m;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.e0;
import com.join.mgps.Util.g1;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.MessageDetailFeedBackArgs;
import com.join.mgps.dto.MessageDetailFeedBackBean;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.rpc.impl.i;
import com.join.mgps.rpc.k;
import java.util.ArrayList;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.TextChange;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.activity_message_detail_feedback)
public class FeedBackMessageDetailActivity extends BaseFragmentActivity {
    private boolean canSend;

    @ViewById
    EditText etComment;

    @ViewById
    TextView forum_title_center;

    @Extra
    String issueId;

    @ViewById
    LinearLayout llMain;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    private a replyAdapter;
    private k rpcGameClient;

    @ViewById
    RecyclerView rvComment;

    @ViewById
    TextView tvFeedBackDesc;

    @ViewById
    TextView tvFeedBackGameName;

    @ViewById
    TextView tvFeedBackReason;

    @ViewById
    TextView tvSend;

    @ViewById
    TextView tvTime;

    class a extends BaseQuickAdapter<MessageDetailFeedBackBean.FeedbackReplies, com.join.mgps.base.b> {
        public a(List<MessageDetailFeedBackBean.FeedbackReplies> data) {
            super(R.layout.item_message_feedback_reply, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, MessageDetailFeedBackBean.FeedbackReplies item) {
            helper.setText(R.id.tvUserName, item.getUsername()).setText(R.id.tvTime, e0.C(item.getCreateTime() / 1000)).setText(R.id.tvDesc, item.getReplyContent());
            l.h((SimpleDraweeView) helper.getView(R.id.avatar), item.getAvatar());
        }
    }

    private String getIssueTypeDesc(int issueType) {
        switch (issueType) {
            case 1:
                return "无法下载";
            case 2:
                return "无法安装";
            case 3:
                return "版本太旧";
            case 4:
                return "携带病毒";
            case 5:
                return "色情内容";
            case 6:
                return "恶意扣费";
            case 7:
                return "侵权抄袭";
            case 8:
                return "暴力涉政";
            case 9:
                return "其他问题";
            default:
                return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void addMyComment(MessageDetailFeedBackBean.FeedbackReplies reply) {
        if (this.replyAdapter != null) {
            this.etComment.setText((CharSequence) null);
            this.replyAdapter.addData(reply);
            r7.a.b(this.etComment);
            this.rvComment.scrollToPosition(this.replyAdapter.getItemCount() - 1);
        }
    }

    @AfterViews
    void afterViews() {
        this.rpcGameClient = i.P0();
        this.forum_title_center.setVisibility(0);
        this.forum_title_center.setText("投诉详情");
        getData();
    }

    @Click
    void back_image() {
        finish();
    }

    @TextChange
    void etComment() {
        if (this.etComment.getText().toString().trim().length() > 0) {
            this.canSend = true;
            this.tvSend.setTextColor(Color.parseColor("#F47500"));
        } else {
            this.canSend = false;
            this.tvSend.setTextColor(Color.parseColor("#C8C9CB"));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getData() {
        showLoding();
        if (!m.j(this)) {
            showLodingFailed();
            showMessage(getString(R.string.net_connect_failed));
            return;
        }
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this);
            MessageDetailFeedBackArgs messageDetailFeedBackArgs = new MessageDetailFeedBackArgs();
            messageDetailFeedBackArgs.setIssueId(this.issueId);
            requestModel.setArgs(messageDetailFeedBackArgs);
            requestModel.setDefault(this);
            ResponseModel<MessageDetailFeedBackBean> responseModelU0 = this.rpcGameClient.u0(requestModel.makeSign());
            if (responseModelU0 == null || responseModelU0.getCode() != 200 || responseModelU0.getData() == null) {
                showLodingFailed();
            } else {
                MessageDetailFeedBackBean data = responseModelU0.getData();
                showMain();
                updateUi(data);
            }
        } catch (Exception e10) {
            showLodingFailed();
            e10.printStackTrace();
        }
    }

    @Click
    void relodingimag() {
        getData();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void reply(String content) {
        if (!m.j(this)) {
            showMessage(getString(R.string.net_connect_failed));
            return;
        }
        try {
            RequestModel requestModel = new RequestModel();
            requestModel.setDefault(this);
            MessageDetailFeedBackArgs messageDetailFeedBackArgs = new MessageDetailFeedBackArgs();
            messageDetailFeedBackArgs.setIssueId(this.issueId);
            messageDetailFeedBackArgs.setContent(content);
            messageDetailFeedBackArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            requestModel.setArgs(messageDetailFeedBackArgs);
            requestModel.setDefault(this);
            ResponseModel<Boolean> responseModelW0 = this.rpcGameClient.w0(requestModel.makeSign());
            if (responseModelW0 == null || responseModelW0.getCode() != 200) {
                showMessage("添加评论失败");
            } else {
                MessageDetailFeedBackBean.FeedbackReplies feedbackReplies = new MessageDetailFeedBackBean.FeedbackReplies();
                feedbackReplies.setReplyUid(AccountUtil_.getInstance_(this).getUid());
                feedbackReplies.setAvatar(AccountUtil_.getInstance_(this).getAccountData().getAvatarSrc());
                feedbackReplies.setUsername(AccountUtil_.getInstance_(this).getAccountData().getNickname());
                feedbackReplies.setCreateTime(System.currentTimeMillis());
                feedbackReplies.setReplyContent(content);
                addMyComment(feedbackReplies);
            }
        } catch (Exception e10) {
            showMessage("添加评论失败");
            e10.printStackTrace();
        }
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoding() {
        g1.c("显示加载中");
        LinearLayout linearLayout = this.loding_layout;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_faile;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.llMain;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLodingFailed() {
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(0);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.llMain;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMain() {
        g1.c("显示主界面main");
        LinearLayout linearLayout = this.loding_faile;
        if (linearLayout != null) {
            linearLayout.setVisibility(8);
        }
        LinearLayout linearLayout2 = this.loding_layout;
        if (linearLayout2 != null) {
            linearLayout2.setVisibility(8);
        }
        LinearLayout linearLayout3 = this.llMain;
        if (linearLayout3 != null) {
            linearLayout3.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        a3.b(this).d(message);
    }

    @Click
    void tvSend() {
        if (this.canSend) {
            reply(this.etComment.getText().toString().trim());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void updateUi(MessageDetailFeedBackBean result) {
        if (result.getFeedbackIssue() != null) {
            MessageDetailFeedBackBean.FeedbackIssue feedbackIssue = result.getFeedbackIssue();
            this.tvFeedBackGameName.setText(feedbackIssue.getGameName());
            this.tvFeedBackReason.setText(getIssueTypeDesc(feedbackIssue.getIssueType()));
            this.tvFeedBackDesc.setText(feedbackIssue.getContent());
            this.tvTime.setText(e0.s(feedbackIssue.getCreateTime()));
        }
        this.rvComment.setLayoutManager(new LinearLayoutManager(this));
        a aVar = new a(result.getFeedbackReplies() != null ? result.getFeedbackReplies() : new ArrayList<>());
        this.replyAdapter = aVar;
        this.rvComment.setAdapter(aVar);
    }
}
