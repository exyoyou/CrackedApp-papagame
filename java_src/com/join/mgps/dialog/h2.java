package com.join.mgps.dialog;

import android.content.Context;
import android.os.CountDownTimer;
import android.os.Handler;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class h2 extends p implements View.OnClickListener {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f67584k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private TextView f67585l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private ImageView f67586m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private Button f67587n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CheckBox f67588o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f67589p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private CountDownTimer f67590q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f67591r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Handler f67592s;

    class a extends CountDownTimer {
        a(long millisInFuture, long countDownInterval) {
            super(millisInFuture, countDownInterval);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void b() {
            h2.this.f67587n.setEnabled(true);
            h2.this.f67587n.setText("开始挑战");
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            if (h2.this.f67591r) {
                return;
            }
            h2.this.f67592s.postDelayed(new Runnable() { // from class: com.join.mgps.dialog.g2
                @Override // java.lang.Runnable
                public final void run() {
                    this.f67563b.b();
                }
            }, 200L);
        }

        @Override // android.os.CountDownTimer
        public void onTick(long l10) {
            h2.this.f67587n.setText("开始挑战（" + (l10 / 1000) + "）");
        }
    }

    public interface b {
        void a(boolean check);

        void onClose();

        void onConfirm();
    }

    public h2(@NonNull Context context) {
        this(context, R.style.Dialog);
    }

    private void q() {
        this.f67584k = (TextView) findViewById(R.id.tv_title);
        this.f67585l = (TextView) findViewById(R.id.tv_content);
        this.f67586m = (ImageView) findViewById(R.id.iv_close);
        this.f67587n = (Button) findViewById(R.id.btn_ok);
        this.f67588o = (CheckBox) findViewById(R.id.chk_notify);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r(CompoundButton compoundButton, boolean z10) {
        b bVar = this.f67589p;
        if (bVar != null) {
            bVar.a(z10);
        }
    }

    private void t() {
        this.f67587n.setOnClickListener(this);
        this.f67586m.setOnClickListener(this);
        this.f67588o.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.join.mgps.dialog.f2
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                this.f67545a.r(compoundButton, z10);
            }
        });
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        if (v10.getId() == R.id.btn_ok) {
            dismiss();
            b bVar = this.f67589p;
            if (bVar != null) {
                bVar.onConfirm();
                return;
            }
            return;
        }
        if (v10.getId() == R.id.iv_close) {
            this.f67591r = true;
            b bVar2 = this.f67589p;
            if (bVar2 != null) {
                bVar2.onClose();
            }
            CountDownTimer countDownTimer = this.f67590q;
            if (countDownTimer != null) {
                countDownTimer.cancel();
            }
            dismiss();
        }
    }

    public h2 s(CharSequence title) {
        this.f67587n.setText(title);
        return this;
    }

    @Override // com.join.mgps.dialog.p, android.app.Dialog
    public void show() {
        super.show();
        this.f67587n.setEnabled(false);
        if (this.f67590q == null) {
            a aVar = new a(5000L, 1000L);
            this.f67590q = aVar;
            aVar.start();
        }
    }

    public void u(b listener) {
        this.f67589p = listener;
    }

    public h2 v(CharSequence title) {
        this.f67585l.setText(title);
        return this;
    }

    public h2 w(CharSequence title) {
        this.f67584k.setText(title);
        return this;
    }

    public h2(@NonNull Context context, int themeResId) {
        super(context, themeResId);
        this.f67591r = false;
        setContentView(R.layout.dialog_simulator_notify);
        g(false);
        this.f67592s = new Handler();
        q();
        t();
    }
}
