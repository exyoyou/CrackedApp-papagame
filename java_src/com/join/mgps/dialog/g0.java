package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import com.join.android.app.mgsim.wufun.R;

/* JADX INFO: loaded from: classes3.dex */
public class g0 extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67548b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private ImageView f67549c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private f f67550d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private d f67551e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private e f67552f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f67553g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Bitmap f67554h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f67555i;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g0.this.f67552f.a();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            g0.this.f67550d.a();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            g0.this.f67551e.a();
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

    protected g0(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
        this.f67553g = "";
    }

    public void d(String textName) {
        this.f67555i = textName;
    }

    public void e(d clickCancle) {
        this.f67551e = clickCancle;
    }

    public void f(e clickImage) {
        this.f67552f = clickImage;
    }

    public void g(f clickOK) {
        this.f67550d = clickOK;
    }

    public void h(Bitmap bitmap) {
        this.f67554h = bitmap;
    }

    public void i(String title) {
        this.f67553g = title;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.dialog_exitlayout);
        ImageView imageView = (ImageView) findViewById(R.id.dialog_title_image);
        this.f67549c = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        Bitmap bitmap = this.f67554h;
        if (bitmap != null) {
            this.f67549c.setImageBitmap(bitmap);
        }
        Button button = (Button) findViewById(R.id.dialog_button_keep);
        Button button2 = (Button) findViewById(R.id.dialog_button_close);
        String str = this.f67555i;
        if (str != null && !str.equals("")) {
            button.setText(this.f67555i);
        }
        this.f67549c.setOnClickListener(new a());
        button2.setOnClickListener(new b());
        button.setOnClickListener(new c());
    }

    public g0(Context context) {
        super(context);
        this.f67553g = "";
    }

    public g0(Context context, int theme) {
        super(context, theme);
        this.f67553g = "";
        this.f67548b = context;
    }
}
