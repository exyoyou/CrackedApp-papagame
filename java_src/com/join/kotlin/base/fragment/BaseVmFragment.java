package com.join.kotlin.base.fragment;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Message;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.ViewModelProvider;
import com.join.kotlin.base.ext.GetViewModelExtKt;
import com.join.kotlin.base.viewmodel.BaseViewModel;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000f\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u0011\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0005\b&\u0018\u0000*\b\b\u0000\u0010\u0001*\u00020\u00022\u00020\u0003B\u0007¢\u0006\u0004\b\u0004\u0010\u0005J\b\u0010\u001a\u001a\u00020\u0007H&J&\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u0006\u0010\u001d\u001a\u00020\u001e2\b\u0010\u001f\u001a\u0004\u0018\u00010 2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0010\u0010#\u001a\u00020$2\u0006\u0010%\u001a\u00020&H\u0016J\u001a\u0010'\u001a\u00020$2\u0006\u0010(\u001a\u00020\u001c2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0016J\u0012\u0010)\u001a\u00020$2\b\u0010!\u001a\u0004\u0018\u00010\"H\u0002J\u0012\u0010*\u001a\u00020$2\b\u0010!\u001a\u0004\u0018\u00010\"H&J\b\u0010+\u001a\u00020$H&J\r\u0010,\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u0010J\b\u0010-\u001a\u00020$H&J\b\u0010.\u001a\u00020$H\u0016J\b\u0010/\u001a\u00020$H\u0002J\b\u00100\u001a\u00020$H\u0016J\b\u00101\u001a\u00020$H\u0016J\b\u00102\u001a\u00020$H\u0002J!\u00103\u001a\u00020$2\u0012\u00104\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u000205\"\u00020\u0002H\u0004¢\u0006\u0002\u00106J\b\u00107\u001a\u000208H\u0016J\u0012\u00109\u001a\u00020$2\b\b\u0002\u0010:\u001a\u000208H\u0016J\b\u0010;\u001a\u00020$H\u0016J\b\u0010<\u001a\u00020$H\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082D¢\u0006\u0002\n\u0000R\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u000e\u0010\f\u001a\u00020\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u000e\u001a\u00028\u0000X\u0086.¢\u0006\u0010\n\u0002\u0010\u0013\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001a\u0010\u0014\u001a\u00020\u0015X\u0086.¢\u0006\u000e\n\u0000\u001a\u0004\b\u0016\u0010\u0017\"\u0004\b\u0018\u0010\u0019¨\u0006="}, d2 = {"Lcom/join/kotlin/base/fragment/BaseVmFragment;", "VM", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "Landroidx/fragment/app/Fragment;", "<init>", "()V", "H_DELAY_EXP_ITEM", "", "mHandler", "Landroid/os/Handler;", "getMHandler", "()Landroid/os/Handler;", "isFirst", "", "mViewModel", "getMViewModel", "()Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "setMViewModel", "(Lcom/join/kotlin/base/viewmodel/BaseViewModel;)V", "Lcom/join/kotlin/base/viewmodel/BaseViewModel;", "mActivity", "Landroidx/appcompat/app/AppCompatActivity;", "getMActivity", "()Landroidx/appcompat/app/AppCompatActivity;", "setMActivity", "(Landroidx/appcompat/app/AppCompatActivity;)V", "layoutId", "onCreateView", "Landroid/view/View;", "inflater", "Landroid/view/LayoutInflater;", "container", "Landroid/view/ViewGroup;", "savedInstanceState", "Landroid/os/Bundle;", "onAttach", "", "context", "Landroid/content/Context;", "onViewCreated", "view", "init", "initView", "lazyLoadData", "createViewModel", "createObserver", "onResume", "onVisible", "onPageVisible", "initData", "registorDefUIChange", "addLoadingObserve", "viewModels", "", "([Lcom/join/kotlin/base/viewmodel/BaseViewModel;)V", "lazyLoadTime", "", "delayItemExplore", "delay", "onExploreItem", "onDestroy", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public abstract class BaseVmFragment<VM extends BaseViewModel> extends Fragment {
    public AppCompatActivity mActivity;
    public VM mViewModel;
    private final int H_DELAY_EXP_ITEM = 257;

    @NotNull
    private final Handler mHandler = new Handler(new Handler.Callback(this) { // from class: com.join.kotlin.base.fragment.BaseVmFragment$mHandler$1
        final /* synthetic */ BaseVmFragment<VM> this$0;

        {
            this.this$0 = this;
        }

        @Override // android.os.Handler.Callback
        public boolean handleMessage(Message msg) {
            Intrinsics.checkNotNullParameter(msg, "msg");
            if (((BaseVmFragment) this.this$0).H_DELAY_EXP_ITEM != msg.what) {
                return false;
            }
            this.this$0.onExploreItem();
            return false;
        }
    });
    private boolean isFirst = true;

    private final VM createViewModel() {
        return (VM) new ViewModelProvider(this).get(GetViewModelExtKt.getVmClazz(this));
    }

    public static /* synthetic */ void delayItemExplore$default(BaseVmFragment baseVmFragment, long j10, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: delayItemExplore");
        }
        if ((i10 & 1) != 0) {
            j10 = 300;
        }
        baseVmFragment.delayItemExplore(j10);
    }

    private final void init(Bundle savedInstanceState) {
        setMViewModel(createViewModel());
        initView(savedInstanceState);
        createObserver();
    }

    private final void onVisible() {
        if (getLifecycle().getState() == Lifecycle.State.STARTED && this.isFirst) {
            this.mHandler.postDelayed(new Runnable() { // from class: com.join.kotlin.base.fragment.a
                @Override // java.lang.Runnable
                public final void run() {
                    BaseVmFragment.onVisible$lambda$0(this.f48551b);
                }
            }, lazyLoadTime());
        } else {
            onPageVisible();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void onVisible$lambda$0(BaseVmFragment baseVmFragment) {
        baseVmFragment.lazyLoadData();
        baseVmFragment.isFirst = false;
    }

    private final void registorDefUIChange() {
    }

    protected final void addLoadingObserve(@NotNull BaseViewModel... viewModels) {
        Intrinsics.checkNotNullParameter(viewModels, "viewModels");
    }

    public abstract void createObserver();

    public void delayItemExplore(long delay) {
        this.mHandler.removeMessages(this.H_DELAY_EXP_ITEM);
        this.mHandler.sendEmptyMessageDelayed(this.H_DELAY_EXP_ITEM, delay);
    }

    @NotNull
    public final AppCompatActivity getMActivity() {
        AppCompatActivity appCompatActivity = this.mActivity;
        if (appCompatActivity != null) {
            return appCompatActivity;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mActivity");
        return null;
    }

    @NotNull
    public final Handler getMHandler() {
        return this.mHandler;
    }

    @NotNull
    public final VM getMViewModel() {
        VM vm = this.mViewModel;
        if (vm != null) {
            return vm;
        }
        Intrinsics.throwUninitializedPropertyAccessException("mViewModel");
        return null;
    }

    public void initData() {
    }

    public abstract void initView(@Nullable Bundle savedInstanceState);

    public abstract int layoutId();

    public abstract void lazyLoadData();

    public long lazyLoadTime() {
        return 300L;
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(@NotNull Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        super.onAttach(context);
        setMActivity((AppCompatActivity) context);
    }

    @Override // androidx.fragment.app.Fragment
    @Nullable
    public View onCreateView(@NotNull LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(layoutId(), container, false);
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        this.mHandler.removeCallbacksAndMessages(null);
    }

    public void onExploreItem() {
    }

    public void onPageVisible() {
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        onVisible();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@NotNull View view, @Nullable Bundle savedInstanceState) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, savedInstanceState);
        this.isFirst = true;
        setMViewModel(createViewModel());
        initView(savedInstanceState);
        createObserver();
        registorDefUIChange();
        initData();
    }

    public final void setMActivity(@NotNull AppCompatActivity appCompatActivity) {
        Intrinsics.checkNotNullParameter(appCompatActivity, "<set-?>");
        this.mActivity = appCompatActivity;
    }

    public final void setMViewModel(@NotNull VM vm) {
        Intrinsics.checkNotNullParameter(vm, "<set-?>");
        this.mViewModel = vm;
    }
}
