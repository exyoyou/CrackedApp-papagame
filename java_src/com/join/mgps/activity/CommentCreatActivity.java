package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.os.Build;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.method.LinkMovementMethod;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.BaseAppCompatActivity;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AESUtils;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.customview.MStarBar;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentModifyArgs;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.sharedpreferences.Pref;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.comment_creat_activity)
public class CommentCreatActivity extends BaseAppCompatActivity {
    private UserInfo accountBean;

    @ViewById
    ImageView back_image;

    @Extra
    int bespeakSwitch;

    @Extra
    String commentContent;

    @Extra
    String commentId;

    @Extra
    String commentScoreSwitch;

    @Extra
    float commentStars;

    @ViewById
    EditText commentcreat_et;
    private Context context;

    @Extra
    String gameId;

    @Extra
    int gameIsStart;

    @Extra
    String gameType;

    @Extra
    boolean isEdit;
    private boolean isInstallTheGame = false;

    @ViewById
    MStarBar mstarBar;

    @ViewById
    TextView mstarBarTx;

    @Extra
    String packageName;

    @Extra
    String phoneModel;

    @ViewById
    CheckBox phoneModleCB;

    @Pref
    PrefDef_ prefDef;
    com.join.mgps.rpc.f rpcClient;

    @ViewById
    LinearLayout starLl;

    @ViewById
    TextView textTopRight;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView tvTips;

    class a implements MStarBar.a {
        a() {
        }

        @Override // com.join.mgps.customview.MStarBar.a
        public void a(float mark) {
            CommentCreatActivity.this.setStarText(mark);
        }
    }

    class b extends ClickableSpan {
        b() {
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(@NonNull View view) {
            IntentDateBean intentDateBean = new IntentDateBean();
            intentDateBean.setLink_type_val("8794114");
            intentDateBean.setLink_type(8);
            IntentUtil.getInstance().intentActivity(CommentCreatActivity.this, intentDateBean);
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(@NonNull TextPaint ds) {
            ds.setUnderlineText(false);
        }
    }

    class c implements com.join.mgps.Util.g0.o0 {
        c() {
        }

        @Override // com.join.mgps.Util.g0.o0
        public void a() {
            CommentCreatActivity.this.finish();
        }
    }

    public static String getSystemModel() {
        return Build.MODEL;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setStarText(float mark) {
        int i10 = (int) mark;
        if (i10 == 1) {
            this.mstarBarTx.setText("浪费生命");
            return;
        }
        if (i10 == 2) {
            this.mstarBarTx.setText("打发时间");
            return;
        }
        if (i10 == 3) {
            this.mstarBarTx.setText("值得一玩");
            return;
        }
        if (i10 == 4) {
            this.mstarBarTx.setText("强烈推荐");
        } else if (i10 != 5) {
            this.mstarBarTx.setText("点击星星评分");
        } else {
            this.mstarBarTx.setText("必玩神作");
        }
    }

    @AfterViews
    void afterView() {
        this.rpcClient = com.join.mgps.rpc.impl.e.m();
        this.context = this;
        String str = this.commentScoreSwitch;
        if (str == null || !str.equals("1")) {
            this.starLl.setVisibility(8);
        } else {
            this.starLl.setVisibility(0);
        }
        String str2 = this.commentContent;
        if (str2 != null) {
            this.commentcreat_et.setText(str2);
        }
        this.mstarBar.setStarMark(this.commentStars);
        setStarText(this.commentStars);
        if (this.bespeakSwitch == 1) {
            this.isInstallTheGame = true;
        } else if (this.gameId != null && this.gameType != null) {
            DownloadTask downloadTaskG = q5.f.M().G(this.gameId);
            if (this.gameType.equals(Dtype.H5.name()) || this.gameType.equals(PointType.ANTI_SPAM_TOUCH) || this.gameType.equals("green")) {
                if (downloadTaskG != null || this.gameIsStart == 1) {
                    this.isInstallTheGame = true;
                } else {
                    this.isInstallTheGame = false;
                }
            } else if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
                this.isInstallTheGame = false;
            } else if (!downloadTaskG.getFileType().equals(Dtype.android.name()) || com.join.android.app.common.utils.g.t0(this.context).e(this.context, this.packageName)) {
                this.isInstallTheGame = true;
            } else {
                this.isInstallTheGame = false;
            }
        }
        this.isInstallTheGame = true;
        String systemModel = getSystemModel();
        if (systemModel == null || systemModel.isEmpty()) {
            com.join.mgps.Util.a3.b(this.context).d("手机型号获取失败！");
        } else {
            this.phoneModleCB.setText(systemModel);
        }
        if (this.isEdit) {
            String str3 = this.phoneModel;
            if (str3 == null || str3.isEmpty()) {
                this.phoneModleCB.setChecked(false);
            } else {
                this.phoneModleCB.setChecked(true);
            }
        } else {
            this.phoneModleCB.setChecked(true);
        }
        this.mstarBar.setOnStarChangeListener(new a());
        TextView textView = this.tvTips;
        if (textView != null) {
            textView.setMovementMethod(LinkMovementMethod.getInstance());
            SpannableString spannableString = new SpannableString("请按照《悟饭评价规则》发布点评");
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#3CA4FD")), 3, 11, 0);
            spannableString.setSpan(new b(), 3, 11, 0);
            this.tvTips.setText(spannableString);
            this.tvTips.setHighlightColor(0);
        }
    }

    @Click
    void back_image() {
        finish();
    }

    public CommentCreateArgs getCreateCommentRequestBean(float f10, String str, String str2) {
        String str3;
        String avatarSrc;
        String token;
        int i10;
        String strD = this.prefDef.commentToken().d();
        boolean zIsChecked = this.phoneModleCB.isChecked();
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            int uid = accountData.getUid();
            String nickname = this.accountBean.getNickname();
            i10 = uid;
            str3 = nickname;
            avatarSrc = this.accountBean.getAvatarSrc();
            token = this.accountBean.getToken();
        } else {
            str3 = "";
            avatarSrc = str3;
            token = avatarSrc;
            i10 = -1;
        }
        return RequestBeanUtil.getInstance(this.context).getCreateCommentBean(this.gameId, f10, str, strD, str2, 1, "0", str3, avatarSrc, token, i10, 1, zIsChecked ? 1 : 0);
    }

    public CommentModifyArgs getModifyCommentRequestBean(float f10, String str, String str2) {
        String token;
        int uid;
        String strD = this.prefDef.commentToken().d();
        boolean zIsChecked = this.phoneModleCB.isChecked();
        UserInfo accountData = AccountUtil_.getInstance_(this.context).getAccountData();
        this.accountBean = accountData;
        if (accountData != null) {
            uid = accountData.getUid();
            token = this.accountBean.getToken();
        } else {
            token = "";
            uid = -1;
        }
        return RequestBeanUtil.getInstance(this.context).getModifyCommentBean(strD, str2, this.gameId, uid, this.commentId, token, str, f10, zIsChecked ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getToken() {
        if (com.join.android.app.common.utils.m.j(this.context)) {
            try {
                CommentResponse<CommentTokenBean> commentResponseG = this.rpcClient.g(RequestBeanUtil.getInstance(this).getTokenRequestBean(AccountUtil_.getInstance_(this).getUid(), ""));
                if (commentResponseG == null || commentResponseG.getCode() != 0 || commentResponseG.getData_info() == null || TextUtils.isEmpty(commentResponseG.getData_info().getToken())) {
                    return;
                }
                this.prefDef.commentToken().g(AESUtils.f(commentResponseG.getData_info().getToken() + "|" + commentResponseG.getData_info().getTimes()));
                this.prefDef.lastCheckInTime().g(Long.valueOf(System.currentTimeMillis()));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        if (IntentUtil.getInstance().goLoginInteractive(this) || this.isInstallTheGame) {
            return;
        }
        com.join.mgps.Util.h0.h0(this).B(this, new c());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void postEvent(int type, double starNum, String str, String upPhoneModel) {
        org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.n(type, str, starNum, System.currentTimeMillis() / 1000, upPhoneModel));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow(String msg, boolean b10) {
        com.join.mgps.Util.a3.b(this.context).d(msg);
        if (b10) {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void resultShow2(CommentResponse bean) {
        if (bean.getCode() != 801) {
            com.join.mgps.Util.a3.b(this.context).d(bean.getMsg());
        } else {
            getToken();
            com.join.mgps.Util.a3.b(this.context).d("数据访问失败，请稍候再试！");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this.context).d(message);
    }

    @Click
    void textTopRight() {
        float starMark = this.mstarBar.getStarMark();
        String str = this.commentScoreSwitch;
        if (str == null || !str.equals("1")) {
            starMark = 0.0f;
        } else if (starMark == 0.0f) {
            com.join.mgps.Util.a3.b(this.context).d("请点击星星评分");
            return;
        }
        String strTrim = this.commentcreat_et.getText().toString().trim();
        if (strTrim.length() < 3 || strTrim.length() > 800) {
            com.join.mgps.Util.a3.b(this.context).d("请填写3~800个字");
        } else {
            toCreateComment(starMark, strTrim, this.phoneModleCB.getText().toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void toCreateComment(float starNum, String str, String upPhoneModel) {
        CommentResponse<CommentCreateBean> commentResponseF;
        if (!com.join.android.app.common.utils.m.j(this.context)) {
            resultShow("网络连接失败，再试试吧~", false);
            return;
        }
        try {
            if (this.commentId == null) {
                commentResponseF = this.rpcClient.b(getCreateCommentRequestBean(starNum, str, upPhoneModel));
            } else {
                commentResponseF = this.rpcClient.f(getModifyCommentRequestBean(starNum, str, upPhoneModel));
            }
            if (commentResponseF == null) {
                if (this.commentId == null) {
                    resultShow("点评创建失败，请稍候再试~", true);
                    return;
                } else {
                    resultShow("点评修改失败，请稍候再试~", true);
                    return;
                }
            }
            if (commentResponseF.getCode() != 0) {
                if (commentResponseF.getCode() == 801) {
                    resultShow2(commentResponseF);
                    return;
                } else {
                    resultShow(commentResponseF.getMsg(), false);
                    return;
                }
            }
            if (commentResponseF.getData_info().getInfo() != null) {
                if (!this.phoneModleCB.isChecked()) {
                    upPhoneModel = "";
                }
                String str2 = upPhoneModel;
                if (this.commentId == null) {
                    postEvent(0, starNum, str, str2);
                    resultShow("点评创建成功,内容将在审核后显示！", true);
                } else {
                    postEvent(2, starNum, str, str2);
                    resultShow("点评修改成功,内容将在审核后显示！", true);
                }
            }
        } catch (Exception e10) {
            resultShow(e10.getMessage(), false);
            e10.printStackTrace();
        }
    }
}
