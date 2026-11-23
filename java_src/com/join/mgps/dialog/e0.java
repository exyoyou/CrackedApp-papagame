package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.GameMainV4DataBean;
import com.join.mgps.pref.PrefDef_;
import com.papa91.arc.interfaces.DialogListenerWrap;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class e0 extends AlertDialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private View f67499b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f67500c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67501d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f67502e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CheckBox f67503f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private DialogListenerWrap f67504g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    PrefDef_ f67505h;

    class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            e0.this.f67505h.showGuideCreateEndGame().g(Boolean.valueOf(!isChecked));
        }
    }

    public e0(@NonNull Context context) {
        super(context, R.style.Dialog);
        this.f67505h = new PrefDef_(context);
    }

    public void a(DialogListenerWrap listenerWrap) {
        this.f67504g = listenerWrap;
    }

    public void b(ArrayList<GameMainV4DataBean.CreateEndgameHintBean> list) {
        GameMainV4DataBean.CreateEndgameHintBean createEndgameHintBean;
        GameMainV4DataBean.CreateEndgameHintBean createEndgameHintBean2;
        show();
        if (list != null) {
            if (list.size() > 0 && this.f67501d != null && (createEndgameHintBean2 = list.get(0)) != null) {
                this.f67501d.setText(createEndgameHintBean2.getSubTitle());
            }
            if (list.size() <= 1 || this.f67502e == null || (createEndgameHintBean = list.get(1)) == null) {
                return;
            }
            this.f67502e.setText(createEndgameHintBean.getSubTitle());
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int id2 = v10.getId();
        if (id2 != R.id.tv_know) {
            if (id2 == R.id.iv_close) {
                dismiss();
            }
        } else {
            DialogListenerWrap dialogListenerWrap = this.f67504g;
            if (dialogListenerWrap != null) {
                dialogListenerWrap.onConfirm();
            }
            dismiss();
        }
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_create_end_game_guide);
        setCanceledOnTouchOutside(false);
        setCancelable(false);
        this.f67499b = findViewById(R.id.iv_close);
        this.f67500c = (TextView) findViewById(R.id.tv_know);
        this.f67503f = (CheckBox) findViewById(R.id.checkBox);
        this.f67501d = (TextView) findViewById(R.id.tv_title);
        this.f67502e = (TextView) findViewById(R.id.tv_sub_title);
        this.f67503f.setOnCheckedChangeListener(new a());
        this.f67499b.setOnClickListener(this);
        this.f67500c.setOnClickListener(this);
    }
}
