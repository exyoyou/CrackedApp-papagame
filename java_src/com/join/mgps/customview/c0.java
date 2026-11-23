package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class c0 extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    View f66299b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    View f66300c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    View f66301d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f66302e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    a f66303f;

    public interface a {
        void a(String id2);

        void b(String id2);
    }

    public c0(Context context) {
        super(context);
        init();
    }

    public a c() {
        return this.f66303f;
    }

    public void d(a onGameOperateListener) {
        this.f66303f = onGameOperateListener;
    }

    public void e(View parent, String plugNum) {
        f(parent, plugNum, false);
    }

    public void f(View parent, String plugNum, boolean hideReinstall) {
        this.f66302e = plugNum;
        showAtLocation(parent, 80, 0, 0);
        if (hideReinstall) {
            this.f66299b.setVisibility(8);
            this.f66301d.setVisibility(8);
        } else {
            this.f66299b.setVisibility(0);
            this.f66301d.setVisibility(0);
        }
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_plug, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f66299b = this.parentView.findViewById(R.id.detail);
        this.f66300c = this.parentView.findViewById(R.id.delete);
        this.f66301d = this.parentView.findViewById(R.id.line);
        this.f66299b.setOnClickListener(this);
        this.f66300c.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 == R.id.detail) {
            dismiss();
            a aVar = this.f66303f;
            if (aVar != null) {
                aVar.b(this.f66302e);
                return;
            }
            return;
        }
        if (id2 != R.id.delete) {
            if (id2 == R.id.cancel) {
                dismiss();
            }
        } else {
            dismiss();
            a aVar2 = this.f66303f;
            if (aVar2 != null) {
                aVar2.a(this.f66302e);
            }
        }
    }
}
