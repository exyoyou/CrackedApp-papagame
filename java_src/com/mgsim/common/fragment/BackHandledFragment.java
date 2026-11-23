package com.mgsim.common.fragment;

import android.app.DialogFragment;
import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public abstract class BackHandledFragment extends DialogFragment {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected a f75403b;

    public abstract boolean a();

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (!(getActivity() instanceof a)) {
            throw new ClassCastException("Hosting Activity must implement BackHandledInterface");
        }
        this.f75403b = (a) getActivity();
    }

    @Override // android.app.DialogFragment, android.app.Fragment
    public void onStart() {
        super.onStart();
        this.f75403b.setSelectedFragment(this);
    }
}
