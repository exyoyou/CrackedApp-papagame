package com.join.kotlin.ui.account.viewmodle;

import android.content.Context;
import android.graphics.Color;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.ui.account.modle.UnThirdPartRequest;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.k2;
import com.join.mgps.dto.MMSRequesBean;
import com.wufan.user.service.protobuf.UserInfo;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlinx.coroutines.j;
import kotlinx.coroutines.o1;
import kotlinx.coroutines.v1;
import kotlinx.coroutines.z0;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0013\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=J\u000e\u0010D\u001a\u00020;2\u0006\u0010<\u001a\u00020=R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR \u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR \u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\b\"\u0004\b\u0015\u0010\nR \u0010\u0016\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0017\u0010\b\"\u0004\b\u0018\u0010\nR \u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\b\"\u0004\b\u001c\u0010\nR \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\b\"\u0004\b\u001f\u0010\nR\u001a\u0010 \u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$R\u001a\u0010%\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b&\u0010\"\"\u0004\b'\u0010$R\u001a\u0010(\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b*\u0010+\"\u0004\b,\u0010-R\u001a\u0010.\u001a\u00020)X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u0010+\"\u0004\b0\u0010-R\u001a\u00101\u001a\u00020\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b2\u0010\r\"\u0004\b3\u0010\u000fR \u00104\u001a\b\u0012\u0004\u0012\u00020)0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b5\u0010\b\"\u0004\b6\u0010\nR \u00107\u001a\b\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b8\u0010\b\"\u0004\b9\u0010\nR\u001c\u0010>\u001a\u0004\u0018\u00010?X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b@\u0010A\"\u0004\bB\u0010C¨\u0006E"}, d2 = {"Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "moble", "Landroidx/lifecycle/MutableLiveData;", "", "getMoble", "()Landroidx/lifecycle/MutableLiveData;", "setMoble", "(Landroidx/lifecycle/MutableLiveData;)V", "mobleNumber", "getMobleNumber", "()Ljava/lang/String;", "setMobleNumber", "(Ljava/lang/String;)V", GrantCredentialsPermissionActivity.f89265g, "getAccount", "setAccount", "codeText", "getCodeText", "setCodeText", "sendCodeButnText", "getSendCodeButnText", "setSendCodeButnText", "sendCodeButnColor", "", "getSendCodeButnColor", "setSendCodeButnColor", "title", "getTitle", "setTitle", "colorNormal", "getColorNormal", "()I", "setColorNormal", "(I)V", "colorWait", "getColorWait", "setColorWait", "canSendCode", "", "getCanSendCode", "()Z", "setCanSendCode", "(Z)V", "breakCodeCountDown", "getBreakCodeCountDown", "setBreakCodeCountDown", "platform", "getPlatform", "setPlatform", "hidesoftWard", "getHidesoftWard", "setHidesoftWard", "callStatus", "getCallStatus", "setCallStatus", "sendUnbindThridPart", "", "context", "Landroid/content/Context;", "coluting", "Lkotlinx/coroutines/Job;", "getColuting", "()Lkotlinx/coroutines/Job;", "setColuting", "(Lkotlinx/coroutines/Job;)V", "sendsmsCode", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class UnbindViewModle extends ViewModel {
    private boolean breakCodeCountDown;

    @Nullable
    private v1 coluting;

    @NotNull
    private MutableLiveData<String> moble = new MutableLiveData<>();

    @NotNull
    private String mobleNumber = "";

    @NotNull
    private MutableLiveData<String> account = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> codeText = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> sendCodeButnText = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> sendCodeButnColor = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> title = new MutableLiveData<>();
    private int colorNormal = Color.parseColor("#3CA4FD");
    private int colorWait = Color.parseColor("#4C4B5F");
    private boolean canSendCode = true;

    @NotNull
    private String platform = "";

    @NotNull
    private MutableLiveData<Boolean> hidesoftWard = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> callStatus = new MutableLiveData<>();

    public UnbindViewModle() {
        this.hidesoftWard.setValue(Boolean.FALSE);
        this.title.setValue("解绑帐号");
        this.moble.setValue("");
        this.account.setValue("");
        this.codeText.setValue("");
        this.sendCodeButnText.setValue("获取验证码");
        this.sendCodeButnColor.setValue(Integer.valueOf(this.colorNormal));
        this.callStatus.setValue(0);
    }

    @NotNull
    public final MutableLiveData<String> getAccount() {
        return this.account;
    }

    public final boolean getBreakCodeCountDown() {
        return this.breakCodeCountDown;
    }

    @NotNull
    public final MutableLiveData<Integer> getCallStatus() {
        return this.callStatus;
    }

    public final boolean getCanSendCode() {
        return this.canSendCode;
    }

    @NotNull
    public final MutableLiveData<String> getCodeText() {
        return this.codeText;
    }

    public final int getColorNormal() {
        return this.colorNormal;
    }

    public final int getColorWait() {
        return this.colorWait;
    }

    @Nullable
    public final v1 getColuting() {
        return this.coluting;
    }

    @NotNull
    public final MutableLiveData<Boolean> getHidesoftWard() {
        return this.hidesoftWard;
    }

    @NotNull
    public final MutableLiveData<String> getMoble() {
        return this.moble;
    }

    @NotNull
    public final String getMobleNumber() {
        return this.mobleNumber;
    }

    @NotNull
    public final String getPlatform() {
        return this.platform;
    }

    @NotNull
    public final MutableLiveData<Integer> getSendCodeButnColor() {
        return this.sendCodeButnColor;
    }

    @NotNull
    public final MutableLiveData<String> getSendCodeButnText() {
        return this.sendCodeButnText;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v0, types: [T, com.join.kotlin.ui.account.modle.UnThirdPartRequest] */
    public final void sendUnbindThridPart(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        Ref.ObjectRef objectRef = new Ref.ObjectRef();
        String str = this.mobleNumber;
        String strValueOf = String.valueOf(this.codeText.getValue());
        int uid = accountData.getUid();
        String token = accountData.getToken();
        Intrinsics.checkNotNullExpressionValue(token, "getToken(...)");
        objectRef.element = new UnThirdPartRequest(str, strValueOf, "", uid, token, this.platform);
        this.hidesoftWard.setValue(Boolean.TRUE);
        T t10 = objectRef.element;
        ((UnThirdPartRequest) t10).setSign(k2.g(t10));
        j.f(o1.f93610b, z0.c(), null, new UnbindViewModle$sendUnbindThridPart$job$1(objectRef, context, this, null), 2, null);
    }

    public final void sendsmsCode(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (this.canSendCode) {
            this.canSendCode = false;
            MMSRequesBean mMSRequesBean = new MMSRequesBean();
            mMSRequesBean.setMobile(this.mobleNumber);
            mMSRequesBean.setType(MMSRequesBean.TYPE_BIND);
            mMSRequesBean.setSign(k2.g(mMSRequesBean));
            j.f(o1.f93610b, z0.c(), null, new UnbindViewModle$sendsmsCode$job$1(mMSRequesBean, this, context, null), 2, null);
        }
    }

    public final void setAccount(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.account = mutableLiveData;
    }

    public final void setBreakCodeCountDown(boolean z10) {
        this.breakCodeCountDown = z10;
    }

    public final void setCallStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.callStatus = mutableLiveData;
    }

    public final void setCanSendCode(boolean z10) {
        this.canSendCode = z10;
    }

    public final void setCodeText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.codeText = mutableLiveData;
    }

    public final void setColorNormal(int i10) {
        this.colorNormal = i10;
    }

    public final void setColorWait(int i10) {
        this.colorWait = i10;
    }

    public final void setColuting(@Nullable v1 v1Var) {
        this.coluting = v1Var;
    }

    public final void setHidesoftWard(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.hidesoftWard = mutableLiveData;
    }

    public final void setMoble(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.moble = mutableLiveData;
    }

    public final void setMobleNumber(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.mobleNumber = str;
    }

    public final void setPlatform(@NotNull String str) {
        Intrinsics.checkNotNullParameter(str, "<set-?>");
        this.platform = str;
    }

    public final void setSendCodeButnColor(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.sendCodeButnColor = mutableLiveData;
    }

    public final void setSendCodeButnText(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.sendCodeButnText = mutableLiveData;
    }

    public final void setTitle(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.title = mutableLiveData;
    }
}
