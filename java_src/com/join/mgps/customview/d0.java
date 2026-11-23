package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class d0 extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f66306b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f66307c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f66308d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    a f66309e;

    public interface a {
        void a();

        void b();
    }

    public d0(Context context) {
        super(context);
        init();
    }

    public a c() {
        return this.f66309e;
    }

    public void d(a onGameSettingsListener) {
        this.f66309e = onGameSettingsListener;
    }

    public void e(View parent) {
        showAtLocation(parent, 80, 0, 0);
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_settings, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f66306b = this.parentView.findViewById(R.id.settings);
        this.f66307c = this.parentView.findViewById(R.id.scan);
        this.f66308d = this.parentView.findViewById(R.id.cancel);
        this.f66306b.setOnClickListener(this);
        this.f66307c.setOnClickListener(this);
        this.f66308d.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.settings) {
            a aVar = this.f66309e;
            if (aVar != null) {
                aVar.b();
            }
            dismiss();
            return;
        }
        if (id2 != R.id.scan) {
            if (id2 == R.id.cancel) {
                dismiss();
            }
        } else {
            a aVar2 = this.f66309e;
            if (aVar2 != null) {
                aVar2.a();
            }
            dismiss();
        }
    }
}
