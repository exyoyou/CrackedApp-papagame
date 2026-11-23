package com.join.android.app.common.dialog;

import android.app.AlertDialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.MApplication;
import com.join.android.app.common.utils.n;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.utils.extention.MobclickAgentKt;
import com.join.mgps.Util.AccountUtil_;
import com.papa.sim.statistic.t;

/* JADX INFO: loaded from: classes5.dex */
public class d extends AlertDialog {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private ImageView f34470b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private TextView f34471c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f34472d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f34473e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f34474f;

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.dismiss();
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) throws Throwable {
            d.this.dismiss();
            if (d.this.f34473e) {
                return;
            }
            d.this.f34473e = true;
            MApplication.Z = true;
            new n(d.this.f34472d).n();
            t.l(d.this.f34472d).p("clickAuthButton", "0", AccountUtil_.getInstance_(d.this.f34472d).getUid());
            MobclickAgentKt.onEvent(d.this.f34472d, "clickAuthButton");
        }
    }

    public d(@NonNull Context context) {
        super(context);
        this.f34473e = false;
        this.f34474f = "0";
        this.f34472d = context;
    }

    @Override // android.app.AlertDialog, android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setCancelable(false);
        Window window = getWindow();
        window.setBackgroundDrawableResource(17170445);
        window.setGravity(17);
        setContentView(R.layout.dialog_add_shortcut_result_view);
        this.f34470b = (ImageView) findViewById(R.id.shortcutCloseIv);
        this.f34471c = (TextView) findViewById(R.id.shortcutCreateTv);
        MobclickAgentKt.onEvent(this.f34472d, "showGuideAddIconModal");
        t.l(this.f34472d).p("showGuideAddIconModal", this.f34474f, AccountUtil_.getInstance_(this.f34472d).getUid());
        this.f34470b.setOnClickListener(new a());
        this.f34471c.setOnClickListener(new b());
    }

    public d(@NonNull Context context, String gameId) {
        super(context);
        this.f34473e = false;
        this.f34472d = context;
        this.f34474f = gameId;
    }
}
