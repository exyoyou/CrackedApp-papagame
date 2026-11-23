package com.join.kotlin.quark;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.RelativeLayout;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.mgsim.wufun.databinding.x4;
import com.join.kotlin.base.activity.BaseVmDbActivity;
import com.join.kotlin.base.dialog.DialogActivityManager;
import com.join.kotlin.base.dialog.callback.IDialogActivityCallback;
import com.join.kotlin.base.ext.CustomViewExtKt;
import com.join.kotlin.quark.model.bean.SourceListItemBean;
import com.join.kotlin.quark.proxy.SourceShareClickProxy;
import com.join.kotlin.quark.viewmodel.SourceShareDetailViewModel;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.d2;
import com.join.mgps.dto.ExtBean;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0012\u0010#\u001a\u00020$2\b\u0010%\u001a\u0004\u0018\u00010&H\u0016J\b\u0010'\u001a\u00020$H\u0002J\b\u0010(\u001a\u00020$H\u0014J\b\u0010)\u001a\u00020$H\u0016J\b\u0010*\u001a\u00020$H\u0016J\b\u0010+\u001a\u00020$H\u0016J\b\u0010,\u001a\u00020$H\u0016J\b\u0010-\u001a\u00020$H\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000f\u0010\u0010\"\u0004\b\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u0004\u0018\u00010\u0014X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0015\u0010\u0016\"\u0004\b\u0017\u0010\u0018R\u001a\u0010\u0019\u001a\u00020\u001aX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u001b\u0010\u001c\"\u0004\b\u001d\u0010\u001eR\u0014\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020!0 X\u0082.¢\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010\u000eX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006."}, d2 = {"Lcom/join/kotlin/quark/SourceShareDetailActivity;", "Lcom/join/kotlin/base/activity/BaseVmDbActivity;", "Lcom/join/kotlin/quark/viewmodel/SourceShareDetailViewModel;", "Lcom/join/android/app/mgsim/wufun/databinding/ActivitySourceShareDetailBinding;", "Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;", "<init>", "()V", "extBean", "Lcom/join/mgps/dto/ExtBean;", "getExtBean", "()Lcom/join/mgps/dto/ExtBean;", "setExtBean", "(Lcom/join/mgps/dto/ExtBean;)V", "qkPosition", "", "getQkPosition", "()Ljava/lang/String;", "setQkPosition", "(Ljava/lang/String;)V", "itemBean", "Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "getItemBean", "()Lcom/join/kotlin/quark/model/bean/SourceListItemBean;", "setItemBean", "(Lcom/join/kotlin/quark/model/bean/SourceListItemBean;)V", "quarkInstalled", "", "getQuarkInstalled", "()Z", "setQuarkInstalled", "(Z)V", "loadSir", "Lcom/kingja/loadsir/core/LoadService;", "", "appCaceDir", "initView", "", "savedInstanceState", "Landroid/os/Bundle;", "initWebSet", "onResume", "createObserver", "onBackClick", "onShareClick", "onSaveClick", "onSearchClick", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class SourceShareDetailActivity extends BaseVmDbActivity<SourceShareDetailViewModel, x4> implements SourceShareClickProxy {

    @Nullable
    private String appCaceDir;

    @Nullable
    private ExtBean extBean;

    @Nullable
    private SourceListItemBean itemBean;
    private com.kingja.loadsir.core.b<Object> loadSir;

    @Nullable
    private String qkPosition;
    private boolean quarkInstalled;

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean initView$lambda$1(View view, MotionEvent motionEvent) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Unit initView$lambda$4(SourceShareDetailActivity sourceShareDetailActivity) {
        com.kingja.loadsir.core.b<Object> bVar = sourceShareDetailActivity.loadSir;
        if (bVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVar = null;
        }
        CustomViewExtKt.showLoading(bVar);
        SourceListItemBean sourceListItemBean = sourceShareDetailActivity.itemBean;
        if (sourceListItemBean != null && sourceListItemBean.getDisk_url() != null) {
            sourceShareDetailActivity.getMDatabind().f47083l.loadUrl(sourceListItemBean.getDisk_url());
        }
        return Unit.INSTANCE;
    }

    private final void initWebSet() {
        getMDatabind().f47083l.getSettings().setDomStorageEnabled(true);
        getMDatabind().f47083l.getSettings().setRenderPriority(WebSettings.RenderPriority.HIGH);
        getMDatabind().f47083l.getSettings().setPluginState(WebSettings.PluginState.ON);
        getMDatabind().f47083l.getSettings().setAllowFileAccess(true);
        getMDatabind().f47083l.getSettings().setCacheMode(-1);
        this.appCaceDir = getDir("cacheH5", 0).getPath();
        getMDatabind().f47083l.getSettings().setLoadWithOverviewMode(true);
        getMDatabind().f47083l.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NARROW_COLUMNS);
        getMDatabind().f47083l.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        getMDatabind().f47083l.getSettings().setTextZoom(100);
        getMDatabind().f47083l.getSettings().setMediaPlaybackRequiresUserGesture(false);
        getMDatabind().f47083l.getSettings().setUseWideViewPort(true);
        getMDatabind().f47083l.getSettings().setSupportZoom(false);
        getMDatabind().f47083l.getSettings().setBuiltInZoomControls(false);
        getMDatabind().f47083l.getSettings().setDefaultTextEncodingName("UTF-8");
        getMDatabind().f47083l.getSettings().setJavaScriptEnabled(true);
        getMDatabind().f47083l.getSettings().setCacheMode(-1);
        try {
            if (Build.VERSION.SDK_INT > 27) {
                getMDatabind().f47083l.getSettings().setSafeBrowsingEnabled(false);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void createObserver() {
    }

    @Nullable
    public final ExtBean getExtBean() {
        return this.extBean;
    }

    @Nullable
    public final SourceListItemBean getItemBean() {
        return this.itemBean;
    }

    @Nullable
    public final String getQkPosition() {
        return this.qkPosition;
    }

    public final boolean getQuarkInstalled() {
        return this.quarkInstalled;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.base.activity.BaseVmActivity
    public void initView(@Nullable Bundle savedInstanceState) {
        Intent intent = getIntent();
        if (intent != null) {
            if (this.extBean != null) {
                com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this);
                Event event = Event.visitPCPageZone;
                Ext ext = new Ext();
                ExtBean extBean = this.extBean;
                Intrinsics.checkNotNull(extBean);
                tVarL.R1(event, ext.setFrom(extBean.getFrom()));
            }
            this.itemBean = (SourceListItemBean) intent.getSerializableExtra("itemBean");
            ((SourceShareDetailViewModel) getMViewModel()).getItemBean().setValue(this.itemBean);
            this.qkPosition = (String) intent.getSerializableExtra("qkPosition");
        }
        getMDatabind().u((SourceShareDetailViewModel) getMViewModel());
        getMDatabind().t(this);
        getMDatabind().f47083l.setOnTouchListener(new View.OnTouchListener() { // from class: com.join.kotlin.quark.p0
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return SourceShareDetailActivity.initView$lambda$1(view, motionEvent);
            }
        });
        RelativeLayout rlContent = getMDatabind().f47075d;
        Intrinsics.checkNotNullExpressionValue(rlContent, "rlContent");
        com.kingja.loadsir.core.b<Object> bVarLoadServiceInit = CustomViewExtKt.loadServiceInit(rlContent, new Function0() { // from class: com.join.kotlin.quark.q0
            @Override // kotlin.jvm.functions.Function0
            public final Object invoke() {
                return SourceShareDetailActivity.initView$lambda$4(this.f48882b);
            }
        });
        this.loadSir = bVarLoadServiceInit;
        if (bVarLoadServiceInit == null) {
            Intrinsics.throwUninitializedPropertyAccessException("loadSir");
            bVarLoadServiceInit = null;
        }
        CustomViewExtKt.showLoading(bVarLoadServiceInit);
        initWebSet();
        getMDatabind().f47083l.setLayerType(2, null);
        SourceListItemBean sourceListItemBean = this.itemBean;
        if (sourceListItemBean != null && sourceListItemBean.getDisk_url() != null) {
            getMDatabind().f47083l.loadUrl(sourceListItemBean.getDisk_url());
        }
        getMDatabind().f47083l.setWebViewClient(new WebViewClient() { // from class: com.join.kotlin.quark.SourceShareDetailActivity.initView.5
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView view, String url) {
                super.onPageFinished(view, url);
                com.kingja.loadsir.core.b bVar = SourceShareDetailActivity.this.loadSir;
                if (bVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                    bVar = null;
                }
                bVar.h();
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView view, WebResourceRequest request, WebResourceError error) {
                super.onReceivedError(view, request, error);
                com.kingja.loadsir.core.b bVar = SourceShareDetailActivity.this.loadSir;
                if (bVar == null) {
                    Intrinsics.throwUninitializedPropertyAccessException("loadSir");
                    bVar = null;
                }
                CustomViewExtKt.showError$default(bVar, null, 1, null);
            }
        });
        Ext ext2 = new Ext();
        SourceListItemBean sourceListItemBean2 = this.itemBean;
        ext2.setResourceId(String.valueOf(sourceListItemBean2 != null ? sourceListItemBean2.getId() : null));
        ext2.setQkPosition(this.qkPosition);
        com.papa.sim.statistic.t.l(this).R1(Event.clickSourceDetailPage, ext2);
    }

    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onBackClick() {
        finish();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        UtilsMy.N4(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onSaveClick() {
        Integer type;
        boolean zG = APKUtils.g(com.join.android.app.common.utils.g.t0(this), this, d2.f49544b, null, 4, null);
        this.quarkInstalled = zG;
        if (zG) {
            SourceListItemBean value = ((SourceShareDetailViewModel) getMViewModel()).getItemBean().getValue();
            if (value != null) {
                IntentUtil.getInstance().startQuarkBrowser(this, d2.q(), value.getDisk_url(), value.getTitle(), value.getIcon());
                com.papa.sim.statistic.t.l(this).R1(Event.clickSpeedDownUpQk, new Ext().setQkPosition("qk"));
            }
        } else {
            Intent intent = new Intent(this, (Class<?>) QuarkInstallActivity.class);
            intent.putExtras(DialogActivityManager.INSTANCE.get().registerCallback(QuarkInstallActivity.class, new IDialogActivityCallback() { // from class: com.join.kotlin.quark.SourceShareDetailActivity.onSaveClick.2
                @Override // com.join.kotlin.base.dialog.callback.IDialogActivityCallback
                public void onActivityDismiss(Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                }

                @Override // com.join.kotlin.base.dialog.callback.IDialogActivityCallback
                public void onActivityShow(Activity activity) {
                    Intrinsics.checkNotNullParameter(activity, "activity");
                }
            })).putExtra("itemBean", this.itemBean);
            startActivity(intent);
        }
        com.papa.sim.statistic.t tVarL = com.papa.sim.statistic.t.l(this);
        Event event = Event.clickPcDetailHomeBtn;
        Ext from = new Ext().setFrom("3");
        SourceListItemBean sourceListItemBean = this.itemBean;
        Ext gameMode = from.setGameMode((sourceListItemBean == null || (type = sourceListItemBean.getType()) == null) ? 8 : type.intValue());
        SourceListItemBean sourceListItemBean2 = this.itemBean;
        tVarL.R1(event, gameMode.setResourceId(String.valueOf(sourceListItemBean2 != null ? sourceListItemBean2.getId() : null)).setQkPosition(this.qkPosition));
    }

    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onSearchClick() {
    }

    @Override // com.join.kotlin.quark.proxy.SourceShareClickProxy
    public void onShareClick() {
    }

    public final void setExtBean(@Nullable ExtBean extBean) {
        this.extBean = extBean;
    }

    public final void setItemBean(@Nullable SourceListItemBean sourceListItemBean) {
        this.itemBean = sourceListItemBean;
    }

    public final void setQkPosition(@Nullable String str) {
        this.qkPosition = str;
    }

    public final void setQuarkInstalled(boolean z10) {
        this.quarkInstalled = z10;
    }
}
