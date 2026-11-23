package com.join.kotlin.ui.cloudarchive.dialog;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import com.join.kotlin.ui.cloudarchive.data.ArchiveData;
import java.util.List;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010!\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J\u000e\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0014J)\u0010\u0019\u001a\u00020\u001a2!\u0010\u001c\u001a\u001d\u0012\u0013\u0012\u00110\u001e¢\u0006\f\b\u001f\u0012\b\b \u0012\u0004\b\b(!\u0012\u0004\u0012\u00020\u001a0\u001dR \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR&\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00060\f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\nR \u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00100\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0011\u0010\b\"\u0004\b\u0012\u0010\nR\u001a\u0010\u0013\u001a\u00020\u0014X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018¨\u0006\""}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ChoiceArchiveDialogViewModle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "archive", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/ui/cloudarchive/data/ArchiveData;", "getArchive", "()Landroidx/lifecycle/MutableLiveData;", "setArchive", "(Landroidx/lifecycle/MutableLiveData;)V", "archiveList", "", "getArchiveList", "setArchiveList", "dialogData", "Lcom/join/kotlin/ui/cloudarchive/dialog/DialogData;", "getDialogData", "setDialogData", "listenr", "Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "getListenr", "()Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;", "setListenr", "(Lcom/join/kotlin/ui/cloudarchive/dialog/CommentDialogListener;)V", "setClickCommentDialogListener", "", "listener", "listenerx", "Lkotlin/Function1;", "", "Lkotlin/ParameterName;", "name", "code", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ChoiceArchiveDialogViewModle extends ViewModel {

    @NotNull
    private MutableLiveData<ArchiveData> archive = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<List<ArchiveData>> archiveList = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<DialogData> dialogData;
    public CommentDialogListener listenr;

    public ChoiceArchiveDialogViewModle() {
        MutableLiveData<DialogData> mutableLiveData = new MutableLiveData<>();
        this.dialogData = mutableLiveData;
        mutableLiveData.setValue(new DialogData("提示", "", null, null, false, 28, null));
    }

    @NotNull
    public final MutableLiveData<ArchiveData> getArchive() {
        return this.archive;
    }

    @NotNull
    public final MutableLiveData<List<ArchiveData>> getArchiveList() {
        return this.archiveList;
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

    public final void setArchive(@NotNull MutableLiveData<ArchiveData> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archive = mutableLiveData;
    }

    public final void setArchiveList(@NotNull MutableLiveData<List<ArchiveData>> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.archiveList = mutableLiveData;
    }

    public final void setClickCommentDialogListener(@NotNull CommentDialogListener listener) {
        Intrinsics.checkNotNullParameter(listener, "listener");
        setListenr(listener);
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
        setListenr(new CommentDialogListener() { // from class: com.join.kotlin.ui.cloudarchive.dialog.ChoiceArchiveDialogViewModle.setClickCommentDialogListener.1
            @Override // com.join.kotlin.ui.cloudarchive.dialog.CommentDialogListener
            public void onSendMessageFinish(int code) {
                listenerx.invoke(Integer.valueOf(code));
            }
        });
    }
}
