package com.join.kotlin.ui.cloudarchive;

import android.content.Context;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.j256.ormlite.stmt.query.SimpleComparison;
import com.join.kotlin.ui.cloudarchive.data.ArchiveArgs;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import com.join.kotlin.ui.cloudarchive.data.ArchiveDownEvent;
import com.join.kotlin.ui.cloudarchive.dialog.CommentDialogListener;
import com.join.kotlin.ui.cloudarchive.dialog.DialogData;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import org.jetbrains.annotations.NotNull;
import retrofit2.Call;
import retrofit2.Callback;
import retrofit2.Response;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u0013J)\u0010\u0018\u001a\u00020\u00192!\u0010\u001b\u001a\u001d\u0012\u0013\u0012\u00110\u001d¢\u0006\f\b\u001e\u0012\b\b\u001f\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\u00190\u001cJ\u0016\u0010!\u001a\u00020\u00192\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00020%R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\b\"\u0004\b\u0011\u0010\nR\u001a\u0010\u0012\u001a\u00020\u0013X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0014\u0010\u0015\"\u0004\b\u0016\u0010\u0017¨\u0006&"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/DelArchiveDialogViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "archive", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchive", "()Landroidx/lifecycle/MutableLiveData;", "setArchive", "(Landroidx/lifecycle/MutableLiveData;)V", "dialogData", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "getDialogData", "setDialogData", "isCommitLoding", "", "setCommitLoding", "listenr", "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "getListenr", "()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "setListenr", "(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V", "setClickCommentDialogListener", "", "listener", "listenerx", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "code", "commentArchive", "context", "Landroid/content/Context;", "type", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class DelArchiveDialogViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<ArchiveData> archive = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<DialogData> dialogData = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Boolean> isCommitLoding = new MutableLiveData<>();
    public CommentDialogListener listenr;

    public DelArchiveDialogViewModle() {
        this.dialogData.setValue(new DialogData("提示", "", null, null, false, 28, null));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Object] */
    public final void commentArchive(@NotNull final Context context, @NotNull final String type) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(type, "type");
        Boolean value = this.isCommitLoding.getValue();
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(value, bool)) {
            return;
        }
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        ?? value2 = this.archive.getValue();
        Intrinsics.checkNotNull(value2);
        objectRef.element = value2;
        RequestModel requestModel = new RequestModel();
        requestModel.setDefault(context);
        ArchiveArgs archiveArgs = new ArchiveArgs();
        archiveArgs.setArchiveId(((ArchiveData) objectRef.element).getId());
        archiveArgs.setGameId(((ArchiveData) objectRef.element).getGame_id());
        this.isCommitLoding.setValue(bool);
        archiveArgs.setCommentType(type);
        archiveArgs.setUid(AccountUtil_.getInstance_(context).getAccountData().getUid());
        requestModel.setArgs(archiveArgs);
        com.join.mgps.rpc.impl.i.P0().N0().s1(requestModel.makeSign()).enqueue(new Callback<ResponseModel<?>>() { // from class: com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle.commentArchive.1
            @Override // retrofit2.Callback
            public void onFailure(Call<ResponseModel<?>> call, Throwable t10) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(t10, "t");
                DelArchiveDialogViewModle.this.isCommitLoding().setValue(Boolean.FALSE);
                a3.b(context).d("评价异常！");
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<ResponseModel<?>> call, Response<ResponseModel<?>> response) {
                Intrinsics.checkNotNullParameter(call, "call");
                Intrinsics.checkNotNullParameter(response, "response");
                DelArchiveDialogViewModle.this.isCommitLoding().setValue(Boolean.FALSE);
                ResponseModel<?> responseModelBody = response.body();
                if (!(responseModelBody != null && responseModelBody.getCode() == 200)) {
                    DelArchiveDialogViewModle.this.getListenr().onSendMessageFinish(0);
                    a3 a3VarB = a3.b(context);
                    ResponseModel<?> responseModelBody2 = response.body();
                    a3VarB.d(responseModelBody2 != null ? responseModelBody2.getMessage() : null);
                    return;
                }
                DelArchiveDialogViewModle.this.getListenr().onSendMessageFinish(1);
                if (Intrinsics.areEqual(SimpleComparison.LIKE_OPERATION, type)) {
                    objectRef.element.setIsLike(1);
                    ArchiveData archiveData = objectRef.element;
                    ArchiveData archiveData2 = archiveData;
                    ArchiveData archiveData3 = archiveData;
                    archiveData3.setLikeCount(archiveData3.getLikeCount() + 1);
                    archiveData2.setLikeCount(archiveData3.getLikeCount());
                    com.join.mgps.Util.j0.a().c(new ArchiveDownEvent(10, objectRef.element));
                    return;
                }
                if (Intrinsics.areEqual("NEGATIVE", type)) {
                    objectRef.element.setIsUnLike(1);
                    ArchiveData archiveData4 = objectRef.element;
                    ArchiveData archiveData5 = archiveData4;
                    ArchiveData archiveData6 = archiveData4;
                    archiveData6.setNegativeCount(archiveData6.getNegativeCount() + 1);
                    archiveData5.setNegativeCount(archiveData6.getNegativeCount());
                    com.join.mgps.Util.j0.a().c(new ArchiveDownEvent(10, objectRef.element));
                }
            }
        });
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getArchive() {
        return this.archive;
    }

    @NotNull
    public final MutableLiveData<DialogData> getDialogData() {
        return this.dialogData;
    }

    @NotNull
    public final CommentDialogListener getListenr() {
        CommentDialogListener commentDialogListener = this.listenr;
        if (commentDialogListener != null) {
            return commentDialogListener;
        }
        Intrinsics.throwUninitializedPropertyAccessException("listenr");
        return null;
    }

    @NotNull
    public final MutableLiveData<Boolean> isCommitLoding() {
        return this.isCommitLoding;
    }

    public final void setArchive(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archive = mutableLiveData;
    }

    public final void setClickCommentDialogListener(@NotNull CommentDialogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        setListenr(listener);
    }

    public final void setCommitLoding(@NotNull MutableLiveData<Boolean> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.isCommitLoding = mutableLiveData;
    }

    public final void setDialogData(@NotNull MutableLiveData<DialogData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.dialogData = mutableLiveData;
    }

    public final void setListenr(@NotNull CommentDialogListener commentDialogListener) {
        Intrinsics.checkNotNullParameter(commentDialogListener, "<set-?>");
        this.listenr = commentDialogListener;
    }

    public final void setClickCommentDialogListener(@NotNull final Function1<? super Integer, Unit> listenerx) {
        Intrinsics.checkNotNullParameter(listenerx, "listenerx");
        setListenr(new CommentDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.DelArchiveDialogViewModle.setClickCommentDialogListener.1
            @Override // com.join.kotlin.ui.cloudarchive.dialog.CommentDialogListener
            public void onSendMessageFinish(int code) {
                listenerx.invoke(Integer.valueOf(code));
            }
        });
    }
}
