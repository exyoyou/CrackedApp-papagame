package com.join.kotlin.discount.viewmodel;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\b\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u001f\u0010\u0004\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u001f\u0010\n\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\tR\u001f\u0010\f\u001a\u0010\u0012\f\u0012\n \u0007*\u0004\u0018\u00010\u00060\u00060\u0005¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\t¨\u0006\u000e"}, d2 = {"Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "<init>", "()V", "title", "Landroidx/lifecycle/MutableLiveData;", "", "kotlin.jvm.PlatformType", "getTitle", "()Landroidx/lifecycle/MutableLiveData;", "content", "getContent", "btnText", "getBtnText", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class GameDetailInfoBottomDialogViewModel extends BaseViewModel {

    @NotNull
    private final MutableLiveData<String> title = new MutableLiveData<>("标题");

    @NotNull
    private final MutableLiveData<String> content = new MutableLiveData<>("");

    @NotNull
    private final MutableLiveData<String> btnText = new MutableLiveData<>("我知道了");

    @NotNull
    public final MutableLiveData<String> getBtnText() {
        return this.btnText;
    }

    @NotNull
    public final MutableLiveData<String> getContent() {
        return this.content;
    }

    @NotNull
    public final MutableLiveData<String> getTitle() {
        return this.title;
    }
}
