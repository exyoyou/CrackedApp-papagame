package com.join.mgps.customview;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class x extends v implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    TextView f67174b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67175c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    TextView f67176d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f67177e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    a f67178f;

    public interface a {
        void a(String id2);
    }

    public x(Context context) {
        super(context);
        init();
    }

    public a c() {
        return this.f67178f;
    }

    public void d(a l10) {
        this.f67178f = l10;
    }

    public void e(View parent, String gameName) {
        showAtLocation(parent, 80, 0, 0);
        this.f67174b.setText("是否保留“" + gameName + "”的游戏存档？");
    }

    void init() {
        View viewInflate = LayoutInflater.from(this.mContext).inflate(R.layout.pop_my_game_deletesouce_game, (ViewGroup) null);
        this.parentView = viewInflate;
        setContentView(viewInflate);
        setWidth(-1);
        setHeight(-2);
        this.f67174b = (TextView) this.parentView.findViewById(R.id.name);
        this.f67175c = (TextView) this.parentView.findViewById(R.id.delete);
        this.f67176d = (TextView) this.parentView.findViewById(R.id.cancel);
        this.f67175c.setText("删除");
        this.f67176d.setText("保留");
        this.f67175c.setOnClickListener(this);
        this.f67176d.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 != R.id.delete) {
            if (id2 == R.id.cancel) {
                dismiss();
            }
        } else {
            a aVar = this.f67178f;
            if (aVar != null) {
                aVar.a(this.f67177e);
            }
            dismiss();
        }
    }
}
