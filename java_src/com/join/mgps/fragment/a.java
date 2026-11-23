package com.join.mgps.fragment;

import android.os.Bundle;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

/* JADX INFO: loaded from: classes3.dex */
public abstract class a extends Fragment {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected Handler f68933c = new Handler();

    protected abstract void M(View paramView);

    protected abstract View N(LayoutInflater paramLayoutInflater);

    protected abstract void initData();

    @Override // androidx.fragment.app.Fragment
    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        initData();
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
        View viewN = N(paramLayoutInflater);
        M(viewN);
        return viewN;
    }
}
