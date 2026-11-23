package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.a3;
import java.util.Timer;
import java.util.TimerTask;
import java.util.regex.Pattern;

/* JADX INFO: loaded from: classes3.dex */
public class r extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f67777b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Context f67778c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f67779d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private EditText f67780e;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String strTrim = r.this.f67780e.getText().toString().trim();
            int length = strTrim.length();
            if (!Pattern.matches("^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$", strTrim)) {
                a3.b(r.this.f67778c).d("用户名为中文/字母/数字/下划线,请检查后重新输入");
                return;
            }
            if (length < 1 || length > 12) {
                a3.b(r.this.f67778c).d("用户名为1~12个字符，请检查后重新输入");
            } else if (com.join.mgps.Util.t2.j(strTrim) && strTrim.length() == 11) {
                a3.b(r.this.f67778c).d("为保护你的信息安全，用户名不能类似手机号哦");
            } else {
                r.this.f67777b.backName(strTrim);
                r.this.dismiss();
            }
        }
    }

    class b extends TimerTask {
        b() {
        }

        @Override // java.util.TimerTask, java.lang.Runnable
        public void run() {
            ((InputMethodManager) r.this.f67780e.getContext().getSystemService("input_method")).showSoftInput(r.this.f67780e, 0);
        }
    }

    public interface c {
        void backName(String name);
    }

    public r(Context context) {
        super(context);
        this.f67780e = null;
        this.f67778c = context;
    }

    public void d(c clickSave) {
        this.f67777b = clickSave;
    }

    public void e(String nameS) {
        this.f67779d = nameS;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.change_name_dialog_layout);
        this.f67780e = (EditText) findViewById(R.id.name);
        this.f67780e.setText(this.f67779d);
        ((TextView) findViewById(R.id.savebutn)).setOnClickListener(new a());
        this.f67780e.setFocusableInTouchMode(true);
        this.f67780e.requestFocus();
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        new Timer().schedule(new b(), 400L);
    }

    public r(Context context, int theme) {
        super(context, theme);
        this.f67780e = null;
        this.f67778c = context;
    }

    protected r(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67780e = null;
        this.f67778c = context;
    }
}
