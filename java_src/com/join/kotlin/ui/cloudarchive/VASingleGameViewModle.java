package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import android.view.View;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.domain.common.LoadBindindData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.dto.ModGameDetailBean;
import com.join.mgps.dto.RequestModGameArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.wufan.user.service.protobuf.UserInfo;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001:\u000223B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010)\u001a\u00020*2\u0006\u0010+\u001a\u00020\u0006J\u000e\u0010,\u001a\u00020*2\u0006\u0010-\u001a\u00020.J\u000e\u0010/\u001a\u00020*2\u0006\u00100\u001a\u000201R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\b\"\u0004\b\r\u0010\nR \u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0010\u0010\b\"\u0004\b\u0011\u0010\nR \u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\b\"\u0004\b\u0015\u0010\nR\u001a\u0010\u0016\u001a\u00020\u0017X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u001c\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001e\u0010\u001f\"\u0004\b \u0010!R\u001a\u0010\"\u001a\u00020#X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'R\u000e\u0010(\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000¨\u00064"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "backGroundURl", "Landroidx/lifecycle/MutableLiveData;", "", "getBackGroundURl", "()Landroidx/lifecycle/MutableLiveData;", "setBackGroundURl", "(Landroidx/lifecycle/MutableLiveData;)V", "gameName", "getGameName", "setGameName", "showStatus", "", "getShowStatus", "setShowStatus", "loadBindData", "Lcom/join/kotlin/domain/common/LoadBindindData;", "getLoadBindData", "setLoadBindData", "listener", "Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;", "getListener", "()Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;", "setListener", "(Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;)V", "modGameDetailBean", "Lcom/join/mgps/dto/ModGameDetailBean;", "getModGameDetailBean", "()Lcom/join/mgps/dto/ModGameDetailBean;", "setModGameDetailBean", "(Lcom/join/mgps/dto/ModGameDetailBean;)V", "downloadTask", "Lcom/github/snowdream/android/app/downloader/DownloadTask;", "getDownloadTask", "()Lcom/github/snowdream/android/app/downloader/DownloadTask;", "setDownloadTask", "(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V", "statusBind", "initDatas", "", "gameId", "loadDatas", "context", "Landroid/content/Context;", "onClickView", "view", "Landroid/view/View;", "ShowStatus", "Listener", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class VASingleGameViewModle extends ViewModel {
    public DownloadTask downloadTask;
    public Listener listener;

    @Nullable
    private ModGameDetailBean modGameDetailBean;

    @NotNull
    private MutableLiveData<String> backGroundURl = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<String> gameName = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> showStatus = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<LoadBindindData> loadBindData = new MutableLiveData<>();

    @NotNull
    private LoadBindindData statusBind = new LoadBindindData(1);

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0004"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$Listener;", "", "onCLickBack", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public interface Listener {
        void onCLickBack();
    }

    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004B\u0007¢\u0006\u0004\b\u0002\u0010\u0003¨\u0006\u0005"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/VASingleGameViewModle$ShowStatus;", "", "<init>", "()V", "Companion", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class ShowStatus {
        public static final int SHOWFAILED = 3;
        public static final int SHOWLODING = 2;
        public static final int SHOWMAIN = 1;
        public static final int SHOWNULL = 4;
    }

    public VASingleGameViewModle() {
        this.backGroundURl.setValue("");
        this.gameName.setValue("");
        this.loadBindData.setValue(this.statusBind);
    }

    @NotNull
    public final MutableLiveData<String> getBackGroundURl() {
        return this.backGroundURl;
    }

    @NotNull
    public final DownloadTask getDownloadTask() {
        DownloadTask downloadTask = this.downloadTask;
        if (downloadTask != null) {
            return downloadTask;
        }
        Intrinsics.throwUninitializedPropertyAccessException("downloadTask");
        return null;
    }

    @NotNull
    public final MutableLiveData<String> getGameName() {
        return this.gameName;
    }

    @NotNull
    public final Listener getListener() {
        Listener listener = this.listener;
        if (listener != null) {
            return listener;
        }
        Intrinsics.throwUninitializedPropertyAccessException("listener");
        return null;
    }

    @NotNull
    public final MutableLiveData<LoadBindindData> getLoadBindData() {
        return this.loadBindData;
    }

    @Nullable
    public final ModGameDetailBean getModGameDetailBean() {
        return this.modGameDetailBean;
    }

    @NotNull
    public final MutableLiveData<Integer> getShowStatus() {
        return this.showStatus;
    }

    public final void initDatas(@NotNull String gameId) {
        Intrinsics.checkNotNullParameter(gameId, "gameId");
        setDownloadTask(q5.f.M().G(gameId));
        this.gameName.setValue(getDownloadTask().getShowName());
    }

    public final void loadDatas(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        if (!com.join.android.app.common.utils.m.j(context)) {
            this.showStatus.setValue(3);
            LoadBindindData value = this.loadBindData.getValue();
            Intrinsics.checkNotNull(value);
            Integer value2 = this.showStatus.getValue();
            Intrinsics.checkNotNull(value2);
            value.setShowStatus(value2.intValue());
            return;
        }
        try {
            UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
            if (accountData == null) {
                accountData = UserInfo.getDefaultInstance();
            }
            this.showStatus.setValue(2);
            LoadBindindData value3 = this.loadBindData.getValue();
            Intrinsics.checkNotNull(value3);
            Integer value4 = this.showStatus.getValue();
            Intrinsics.checkNotNull(value4);
            value3.setShowStatus(value4.intValue());
            RequestModel<RequestModGameArgs> requestModel = new RequestModel<>();
            RequestModGameArgs requestModGameArgs = new RequestModGameArgs();
            requestModGameArgs.setUid(accountData.getUid());
            requestModGameArgs.setUserToken(accountData.getToken());
            requestModGameArgs.setGameId(getDownloadTask().getCrc_link_type_val());
            requestModel.setArgs(requestModGameArgs);
            requestModel.setDefault(context);
            com.join.mgps.rpc.impl.i.P0().N0().k0(requestModel).enqueue(new Callback<ResponseModel<ModGameDetailBean>>() { // from class: com.join.kotlin.ui.cloudarchive.VASingleGameViewModle.loadDatas.1
                @Override // retrofit2.Callback
                public void onFailure(Call<ResponseModel<ModGameDetailBean>> call, Throwable t10) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(t10, "t");
                    VASingleGameViewModle.this.getShowStatus().setValue(3);
                    LoadBindindData value5 = VASingleGameViewModle.this.getLoadBindData().getValue();
                    Intrinsics.checkNotNull(value5);
                    Integer value6 = VASingleGameViewModle.this.getShowStatus().getValue();
                    Intrinsics.checkNotNull(value6);
                    value5.setShowStatus(value6.intValue());
                }

                @Override // retrofit2.Callback
                public void onResponse(Call<ResponseModel<ModGameDetailBean>> call, Response<ResponseModel<ModGameDetailBean>> response) {
                    Intrinsics.checkNotNullParameter(call, "call");
                    Intrinsics.checkNotNullParameter(response, "response");
                }
            });
        } catch (Exception e10) {
            e10.printStackTrace();
            this.showStatus.setValue(3);
            LoadBindindData value5 = this.loadBindData.getValue();
            Intrinsics.checkNotNull(value5);
            Integer value6 = this.showStatus.getValue();
            Intrinsics.checkNotNull(value6);
            value5.setShowStatus(value6.intValue());
        }
    }

    public final void onClickView(@NotNull View view) {
        Intrinsics.checkNotNullParameter(view, "view");
        int id2 = view.getId();
        if (id2 == R.id.cl_mod) {
            if (getDownloadTask() != null) {
                UtilsMy.K4(view.getContext(), getDownloadTask());
            }
        } else {
            if (id2 != R.id.iv_back) {
                return;
            }
            Listener listener = getListener();
            Intrinsics.checkNotNull(listener);
            listener.onCLickBack();
        }
    }

    public final void setBackGroundURl(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.backGroundURl = mutableLiveData;
    }

    public final void setDownloadTask(@NotNull DownloadTask downloadTask) {
        Intrinsics.checkNotNullParameter(downloadTask, "<set-?>");
        this.downloadTask = downloadTask;
    }

    public final void setGameName(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.gameName = mutableLiveData;
    }

    public final void setListener(@NotNull Listener listener) {
        Intrinsics.checkNotNullParameter(listener, "<set-?>");
        this.listener = listener;
    }

    public final void setLoadBindData(@NotNull MutableLiveData<LoadBindindData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.loadBindData = mutableLiveData;
    }

    public final void setModGameDetailBean(@Nullable ModGameDetailBean modGameDetailBean) {
        this.modGameDetailBean = modGameDetailBean;
    }

    public final void setShowStatus(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.showStatus = mutableLiveData;
    }
}
