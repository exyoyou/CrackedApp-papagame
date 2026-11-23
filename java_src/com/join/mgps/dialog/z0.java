package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.LinearLayout;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class z0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67999b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private c f68000c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f68001d;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CheckBox f68002b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CheckBox f68003c;

        a(final CheckBox val$manCheckbox, final CheckBox val$girlCheckbox) {
            this.f68002b = val$manCheckbox;
            this.f68003c = val$girlCheckbox;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            z0.this.f68000c.checkedGender(1);
            this.f68002b.setChecked(true);
            this.f68003c.setChecked(false);
            z0.this.dismiss();
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ CheckBox f68005b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CheckBox f68006c;

        b(final CheckBox val$manCheckbox, final CheckBox val$girlCheckbox) {
            this.f68005b = val$manCheckbox;
            this.f68006c = val$girlCheckbox;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            z0.this.f68000c.checkedGender(2);
            this.f68005b.setChecked(false);
            this.f68006c.setChecked(true);
            z0.this.dismiss();
        }
    }

    public interface c {
        void checkedGender(int gender);
    }

    public z0(Context context) {
        super(context);
        this.f68001d = 1;
        this.f67999b = context;
    }

    public void b(c checkGender) {
        this.f68000c = checkGender;
    }

    public void c(int gender) {
        this.f68001d = gender;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.gender_check_dialog_layout);
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.manLayout);
        LinearLayout linearLayout2 = (LinearLayout) findViewById(R.id.girlLayout);
        CheckBox checkBox = (CheckBox) findViewById(R.id.manCheckbox);
        CheckBox checkBox2 = (CheckBox) findViewById(R.id.girlCheckbox);
        if (this.f68001d == 1) {
            checkBox.setChecked(true);
            checkBox2.setChecked(false);
        } else {
            checkBox.setChecked(false);
            checkBox2.setChecked(true);
        }
        linearLayout.setOnClickListener(new a(checkBox, checkBox2));
        linearLayout2.setOnClickListener(new b(checkBox, checkBox2));
    }

    public z0(Context context, int theme) {
        super(context, theme);
        this.f68001d = 1;
        this.f67999b = context;
    }

    protected z0(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f68001d = 1;
        this.f67999b = context;
    }
}
