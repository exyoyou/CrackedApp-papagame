package com.kwad.components.core.e.e;

import android.app.DialogFragment;
import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import com.kwad.sdk.R;
import com.kwad.sdk.mvp.Presenter;
import com.kwad.sdk.widget.KSFrameLayout;
import com.kwad.sdk.wrapper.m;

/* JADX INFO: loaded from: classes2.dex */
public final class a extends KSFrameLayout {
    private final DialogFragment RJ;
    private final View RK;
    private com.kwad.components.core.e.d.a.C0852a RL;

    public a(@NonNull Context context, DialogFragment dialogFragment, com.kwad.components.core.e.d.a.C0852a c0852a) {
        super(context);
        this.RJ = dialogFragment;
        this.RL = c0852a;
        m.inflate(context, R.layout.ksad_seconed_confirm_dialog_layout, this);
        this.RK = findViewById(R.id.ksad_second_confirm_root_view);
    }

    private static Presenter bJ() {
        Presenter presenter = new Presenter();
        presenter.a(new d());
        return presenter;
    }

    private c qJ() {
        c cVar = new c();
        cVar.RJ = this.RJ;
        cVar.RL = this.RL;
        return cVar;
    }

    @Override // com.kwad.sdk.widget.KSFrameLayout
    public final void ae() {
        super.ae();
        Presenter presenterBJ = bJ();
        presenterBJ.N(this.RK);
        presenterBJ.q(qJ());
    }
}
