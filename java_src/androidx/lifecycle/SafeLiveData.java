package androidx.lifecycle;

import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0016\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u000e\u0010\t\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\nH\u0016¨\u0006\u000b"}, d2 = {"Landroidx/lifecycle/SafeLiveData;", "T", "Landroidx/lifecycle/MutableLiveData;", "<init>", "()V", "observe", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public class SafeLiveData<T> extends MutableLiveData<T> {
    @Override // androidx.lifecycle.LiveData
    public void observe(@NotNull LifecycleOwner owner, @NotNull Observer<? super T> observer) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(observer, "observer");
        super.observe(owner, new PictorialObserverWrapper(observer, getVersion() > -1));
    }
}
