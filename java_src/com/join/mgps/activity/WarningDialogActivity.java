package com.join.mgps.activity;

import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.core.app.NotificationCompat;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.base.dialog.BaseDialogActivity;
import com.join.mgps.dto.GameStartArgs;
import com.join.mgps.dto.GameStartType;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.widget.htmltext.HtmlTextView;
import io.netty.util.internal.StringUtil;
import java.io.Serializable;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u0000 L2\u00020\u00012\u00020\u0002:\u0002LMB\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0012\u0010C\u001a\u00020D2\b\u0010E\u001a\u0004\u0018\u00010FH\u0014J\b\u0010G\u001a\u00020!H\u0016J\u0012\u0010H\u001a\u00020D2\b\u0010I\u001a\u0004\u0018\u00010!H\u0016J\u000e\u0010J\u001a\u00020D2\u0006\u0010K\u001a\u000206R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\b\"\u0004\b\u0013\u0010\nR\u001a\u0010\u0014\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\b\"\u0004\b\u0016\u0010\nR\u001a\u0010\u0017\u001a\u00020\u0006X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\b\"\u0004\b\u0019\u0010\nR\u001a\u0010\u001a\u001a\u00020\u001bX\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u001c\u0010\u001d\"\u0004\b\u001e\u0010\u001fR\u001a\u0010 \u001a\u00020!X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010&\u001a\u00020!X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b'\u0010#\"\u0004\b(\u0010%R\u001a\u0010)\u001a\u00020!X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010#\"\u0004\b+\u0010%R\u001a\u0010,\u001a\u00020!X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b-\u0010#\"\u0004\b.\u0010%R\u001c\u0010/\u001a\u0004\u0018\u000100X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b1\u00102\"\u0004\b3\u00104R\u0010\u00105\u001a\u0004\u0018\u000106X\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u00107\u001a\u0004\u0018\u000108X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b9\u0010:\"\u0004\b;\u0010<R\u001c\u0010=\u001a\u0004\u0018\u00010>X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b?\u0010@\"\u0004\bA\u0010B¨\u0006N"}, d2 = {"Lcom/join/mgps/activity/WarningDialogActivity;", "Lcom/join/mgps/base/dialog/BaseDialogActivity;", "Landroid/view/View$OnClickListener;", "<init>", "()V", "tvTitle", "Landroid/widget/TextView;", "getTvTitle", "()Landroid/widget/TextView;", "setTvTitle", "(Landroid/widget/TextView;)V", "tvContent", "Lcom/papa91/arc/widget/htmltext/HtmlTextView;", "getTvContent", "()Lcom/papa91/arc/widget/htmltext/HtmlTextView;", "setTvContent", "(Lcom/papa91/arc/widget/htmltext/HtmlTextView;)V", "tvConfirm", "getTvConfirm", "setTvConfirm", "tvPositive", "getTvPositive", "setTvPositive", "tvNegative", "getTvNegative", "setTvNegative", "cbIgnore", "Landroid/widget/CheckBox;", "getCbIgnore", "()Landroid/widget/CheckBox;", "setCbIgnore", "(Landroid/widget/CheckBox;)V", "ll_buttons", "Landroid/view/View;", "getLl_buttons", "()Landroid/view/View;", "setLl_buttons", "(Landroid/view/View;)V", "card", "getCard", "setCard", "ll_cloud_launch", "getLl_cloud_launch", "setLl_cloud_launch", "iv_close", "getIv_close", "setIv_close", com.alipay.sdk.authjs.a.f7127l, "Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;", "getParam", "()Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;", "setParam", "(Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;)V", "gameStartArgs", "Lcom/join/mgps/dto/GameStartArgs;", "warningDialogCallback", "Lcom/join/mgps/callbacks/WarningDialogCallback;", "getWarningDialogCallback", "()Lcom/join/mgps/callbacks/WarningDialogCallback;", "setWarningDialogCallback", "(Lcom/join/mgps/callbacks/WarningDialogCallback;)V", "prefDef_", "Lcom/join/mgps/pref/PrefDef_;", "getPrefDef_", "()Lcom/join/mgps/pref/PrefDef_;", "setPrefDef_", "(Lcom/join/mgps/pref/PrefDef_;)V", "onCreate", "", "savedInstanceState", "Landroid/os/Bundle;", "getContentView", "onClick", "v", "startGame", QuarkPromptActivity_.ARGS_EXTRA, "Companion", "WarningDialogParam", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nWarningDialogActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WarningDialogActivity.kt\ncom/join/mgps/activity/WarningDialogActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,219:1\n1#2:220\n*E\n"})
public final class WarningDialogActivity extends BaseDialogActivity implements View.OnClickListener {

    @NotNull
    public static final String KEY_PARAM = "_param";
    public View card;
    public CheckBox cbIgnore;

    @Nullable
    private GameStartArgs gameStartArgs;
    public View iv_close;
    public View ll_buttons;
    public View ll_cloud_launch;

    @Nullable
    private WarningDialogParam param;

    @Nullable
    private PrefDef_ prefDef_;
    public TextView tvConfirm;
    public HtmlTextView tvContent;
    public TextView tvNegative;
    public TextView tvPositive;
    public TextView tvTitle;

    @Nullable
    private com.join.mgps.callbacks.x warningDialogCallback;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0011\n\u0002\u0010\b\n\u0002\b\u000e\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u001a\u0010\n\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\u0007\"\u0004\b\f\u0010\tR\u001a\u0010\r\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000e\u0010\u0007\"\u0004\b\u000f\u0010\tR\u001a\u0010\u0010\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\u0007\"\u0004\b\u0012\u0010\tR\u001a\u0010\u0013\u001a\u00020\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0007\"\u0004\b\u0015\u0010\tR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001d\u0010\u0007\"\u0004\b\u001e\u0010\tR\u001c\u0010\u001f\u001a\u0004\u0018\u00010\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b \u0010\u0007\"\u0004\b!\u0010\tR\u001a\u0010\"\u001a\u00020\u0017X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b#\u0010\u0019\"\u0004\b$\u0010\u001b¨\u0006%"}, d2 = {"Lcom/join/mgps/activity/WarningDialogActivity$WarningDialogParam;", "Ljava/io/Serializable;", "<init>", "()V", "title", "", "getTitle", "()Ljava/lang/String;", "setTitle", "(Ljava/lang/String;)V", "content", "getContent", "setContent", "confirm", "getConfirm", "setConfirm", "positive", "getPositive", "setPositive", "negative", "getNegative", "setNegative", "type", "", "getType", "()I", "setType", "(I)V", "gameId", "getGameId", "setGameId", QuarkPromptActivity_.ARGS_EXTRA, "getArgs", "setArgs", NotificationCompat.CATEGORY_EVENT, "getEvent", "setEvent", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class WarningDialogParam implements Serializable {
        private int event;
        private int type;

        @NotNull
        private String title = "";

        @NotNull
        private String content = "";

        @NotNull
        private String confirm = "知道了";

        @NotNull
        private String positive = "";

        @NotNull
        private String negative = "取消";

        @Nullable
        private String gameId = "";

        @Nullable
        private String args = "";

        @Nullable
        public final String getArgs() {
            return this.args;
        }

        @NotNull
        public final String getConfirm() {
            return this.confirm;
        }

        @NotNull
        public final String getContent() {
            return this.content;
        }

        public final int getEvent() {
            return this.event;
        }

        @Nullable
        public final String getGameId() {
            return this.gameId;
        }

        @NotNull
        public final String getNegative() {
            return this.negative;
        }

        @NotNull
        public final String getPositive() {
            return this.positive;
        }

        @NotNull
        public final String getTitle() {
            return this.title;
        }

        public final int getType() {
            return this.type;
        }

        public final void setArgs(@Nullable String str) {
            this.args = str;
        }

        public final void setConfirm(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.confirm = str;
        }

        public final void setContent(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.content = str;
        }

        public final void setEvent(int i10) {
            this.event = i10;
        }

        public final void setGameId(@Nullable String str) {
            this.gameId = str;
        }

        public final void setNegative(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.negative = str;
        }

        public final void setPositive(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.positive = str;
        }

        public final void setTitle(@NotNull String str) {
            Intrinsics.checkNotNullParameter(str, "<set-?>");
            this.title = str;
        }

        public final void setType(int i10) {
            this.type = i10;
        }
    }

    public /* synthetic */ class b {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[GameStartType.values().length];
            try {
                iArr[GameStartType.onlyStartGame.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[GameStartType.onlyStartGameSilent.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[GameStartType.startGameRecorder.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[GameStartType.startVmGame.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[GameStartType.openThirdApp.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onCreate$lambda$4(WarningDialogActivity warningDialogActivity, CompoundButton compoundButton, boolean z10) {
        String gameId;
        String strReplace$default;
        org.androidannotations.api.sharedpreferences.p pVarLaunchGameUnsupportedTipIds;
        org.androidannotations.api.sharedpreferences.p pVarLaunchGameUnsupportedTipIds2;
        org.androidannotations.api.sharedpreferences.p pVarLaunchGameUnsupportedTipIds3;
        WarningDialogParam warningDialogParam = warningDialogActivity.param;
        if (warningDialogParam == null || (gameId = warningDialogParam.getGameId()) == null) {
            return;
        }
        PrefDef_ prefDef_ = warningDialogActivity.prefDef_;
        String strE = (prefDef_ == null || (pVarLaunchGameUnsupportedTipIds3 = prefDef_.launchGameUnsupportedTipIds()) == null) ? null : pVarLaunchGameUnsupportedTipIds3.e("");
        if (z10) {
            if (gameId.length() > 0) {
                String str = strE + StringUtil.COMMA + warningDialogParam.getGameId();
                PrefDef_ prefDef_2 = warningDialogActivity.prefDef_;
                if (prefDef_2 == null || (pVarLaunchGameUnsupportedTipIds2 = prefDef_2.launchGameUnsupportedTipIds()) == null) {
                    return;
                }
                pVarLaunchGameUnsupportedTipIds2.g(str);
                return;
            }
            return;
        }
        if (strE != null && StringsKt__StringsKt.contains$default((CharSequence) strE, (CharSequence) gameId, false, 2, (Object) null)) {
            if (StringsKt__StringsKt.contains$default((CharSequence) strE, (CharSequence) (StringUtil.COMMA + warningDialogParam.getGameId()), false, 2, (Object) null)) {
                strReplace$default = StringsKt__StringsJVMKt.replace$default(strE, StringUtil.COMMA + warningDialogParam.getGameId(), "", false, 4, (Object) null);
            } else {
                strReplace$default = StringsKt__StringsJVMKt.replace$default(strE, gameId, "", false, 4, (Object) null);
            }
            PrefDef_ prefDef_3 = warningDialogActivity.prefDef_;
            if (prefDef_3 == null || (pVarLaunchGameUnsupportedTipIds = prefDef_3.launchGameUnsupportedTipIds()) == null) {
                return;
            }
            pVarLaunchGameUnsupportedTipIds.g(strReplace$default);
        }
    }

    @NotNull
    public final View getCard() {
        View view = this.card;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("card");
        return null;
    }

    @NotNull
    public final CheckBox getCbIgnore() {
        CheckBox checkBox = this.cbIgnore;
        if (checkBox != null) {
            return checkBox;
        }
        Intrinsics.throwUninitializedPropertyAccessException("cbIgnore");
        return null;
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity
    @NotNull
    public View getContentView() {
        return getCard();
    }

    @NotNull
    public final View getIv_close() {
        View view = this.iv_close;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("iv_close");
        return null;
    }

    @NotNull
    public final View getLl_buttons() {
        View view = this.ll_buttons;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ll_buttons");
        return null;
    }

    @NotNull
    public final View getLl_cloud_launch() {
        View view = this.ll_cloud_launch;
        if (view != null) {
            return view;
        }
        Intrinsics.throwUninitializedPropertyAccessException("ll_cloud_launch");
        return null;
    }

    @Nullable
    public final WarningDialogParam getParam() {
        return this.param;
    }

    @Nullable
    public final PrefDef_ getPrefDef_() {
        return this.prefDef_;
    }

    @NotNull
    public final TextView getTvConfirm() {
        TextView textView = this.tvConfirm;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvConfirm");
        return null;
    }

    @NotNull
    public final HtmlTextView getTvContent() {
        HtmlTextView htmlTextView = this.tvContent;
        if (htmlTextView != null) {
            return htmlTextView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvContent");
        return null;
    }

    @NotNull
    public final TextView getTvNegative() {
        TextView textView = this.tvNegative;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvNegative");
        return null;
    }

    @NotNull
    public final TextView getTvPositive() {
        TextView textView = this.tvPositive;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvPositive");
        return null;
    }

    @NotNull
    public final TextView getTvTitle() {
        TextView textView = this.tvTitle;
        if (textView != null) {
            return textView;
        }
        Intrinsics.throwUninitializedPropertyAccessException("tvTitle");
        return null;
    }

    @Nullable
    public final com.join.mgps.callbacks.x getWarningDialogCallback() {
        return this.warningDialogCallback;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@Nullable View v10) {
        com.join.mgps.callbacks.x xVar;
        if (v10 == null) {
        }
        switch (v10.getId()) {
            case R.id.iv_close /* 2131364386 */:
            case R.id.tvConfirm /* 2131368040 */:
                finish();
                break;
            case R.id.ll_cloud_launch /* 2131365602 */:
                com.join.mgps.callbacks.x xVar2 = this.warningDialogCallback;
                if (xVar2 != null && xVar2 != null) {
                    xVar2.d(this);
                    break;
                }
                break;
            case R.id.tvNegative /* 2131368107 */:
                com.join.mgps.callbacks.x xVar3 = this.warningDialogCallback;
                if (xVar3 == null) {
                    finish();
                } else if (xVar3 != null) {
                    xVar3.b(this);
                }
                break;
            case R.id.tvPositive /* 2131368125 */:
                WarningDialogParam warningDialogParam = this.param;
                int event = warningDialogParam != null ? warningDialogParam.getEvent() : 0;
                if (event == 0) {
                    com.join.mgps.callbacks.x xVar4 = this.warningDialogCallback;
                    if (xVar4 != null) {
                        xVar4.a(this);
                    }
                } else if (event == 1) {
                    GameStartArgs gameStartArgs = this.gameStartArgs;
                    if (gameStartArgs != null) {
                        gameStartArgs.setSkipAbiCheck(true);
                        startGame(gameStartArgs);
                    }
                    finish();
                } else if (event == 3 && (xVar = this.warningDialogCallback) != null) {
                    xVar.a(this);
                }
                break;
        }
    }

    @Override // com.join.mgps.base.dialog.BaseDialogActivity, com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        String title;
        String content;
        String args;
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_warning_dialog);
        com.join.mgps.Util.p2.v(this);
        IDialogActivityCallback iDialogActivityCallback = this.callback;
        if (iDialogActivityCallback instanceof com.join.mgps.callbacks.x) {
            Intrinsics.checkNotNull(iDialogActivityCallback, "null cannot be cast to non-null type com.join.mgps.callbacks.WarningDialogCallback");
            this.warningDialogCallback = (com.join.mgps.callbacks.x) iDialogActivityCallback;
        }
        this.prefDef_ = new PrefDef_(this);
        setCard(findViewById(R.id.card));
        setTvTitle((TextView) findViewById(R.id.tvTitle));
        setTvContent((HtmlTextView) findViewById(R.id.tvContent));
        setTvConfirm((TextView) findViewById(R.id.tvConfirm));
        setTvPositive((TextView) findViewById(R.id.tvPositive));
        setTvNegative((TextView) findViewById(R.id.tvNegative));
        setLl_buttons(findViewById(R.id.ll_buttons));
        setCbIgnore((CheckBox) findViewById(R.id.cb_ignore));
        setLl_cloud_launch(findViewById(R.id.ll_cloud_launch));
        setIv_close(findViewById(R.id.iv_close));
        getTvConfirm().setOnClickListener(this);
        getTvPositive().setOnClickListener(this);
        getTvNegative().setOnClickListener(this);
        getLl_cloud_launch().setOnClickListener(this);
        getIv_close().setOnClickListener(this);
        WarningDialogParam warningDialogParam = (WarningDialogParam) getIntent().getSerializableExtra(KEY_PARAM);
        this.param = warningDialogParam;
        if (warningDialogParam == null) {
            return;
        }
        boolean z10 = true;
        if (warningDialogParam != null && (args = warningDialogParam.getArgs()) != null) {
            if (!(args.length() == 0)) {
                this.gameStartArgs = (GameStartArgs) JsonMapper.getInstance().fromJson(args, GameStartArgs.class);
            }
        }
        WarningDialogParam warningDialogParam2 = this.param;
        if (warningDialogParam2 != null) {
            if (warningDialogParam2 != null && warningDialogParam2.getType() == 1) {
                getLl_buttons().setVisibility(8);
                getTvConfirm().setVisibility(0);
            } else if (warningDialogParam2.getType() == 2) {
                getLl_buttons().setVisibility(0);
                getTvConfirm().setVisibility(8);
                getTvNegative().setVisibility(0);
                getLl_cloud_launch().setVisibility(0);
                getTvPositive().setVisibility(8);
            } else if (warningDialogParam2.getType() == 3) {
                getLl_buttons().setVisibility(0);
                getTvConfirm().setVisibility(8);
                getTvNegative().setVisibility(8);
                getLl_cloud_launch().setVisibility(0);
                getTvPositive().setVisibility(0);
            } else {
                getLl_buttons().setVisibility(0);
                getTvConfirm().setVisibility(8);
            }
        }
        WarningDialogParam warningDialogParam3 = this.param;
        if (warningDialogParam3 != null && warningDialogParam3.getEvent() == 2) {
            getCbIgnore().setVisibility(0);
        } else {
            getCbIgnore().setVisibility(8);
        }
        TextView tvTitle = getTvTitle();
        WarningDialogParam warningDialogParam4 = this.param;
        String str = "";
        if (warningDialogParam4 == null || (title = warningDialogParam4.getTitle()) == null) {
            title = "";
        }
        tvTitle.setText(title);
        HtmlTextView tvContent = getTvContent();
        WarningDialogParam warningDialogParam5 = this.param;
        if (warningDialogParam5 != null && (content = warningDialogParam5.getContent()) != null) {
            str = content;
        }
        tvContent.setHtml(str);
        WarningDialogParam warningDialogParam6 = this.param;
        String confirm = warningDialogParam6 != null ? warningDialogParam6.getConfirm() : null;
        if (!(confirm == null || confirm.length() == 0)) {
            TextView tvConfirm = getTvConfirm();
            WarningDialogParam warningDialogParam7 = this.param;
            tvConfirm.setText(warningDialogParam7 != null ? warningDialogParam7.getConfirm() : null);
        }
        WarningDialogParam warningDialogParam8 = this.param;
        String positive = warningDialogParam8 != null ? warningDialogParam8.getPositive() : null;
        if (!(positive == null || positive.length() == 0)) {
            TextView tvPositive = getTvPositive();
            WarningDialogParam warningDialogParam9 = this.param;
            tvPositive.setText(warningDialogParam9 != null ? warningDialogParam9.getPositive() : null);
        }
        WarningDialogParam warningDialogParam10 = this.param;
        String negative = warningDialogParam10 != null ? warningDialogParam10.getNegative() : null;
        if (negative != null && negative.length() != 0) {
            z10 = false;
        }
        if (!z10) {
            TextView tvNegative = getTvNegative();
            WarningDialogParam warningDialogParam11 = this.param;
            tvNegative.setText(warningDialogParam11 != null ? warningDialogParam11.getNegative() : null);
        }
        getCbIgnore().setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.join.mgps.activity.ba
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z11) {
                WarningDialogActivity.onCreate$lambda$4(this.f56872a, compoundButton, z11);
            }
        });
    }

    public final void setCard(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.card = view;
    }

    public final void setCbIgnore(@NotNull CheckBox checkBox) {
        Intrinsics.checkNotNullParameter(checkBox, "<set-?>");
        this.cbIgnore = checkBox;
    }

    public final void setIv_close(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.iv_close = view;
    }

    public final void setLl_buttons(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.ll_buttons = view;
    }

    public final void setLl_cloud_launch(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "<set-?>");
        this.ll_cloud_launch = view;
    }

    public final void setParam(@Nullable WarningDialogParam warningDialogParam) {
        this.param = warningDialogParam;
    }

    public final void setPrefDef_(@Nullable PrefDef_ prefDef_) {
        this.prefDef_ = prefDef_;
    }

    public final void setTvConfirm(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvConfirm = textView;
    }

    public final void setTvContent(@NotNull HtmlTextView htmlTextView) {
        Intrinsics.checkNotNullParameter(htmlTextView, "<set-?>");
        this.tvContent = htmlTextView;
    }

    public final void setTvNegative(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvNegative = textView;
    }

    public final void setTvPositive(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvPositive = textView;
    }

    public final void setTvTitle(@NotNull TextView textView) {
        Intrinsics.checkNotNullParameter(textView, "<set-?>");
        this.tvTitle = textView;
    }

    public final void setWarningDialogCallback(@Nullable com.join.mgps.callbacks.x xVar) {
        this.warningDialogCallback = xVar;
    }

    public final void startGame(@NotNull GameStartArgs args) {
        String packageName;
        Intrinsics.checkNotNullParameter(args, "args");
        GameStartType methodType = args.getMethodType();
        int i10 = methodType == null ? -1 : b.$EnumSwitchMapping$0[methodType.ordinal()];
        if (i10 != -1) {
            if (i10 == 1) {
                UtilsMy.k(this, args);
                return;
            }
            if (i10 == 2) {
                UtilsMy.n(this, args);
                return;
            }
            if (i10 == 3) {
                UtilsMy.u4(this, args);
                return;
            }
            if (i10 == 4) {
                UtilsMy.I4(this, args.getDownloadTask());
                return;
            }
            if (i10 != 5) {
                throw new NoWhenBranchMatchedException();
            }
            APKUtils.b bVar = APKUtils.f34739a;
            DownloadTask downloadTask = args.getDownloadTask();
            if (downloadTask == null || (packageName = downloadTask.getPackageName()) == null) {
                packageName = "";
            }
            bVar.V(this, packageName);
        }
    }
}
