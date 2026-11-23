package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.t2;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class c extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f34458b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SimpleDraweeView f34459c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private SimpleDraweeView f34460d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f34461e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f34462f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f34463g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f34464h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f34465i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private Bitmap f34466j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private DownloadTask f34467k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Context f34468l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f34469m;

    public c(@NonNull Context context, String gameId, String name, String imgUrl, DownloadTask downloadTask) {
        super(context);
        this.f34469m = true;
        this.f34468l = context;
        this.f34463g = gameId;
        this.f34464h = name;
        this.f34465i = imgUrl;
        this.f34467k = downloadTask;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        this.f34467k.setNotCheckAddShortcut(true);
        UtilsMy.l4(this.f34468l, this.f34467k, 0);
        this.f34467k.setNotCheckAddShortcut(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        dismiss();
        if (this.f34469m) {
            new Handler().postDelayed(new Runnable() { // from class: com.join.android.app.common.dialog.b
                @Override // java.lang.Runnable
                public final void run() {
                    this.f34457b.d();
                }
            }, 200L);
        }
    }

    private Bitmap f(String imgUri) {
        d3.c cVar = (d3.c) Fresco.getImagePipelineFactory().n().c(new com.facebook.cache.common.j(Uri.parse(imgUri).toString()));
        if (cVar == null) {
            return null;
        }
        File fileD = cVar.d();
        if (fileD.exists()) {
            return BitmapFactory.decodeFile(fileD.getPath());
        }
        return null;
    }

    public Bitmap c() {
        if (this.f34466j == null) {
            this.f34466j = BitmapFactory.decodeResource(this.f34468l.getResources(), R.drawable.icon);
        }
        return this.f34466j;
    }

    public void g(View.OnClickListener clickListener) {
        this.f34462f.setOnClickListener(clickListener);
    }

    public void h(View.OnClickListener clickListener) {
        this.f34461e.setOnClickListener(clickListener);
    }

    public void i(boolean autoStartGame) {
        this.f34469m = autoStartGame;
        show();
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        Window window = getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.height = this.f34468l.getResources().getDimensionPixelSize(R.dimen.wdp672);
        attributes.width = this.f34468l.getResources().getDimensionPixelSize(R.dimen.wdp506);
        attributes.gravity = 17;
        window.setAttributes(attributes);
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        setContentView(R.layout.dialog_add_shortcut_view);
        this.f34458b = (ImageView) findViewById(R.id.shortcutCloseIv);
        this.f34459c = (SimpleDraweeView) findViewById(R.id.shortcutIconOneIv);
        this.f34460d = (SimpleDraweeView) findViewById(R.id.shortcutIconTwoIv);
        this.f34461e = (TextView) findViewById(R.id.shortcutCreateTv);
        this.f34462f = (TextView) findViewById(R.id.shortcutNoMoreReminderTv);
        MobclickAgentKt.onEvent(this.f34468l, "showIconAddModal");
        Bitmap bitmapM = ImageLoader.q().m(this.f34465i);
        this.f34466j = bitmapM;
        if (bitmapM == null) {
            this.f34466j = f(this.f34465i);
        }
        if (!t2.h(this.f34465i)) {
            this.f34459c.setImageURI(this.f34465i);
            this.f34460d.setImageURI(this.f34465i);
        }
        this.f34458b.setOnClickListener(new View.OnClickListener() { // from class: com.join.android.app.common.dialog.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f34456b.e(view);
            }
        });
    }
}
