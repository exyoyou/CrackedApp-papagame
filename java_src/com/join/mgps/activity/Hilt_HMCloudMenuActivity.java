package com.join.mgps.activity;

import android.content.Context;
import android.os.Bundle;
import androidx.activity.contextaware.OnContextAvailableListener;
import androidx.annotation.CallSuper;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatActivity;
import androidx.lifecycle.ViewModelProvider;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_HMCloudMenuActivity extends AppCompatActivity implements jb.c {
    private volatile dagger.hilt.android.internal.managers.a componentManager;
    private final Object componentManagerLock;
    private boolean injected;
    private dagger.hilt.android.internal.managers.n savedStateHandleHolder;

    class a implements OnContextAvailableListener {
        a() {
        }

        @Override // androidx.activity.contextaware.OnContextAvailableListener
        public void onContextAvailable(Context context) {
            Hilt_HMCloudMenuActivity.this.inject();
        }
    }

    Hilt_HMCloudMenuActivity() {
        this.componentManagerLock = new Object();
        this.injected = false;
        _initHiltInternal();
    }

    private void _initHiltInternal() {
        addOnContextAvailableListener(new a());
    }

    private void initSavedStateHandleHolder() {
        dagger.hilt.android.internal.managers.n nVarB = componentManager().b();
        this.savedStateHandleHolder = nVarB;
        if (nVarB.c()) {
            this.savedStateHandleHolder.d(getDefaultViewModelCreationExtras());
        }
    }

    protected dagger.hilt.android.internal.managers.a createComponentManager() {
        return new dagger.hilt.android.internal.managers.a(this);
    }

    @Override // jb.b
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.activity.ComponentActivity, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.a(this, super.getDefaultViewModelProviderFactory());
    }

    protected void inject() {
        if (this.injected) {
            return;
        }
        this.injected = true;
        ((w5) generatedComponent()).e((HMCloudMenuActivity) jb.g.a(this));
    }

    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @CallSuper
    protected void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initSavedStateHandleHolder();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        dagger.hilt.android.internal.managers.n nVar = this.savedStateHandleHolder;
        if (nVar != null) {
            nVar.a();
        }
    }

    @Override // jb.c
    public final dagger.hilt.android.internal.managers.a componentManager() {
        if (this.componentManager == null) {
            synchronized (this.componentManagerLock) {
                if (this.componentManager == null) {
                    this.componentManager = createComponentManager();
                }
            }
        }
        return this.componentManager;
    }

    Hilt_HMCloudMenuActivity(int p10) {
        super(p10);
        this.componentManagerLock = new Object();
        this.injected = false;
        _initHiltInternal();
    }
}
