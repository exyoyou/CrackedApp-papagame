package androidx.lifecycle;

import com.haima.hmcp.beans.HmInputMappingContent;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes7.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B!\u0012\u000e\u0010\u0003\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0002\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0004\b\u0006\u0010\u0007J\u0015\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00028\u0000H\u0016¢\u0006\u0002\u0010\u000bR\u0016\u0010\u0003\u001a\n\u0012\u0006\b\u0000\u0012\u00028\u00000\u0002X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Landroidx/lifecycle/PictorialObserverWrapper;", "T", "Landroidx/lifecycle/Observer;", "observer", "prevent", "", "<init>", "(Landroidx/lifecycle/Observer;Z)V", "onChanged", "", HmInputMappingContent.FIELD_VALUE, "(Ljava/lang/Object;)V", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class PictorialObserverWrapper<T> implements Observer<T> {

    @NotNull
    private final Observer<? super T> observer;
    private boolean prevent;

    public PictorialObserverWrapper(@NotNull Observer<? super T> observer, boolean z10) {
        Intrinsics.checkNotNullParameter(observer, "observer");
        this.observer = observer;
        this.prevent = z10;
    }

    @Override // androidx.lifecycle.Observer
    public void onChanged(T value) {
        if (this.prevent) {
            this.prevent = false;
        } else {
            this.observer.onChanged(value);
        }
    }

    public /* synthetic */ PictorialObserverWrapper(Observer observer, boolean z10, int i10, DefaultConstructorMarker defaultConstructorMarker) {
        this(observer, (i10 & 2) != 0 ? false : z10);
    }
}
