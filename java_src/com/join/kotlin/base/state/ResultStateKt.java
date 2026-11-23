package com.join.kotlin.base.state;

import androidx.lifecycle.MutableLiveData;
import com.join.kotlin.base.net.AppException;
import com.join.kotlin.base.net.ExceptionHandle;
import com.join.mgps.dto.ResponseModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0003\n\u0000\u001a0\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00040\u00032\u000e\u0010\u0005\u001a\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00020\u0006\u001a/\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00040\u00032\b\u0010\u0005\u001a\u0004\u0018\u0001H\u0002¢\u0006\u0002\u0010\u0007\u001a(\u0010\b\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\u0012\u0012\u000e\u0012\f\u0012\u0006\u0012\u0004\u0018\u0001H\u0002\u0018\u00010\u00040\u00032\u0006\u0010\t\u001a\u00020\n¨\u0006\u000b"}, d2 = {"paresResult", "", "T", "Landroidx/lifecycle/MutableLiveData;", "Lcom/join/kotlin/base/state/ResultState;", "result", "Lcom/join/mgps/dto/ResponseModel;", "(Landroidx/lifecycle/MutableLiveData;Ljava/lang/Object;)V", "paresException", "e", "", "app_wufunNormalRelease"}, k = 2, mv = {2, 1, 0}, xi = 48)
public final class ResultStateKt {
    public static final <T> void paresException(@NotNull MutableLiveData<ResultState<T>> mutableLiveData, @NotNull Throwable e10) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<this>");
        Intrinsics.checkNotNullParameter(e10, "e");
        mutableLiveData.setValue(ResultState.INSTANCE.onRequestError(ExceptionHandle.INSTANCE.handleException(e10)));
    }

    public static final <T> void paresResult(@NotNull MutableLiveData<ResultState<T>> mutableLiveData, @NotNull ResponseModel<T> result) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<this>");
        Intrinsics.checkNotNullParameter(result, "result");
        mutableLiveData.setValue(result.isSuccess() ? ResultState.INSTANCE.onRequestSuccess(result.getResponseData()) : ResultState.INSTANCE.onRequestError(new AppException(result.getResponseCode(), result.getResponseMsg(), null, null, 12, null)));
    }

    public static final <T> void paresResult(@NotNull MutableLiveData<ResultState<T>> mutableLiveData, @Nullable T t10) {
        Intrinsics.checkNotNullParameter(mutableLiveData, "<this>");
        mutableLiveData.setValue(ResultState.INSTANCE.onRequestSuccess(t10));
    }
}
