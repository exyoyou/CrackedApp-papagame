package com.kwad.components.core.proxy;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import com.kwad.components.core.t.s;
import com.kwad.sdk.R;
import com.kwad.sdk.api.proxy.IFragmentActivityProxy;
import com.kwad.sdk.o;

/* JADX INFO: loaded from: classes2.dex */
public abstract class i extends IFragmentActivityProxy {
    public Context mContext;
    public View mRootView;
    private final com.kwad.components.core.proxy.a.a mPageMonitor = new com.kwad.components.core.proxy.a.a(null);
    private final com.kwad.sdk.l.a.a mBackPressDelete = new com.kwad.sdk.l.a.a();

    public void addBackPressable(com.kwad.sdk.l.a.b bVar) {
        this.mBackPressDelete.addBackPressable(bVar);
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    @CallSuper
    public <T extends View> T findViewById(int i10) {
        T t10 = (T) this.mRootView.findViewById(i10);
        return t10 != null ? t10 : (T) super.findViewById(i10);
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    public Intent getIntent() {
        Intent intent = super.getIntent();
        s.c(intent);
        return intent;
    }

    protected abstract String getPageName();

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    @CallSuper
    public void onBackPressed() {
        if (this.mBackPressDelete.onBackPressed()) {
            return;
        }
        super.onBackPressed();
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    public void onCreate(@Nullable Bundle bundle) {
        try {
            if (!o.Gs().Fx()) {
                finish();
                return;
            }
            super.onCreate(bundle);
            int iOnSetActivityTheme = onSetActivityTheme();
            if (iOnSetActivityTheme > 0) {
                getActivity().setTheme(iOnSetActivityTheme);
            }
            this.mContext = com.kwad.sdk.wrapper.m.wrapContextIfNeed(getActivity());
            Intent intent = getIntent();
            long longExtra = intent != null ? intent.getLongExtra("key_start_time", 0L) : 0L;
            this.mPageMonitor.bg(getClass().getSimpleName());
            this.mPageMonitor.R(longExtra);
        } catch (Throwable th) {
            if (!o.Gs().Fu()) {
                throw th;
            }
            com.kwad.components.core.d.a.reportSdkCaughtException(th);
            finish();
        }
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    public void onDestroy() {
        try {
            super.onDestroy();
            com.kwad.components.core.t.g.destroyActivity(getActivity(), getWindow());
        } catch (Throwable th) {
            com.kwad.components.core.d.a.reportSdkCaughtException(th);
        }
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    public void onResume() {
        try {
            super.onResume();
            com.kwad.components.core.proxy.a.a aVar = this.mPageMonitor;
            getActivity();
            aVar.vK();
        } catch (Throwable th) {
            com.kwad.components.core.d.a.reportSdkCaughtException(th);
        }
    }

    protected int onSetActivityTheme() {
        return R.style.Theme_AppCompat_Light_NoActionBar;
    }

    public void removeBackPressable(com.kwad.sdk.l.a.b bVar) {
        this.mBackPressDelete.removeBackPressable(bVar);
    }

    @Override // com.kwad.sdk.api.proxy.IActivityProxy
    public void setContentView(int i10) {
        View viewInflate = com.kwad.sdk.wrapper.m.inflate(this.mContext, i10, null);
        this.mRootView = viewInflate;
        super.setContentView(viewInflate);
    }

    public void addBackPressable(com.kwad.sdk.l.a.b bVar, int i10) {
        this.mBackPressDelete.addBackPressable(bVar, i10);
    }
}
