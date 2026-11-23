package com.join.kotlin.module.hmcloud.menu;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.annotation.CallSuper;
import androidx.annotation.MainThread;
import androidx.fragment.app.Fragment;
import androidx.lifecycle.ViewModelProvider;
import dagger.hilt.android.flags.FragmentGetContextFix;

/* JADX INFO: loaded from: classes4.dex */
public abstract class Hilt_HMSettingsPeripheralFragment extends Fragment implements jb.c {
    private ContextWrapper componentContext;
    private volatile dagger.hilt.android.internal.managers.i componentManager;
    private final Object componentManagerLock;
    private boolean disableGetContextFix;
    private boolean injected;

    Hilt_HMSettingsPeripheralFragment() {
        this.disableGetContextFix = false;
        this.componentManagerLock = new Object();
        this.injected = false;
    }

    private void initializeComponentContext() {
        if (this.componentContext == null) {
            this.componentContext = dagger.hilt.android.internal.managers.i.b(super.getContext(), this);
            this.disableGetContextFix = FragmentGetContextFix.a(super.getContext());
        }
    }

    protected dagger.hilt.android.internal.managers.i createComponentManager() {
        return new dagger.hilt.android.internal.managers.i(this);
    }

    @Override // jb.b
    public final Object generatedComponent() {
        return componentManager().generatedComponent();
    }

    @Override // androidx.fragment.app.Fragment
    public Context getContext() {
        if (super.getContext() == null && !this.disableGetContextFix) {
            return null;
        }
        initializeComponentContext();
        return this.componentContext;
    }

    @Override // androidx.fragment.app.Fragment, androidx.lifecycle.HasDefaultViewModelProviderFactory
    public ViewModelProvider.Factory getDefaultViewModelProviderFactory() {
        return dagger.hilt.android.internal.lifecycle.a.b(this, super.getDefaultViewModelProviderFactory());
    }

    protected void inject() {
        if (this.injected) {
            return;
        }
        this.injected = true;
        ((HMSettingsPeripheralFragment_GeneratedInjector) generatedComponent()).injectHMSettingsPeripheralFragment((HMSettingsPeripheralFragment) jb.g.a(this));
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    public void onAttach(Context context) {
        super.onAttach(context);
        initializeComponentContext();
        inject();
    }

    @Override // androidx.fragment.app.Fragment
    public LayoutInflater onGetLayoutInflater(Bundle savedInstanceState) {
        LayoutInflater layoutInflaterOnGetLayoutInflater = super.onGetLayoutInflater(savedInstanceState);
        return layoutInflaterOnGetLayoutInflater.cloneInContext(dagger.hilt.android.internal.managers.i.c(layoutInflaterOnGetLayoutInflater, this));
    }

    @Override // jb.c
    public final dagger.hilt.android.internal.managers.i componentManager() {
        if (this.componentManager == null) {
            synchronized (this.componentManagerLock) {
                if (this.componentManager == null) {
                    this.componentManager = createComponentManager();
                }
            }
        }
        return this.componentManager;
    }

    @Override // androidx.fragment.app.Fragment
    @CallSuper
    @MainThread
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.componentContext;
        jb.d.d(contextWrapper == null || dagger.hilt.android.internal.managers.i.d(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        initializeComponentContext();
        inject();
    }

    Hilt_HMSettingsPeripheralFragment(int p10) {
        super(p10);
        this.disableGetContextFix = false;
        this.componentManagerLock = new Object();
        this.injected = false;
    }
}
