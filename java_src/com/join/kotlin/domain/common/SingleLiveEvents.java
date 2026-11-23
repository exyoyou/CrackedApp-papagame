package com.join.kotlin.domain.common;

import androidx.annotation.MainThread;
import androidx.lifecycle.LifecycleOwner;
import androidx.lifecycle.MutableLiveData;
import androidx.lifecycle.Observer;
import com.umeng.analytics.pro.bm;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0018\u0000*\u0004\b\u0000\u0010\u00012\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002H\u00010\u00030\u0002B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J&\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\r2\u0014\u0010\u000e\u001a\u0010\u0012\f\b\u0000\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\u000fH\u0017J\u0018\u0010\u0010\u001a\u00020\u000b2\u000e\u0010\u0011\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003H\u0017R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u001a\u0010\b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u00030\tX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcom/join/kotlin/domain/common/SingleLiveEvents;", "T", "Landroidx/lifecycle/MutableLiveData;", "", "<init>", "()V", "pending", "Ljava/util/concurrent/atomic/AtomicBoolean;", "eventList", "", "observe", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "observer", "Landroidx/lifecycle/Observer;", "setValue", bm.aM, "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SingleLiveEvents<T> extends MutableLiveData<List<? extends T>> {

    @NotNull
    private final AtomicBoolean pending = new AtomicBoolean(false);

    @NotNull
    private final List<List<T>> eventList = new ArrayList();

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit observe$lambda$0(SingleLiveEvents singleLiveEvents, Observer observer, List list) {
        if (singleLiveEvents.pending.compareAndSet(true, false)) {
            singleLiveEvents.eventList.clear();
            Intrinsics.checkNotNull(list);
            observer.onChanged(list);
        }
        return Unit.INSTANCE;
    }

    @Override // androidx.lifecycle.LiveData
    @MainThread
    public void observe(@NotNull LifecycleOwner owner, @NotNull final Observer<? super List<? extends T>> observer) {
        Intrinsics.checkNotNullParameter(owner, "owner");
        Intrinsics.checkNotNullParameter(observer, "observer");
        super.observe(owner, new SingleLiveEvents$sam$androidx_lifecycle_Observer$0(new Function1() { // from class: com.join.kotlin.domain.common.b
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                return SingleLiveEvents.observe$lambda$0(this.f48611b, observer, (List) obj);
            }
        }));
    }

    @Override // androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData
    @MainThread
    public void setValue(@Nullable List<? extends T> t10) {
        this.pending.set(true);
        if (t10 != null) {
            this.eventList.add(t10);
        }
        super.setValue(CollectionsKt__IterablesKt.flatten(this.eventList));
    }
}
