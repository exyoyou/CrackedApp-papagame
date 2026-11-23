package com.join.mgps.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.view.Display;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.MApplication;
import com.facebook.drawee.backends.pipeline.Fresco;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.dto.SingleGameAdBean;
import com.join.mgps.dto.SingleGameRunAdTextCfgBean;
import com.join.mgps.pref.PrefDef_;
import java.io.File;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class c extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private LinearLayout f67437b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private SimpleDraweeView f67438c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TextView f67439d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private TextView f67440e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private TextView f67441f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f67442g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Context f67443h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f67444i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f67445j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private String f67446k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private String f67447l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private String f67448m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private String f67449n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f67450o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private PrefDef_ f67451p;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f67452b;

        a(final DownloadTask val$dd) {
            this.f67452b = val$dd;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            String strD = c.this.f67451p.singleGameShowDialog().d();
            if (com.join.mgps.Util.t2.h(strD)) {
                HashMap map = new HashMap();
                map.put(c.this.f67444i, new SingleGameAdBean(MApplication.f3173i1, System.currentTimeMillis()));
                c.this.f67451p.singleGameShowDialog().g(JsonMapper.getInstance().toJson(map));
            } else {
                new HashMap();
                Map map2 = (Map) JsonMapper.getInstance().fromJson(strD, JsonMapper.getInstance().getTypeFactory().constructParametricType(HashMap.class, String.class, SingleGameAdBean.class));
                map2.put(c.this.f67444i, new SingleGameAdBean(MApplication.f3173i1, System.currentTimeMillis()));
                c.this.f67451p.singleGameShowDialog().g(JsonMapper.getInstance().toJson(map2));
            }
            c.this.dismiss();
            Bitmap bitmapM = ImageLoader.q().m(this.f67452b.getPortraitURL());
            if (bitmapM == null) {
                bitmapM = c.this.g(this.f67452b.getPortraitURL());
            }
            com.join.mgps.Util.j2.b(c.this.f67443h, this.f67452b.getShowName(), this.f67452b.getCrc_link_type_val(), bitmapM);
        }
    }

    public c(@NonNull Context context) {
        super(context);
        this.f67443h = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Bitmap g(String imgUri) {
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

    public String e() {
        return this.f67449n;
    }

    public String f() {
        return this.f67450o;
    }

    public void h(View.OnClickListener clickListener) {
        this.f67441f.setOnClickListener(clickListener);
    }

    public void i(View.OnClickListener clickListener) {
        this.f67438c.setOnClickListener(clickListener);
    }

    public void j(View.OnClickListener clickListener) {
        this.f67442g.setOnClickListener(clickListener);
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        Display defaultDisplay = window.getWindowManager().getDefaultDisplay();
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = defaultDisplay.getWidth();
        attributes.height = defaultDisplay.getHeight();
        window.setAttributes(attributes);
        setContentView(R.layout.dialog_vip_app_vertical_view);
        this.f67437b = (LinearLayout) findViewById(R.id.rootLl);
        this.f67438c = (SimpleDraweeView) findViewById(R.id.mainDialogAdImg);
        this.f67439d = (TextView) findViewById(R.id.mainDialogContenTv);
        this.f67440e = (TextView) findViewById(R.id.mainDialogTopTv);
        this.f67441f = (TextView) findViewById(R.id.mainDialogCancelTv);
        this.f67442g = (TextView) findViewById(R.id.mainDialogOkIv);
        SingleGameRunAdTextCfgBean singleGameRunAdTextCfgBean = MApplication.f3168b1;
        if (singleGameRunAdTextCfgBean != null) {
            this.f67450o = singleGameRunAdTextCfgBean.getUrl();
            this.f67445j = MApplication.f3168b1.getPic();
            this.f67446k = MApplication.f3168b1.getTitle();
            this.f67447l = MApplication.f3168b1.getBtn_l();
            this.f67448m = MApplication.f3168b1.getBtn_r();
            this.f67449n = MApplication.f3168b1.getBtn_url();
        }
        if (!com.join.mgps.Util.t2.h(this.f67445j)) {
            this.f67438c.setImageURI(this.f67445j);
        }
        if (!com.join.mgps.Util.t2.h(this.f67446k)) {
            this.f67439d.setText(this.f67446k);
        }
        if (!com.join.mgps.Util.t2.h(this.f67447l)) {
            this.f67441f.setText(this.f67447l);
        }
        if (!com.join.mgps.Util.t2.h(this.f67448m)) {
            this.f67442g.setText(this.f67448m);
        }
        if (com.join.mgps.Util.t2.h(this.f67444i)) {
            return;
        }
        DownloadTask downloadTaskG = q5.f.M().G(this.f67444i);
        if (downloadTaskG.getUrl().endsWith(".apk") || "androidobb".equals(downloadTaskG.getRomType()) || "46".equals(downloadTaskG.getRomType())) {
            String url = downloadTaskG.getUrl();
            char[] charArray = url.substring(url.lastIndexOf(net.lingala.zip4j.util.e.F0) + 1).replace(".apk", "").toCharArray();
            String.valueOf(charArray[charArray.length - 1]);
            String packageName = downloadTaskG.getPackageName();
            if (com.join.mgps.Util.j2.d(this.f67443h, downloadTaskG.getCrc_link_type_val()) || com.join.mgps.Util.t2.h(packageName) || !com.join.mgps.Util.l.e(this.f67443h, packageName)) {
                this.f67440e.setVisibility(8);
            } else {
                this.f67440e.setVisibility(0);
            }
        }
        this.f67440e.setOnClickListener(new a(downloadTaskG));
    }

    public c(@NonNull Context context, String gameId) {
        super(context);
        this.f67443h = context;
        this.f67444i = gameId;
        this.f67451p = new PrefDef_(context);
    }
}
