package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebView;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.facebook.drawee.view.SimpleDraweeView;
import com.haima.hmcp.beans.ClipBoardItemData;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.dto.VersionDto;
import com.join.mgps.service.UpdateService_;
import com.papa91.arc.ext.ToastManager;
import java.io.File;

/* JADX INFO: loaded from: classes3.dex */
public class e extends Dialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    Context f67483b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    TextView f67484c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    WebView f67485d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    VersionDto f67486e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    RelativeLayout f67487f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    RelativeLayout f67488g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    SimpleDraweeView f67489h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    Button f67490i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    View f67491j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    boolean f67492k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f67493l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private long f67494m;

    class a implements View.OnClickListener {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e eVar = e.this;
            if (eVar.f67493l) {
                eVar.a(new File(e.this.f67486e.getFilepath()), e.this.f67483b);
            } else {
                ((UpdateService_.a) UpdateService_.p(eVar.f67483b).extra("url", e.this.f67486e.getAndroidUrl())).a();
            }
            e eVar2 = e.this;
            if (!eVar2.f67492k) {
                eVar2.dismiss();
            }
            if (com.join.android.app.common.utils.m.j(e.this.getContext())) {
                a3.b(e.this.f67483b).d("更新包开始下载");
            } else {
                ToastManager.show("网络未连接，请检查重试");
            }
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.dismiss();
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.dismiss();
        }
    }

    class d implements View.OnClickListener {
        d() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            e.this.dismiss();
            e eVar = e.this;
            if (eVar.f67493l) {
                eVar.a(new File(e.this.f67486e.getFilepath()), e.this.f67483b);
            } else {
                ((UpdateService_.a) UpdateService_.p(eVar.f67483b).extra("url", e.this.f67486e.getAndroidUrl())).a();
            }
        }
    }

    public e(Context context, int theme, VersionDto versionDto, boolean mandatory) {
        super(context, R.style.Dialog_Fullscreen);
        this.f67493l = false;
        this.f67494m = 0L;
        this.f67483b = context;
        this.f67486e = versionDto;
        this.f67492k = mandatory;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(File file, Context context) {
        com.join.android.app.common.utils.g.t0(context).z(context, file);
    }

    private void e() {
        if (this.f67486e.getTpl_type() == 2) {
            this.f67487f.setVisibility(8);
            this.f67488g.setVisibility(0);
            this.f67490i.setOnClickListener(new c());
            if (this.f67492k) {
                this.f67490i.setVisibility(8);
            } else {
                this.f67490i.setVisibility(0);
                setCancelable(true);
            }
            com.join.android.app.common.utils.l.h(this.f67489h, this.f67486e.getTow_tpl_back_ground_pic());
            this.f67489h.setOnClickListener(new d());
        } else {
            this.f67487f.setVisibility(0);
            this.f67488g.setVisibility(8);
        }
        this.f67485d.loadDataWithBaseURL(null, this.f67486e.getInfo(), ClipBoardItemData.TYPE_TEXT_HTML, "utf-8", null);
        if (this.f67492k) {
            this.f67491j.findViewById(R.id.cancel).setVisibility(8);
        } else {
            this.f67491j.findViewById(R.id.cancel).setVisibility(0);
        }
        if (this.f67493l) {
            this.f67491j.findViewById(R.id.cancel).setVisibility(8);
            TextView textView = (TextView) this.f67491j.findViewById(R.id.updateNow);
            ((TextView) this.f67491j.findViewById(R.id.installNotice)).setVisibility(0);
            textView.setText("免流量安装");
        }
    }

    public void c(String txt) {
        this.f67484c.setText(txt);
    }

    public void d(VersionDto versionDto, boolean mandatory) {
        this.f67486e = versionDto;
        this.f67492k = mandatory;
        e();
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(KeyEvent event) {
        if (event.getKeyCode() == 4 && event.getAction() != 1) {
            if (this.f67492k) {
                if (System.currentTimeMillis() - this.f67494m <= 2000) {
                    ((Activity) this.f67483b).finish();
                    System.exit(0);
                    return true;
                }
                Toast.makeText(this.f67483b, "再按一次退出程序", 0).show();
                this.f67494m = System.currentTimeMillis();
                show();
                return true;
            }
            dismiss();
        }
        return super.dispatchKeyEvent(event);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        requestWindowFeature(1);
        requestWindowFeature(-1);
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        View viewInflate = LayoutInflater.from(this.f67483b).inflate(R.layout.dialog_app_update, (ViewGroup) null);
        this.f67491j = viewInflate;
        WebView webView = (WebView) viewInflate.findViewById(R.id.info);
        this.f67485d = webView;
        UtilsMy.T3(webView);
        this.f67487f = (RelativeLayout) this.f67491j.findViewById(R.id.oldVersion);
        this.f67488g = (RelativeLayout) this.f67491j.findViewById(R.id.newVersion);
        this.f67489h = (SimpleDraweeView) this.f67491j.findViewById(R.id.newUpdateImage);
        this.f67490i = (Button) this.f67491j.findViewById(R.id.newClosed);
        e();
        this.f67491j.findViewById(R.id.updateNow).setOnClickListener(new a());
        this.f67491j.findViewById(R.id.cancel).setOnClickListener(new b());
        setContentView(this.f67491j);
    }

    public e(Context context, int theme, VersionDto versionDto) {
        super(context, R.style.Dialog_Fullscreen);
        this.f67494m = 0L;
        this.f67483b = context;
        this.f67486e = versionDto;
        this.f67493l = true;
    }

    public e(Context context) {
        super(context, R.style.Dialog_Fullscreen);
        this.f67493l = false;
        this.f67494m = 0L;
        this.f67483b = context;
    }
}
