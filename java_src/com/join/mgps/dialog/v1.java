package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class v1 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67870b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f67871c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f67872d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f67873e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f67874f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f67875g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f67876h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f67877i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f67878j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private TextView f67879k;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            v1.this.f67874f.a();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v1.this.f67872d.a();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v1.this.f67873e.a();
        }
    }

    public interface d {
        void a();
    }

    public interface e {
        void a();
    }

    public interface f {
        void a();
    }

    protected v1(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67875g = "";
    }

    public void d(String textName) {
        this.f67877i = textName;
    }

    public void e(d clickCancle) {
        this.f67873e = clickCancle;
    }

    public void f(e clickImage) {
        this.f67874f = clickImage;
    }

    public void g(f clickOK) {
        this.f67872d = clickOK;
    }

    public void h(String contextText) {
        this.f67878j = contextText;
    }

    public void i(Bitmap bitmap) {
        this.f67876h = bitmap;
    }

    public void j(String title) {
        this.f67875g = title;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.notice_dialog);
        this.f67871c = (ImageView) findViewById(R.id.dialog_title_image);
        this.f67879k = (TextView) findViewById(R.id.dialog_content);
        this.f67871c.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmap = this.f67876h;
        if (bitmap != null) {
            this.f67871c.setImageBitmap(bitmap);
        }
        this.f67879k.setText(this.f67878j);
        Button button = (Button) findViewById(R.id.dialog_button_keep);
        Button button2 = (Button) findViewById(R.id.dialog_button_close);
        String str = this.f67877i;
        if (str != null && !str.equals("")) {
            button.setText(this.f67877i);
        }
        this.f67871c.setOnClickListener(new a());
        button2.setOnClickListener(new b());
        button.setOnClickListener(new c());
    }

    public v1(Context context) {
        super(context);
        this.f67875g = "";
    }

    public v1(Context context, int theme) {
        super(context, theme);
        this.f67875g = "";
        this.f67870b = context;
    }
}
