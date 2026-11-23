package com.join.mgps.socket.fight.arena;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.os.Build;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import app.mgsim.arena.RoomSeatState;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.i0;
import com.join.mgps.Util.n3;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.t2;
import com.join.mgps.dto.ArchiveBean;
import com.join.mgps.dto.BattleChallengeConfig;
import com.papa91.battle.protocol.KickInfo;
import com.papa91.battle.protocol.RoomPosition;
import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Date;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final int f73074g = 256;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final int f73075h = 257;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final int f73076i = 258;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f73077j = "dialog_error_hint";

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final String f73078k = "leave_room";

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final String f73079l = "toast_move_in_spectator";

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final String f73080m = "toast_kic_out_room";

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final String f73081n = "net_archive";

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final String f73082o = "kick_info";

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final String f73083p = "kic_out_room_info";

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final String f73084q = "seat_set";

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final String f73085r = "set_challenge_gold";

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final String f73086s = "share_friends_1";

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final String f73087t = "share_friends_2";

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final String f73088u = "svr_play_mode";

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final int f73089v = Color.parseColor("#ffffff");

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int f73090w = Color.parseColor("#0989BA");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Dialog f73091a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f73092b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private y f73093c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a0 f73095e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f73094d = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final View.OnClickListener f73096f = new p();

    /* JADX INFO: renamed from: com.join.mgps.socket.fight.arena.a$a, reason: collision with other inner class name */
    class ViewOnClickListenerC0747a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object[] f73097b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f73098c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ String f73099d;

        ViewOnClickListenerC0747a(final Object[] val$params, final int val$shareType, final String val$shareContent) {
            this.f73097b = val$params;
            this.f73098c = val$shareType;
            this.f73099d = val$shareContent;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String string;
            String string2 = "";
            try {
                string = this.f73097b[2].toString();
                try {
                    string2 = this.f73097b[3].toString();
                } catch (Exception unused) {
                }
            } catch (Exception unused2) {
                string = "";
            }
            com.papa.sim.statistic.t.l(a.this.f73092b).m1(AccountUtil_.getInstance_(a.this.f73092b).getUid(), string, string2);
            a.this.f73093c.onShare(this.f73098c, this.f73099d);
            a.this.w();
        }
    }

    private class a0 {
        private static final String A = "_v2_lob_2.";

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        private static final String f73101z = "_lob.";

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private RelativeLayout f73102a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RelativeLayout f73103b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private RelativeLayout f73104c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private ImageView f73105d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private ImageView f73106e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private ImageView f73107f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private TextView f73108g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private TextView f73109h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private TextView f73110i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private TextView f73111j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private TextView f73112k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private TextView f73113l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ImageView f73114m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private ImageView f73115n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private ImageView f73116o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private ArchiveBean f73117p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private Context f73118q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private List<ArchiveBean> f73119r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private String f73120s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        TextView f73122u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        LinearLayout f73123v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        RelativeLayout f73124w;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f73121t = false;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        boolean f73125x = false;

        /* JADX INFO: renamed from: com.join.mgps.socket.fight.arena.a$a0$a, reason: collision with other inner class name */
        class ViewOnClickListenerC0748a implements View.OnClickListener {
            ViewOnClickListenerC0748a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                a0 a0Var = a0.this;
                a0Var.f73117p = (ArchiveBean) a0Var.f73119r.get(0);
                if (a0.this.f73114m.getVisibility() == 0) {
                    a.this.f73093c.onNetArchiveSelected(null, "");
                } else {
                    a.this.f73093c.onNetArchiveSelected(a0.this.f73117p, a0.this.f73120s + net.lingala.zip4j.util.e.F0 + a0.this.f73117p.getRecordFile());
                }
                a.this.w();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                a0 a0Var = a0.this;
                a0Var.f73117p = (ArchiveBean) a0Var.f73119r.get(1);
                if (a0.this.f73115n.getVisibility() == 0) {
                    a.this.f73093c.onNetArchiveSelected(null, "");
                } else {
                    a.this.f73093c.onNetArchiveSelected(a0.this.f73117p, a0.this.f73120s + net.lingala.zip4j.util.e.F0 + a0.this.f73117p.getRecordFile());
                }
                a.this.w();
            }
        }

        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                a0 a0Var = a0.this;
                a0Var.f73117p = (ArchiveBean) a0Var.f73119r.get(2);
                if (a0.this.f73116o.getVisibility() == 0) {
                    a.this.f73093c.onNetArchiveSelected(null, "");
                } else {
                    a.this.f73093c.onNetArchiveSelected(a0.this.f73117p, a0.this.f73120s + net.lingala.zip4j.util.e.F0 + a0.this.f73117p.getRecordFile());
                }
                a.this.w();
            }
        }

        class d implements Comparator<ArchiveBean> {
            d() {
            }

            @Override // java.util.Comparator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public int compare(ArchiveBean o10, ArchiveBean o11) {
                if (o10.getFileTime() > o11.getFileTime()) {
                    return -1;
                }
                return o10.getFileTime() == o11.getFileTime() ? 0 : 1;
            }
        }

        public a0(Context context, Object... params) {
            this.f73117p = null;
            this.f73118q = context;
            l(context);
            this.f73117p = (ArchiveBean) params[1];
            i("" + params[0]);
        }

        private boolean h(File[] files, File rootFile) {
            boolean z10;
            String name = rootFile.getName();
            int length = files.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    z10 = true;
                    break;
                }
                String name2 = files[i10].getName();
                if (!name2.equals(name + A + "1")) {
                    if (!name2.equals(name + A + "2")) {
                        if (!name2.equals(name + A + "3")) {
                            i10++;
                        }
                    }
                }
                z10 = false;
                break;
            }
            if (z10) {
                for (File file : files) {
                    String name3 = file.getName();
                    if (!name3.equals(name + f73101z + "1")) {
                        if (!name3.equals(name + f73101z + "2")) {
                            if (!name3.equals(name + f73101z + "3")) {
                            }
                        }
                    }
                    this.f73125x = true;
                    break;
                }
            }
            return z10;
        }

        private String k(long lastTime) {
            return new SimpleDateFormat("HH:mm MM-dd").format(new Date(lastTime));
        }

        private void l(Context context) {
            a.this.f73091a = new Dialog(context, R.style.newtrans_floating_dialog);
            if (Build.VERSION.SDK_INT >= 28) {
                WindowManager.LayoutParams attributes = a.this.f73091a.getWindow().getAttributes();
                attributes.layoutInDisplayCutoutMode = 1;
                a.this.f73091a.getWindow().setAttributes(attributes);
            }
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_net_archive, (ViewGroup) null);
            this.f73124w = (RelativeLayout) viewInflate.findViewById(R.id.rl_main);
            this.f73122u = (TextView) viewInflate.findViewById(R.id.tv_oldArchive);
            this.f73123v = (LinearLayout) viewInflate.findViewById(R.id.ll_archive);
            this.f73122u.setVisibility(8);
            this.f73123v.setVisibility(0);
            this.f73105d = (ImageView) viewInflate.findViewById(R.id.iv_archive_1);
            this.f73106e = (ImageView) viewInflate.findViewById(R.id.iv_archive_2);
            this.f73107f = (ImageView) viewInflate.findViewById(R.id.iv_archive_3);
            this.f73108g = (TextView) viewInflate.findViewById(R.id.tv_archive_1);
            this.f73109h = (TextView) viewInflate.findViewById(R.id.tv_archive_2);
            this.f73110i = (TextView) viewInflate.findViewById(R.id.tv_archive_3);
            this.f73111j = (TextView) viewInflate.findViewById(R.id.tv_name_1);
            this.f73112k = (TextView) viewInflate.findViewById(R.id.tv_name_2);
            this.f73113l = (TextView) viewInflate.findViewById(R.id.tv_name_3);
            this.f73114m = (ImageView) viewInflate.findViewById(R.id.iv_choice_1);
            this.f73115n = (ImageView) viewInflate.findViewById(R.id.iv_choice_2);
            this.f73116o = (ImageView) viewInflate.findViewById(R.id.iv_choice_3);
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.rl_archive_1);
            this.f73102a = relativeLayout;
            relativeLayout.setOnClickListener(new ViewOnClickListenerC0748a());
            RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.rl_archive_2);
            this.f73103b = relativeLayout2;
            relativeLayout2.setOnClickListener(new b());
            RelativeLayout relativeLayout3 = (RelativeLayout) viewInflate.findViewById(R.id.rl_archive_3);
            this.f73104c = relativeLayout3;
            relativeLayout3.setOnClickListener(new c());
            a.this.k(viewInflate);
            a.this.B(viewInflate, 17, 0, 0);
        }

        private void m() {
            boolean z10;
            boolean z11;
            int size = this.f73119r.size();
            if (size >= 3) {
                z10 = true;
                z11 = true;
            } else {
                z10 = size == 2;
                z11 = false;
            }
            this.f73102a.setVisibility(0);
            this.f73111j.setText(this.f73119r.get(0).getShowName());
            this.f73105d.setImageBitmap(BitmapFactory.decodeFile(this.f73119r.get(0).getIconFile()));
            this.f73108g.setText(this.f73119r.get(0).getUpdate_time());
            if (z10) {
                this.f73103b.setVisibility(0);
                this.f73112k.setText(this.f73119r.get(1).getShowName());
                this.f73106e.setImageBitmap(BitmapFactory.decodeFile(this.f73119r.get(1).getIconFile()));
                this.f73109h.setText(this.f73119r.get(1).getUpdate_time());
            }
            if (z11) {
                this.f73104c.setVisibility(0);
                this.f73113l.setText(this.f73119r.get(2).getShowName());
                this.f73107f.setImageBitmap(BitmapFactory.decodeFile(this.f73119r.get(2).getIconFile()));
                this.f73110i.setText(this.f73119r.get(2).getUpdate_time());
            }
            if (this.f73117p != null) {
                for (int i10 = 0; i10 < this.f73119r.size(); i10++) {
                    if (this.f73117p.getShowName().equals(this.f73119r.get(i10).getShowName())) {
                        p(i10);
                        return;
                    }
                }
            }
        }

        private void o(File file, File[] files, String suffix_name) {
            for (File file2 : files) {
                String name = file2.getName();
                if (name.equals(file.getName() + suffix_name + "1")) {
                    ArchiveBean archiveBean = new ArchiveBean();
                    archiveBean.setRecordFile(name);
                    archiveBean.setIconFile(this.f73120s + net.lingala.zip4j.util.e.F0 + name + ".png");
                    archiveBean.setFileTime(file2.lastModified());
                    archiveBean.setUpdate_time(k(file2.lastModified()));
                    this.f73119r.add(archiveBean);
                }
                if (name.equals(file.getName() + suffix_name + "2")) {
                    ArchiveBean archiveBean2 = new ArchiveBean();
                    archiveBean2.setRecordFile(name);
                    archiveBean2.setIconFile(this.f73120s + net.lingala.zip4j.util.e.F0 + name + ".png");
                    archiveBean2.setUpdate_time(k(file2.lastModified()));
                    archiveBean2.setFileTime(file2.lastModified());
                    this.f73119r.add(archiveBean2);
                }
                if (name.equals(file.getName() + suffix_name + "3")) {
                    ArchiveBean archiveBean3 = new ArchiveBean();
                    archiveBean3.setRecordFile(name);
                    archiveBean3.setIconFile(this.f73120s + net.lingala.zip4j.util.e.F0 + name + ".png");
                    archiveBean3.setUpdate_time(k(file2.lastModified()));
                    archiveBean3.setFileTime(file2.lastModified());
                    this.f73119r.add(archiveBean3);
                }
            }
            Collections.sort(this.f73119r, new d());
            for (int i10 = 0; i10 < this.f73119r.size(); i10++) {
                this.f73119r.get(i10).setShowName("存档" + (this.f73119r.size() - i10));
            }
        }

        private void p(int choice) {
            if (choice == 0) {
                this.f73102a.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
                this.f73103b.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f73104c.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f73111j.setTextColor(a.f73089v);
                this.f73112k.setTextColor(a.f73090w);
                this.f73113l.setTextColor(a.f73090w);
                this.f73108g.setTextColor(a.f73089v);
                this.f73109h.setTextColor(a.f73090w);
                this.f73110i.setTextColor(a.f73090w);
                this.f73114m.setVisibility(0);
                this.f73115n.setVisibility(8);
                this.f73116o.setVisibility(8);
                return;
            }
            if (choice == 1) {
                this.f73102a.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f73103b.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
                this.f73104c.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
                this.f73111j.setTextColor(a.f73090w);
                this.f73112k.setTextColor(a.f73089v);
                this.f73113l.setTextColor(a.f73090w);
                this.f73108g.setTextColor(a.f73090w);
                this.f73109h.setTextColor(a.f73089v);
                this.f73110i.setTextColor(a.f73090w);
                this.f73114m.setVisibility(8);
                this.f73115n.setVisibility(0);
                this.f73116o.setVisibility(8);
                return;
            }
            if (choice != 2) {
                return;
            }
            this.f73102a.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
            this.f73103b.setBackgroundResource(R.drawable.bg_btn_border_gray_four);
            this.f73104c.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            this.f73111j.setTextColor(a.f73090w);
            this.f73112k.setTextColor(a.f73090w);
            this.f73113l.setTextColor(a.f73089v);
            this.f73108g.setTextColor(a.f73090w);
            this.f73109h.setTextColor(a.f73090w);
            this.f73110i.setTextColor(a.f73089v);
            this.f73114m.setVisibility(8);
            this.f73115n.setVisibility(8);
            this.f73116o.setVisibility(0);
        }

        boolean i(String gameId) {
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            if (downloadTaskG == null) {
                return false;
            }
            j(downloadTaskG);
            if (this.f73119r.size() <= 0) {
                this.f73121t = false;
                return false;
            }
            this.f73121t = true;
            m();
            return true;
        }

        void j(DownloadTask downloadTask) {
            File[] fileArrListFiles;
            this.f73119r = new ArrayList();
            this.f73120s = o3.t(downloadTask.getGameZipPath(), Integer.parseInt(downloadTask.getRomType()));
            File file = new File(this.f73120s);
            if (!file.exists()) {
                file = new File(downloadTask.getGameZipPath()).getParentFile();
                this.f73120s = file.getAbsolutePath();
            }
            if (file.exists() && (fileArrListFiles = file.listFiles()) != null) {
                o(file, fileArrListFiles, f73101z);
            }
        }

        public boolean n() {
            return this.f73121t;
        }
    }

    class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73094d = 1;
            a.this.f73093c.onShareTypeChoice(a.this.f73094d);
            a.this.w();
        }
    }

    public static class b0 implements y {
        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onChallengeGoldSet(int value) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onDialogDismiss(String dialogType) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onDisable() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onErrorHint(int operation, int errorType, Object value) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onGetKickOutRoomPositionInfo(RoomPosition roomPosition, int position) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onLeaveRoom() {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onNetArchiveSelected(ArchiveBean archiveBean, String path) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onReport(RoomPosition roomPosition) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onSeatSet(RoomSeatState state, int position) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onShare(int shareType, String shareContent) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onShareTypeChoice(int shareType) {
        }

        @Override // com.join.mgps.socket.fight.arena.a.y
        public void onSvrPlayMode(int mode) {
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73094d = 2;
            a.this.f73093c.onShareTypeChoice(a.this.f73094d);
            a.this.w();
        }
    }

    class d implements DialogInterface.OnDismissListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            if (a.this.f73094d != 0) {
                a.this.f73093c.onShareTypeChoice(a.this.f73094d);
            }
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f73134b;

        e(final BattleChallengeConfig val$config) {
            this.f73134b = val$config;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onChallengeGoldSet(this.f73134b.getBattleChallengeCopper()[0]);
            a.this.w();
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f73136b;

        f(final BattleChallengeConfig val$config) {
            this.f73136b = val$config;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onChallengeGoldSet(this.f73136b.getBattleChallengeCopper()[1]);
            a.this.w();
        }
    }

    class g implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f73138b;

        g(final BattleChallengeConfig val$config) {
            this.f73138b = val$config;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onChallengeGoldSet(this.f73138b.getBattleChallengeCopper()[2]);
            a.this.w();
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ BattleChallengeConfig f73140b;

        h(final BattleChallengeConfig val$config) {
            this.f73140b = val$config;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onChallengeGoldSet(this.f73140b.getBattleChallengeCopper()[3]);
            a.this.w();
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomPosition f73142b;

        i(final RoomPosition val$roomPosition) {
            this.f73142b = val$roomPosition;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onReport(this.f73142b);
            a.this.w();
        }
    }

    class j implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomPosition f73144b;

        j(final RoomPosition val$roomPosition) {
            this.f73144b = val$roomPosition;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onReport(this.f73144b);
            a.this.w();
        }
    }

    class k implements View.OnClickListener {
        k() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.w();
        }
    }

    class l implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomPosition f73147b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f73148c;

        l(final RoomPosition val$roomPosition, final int val$position) {
            this.f73147b = val$roomPosition;
            this.f73148c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onGetKickOutRoomPositionInfo(this.f73147b, this.f73148c);
            a.this.w();
        }
    }

    class m implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ RoomSeatState f73150b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f73151c;

        m(final RoomSeatState val$state, final int val$position) {
            this.f73150b = val$state;
            this.f73151c = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onSeatSet(this.f73150b, this.f73151c);
            a.this.w();
        }
    }

    class n implements DialogInterface.OnDismissListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f73153b;

        n(final String val$type) {
            this.f73153b = val$type;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            a.this.f73093c.onDialogDismiss(this.f73153b);
        }
    }

    class o implements View.OnClickListener {
        o() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onLeaveRoom();
        }
    }

    class p implements View.OnClickListener {
        p() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.w();
        }
    }

    class q implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f73157b;

        q(final int val$mode) {
            this.f73157b = val$mode;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (a.this.f73093c != null) {
                a.this.f73093c.onSvrPlayMode(this.f73157b);
            }
            a.this.w();
        }
    }

    class r implements View.OnClickListener {
        r() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.w();
        }
    }

    class s implements View.OnClickListener {
        s() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (a.this.f73093c != null) {
                a.this.f73093c.onDisable();
            }
            a.this.w();
        }
    }

    class t implements View.OnClickListener {
        t() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (a.this.f73093c != null) {
                a.this.f73093c.onDisable();
            }
            a.this.w();
        }
    }

    class u implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f73162b;

        u(final int val$errorType) {
            this.f73162b = val$errorType;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onErrorHint(100, this.f73162b, null);
            a.this.w();
        }
    }

    class v implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f73164b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Object f73165c;

        v(final int val$errorType, final Object val$value) {
            this.f73164b = val$errorType;
            this.f73165c = val$value;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onErrorHint(101, this.f73164b, this.f73165c);
            a.this.w();
        }
    }

    class w implements View.OnClickListener {
        w() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.w();
        }
    }

    class x implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f73168b;

        x(final int val$position) {
            this.f73168b = val$position;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            a.this.f73093c.onSeatSet(RoomSeatState.REMOVE, this.f73168b);
            a.this.w();
        }
    }

    public interface y {
        public static final int A1 = 100;
        public static final int B1 = 101;

        /* JADX INFO: renamed from: y1, reason: collision with root package name */
        public static final int f73170y1 = 1;

        /* JADX INFO: renamed from: z1, reason: collision with root package name */
        public static final int f73171z1 = 2;

        void onChallengeGoldSet(int value);

        void onDialogDismiss(String dialogType);

        void onDisable();

        void onErrorHint(int operation, int errorType, Object value);

        void onGetKickOutRoomPositionInfo(RoomPosition roomPosition, int position);

        void onLeaveRoom();

        void onNetArchiveSelected(ArchiveBean archiveBean, String gamePath);

        void onReport(RoomPosition roomPosition);

        void onSeatSet(RoomSeatState state, int position);

        void onShare(int shareType, String shareContent);

        void onShareTypeChoice(int shareType);

        void onSvrPlayMode(int mode);
    }

    private final class z implements DialogInterface.OnDismissListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f73172b;

        public z(String type) {
            this.f73172b = type;
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialog) {
            a.this.f73093c.onDialogDismiss(this.f73172b);
        }
    }

    public a(Activity activity, y callback) {
        this.f73092b = activity;
        this.f73093c = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B(View view, int gravity, int width, int height) {
        this.f73091a.setContentView(view);
        Window window = this.f73091a.getWindow();
        WindowManager.LayoutParams attributes = window.getAttributes();
        if (width == 0) {
            width = -1;
        }
        attributes.width = width;
        if (height == 0) {
            height = -1;
        }
        attributes.height = height;
        window.setGravity(gravity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(View view) {
        view.findViewById(R.id.iv_close).setOnClickListener(this.f73096f);
    }

    private void l(Object... params) {
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_area_error_hint, (ViewGroup) null);
        int iIntValue = ((Integer) params[0]).intValue();
        int iIntValue2 = ((Integer) params[1]).intValue();
        Button button = (Button) viewInflate.findViewById(R.id.dialog_button_sure);
        Button button2 = (Button) viewInflate.findViewById(R.id.dialog_button_cancle);
        Button button3 = (Button) viewInflate.findViewById(R.id.dialog_button_ok);
        TextView textView = (TextView) viewInflate.findViewById(R.id.dialog_content);
        TextView textView2 = (TextView) viewInflate.findViewById(R.id.tip_title);
        View viewFindViewById = viewInflate.findViewById(R.id.iv_close);
        String str = (String) params[2];
        if (t2.i(str)) {
            textView.setText(str);
        }
        if (iIntValue == 257) {
            button.setText((String) params[3]);
            button.setVisibility(0);
            button2.setVisibility(8);
            button3.setVisibility(8);
            button.setOnClickListener(new r());
        } else if (iIntValue == 258) {
            textView2.setText("系统提示");
            viewFindViewById.setVisibility(0);
            button.setText((String) params[3]);
            button.setVisibility(0);
            button2.setVisibility(8);
            button3.setVisibility(8);
            button.setOnClickListener(new s());
            this.f73091a.setCancelable(false);
            viewFindViewById.setOnClickListener(new t());
        } else {
            button.setVisibility(8);
            button2.setVisibility(0);
            button3.setVisibility(0);
            button2.setText((String) params[3]);
            button2.setOnClickListener(new u(iIntValue2));
            Object obj = params[5];
            button3.setText((String) params[4]);
            button3.setOnClickListener(new v(iIntValue2, obj));
        }
        B(viewInflate, 17, 0, 0);
    }

    private void m(Object... params) {
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_gameroom_kick, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tv_kickinfo)).setText((String) params[0]);
        this.f73091a.setOnDismissListener(new z(f73082o));
        k(viewInflate);
        B(viewInflate, 17, 0, 0);
    }

    private void n(Object... params) {
        KickInfo kickInfo = (KickInfo) params[0];
        int iIntValue = ((Integer) params[1]).intValue();
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_kickout_room_info, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_title);
        if (kickInfo.getIsVIP()) {
            textView.setText("把\"" + kickInfo.getNickname() + "\"踢出房间\n由于对方是VIP用户\n需要消耗" + kickInfo.getCopper() + "铜板 您确定要踢出嘛？");
        } else {
            textView.setText("把\"" + kickInfo.getNickname() + "\"踢出房间\n需要消耗" + kickInfo.getCopper() + "铜板,您确定要踢出嘛？");
        }
        viewInflate.findViewById(R.id.btn_cancel).setOnClickListener(new w());
        viewInflate.findViewById(R.id.btn_ok).setOnClickListener(new x(iIntValue));
        k(viewInflate);
        B(viewInflate, 17, 0, 0);
    }

    private void o() {
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_leave_room, (ViewGroup) null);
        viewInflate.findViewById(R.id.btnLeave).setOnClickListener(new o());
        k(viewInflate);
        B(viewInflate, 17, 0, 0);
    }

    private void p(Object... params) {
        this.f73095e = new a0(this.f73092b, params);
    }

    private void q(Object... params) {
        String str = (String) params[0];
        RoomSeatState roomSeatState = (RoomSeatState) params[1];
        int iIntValue = ((Integer) params[2]).intValue();
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_game_room_seat, (ViewGroup) null);
        Button button = (Button) viewInflate.findViewById(R.id.btn_position);
        ((TextView) viewInflate.findViewById(R.id.tv_position)).setText(str);
        if (roomSeatState == RoomSeatState.OPEN) {
            button.setText("开启位置");
        } else if (roomSeatState == RoomSeatState.CLOSE) {
            button.setText("关闭位置");
        } else if (roomSeatState == RoomSeatState.SEAT) {
            button.setText("坐下");
        } else if (roomSeatState == RoomSeatState.REPORT) {
            RoomPosition roomPosition = (RoomPosition) params[3];
            RelativeLayout relativeLayout = (RelativeLayout) viewInflate.findViewById(R.id.rl_main);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i0.a(this.f73092b, 286.0f), i0.a(this.f73092b, 134.0f));
            layoutParams.addRule(13);
            relativeLayout.setLayoutParams(layoutParams);
            Button button2 = (Button) viewInflate.findViewById(R.id.btn_report);
            button2.setVisibility(0);
            button2.setOnClickListener(new i(roomPosition));
            button.setVisibility(8);
        } else if (roomSeatState == RoomSeatState.REMOVE_AND_REPORT) {
            RoomPosition roomPosition2 = (RoomPosition) params[3];
            RelativeLayout relativeLayout2 = (RelativeLayout) viewInflate.findViewById(R.id.rl_main);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(i0.a(this.f73092b, 286.0f), i0.a(this.f73092b, 180.0f));
            layoutParams2.addRule(13);
            relativeLayout2.setLayoutParams(layoutParams2);
            Button button3 = (Button) viewInflate.findViewById(R.id.btn_report);
            button3.setVisibility(0);
            button3.setOnClickListener(new j(roomPosition2));
            button.setOnClickListener(new l(roomPosition2, iIntValue));
            button.setTextColor(Color.parseColor("#FF4235"));
            button.setText("踢出房间");
            button.setBackgroundResource(R.drawable.bg_btn_border_red_four);
        }
        if (roomSeatState != RoomSeatState.REMOVE_AND_REPORT && roomSeatState != RoomSeatState.REPORT) {
            button.setOnClickListener(new m(roomSeatState, iIntValue));
        }
        k(viewInflate);
        B(viewInflate, 17, 0, 0);
    }

    private void r(Object... params) {
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_set_challenge_gold, (ViewGroup) null);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_set_challenge_gold);
        LinearLayout linearLayout2 = (LinearLayout) viewInflate.findViewById(R.id.ll_info);
        BattleChallengeConfig battleChallengeConfig = (BattleChallengeConfig) params[0];
        if (battleChallengeConfig.getIsBattle()) {
            linearLayout.setVisibility(0);
            linearLayout2.setVisibility(8);
            int iIntValue = ((Integer) params[1]).intValue();
            ((TextView) viewInflate.findViewById(R.id.tv_current_copper)).setText(Html.fromHtml("你的账号铜板数:  <font color=#000000>" + battleChallengeConfig.getUserCopper() + "</font>"));
            Button button = (Button) viewInflate.findViewById(R.id.btn_1);
            button.setText(battleChallengeConfig.getBattleChallengeCopper()[0] + "\n铜板");
            button.setOnClickListener(new e(battleChallengeConfig));
            Button button2 = (Button) viewInflate.findViewById(R.id.btn_2);
            button2.setText(battleChallengeConfig.getBattleChallengeCopper()[1] + "\n铜板");
            button2.setOnClickListener(new f(battleChallengeConfig));
            Button button3 = (Button) viewInflate.findViewById(R.id.btn_3);
            button3.setText(battleChallengeConfig.getBattleChallengeCopper()[2] + "\n铜板");
            button3.setOnClickListener(new g(battleChallengeConfig));
            Button button4 = (Button) viewInflate.findViewById(R.id.btn_4);
            button4.setText(battleChallengeConfig.getBattleChallengeCopper()[3] + "\n铜板");
            button4.setOnClickListener(new h(battleChallengeConfig));
            if (iIntValue == battleChallengeConfig.getBattleChallengeCopper()[0]) {
                button.setTextColor(-1);
                button.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            } else if (iIntValue == battleChallengeConfig.getBattleChallengeCopper()[1]) {
                button2.setTextColor(-1);
                button2.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            } else if (iIntValue == battleChallengeConfig.getBattleChallengeCopper()[2]) {
                button3.setTextColor(-1);
                button3.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            } else if (iIntValue == battleChallengeConfig.getBattleChallengeCopper()[3]) {
                button4.setTextColor(-1);
                button4.setBackgroundResource(R.drawable.bg_btn_border_blue_four);
            }
        } else {
            linearLayout.setVisibility(8);
            linearLayout2.setVisibility(0);
            String str = (String) params[1];
            ((TextView) viewInflate.findViewById(R.id.tv_info_title_1)).setText("【" + str + "】");
            ((TextView) viewInflate.findViewById(R.id.tv_info_title_2)).setText(Html.fromHtml("挑战金<font color=#3CA4FD>" + battleChallengeConfig.getFixChallengeCopper() + "铜板</font>"));
            ((TextView) viewInflate.findViewById(R.id.tv_info_detail)).setText("1、进入游戏后扣除挑战金\n2、每次投币都扣除挑战金\n3、达到" + battleChallengeConfig.getChallengeScore() + " 分返还挑战金\n4、完整通关后有随机铜板奖励");
        }
        k(viewInflate);
        B(viewInflate, 17, 0, 0);
    }

    private void s(final Object... params) {
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_invite_pwd, (ViewGroup) null);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_pwd_info);
        String str = (String) params[0];
        textView.setText(str);
        viewInflate.findViewById(R.id.btn_copy).setOnClickListener(new ViewOnClickListenerC0747a(params, ((Integer) params[1]).intValue(), str));
        k(viewInflate);
        B(viewInflate, 17, 0, 0);
    }

    private void t() {
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.layout_invite_battle, (ViewGroup) null);
        View viewFindViewById = viewInflate.findViewById(R.id.qq);
        View viewFindViewById2 = viewInflate.findViewById(R.id.wechat);
        this.f73094d = 0;
        viewFindViewById.setOnClickListener(new b());
        viewFindViewById2.setOnClickListener(new c());
        this.f73091a.setOnDismissListener(new d());
        k(viewInflate);
        B(viewInflate, 17, this.f73092b.getResources().getDimensionPixelOffset(R.dimen.wdp526), this.f73092b.getResources().getDimensionPixelOffset(R.dimen.wdp352));
    }

    private void u(Object... params) {
        int iIntValue = ((Integer) params[0]).intValue();
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_room_srv_play_mode_tip, (ViewGroup) null);
        n3.b(viewInflate, R.id.iv_close).setOnClickListener(new k());
        TextView textView = (TextView) n3.b(viewInflate, R.id.tv_top);
        Button button = (Button) n3.b(viewInflate, R.id.btnOk);
        if (iIntValue == 1) {
            textView.setText("即将关闭流畅模式");
            button.setText("确定关闭");
        } else {
            textView.setText("即将开启流畅模式");
            button.setText("确定开启");
        }
        button.setOnClickListener(new q(iIntValue == 1 ? 0 : 1));
        B(viewInflate, 17, 0, 0);
    }

    private void v(final String type, Object... params) {
        Dialog dialog = new Dialog(this.f73092b, R.style.newtrans_no_floating_dialog);
        this.f73091a = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f73091a.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(this.f73092b).inflate(R.layout.dialog_game_room_toast, (ViewGroup) null);
        ((TextView) viewInflate.findViewById(R.id.tv_toast_info)).setText((String) params[0]);
        this.f73091a.setOnDismissListener(new n(type));
        B(viewInflate, 17, i0.a(this.f73092b, 273.0f), i0.a(this.f73092b, 54.0f));
    }

    public boolean A() {
        a0 a0Var = this.f73095e;
        if (a0Var != null) {
            return a0Var.f73125x;
        }
        return false;
    }

    public synchronized void C() {
        Activity activity = this.f73092b;
        if (activity != null && !activity.isFinishing() && !this.f73092b.isDestroyed()) {
            this.f73091a.show();
        }
    }

    public synchronized void D(String dialogType, Object... params) {
        Activity activity = this.f73092b;
        if (activity != null && !activity.isFinishing() && !this.f73092b.isDestroyed()) {
            w();
            if (dialogType.equals(f73077j)) {
                l(params);
                this.f73091a.show();
                return;
            }
            if (dialogType.equals(f73083p)) {
                n(params);
                this.f73091a.show();
                return;
            }
            if (dialogType.equals(f73078k)) {
                o();
                this.f73091a.show();
                return;
            }
            if (!dialogType.equals(f73079l) && !dialogType.equals(f73080m)) {
                if (dialogType.equals(f73081n)) {
                    p(params);
                    return;
                }
                if (dialogType.equals(f73082o)) {
                    m(params);
                    this.f73091a.show();
                    return;
                }
                if (dialogType.equals(f73084q)) {
                    q(params);
                    this.f73091a.show();
                    return;
                }
                if (dialogType.equals(f73085r)) {
                    r(params);
                    this.f73091a.show();
                    return;
                }
                if (dialogType.equals(f73086s)) {
                    t();
                    this.f73091a.show();
                    return;
                } else if (dialogType.equals(f73087t)) {
                    s(params);
                    this.f73091a.show();
                    return;
                } else {
                    if (dialogType.equals(f73088u)) {
                        u(params);
                        this.f73091a.show();
                        return;
                    }
                    return;
                }
            }
            v(dialogType, params);
            this.f73091a.show();
        }
    }

    public synchronized void w() {
        Dialog dialog = this.f73091a;
        if (dialog != null && dialog.isShowing()) {
            this.f73091a.dismiss();
        }
    }

    public Dialog x() {
        return this.f73091a;
    }

    public synchronized boolean y() {
        Dialog dialog = this.f73091a;
        if (dialog == null) {
            return false;
        }
        return dialog.isShowing();
    }

    public boolean z() {
        a0 a0Var = this.f73095e;
        if (a0Var != null) {
            return a0Var.n();
        }
        return false;
    }
}
