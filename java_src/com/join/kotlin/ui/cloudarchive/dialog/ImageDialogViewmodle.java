package com.join.kotlin.ui.cloudarchive.dialog;

import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.ViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003R \u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR \u0010\u000b\u001a\b\u0012\u0004\u0012\u00020\f0\u0005X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\b\"\u0004\b\u000e\u0010\n¨\u0006\u000f"}, d2 = {"Lcom/join/kotlin/ui/cloudarchive/dialog/ImageDialogViewmodle;", "Landroidx/lifecycle/ViewModel;", "<init>", "()V", "imagePath", "Landroidx/lifecycle/MutableLiveData;", "", "getImagePath", "()Landroidx/lifecycle/MutableLiveData;", "setImagePath", "(Landroidx/lifecycle/MutableLiveData;)V", "orientation", "", "getOrientation", "setOrientation", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class ImageDialogViewmodle extends ViewModel {

    @NotNull
    private MutableLiveData<String> imagePath = new MutableLiveData<>();

    @NotNull
    private MutableLiveData<Integer> orientation = new MutableLiveData<>();

    @NotNull
    public final MutableLiveData<String> getImagePath() {
        return this.imagePath;
    }

    @NotNull
    public final MutableLiveData<Integer> getOrientation() {
        return this.orientation;
    }

    public final void setImagePath(@NotNull MutableLiveData<String> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.imagePath = mutableLiveData;
    }

    public final void setOrientation(@NotNull MutableLiveData<Integer> mutableLiveData) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<set-?>");
        this.orientation = mutableLiveData;
    }
}
