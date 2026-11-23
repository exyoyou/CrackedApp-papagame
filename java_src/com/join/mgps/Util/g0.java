package com.join.mgps.Util;

import android.app.Activity;
import android.app.Dialog;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import com.MApplication;
import com.byazt.quv.AbsServerManager;
import com.bykv.vk.component.ttvideo.player.C;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.APKUtils;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.activity.AppDownFinishDialogActivity;
import com.join.mgps.activity.DiscoveryPaiweiActivity_;
import com.join.mgps.activity.EndGameActivity_;
import com.join.mgps.activity.EndGameDetailActivity_;
import com.join.mgps.activity.EndGameLaunchActivity_;
import com.join.mgps.activity.PrivateDomainDefaultActivity_;
import com.join.mgps.activity.PrivateDomainDownloadActivity_;
import com.join.mgps.activity.WarningDialogActivity;
import com.join.mgps.activity.c6;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.CustomerAlertDialog;
import com.join.mgps.dialog.PlugUpdateDialog_;
import com.join.mgps.dto.CommonGameInfoBean;
import com.join.mgps.dto.CouponsData;
import com.join.mgps.dto.DomainInfoBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ModFeedbackBean;
import com.join.mgps.dto.ModInfoBean;
import com.join.mgps.dto.OnlineCouponConfigBean;
import com.join.mgps.dto.PdAdCfgBean;
import com.join.mgps.dto.WxProgram;
import com.join.mgps.enums.ConstantIntEnum;
import com.join.mgps.enums.Dtype;
import com.join.mgps.pref.PrefDef_;
import com.papa.sim.statistic.Event;
import com.papa.sim.statistic.EventP;
import com.papa.sim.statistic.Ext;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.List;
import org.androidannotations.annotations.EBean;

/* JADX INFO: loaded from: classes4.dex */
@EBean(scope = EBean.Scope.Singleton)
public class g0 {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f49614j = "customer_alert";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Dialog f49615a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    AlertDialog.Builder f49616b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    com.join.mgps.dialog.o1 f49617c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    com.join.mgps.dialog.s1 f49618d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    com.join.mgps.dialog.r1 f49619e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    c6 f49620f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private com.join.mgps.dialog.w1 f49621g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.join.android.app.common.dialog.c f49622h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.join.mgps.dialog.q f49623i;

    class a implements DialogInterface.OnCancelListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49624b;

        a(final n0 val$callback) {
            this.f49624b = val$callback;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            n0 n0Var = this.f49624b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
        }
    }

    class a0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49626b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f49627c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f49628d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f49629e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ CheckBox f49630f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final /* synthetic */ EMUApkTable f49631g;

        a0(final com.join.mgps.customview.t val$mDialog, final Context val$context, final String val$gameId, final String val$from, final CheckBox val$checkbox, final EMUApkTable val$emuApkTable) {
            this.f49626b = val$mDialog;
            this.f49627c = val$context;
            this.f49628d = val$gameId;
            this.f49629e = val$from;
            this.f49630f = val$checkbox;
            this.f49631g = val$emuApkTable;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f49626b.dismiss();
            IntentUtil.getInstance().goGameMainActivity(this.f49627c, this.f49628d, this.f49629e);
            if (this.f49630f.isChecked()) {
                try {
                    EMUApkTable eMUApkTable = this.f49631g;
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(eMUApkTable.getVer().split("_")[0]));
                    t6.p.o().update(this.f49631g);
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class b implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49633a;

        b(final Context val$context) {
            this.f49633a = val$context;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f49633a);
            dialog.dismiss();
        }
    }

    class b0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49635b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ EMUApkTable f49636c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f49637d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ CheckBox f49638e;

        b0(final com.join.mgps.customview.t val$mDialog, final EMUApkTable val$emuApkTable, final Context val$context, final CheckBox val$checkbox) {
            this.f49635b = val$mDialog;
            this.f49636c = val$emuApkTable;
            this.f49637d = val$context;
            this.f49638e = val$checkbox;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f49635b;
            if (tVar != null && tVar.isShowing()) {
                this.f49635b.dismiss();
            }
            UtilsMy.q1(this.f49636c, this.f49637d);
            if (this.f49638e.isChecked()) {
                try {
                    EMUApkTable eMUApkTable = this.f49636c;
                    eMUApkTable.setNotUpdateversion(Integer.parseInt(eMUApkTable.getVer().split("_")[0]));
                    t6.p.o().update(this.f49636c);
                } catch (NumberFormatException e10) {
                    e10.printStackTrace();
                }
            }
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49640b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f49641c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49642d;

        c(final Context val$context, final CommonGameInfoBean val$commonGameInfoBean, final com.join.mgps.customview.t val$mDialog) {
            this.f49640b = val$context;
            this.f49641c = val$commonGameInfoBean;
            this.f49642d = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.m.j(this.f49640b)) {
                a3.b(this.f49640b).d("无网络连接");
                return;
            }
            UtilsMy.R2(this.f49640b, this.f49641c.getDownloadTask().getCrc_link_type_val(), this.f49641c);
            com.join.mgps.customview.t tVar = this.f49642d;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49642d.dismiss();
        }
    }

    class c0 implements DialogInterface.OnDismissListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49644b;

        c0(final n0 val$callback) {
            this.f49644b = val$callback;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            g0.this.f49621g = null;
            n0 n0Var = this.f49644b;
            if (n0Var != null) {
                n0Var.onDismiss();
            }
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49646b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ CommonGameInfoBean f49647c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49648d;

        d(final Context val$context, final CommonGameInfoBean val$commonGameInfoBean, final com.join.mgps.customview.t val$mDialog) {
            this.f49646b = val$context;
            this.f49647c = val$commonGameInfoBean;
            this.f49648d = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UtilsMy.k4(this.f49646b, this.f49647c.getDownloadTask());
            com.join.mgps.customview.t tVar = this.f49648d;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49648d.dismiss();
        }
    }

    class d0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f49651c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f49652d;

        class a implements Runnable {
            a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                d0 d0Var = d0.this;
                j2.b(d0Var.f49650b, d0Var.f49651c, d0Var.f49652d, g0.this.f49622h.c());
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.d(d0.this.f49652d));
            }
        }

        d0(final Context val$context, final String val$name, final String val$gameId) {
            this.f49650b = val$context;
            this.f49651c = val$name;
            this.f49652d = val$gameId;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                g0.this.f49622h.dismiss();
            } catch (Exception unused) {
            }
            new Handler().postDelayed(new a(), 200L);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49655b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49656c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49657d;

        e(final Context val$context, final DownloadTask val$downloadTask, final com.join.mgps.customview.t val$mDialog) {
            this.f49655b = val$context;
            this.f49656c = val$downloadTask;
            this.f49657d = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (!com.join.android.app.common.utils.m.j(this.f49655b)) {
                a3.b(this.f49655b).d("无网络连接");
                return;
            }
            UtilsMy.S2(this.f49655b, this.f49656c);
            com.join.mgps.customview.t tVar = this.f49657d;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49657d.dismiss();
        }
    }

    class e0 implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ PrefDef_ f49659b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49660c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ Context f49661d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f49662e;

        e0(final PrefDef_ val$prefDef, final DownloadTask val$downloadTask, final Context val$context, final String val$from) {
            this.f49659b = val$prefDef;
            this.f49660c = val$downloadTask;
            this.f49661d = val$context;
            this.f49662e = val$from;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            try {
                g0.this.f49622h.dismiss();
            } catch (Exception unused) {
            }
            String strD = this.f49659b.isNoShowAddShortcut().d();
            if (t2.h(strD)) {
                strD = this.f49660c.getCrc_link_type_val();
            } else if (!strD.contains(this.f49660c.getCrc_link_type_val())) {
                strD = strD + "," + this.f49660c.getCrc_link_type_val();
            }
            this.f49659b.isNoShowAddShortcut().g(strD);
            this.f49660c.setNotCheckAddShortcut(true);
            UtilsMy.m4(this.f49661d, this.f49660c, 0, this.f49662e);
            if (g0.this.f49622h != null) {
                try {
                    g0.this.f49622h.dismiss();
                } catch (Exception unused2) {
                }
            }
            this.f49660c.setNotCheckAddShortcut(false);
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49664b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49665c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49666d;

        f(final Context val$context, final DownloadTask val$downloadTask, final com.join.mgps.customview.t val$mDialog) {
            this.f49664b = val$context;
            this.f49665c = val$downloadTask;
            this.f49666d = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            UtilsMy.k4(this.f49664b, this.f49665c);
            com.join.mgps.customview.t tVar = this.f49666d;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49666d.dismiss();
        }
    }

    class f0 extends m6.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49668a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ DownloadTask f49669b;

        f0(final Context val$context, final DownloadTask val$downloadTask) {
            this.f49668a = val$context;
            this.f49669b = val$downloadTask;
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void a(Activity activity) {
            EMUApkTable eMUApkTableN;
            super.a(activity);
            if (activity != null) {
                activity.finish();
            }
            if (com.join.mgps.va.overmind.i.H()) {
                eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA32.value() + "");
            } else {
                eMUApkTableN = t6.p.o().n(ConstantIntEnum.VA64.value() + "");
            }
            APKUtils.v(this.f49668a, eMUApkTableN, this.f49669b);
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void b(Activity activity) {
            super.b(activity);
            if (activity != null) {
                activity.finish();
            }
        }

        @Override // m6.e, com.join.mgps.callbacks.x
        public void d(Activity activity) {
            super.d(activity);
            activity.finish();
            ModInfoBean modInfoBean = this.f49669b.getModInfoBean();
            String crc_link_type_val = this.f49669b.getCrc_link_type_val();
            if (modInfoBean != null) {
                crc_link_type_val = modInfoBean.getMod_game_id();
            }
            if (q5.f.M().L(crc_link_type_val) == null) {
                DownloadTask downloadTaskCloneOne = this.f49669b.cloneOne();
                downloadTaskCloneOne.setCrc_link_type_val("cld_" + crc_link_type_val);
                downloadTaskCloneOne.setRef_crc_sign_id(this.f49669b.getCrc_link_type_val());
                Dtype dtype = Dtype.CLOUD;
                downloadTaskCloneOne.setFileType(dtype.name());
                downloadTaskCloneOne.setRomType(dtype.name());
                downloadTaskCloneOne.setStatus(5);
                q5.f.M().m(downloadTaskCloneOne);
                org.greenrobot.eventbus.c.f().q(new com.join.mgps.event.r(downloadTaskCloneOne, 5));
            }
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.cloudGame.name());
            extBean.setChatId(EventP.ChatId.expVMInstall32Tips.name()).setResourceId(this.f49669b.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f49669b.getCrc_link_type_val().replace("cld_", ""));
            extBean.buildScene();
            w0.h().s(this.f49668a, crc_link_type_val, extBean);
            com.papa.sim.statistic.t.l(this.f49668a).R1(Event.gameStart, extBean.toExt());
        }

        @Override // m6.e, com.join.kotlin.base.dialog.callback.IDialogActivityCallback
        public void onActivityShow(@NonNull Activity activity) {
            super.onActivityShow(activity);
            ExtBean extBean = new ExtBean();
            extBean.setTypeCode(EventP.TypeCode.page.name());
            extBean.setChatId(EventP.ChatId.expVMInstall32Tips.name()).setResourceId(this.f49669b.getCrc_link_type_val().replace("cld_", "")).setGameId(this.f49669b.getCrc_link_type_val().replace("cld_", ""));
            extBean.buildScene();
            com.papa.sim.statistic.t.l(this.f49668a).R1(Event.commonExp, extBean.toExt());
        }
    }

    class g implements com.join.mgps.dialog.b.c {
        g() {
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            dialog.dismiss();
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.Util.g0$g0, reason: collision with other inner class name */
    class DialogInterfaceOnKeyListenerC0663g0 implements DialogInterface.OnKeyListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49672b;

        DialogInterfaceOnKeyListenerC0663g0(final n0 val$callback) {
            this.f49672b = val$callback;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            n0 n0Var = this.f49672b;
            if (n0Var != null) {
                return n0Var.a(dialog, keyCode, event);
            }
            return false;
        }
    }

    class h implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49674a;

        h(final Context val$context) {
            this.f49674a = val$context;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            Context context = this.f49674a;
            if (context instanceof Activity) {
                ((Activity) context).finish();
            }
            dialog.dismiss();
        }
    }

    class h0 implements DialogInterface.OnCancelListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49676b;

        h0(final n0 val$callback) {
            this.f49676b = val$callback;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            n0 n0Var = this.f49676b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
        }
    }

    class i implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49678a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ o0 f49679b;

        i(final Context val$context, final o0 val$lienster) {
            this.f49678a = val$context;
            this.f49679b = val$lienster;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            dialog.dismiss();
            o0 o0Var = this.f49679b;
            if (o0Var != null) {
                o0Var.a();
            }
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f49678a);
            dialog.dismiss();
        }
    }

    class i0 implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49681a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49682b;

        i0(final Context val$context, final n0 val$callback) {
            this.f49681a = val$context;
            this.f49682b = val$callback;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            n0 n0Var = this.f49682b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f49681a);
            dialog.dismiss();
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49684b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ o0 f49685c;

        j(final com.join.mgps.customview.t val$mDialog, final o0 val$lienster) {
            this.f49684b = val$mDialog;
            this.f49685c = val$lienster;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f49684b;
            if (tVar != null && tVar.isShowing()) {
                this.f49684b.dismiss();
            }
            o0 o0Var = this.f49685c;
            if (o0Var != null) {
                o0Var.a();
            }
        }
    }

    class j0 implements DialogInterface.OnKeyListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49687b;

        j0(final n0 val$callback) {
            this.f49687b = val$callback;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            n0 n0Var = this.f49687b;
            if (n0Var != null) {
                return n0Var.a(dialog, keyCode, event);
            }
            return false;
        }
    }

    class k implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49689b;

        k(final Context val$context) {
            this.f49689b = val$context;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            Intent intent = new Intent();
            intent.setAction("android.settings.APPLICATION_DETAILS_SETTINGS");
            intent.setData(Uri.fromParts(AbsServerManager.PACKAGE_QUERY_BINDER, this.f49689b.getPackageName(), null));
            this.f49689b.startActivity(intent);
        }
    }

    class k0 implements DialogInterface.OnCancelListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49691b;

        k0(final n0 val$callback) {
            this.f49691b = val$callback;
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            n0 n0Var = this.f49691b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49693b;

        l(final com.join.mgps.customview.t val$mDialog) {
            this.f49693b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goAccountUpgradeActivity(view.getContext());
            com.join.mgps.customview.t tVar = this.f49693b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49693b.dismiss();
        }
    }

    class l0 implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49695a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49696b;

        l0(final Context val$context, final n0 val$callback) {
            this.f49695a = val$context;
            this.f49696b = val$callback;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            n0 n0Var = this.f49696b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            IntentUtil.getInstance().goShareWebActivity(this.f49695a, "http://anv3cjapi.5fun.com/member/battle_kick/index");
            n0 n0Var = this.f49696b;
            if (n0Var != null) {
                n0Var.onDismiss();
            }
            dialog.dismiss();
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49698b;

        m(final com.join.mgps.customview.t val$mDialog) {
            this.f49698b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f49698b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49698b.dismiss();
        }
    }

    class m0 implements DialogInterface.OnKeyListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49700b;

        m0(final n0 val$callback) {
            this.f49700b = val$callback;
        }

        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialog, int keyCode, KeyEvent event) {
            n0 n0Var = this.f49700b;
            if (n0Var != null) {
                return n0Var.a(dialog, keyCode, event);
            }
            return false;
        }
    }

    class n implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f49702b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49703c;

        n(final Context val$context, final com.join.mgps.customview.t val$mDialog) {
            this.f49702b = val$context;
            this.f49703c = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVip(this.f49702b);
            com.join.mgps.customview.t tVar = this.f49703c;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49703c.dismiss();
        }
    }

    public interface n0 {
        boolean a(DialogInterface dialog, int keyCode, KeyEvent event);

        void onCancel();

        void onDismiss();
    }

    class o implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49705b;

        o(final com.join.mgps.customview.t val$mDialog) {
            this.f49705b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f49705b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49705b.dismiss();
        }
    }

    public interface o0 {
        void a();
    }

    class p implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49707b;

        p(final com.join.mgps.customview.t val$mDialog) {
            this.f49707b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goSvip(view.getContext());
            com.join.mgps.customview.t tVar = this.f49707b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49707b.dismiss();
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49709b;

        q(final com.join.mgps.customview.t val$mDialog) {
            this.f49709b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f49709b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49709b.dismiss();
        }
    }

    class r implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49711b;

        r(final com.join.mgps.customview.t val$mDialog) {
            this.f49711b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            IntentUtil.getInstance().goVipCdk(view.getContext());
            com.join.mgps.customview.t tVar = this.f49711b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49711b.dismiss();
        }
    }

    class s implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49713b;

        s(final com.join.mgps.customview.t val$mDialog) {
            this.f49713b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f49713b;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49713b.dismiss();
        }
    }

    class t implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.callbacks.d f49715b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49716c;

        t(final com.join.mgps.callbacks.d val$callBack, final com.join.mgps.customview.t val$mDialog) {
            this.f49715b = val$callBack;
            this.f49716c = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f49715b.onClickOk();
            com.join.mgps.customview.t tVar = this.f49716c;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49716c.dismiss();
        }
    }

    class u implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.callbacks.d f49718b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49719c;

        u(final com.join.mgps.callbacks.d val$callBack, final com.join.mgps.customview.t val$mDialog) {
            this.f49718b = val$callBack;
            this.f49719c = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f49718b.onClickCancle();
            com.join.mgps.customview.t tVar = this.f49719c;
            if (tVar == null || !tVar.isShowing()) {
                return;
            }
            this.f49719c.dismiss();
        }
    }

    class v implements com.join.mgps.dialog.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f49721a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ n0 f49722b;

        v(final Context val$context, final n0 val$callback) {
            this.f49721a = val$context;
            this.f49722b = val$callback;
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickCancleButn(com.join.mgps.dialog.b dialog) {
            n0 n0Var = this.f49722b;
            if (n0Var != null) {
                n0Var.onCancel();
            }
            dialog.dismiss();
        }

        @Override // com.join.mgps.dialog.b.c
        public void ClickOKButn(com.join.mgps.dialog.b dialog) {
            IntentUtil.getInstance().goAccountUpgradeActivity(this.f49721a);
            dialog.dismiss();
        }
    }

    class w implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.callbacks.e f49724b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Dialog f49725c;

        w(final com.join.mgps.callbacks.e val$callback, final Dialog val$dialog) {
            this.f49724b = val$callback;
            this.f49725c = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.callbacks.e eVar = this.f49724b;
            if (eVar != null) {
                eVar.a(this.f49725c);
            }
        }
    }

    class x implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.callbacks.e f49727b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Dialog f49728c;

        x(final com.join.mgps.callbacks.e val$callback, final Dialog val$dialog) {
            this.f49727b = val$callback;
            this.f49728c = val$dialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.callbacks.e eVar = this.f49727b;
            if (eVar != null) {
                eVar.b(this.f49728c);
            }
        }
    }

    class y implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49730b;

        y(final com.join.mgps.customview.t val$mDialog) {
            this.f49730b = val$mDialog;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            this.f49730b.dismiss();
        }
    }

    class z implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.t f49732b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Context f49733c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f49734d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f49735e;

        z(final com.join.mgps.customview.t val$mDialog, final Context val$context, final String val$qqkey, final String val$qqqunS) {
            this.f49732b = val$mDialog;
            this.f49733c = val$context;
            this.f49734d = val$qqkey;
            this.f49735e = val$qqqunS;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            com.join.mgps.customview.t tVar = this.f49732b;
            if (tVar != null && tVar.isShowing()) {
                this.f49732b.dismiss();
            }
            if (!t2.i(APKUtils.M(this.f49733c))) {
                r0.M(this.f49733c, this.f49735e);
                a3.b(this.f49733c).d("已复制Q群号，若未能跳转请自行打开qq粘贴群号");
            } else {
                IntentUtil.getInstance().goQQGroup(this.f49733c, this.f49734d);
                r0.M(this.f49733c, this.f49735e);
                a3.b(this.f49733c).d("已复制Q群号，若未能跳转请自行打开qq粘贴群号");
            }
        }
    }

    public com.join.mgps.dialog.f1 A(Context context, boolean cancleAble) {
        return new com.join.mgps.dialog.f1(context, R.style.MyprogressDialog, cancleAble);
    }

    public void B(final Context context, final o0 lienster) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.realname_notice_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_cancle);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) button.getLayoutParams();
        layoutParams.setMargins(20, 0, 20, 0);
        button.setLayoutParams(layoutParams);
        textView.setText("提示");
        textView2.setGravity(17);
        textView2.setText("为保证点评真实性，\n请安装游戏后再创建点评。");
        button2.setVisibility(8);
        button.setText("我知道了");
        button.setOnClickListener(new j(tVar, lienster));
        tVar.setCancelable(false);
        tVar.show();
    }

    public com.join.mgps.dialog.v1 C(Context context) {
        return new com.join.mgps.dialog.v1(context, R.style.MyDialog);
    }

    public void D(final Context context) {
        new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("取消").g("确定要退出编辑吗？").j("确定").k("提示").i(new h(context)).show();
    }

    public void E(final Context context, int coin) {
        new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("稍后").e(8).g(context.getResources().getString(R.string.post_help_coin_coast_tip, Integer.valueOf(coin), Integer.valueOf(coin * 2), Integer.valueOf(coin))).j("知道了").k("提示").i(new g()).show();
    }

    public com.join.mgps.dialog.g1 F(Context context) {
        return new com.join.mgps.dialog.g1(context, R.style.MyprogressDialog);
    }

    public void H(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || !d2.g(downloadTaskG.getPackageName())) {
            Intent intent = new Intent();
            intent.putExtra(AppDownFinishDialogActivity.KEY_GAME_ID, gameId);
            IntentUtil.getInstance().startActivity(MApplication.f3182z.getActivity(), AppDownFinishDialogActivity.class, intent);
        }
    }

    public void I(Context context, DownloadTask downloadTask, boolean isCheck, String from) {
        Context activity = context instanceof Activity ? context : null;
        if (activity == null) {
            activity = MApplication.f3182z.getActivity();
        }
        Context context2 = activity == null ? context : activity;
        PrefDef_ prefDef_ = new PrefDef_(context);
        String strD = prefDef_.isNoShowAddShortcut().d();
        boolean z10 = !t2.h(strD) && strD.contains(downloadTask.getCrc_link_type_val());
        if (!TextUtils.isEmpty(strD)) {
            downloadTask.setNotCheckAddShortcut(true);
            UtilsMy.m4(context2, downloadTask, 0, from);
            downloadTask.setNotCheckAddShortcut(false);
            return;
        }
        if (z10 && isCheck) {
            downloadTask.setNotCheckAddShortcut(true);
            UtilsMy.m4(context2, downloadTask, 0, from);
            downloadTask.setNotCheckAddShortcut(false);
            return;
        }
        if (downloadTask.isOpen()) {
            String portraitURL = downloadTask.getPortraitURL();
            String showName = downloadTask.getShowName();
            String crc_link_type_val = downloadTask.getCrc_link_type_val();
            if (t2.h(portraitURL)) {
                return;
            }
            com.join.android.app.common.dialog.c cVar = this.f49622h;
            if (cVar != null && cVar.isShowing()) {
                try {
                    this.f49622h.dismiss();
                } catch (Exception unused) {
                }
            }
            com.join.android.app.common.dialog.c cVar2 = new com.join.android.app.common.dialog.c(context2, crc_link_type_val, showName, portraitURL, downloadTask);
            this.f49622h = cVar2;
            cVar2.show();
            this.f49622h.h(new d0(context, showName, crc_link_type_val));
            this.f49622h.g(new e0(prefDef_, downloadTask, context, from));
        }
    }

    public void J(Context context, DomainInfoBean pd_info, String message) {
        try {
            if (com.join.mgps.Util.e0.z(new PrefDef_(context).lastShowBespeakTipTime().d().longValue())) {
                return;
            }
            com.join.mgps.dialog.q qVar = this.f49623i;
            if (qVar != null && qVar.isShowing()) {
                this.f49623i.dismiss();
            }
            com.join.mgps.dialog.q qVar2 = new com.join.mgps.dialog.q(context);
            this.f49623i = qVar2;
            qVar2.a(pd_info, message);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void K(final Context context, final CommonGameInfoBean commonGameInfoBean) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.update_choice_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.dialog_button_cancel);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView3 = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView4 = (TextView) tVar.findViewById(R.id.dialog_content);
        textView3.setText("更新提示");
        textView4.setText("【" + commonGameInfoBean.getTitle() + "】可更新版本");
        textView2.setText("立即更新");
        textView.setText("直接启动");
        textView2.setOnClickListener(new c(context, commonGameInfoBean, tVar));
        textView.setOnClickListener(new d(context, commonGameInfoBean, tVar));
        tVar.show();
    }

    public com.join.mgps.customview.t L(Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) tVar.findViewById(R.id.dialog_desci);
        textView.setText("完善资料");
        textView2.setText(context.getString(R.string.tour_perfect_info_tip));
        textView3.setVisibility(8);
        button2.setText("去完善");
        button.setText("下次再说");
        button2.setOnClickListener(new l(tVar));
        button.setOnClickListener(new m(tVar));
        return tVar;
    }

    public com.join.mgps.customview.t M(final Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) tVar.findViewById(R.id.dialog_desci);
        textView.setText("提示");
        textView2.setText("铜板不足，成为悟饭会员每天即可领取300铜板哦~");
        textView3.setVisibility(8);
        button2.setText("我要VIP特权");
        button2.setTextColor(context.getResources().getColor(R.color.main_yello_color));
        button.setText("取消");
        button2.setOnClickListener(new n(context, tVar));
        button.setOnClickListener(new o(tVar));
        return tVar;
    }

    public void N(FragmentManager manager, String title, String hint, String cancelStr, String okStr) {
        FragmentTransaction fragmentTransactionBeginTransaction = manager.beginTransaction();
        Fragment fragmentFindFragmentByTag = manager.findFragmentByTag(f49614j);
        if (fragmentFindFragmentByTag != null) {
            fragmentTransactionBeginTransaction.remove(fragmentFindFragmentByTag);
        }
        CustomerAlertDialog.a(title, hint, cancelStr, okStr).show(manager, f49614j);
        manager.executePendingTransactions();
    }

    public com.join.mgps.customview.t O(Context context, int type, final com.join.mgps.callbacks.d callBack) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) tVar.findViewById(R.id.dialog_desci);
        ImageView imageView = (ImageView) tVar.findViewById(R.id.notice);
        if (type == 1) {
            imageView.setVisibility(0);
            textView.setText("预约成功");
            textView2.setText("游戏新动态提醒留意通知栏和消息中心");
            textView3.setText("游戏上线后将为你发放礼包等福利");
            button2.setText("我知道了");
            button.setVisibility(8);
        } else if (type == 2) {
            textView.setText("收藏成功");
            imageView.setVisibility(0);
            textView2.setText("游戏新动态提醒留意通知栏和消息中心");
            textView3.setText("游戏新动态包括：游戏开放下载、开测、礼包、活动等");
            button2.setText("我知道了");
            button.setVisibility(8);
        } else if (type == 3) {
            textView.setText("取消关注");
            textView2.setText("取消后你将无法及时收到礼包、开测等动态的提醒哦~确定要取消吗？");
            textView3.setVisibility(8);
            button2.setText("确定");
            button.setText("关闭");
        }
        button2.setOnClickListener(new t(callBack, tVar));
        button.setOnClickListener(new u(callBack, tVar));
        return tVar;
    }

    public void P(Context context, String gameId) {
        WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
        warningDialogParam.setType(0);
        warningDialogParam.setGameId(gameId);
        StringBuilder sb2 = new StringBuilder();
        sb2.append("该游戏与安卓");
        String str = Build.VERSION.RELEASE;
        sb2.append(str);
        sb2.append("系统版本不兼容");
        warningDialogParam.setTitle(sb2.toString());
        warningDialogParam.setContent("该游戏在安卓" + str + "版本中可能存在闪退、显示效果不佳、运行不流畅等现象");
        warningDialogParam.setPositive("仍要下载");
        Intent intent = new Intent(context, (Class<?>) WarningDialogActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
        context.startActivity(intent);
    }

    public void Q(Context context, String gameId, int cpuType) {
        String str;
        WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
        warningDialogParam.setType(0);
        warningDialogParam.setTitle("此设备运行该游戏稳定性欠佳!");
        if (cpuType == 96) {
            str = "32、64";
        } else {
            str = cpuType + "";
        }
        warningDialogParam.setContent("此设备最低兼容ARM " + str + "位游戏，继续下载\n可能出现无法安装、闪退、卡顿、延迟等问题~");
        warningDialogParam.setPositive("仍要下载");
        warningDialogParam.setEvent(0);
        warningDialogParam.setGameId(gameId);
        Intent intent = new Intent(context, (Class<?>) WarningDialogActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
        context.startActivity(intent);
        com.papa.sim.statistic.t.l(context).R1(Event.gameDownloadNoCpuTips, new Ext().setGameId(gameId));
    }

    public Dialog R(final Context context, String title, String url, final com.join.mgps.dialog.p0.c clickListener) {
        return new com.join.mgps.dialog.p0(context, R.style.HKDialogLoading).d(url).e(title).b(false).c(clickListener);
    }

    public void S(Context context, int showType, List<DownloadTask> tasks) {
        if (context == null || tasks == null) {
            return;
        }
        try {
            if (tasks.size() == 0) {
                return;
            }
            for (DownloadTask downloadTask : tasks) {
                if (d2.f49545c.equals(downloadTask.getCrc_link_type_val()) || d2.f49546d.equals(downloadTask.getCrc_link_type_val())) {
                    tasks.remove(downloadTask);
                    break;
                }
            }
            if (tasks.size() == 0) {
                return;
            }
            c6 c6Var = this.f49620f;
            if (c6Var != null && c6Var.isShowing()) {
                this.f49620f.dismiss();
            }
            c6 c6Var2 = new c6(context, showType, tasks);
            this.f49620f = c6Var2;
            if (c6Var2.isShowing()) {
                this.f49620f.dismiss();
            }
            this.f49620f.show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void T(Context context, String args, String gameId, int cpuType) {
        String str;
        WarningDialogActivity.WarningDialogParam warningDialogParam = new WarningDialogActivity.WarningDialogParam();
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        warningDialogParam.setType(0);
        if (args == null) {
            args = "";
        }
        warningDialogParam.setArgs(args);
        warningDialogParam.setGameId(gameId);
        Intent intent = new Intent(context, (Class<?>) WarningDialogActivity.class);
        intent.addFlags(C.ENCODING_PCM_MU_LAW);
        if (downloadTaskG != null) {
            if (cpuType == 64 && downloadTaskG.getCpu_type() == 32) {
                warningDialogParam.setTitle("请注意");
                warningDialogParam.setContent("此游戏在您的设备上存在稳定性问题，请先安装稳定性优化插件，再运行游戏");
                warningDialogParam.setPositive("立即安装");
                warningDialogParam.setNegative("取消");
                if (downloadTaskG.isCloudGame() && w0.j()) {
                    warningDialogParam.setType(3);
                    warningDialogParam.setPositive("立即安装");
                    warningDialogParam.setNegative("取消");
                } else {
                    warningDialogParam.setType(0);
                    warningDialogParam.setPositive("立即安装");
                    warningDialogParam.setNegative("取消");
                }
                warningDialogParam.setEvent(3);
                intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
                IntentUtil.getInstance().startActivityWithCallback(context, WarningDialogActivity.class, intent, new f0(context, downloadTaskG));
                return;
            }
            if (cpuType == 32 && downloadTaskG.getCpu_type() == 64) {
                warningDialogParam.setContent("此游戏仅支持64位手机，您的设备无法正常运行此游戏");
                warningDialogParam.setConfirm("我知道了");
                warningDialogParam.setEvent(1);
                intent.addFlags(C.ENCODING_PCM_MU_LAW);
                intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
                context.startActivity(intent);
                return;
            }
        }
        warningDialogParam.setTitle("此设备运行该游戏稳定性欠佳!");
        if (cpuType == 96) {
            str = "32、64";
        } else {
            str = cpuType + "";
        }
        warningDialogParam.setContent("此设备最低兼容ARM " + str + "位游戏，继续启动\n游戏可能出现闪退、黑屏、卡顿、延迟等问题~");
        warningDialogParam.setPositive("启动");
        intent.putExtra(WarningDialogActivity.KEY_PARAM, warningDialogParam);
        context.startActivity(intent);
    }

    /* JADX INFO: renamed from: U, reason: merged with bridge method [inline-methods] */
    public void G(Context context, String gameId, DomainInfoBean bean) {
        if (context != null) {
            try {
                if (!TextUtils.isEmpty(gameId)) {
                    com.join.mgps.dialog.o1 o1Var = this.f49617c;
                    if (o1Var != null && o1Var.isShowing()) {
                        this.f49617c.dismiss();
                    }
                    com.join.mgps.dialog.o1 o1Var2 = new com.join.mgps.dialog.o1(context);
                    this.f49617c = o1Var2;
                    if (o1Var2.isShowing()) {
                        this.f49617c.dismiss();
                    }
                    this.f49617c.a(gameId, bean);
                    return;
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        h1.e("WF", "mod questionnaire " + gameId);
    }

    public void V(Context context, String gameId, String stdGameId, ModFeedbackBean data) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(stdGameId)) {
                    return;
                }
                com.join.mgps.dialog.r1 r1Var = this.f49619e;
                if (r1Var != null && r1Var.isShowing()) {
                    this.f49619e.dismiss();
                }
                com.join.mgps.dialog.r1 r1Var2 = new com.join.mgps.dialog.r1(context);
                this.f49619e = r1Var2;
                r1Var2.f(gameId, stdGameId, data);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void W(Context context, String gameId, String stdGameId) {
        if (context != null) {
            try {
                if (TextUtils.isEmpty(stdGameId)) {
                    return;
                }
                com.join.mgps.dialog.s1 s1Var = this.f49618d;
                if (s1Var != null && s1Var.isShowing()) {
                    this.f49618d.dismiss();
                }
                com.join.mgps.dialog.s1 s1Var2 = new com.join.mgps.dialog.s1(context);
                this.f49618d = s1Var2;
                s1Var2.b(gameId, stdGameId);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public void X(Context context, OnlineCouponConfigBean data, int localType) {
        Y(context, data, localType, null);
    }

    public void Y(Context context, OnlineCouponConfigBean data, int localType, n0 callback) {
        try {
            com.join.mgps.dialog.w1 w1Var = new com.join.mgps.dialog.w1(context, data, localType);
            this.f49621g = w1Var;
            w1Var.setOnDismissListener(new c0(callback));
            this.f49621g.show();
            UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
            if (accountData != null && localType == 3) {
                int accountType = accountData.getAccountType();
                PrefDef_ prefDef_ = new PrefDef_(context);
                if (accountType == 1) {
                    prefDef_.lastQuitShowOnlineCouponTime().g(Long.valueOf(System.currentTimeMillis()));
                } else {
                    prefDef_.lastQuitShowOnlineCouponTimeGuset().g(Long.valueOf(System.currentTimeMillis()));
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void Z(Context context, com.tbruyelle.rxpermissions2.b permission) {
        Dialog dialog = this.f49615a;
        if (dialog != null) {
            if (dialog.isShowing()) {
                this.f49615a.dismiss();
            }
            this.f49615a = null;
        }
        this.f49616b = new AlertDialog.Builder(context, R.style.AlertDialogCustom);
        if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74783g)) {
            return;
        }
        this.f49616b.setTitle("提示");
        if (permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74786j) || permission.f83018a.equals(com.kuaishou.weapon.p0.g.f74785i)) {
            this.f49616b.setMessage("需要打开读写存储权限，请去设置中开启权限");
        } else {
            this.f49616b.setMessage("请去设置中开启权限" + permission.f83018a);
        }
        this.f49616b.setPositiveButton("去打开", new k(context));
        this.f49615a = this.f49616b.show();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void a0(final Context context, final String gameId, final EMUApkTable emuApkTable, final String from) {
        ((PlugUpdateDialog_.a) PlugUpdateDialog_.intent(context).a(from).b(gameId).c(emuApkTable).flags(C.ENCODING_PCM_A_LAW)).start();
    }

    public void b0(Context context, WxProgram wxProgram) {
        try {
            PrivateDomainDefaultActivity_.intent(context).a(wxProgram).start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void c0(Context context, DomainInfoBean domainInfoBean) {
        try {
            if ((MApplication.f3182z.getActivity() instanceof DiscoveryPaiweiActivity_) || (MApplication.f3182z.getActivity() instanceof EndGameActivity_) || (MApplication.f3182z.getActivity() instanceof EndGameLaunchActivity_) || (MApplication.f3182z.getActivity() instanceof EndGameDetailActivity_)) {
                return;
            }
            ((PrivateDomainDownloadActivity_.a) PrivateDomainDownloadActivity_.intent(context).a(domainInfoBean).flags(809500672)).start();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public Dialog d(Context context, String title, String content, String cancleText, String okText, final com.join.mgps.callbacks.e callback) {
        Dialog dialog = new Dialog(context, R.style.MyDialog);
        dialog.setContentView(R.layout.dialog_customer_alert);
        dialog.setCancelable(true);
        dialog.setCanceledOnTouchOutside(true);
        Button button = (Button) dialog.findViewById(R.id.dialog_button_cancle);
        Button button2 = (Button) dialog.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) dialog.findViewById(R.id.dialog_content);
        ((TextView) dialog.findViewById(R.id.tip_title)).setText(title);
        textView.setText(content);
        button.setText(cancleText);
        button2.setText(okText);
        button2.setOnClickListener(new w(callback, dialog));
        button.setOnClickListener(new x(callback, dialog));
        return dialog;
    }

    public void d0(final Context context, final String qqkey, String imageUrl, final String qqqunS) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.qq_dialog_layout);
        ImageView imageView = (ImageView) tVar.findViewById(R.id.closed);
        com.join.android.app.common.utils.l.d((SimpleDraweeView) tVar.findViewById(R.id.images), R.drawable.banner_normal_icon, imageUrl);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_ok);
        imageView.setOnClickListener(new y(tVar));
        button.setOnClickListener(new z(tVar, context, qqkey, qqqunS));
        tVar.setCancelable(false);
        tVar.show();
    }

    public boolean e(final Context context) {
        DownloadTask downloadTaskG;
        final String strD = MApplication.f3182z.p().lastLaunchModGameId().d();
        if (t2.i(strD) && (downloadTaskG = q5.f.M().G(strD)) != null && (downloadTaskG.getGame_run_state() == 3 || downloadTaskG.getGame_run_state() == 0)) {
            String strD2 = MApplication.f3182z.p().privateDomainFeedbackInfo().d();
            if (t2.i(strD2)) {
                final DomainInfoBean domainInfoBean = (DomainInfoBean) JsonMapper.getInstance().fromJson(strD2, DomainInfoBean.class);
                if (domainInfoBean != null) {
                    PdAdCfgBean pdAdCfgBeanConvertStr2Bean = PdAdCfgBean.convertStr2Bean(MApplication.f3182z.p().pd_ad_config().d());
                    boolean z10 = pdAdCfgBeanConvertStr2Bean != null && pdAdCfgBeanConvertStr2Bean.canShowStartUp(downloadTaskG.getFeed_back_show_times());
                    if (strD.equals(domainInfoBean.getGameId()) && System.currentTimeMillis() - domainInfoBean.getLaunchTime() < 20000 && z10) {
                        downloadTaskG.setFeed_back_show_times(downloadTaskG.getFeed_back_show_times() + 1);
                        q5.f.M().m(downloadTaskG);
                        new Handler().postDelayed(new Runnable() { // from class: com.join.mgps.Util.f0
                            @Override // java.lang.Runnable
                            public final void run() {
                                this.f49603b.G(context, strD, domainInfoBean);
                            }
                        }, 200L);
                        return true;
                    }
                }
            } else if (System.currentTimeMillis() - downloadTaskG.getOpenTime() < 20000) {
                com.papa.sim.statistic.t.l(context).R1(Event.VMGameStartFailError, new Ext().setGameId(strD));
            }
        }
        return false;
    }

    public com.join.mgps.customview.t e0(Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) tVar.findViewById(R.id.dialog_desci);
        textView.setText("提示");
        textView2.setText(context.getString(R.string.need_svip_info_tip));
        textView3.setVisibility(8);
        button2.setText("了解SVIP");
        button.setText("下次再说");
        button2.setOnClickListener(new p(tVar));
        button.setOnClickListener(new q(tVar));
        return tVar;
    }

    public Dialog f(final Context context, List<CouponsData> couponsDatas, v6.c cardIDNumber, int money, boolean isMixPay) {
        com.join.mgps.dialog.d0 d0Var = new com.join.mgps.dialog.d0(context, R.style.DialogCoupon, couponsDatas, cardIDNumber, money, isMixPay);
        Window window = d0Var.getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = -1;
        attributes.height = -1;
        window.setAttributes(attributes);
        return d0Var;
    }

    public void f0(final Context context, final DownloadTask downloadTask) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.update_choice_dialog);
        TextView textView = (TextView) tVar.findViewById(R.id.dialog_button_cancel);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView3 = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView4 = (TextView) tVar.findViewById(R.id.dialog_content);
        textView3.setText("更新提示");
        textView4.setText("【" + downloadTask.getShowName() + "】可更新版本");
        textView2.setText("立即更新");
        textView.setText("直接启动");
        textView2.setOnClickListener(new e(context, downloadTask, tVar));
        textView.setOnClickListener(new f(context, downloadTask, tVar));
        tVar.show();
    }

    public Dialog g(final Context context, final n0 callback) {
        com.join.mgps.dialog.b bVarI = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("现在不").g("登陆后，开始悟饭游戏的精彩旅游").j("登录").k("提示").i(new v(context, callback));
        bVarI.setOnKeyListener(new DialogInterfaceOnKeyListenerC0663g0(callback));
        bVarI.setOnCancelListener(new h0(callback));
        bVarI.show();
        return bVarI;
    }

    public com.join.mgps.customview.t g0(Context context) {
        com.join.mgps.customview.t tVar = new com.join.mgps.customview.t(context, R.style.MyDialog);
        tVar.setContentView(R.layout.bind_dialog);
        Button button = (Button) tVar.findViewById(R.id.dialog_button_cancel);
        Button button2 = (Button) tVar.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) tVar.findViewById(R.id.tip_title);
        TextView textView2 = (TextView) tVar.findViewById(R.id.dialog_content);
        TextView textView3 = (TextView) tVar.findViewById(R.id.dialog_desci);
        textView.setText("提示");
        textView2.setText(context.getString(R.string.need_vip_info_tip));
        textView3.setVisibility(8);
        button2.setText("我要成为VIP");
        button.setText("下次再说");
        button2.setOnClickListener(new r(tVar));
        button.setOnClickListener(new s(tVar));
        return tVar;
    }

    public com.join.mgps.dialog.b h(Context context) {
        return new com.join.mgps.dialog.b(context, R.style.HKDialogLoading);
    }

    public void i(final Context context) {
        new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("现在不").g("登陆后，悟饭可以为你永久免费记录成就").j("登录").k("提示").i(new b(context)).show();
    }

    public void j(final Context context) {
        IntentUtil.getInstance().goLoginBattle(context);
    }

    public void k(final Context context) {
        g(context, null);
    }

    public void l(final Context context, String content, String okStr, String cancelStr, final o0 lienster) {
        com.join.mgps.dialog.b bVar = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading);
        if (content.isEmpty()) {
            content = "请登录后使用该功能";
        }
        com.join.mgps.dialog.b bVarG = bVar.g(content);
        if (okStr.isEmpty()) {
            okStr = "登录";
        }
        com.join.mgps.dialog.b bVarJ = bVarG.j(okStr);
        if (cancelStr.isEmpty()) {
            cancelStr = "取消";
        }
        bVarJ.d(cancelStr).k("提示").i(new i(context, lienster)).show();
    }

    public void m(final Context context) {
        IntentUtil.getInstance().goLoginInteractive(context);
    }

    public Dialog n(final Context context, final String name, final int coin, final n0 callback) {
        com.join.mgps.dialog.b bVarI = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("取消").g(String.format("把“%s”踢出房间\n需要消耗%d铜板\n您确定要踢出？", name, Integer.valueOf(coin))).j("确定").k("提示").i(new i0(context, callback));
        bVarI.setOnKeyListener(new j0(callback));
        bVarI.setOnCancelListener(new k0(callback));
        bVarI.show();
        return bVarI;
    }

    public Dialog o(final Context context, final n0 callback) {
        com.join.mgps.dialog.b bVarI = new com.join.mgps.dialog.b(context, R.style.HKDialogLoading).d("取消").g("你已被踢出游戏\n开通VIP会员，立即享受防踢特权").j("开通会员").k("提示").i(new l0(context, callback));
        bVarI.setOnKeyListener(new m0(callback));
        bVarI.setOnCancelListener(new a(callback));
        bVarI.show();
        return bVarI;
    }

    public com.join.mgps.dialog.o p(Context context, int backupNumber) {
        return new com.join.mgps.dialog.o(context, R.style.HKDialogLoading, backupNumber);
    }

    public com.join.mgps.dialog.r q(Context context) {
        return new com.join.mgps.dialog.r(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.s r(Context context) {
        return new com.join.mgps.dialog.s(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.t s(Context context) {
        return new com.join.mgps.dialog.t(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.l0 t(Context context) {
        return new com.join.mgps.dialog.l0(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.t0 u(Context context) {
        return new com.join.mgps.dialog.t0(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.z0 v(Context context) {
        return new com.join.mgps.dialog.z0(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.a1 w(Context context) {
        return new com.join.mgps.dialog.a1(context, R.style.HKDialogLoading);
    }

    public com.join.mgps.dialog.f1 x(Context context) {
        return new com.join.mgps.dialog.f1(context, R.style.MyprogressDialog);
    }

    public com.join.mgps.dialog.f1 y(Context context, String string) {
        return new com.join.mgps.dialog.f1(context, R.style.MyprogressDialog, string);
    }

    public com.join.mgps.dialog.f1 z(Context context, String string, boolean cancleAble) {
        com.join.mgps.dialog.f1 f1Var = new com.join.mgps.dialog.f1(context, R.style.MyprogressDialog, string, cancleAble);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = f1Var.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            f1Var.getWindow().setAttributes(attributes);
        }
        return f1Var;
    }
}
