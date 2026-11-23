package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.Ext;
import com.papa91.arc.ext.ToastManager;

/* JADX INFO: loaded from: classes3.dex */
public class o0 extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f67705b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RadioGroup f67706c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RadioButton f67707d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private RadioButton f67708e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private EditText f67709f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f67710g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f67711h;

    public o0(@NonNull Context context) {
        super(context, R.style.dialog_input);
    }

    public void a(String keyword) {
        super.show();
        this.f67711h = keyword;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (v10 != this.f67710g) {
            if (v10 == this.f67705b) {
                dismiss();
            }
        } else {
            dismiss();
            com.papa.sim.statistic.t.l(getContext()).R1(Event.commonReport, new Ext().setChatId("searchResultGameFeedback").setKeyWord(this.f67711h).setResultCode(this.f67707d.isChecked() ? "like" : "notLike").setReMarks(this.f67709f.getText().toString()));
            r7.a.b(this.f67709f);
            ToastManager.show("提交成功，感谢反馈！");
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_search_game_feed);
        this.f67705b = (ImageView) findViewById(R.id.iv_close);
        this.f67706c = (RadioGroup) findViewById(R.id.rg_1);
        this.f67707d = (RadioButton) findViewById(R.id.rbt_1);
        this.f67708e = (RadioButton) findViewById(R.id.rbt_2);
        this.f67709f = (EditText) findViewById(R.id.et_1);
        this.f67710g = (TextView) findViewById(R.id.tv_btn_1);
        this.f67705b.setOnClickListener(this);
        this.f67710g.setOnClickListener(this);
    }
}
