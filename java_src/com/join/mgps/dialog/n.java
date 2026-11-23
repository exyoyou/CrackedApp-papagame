package com.join.mgps.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.CompoundButton;
import android.widget.RadioButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.enums.ConstantIntEnum;
import com.papa91.battle.protocol.GameRoom;

/* JADX INFO: loaded from: classes3.dex */
public class n extends Dialog implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f67670b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private RadioButton f67671c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private RadioButton f67672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f67673e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private d f67674f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private View f67675g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    View f67676h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    TextView f67677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    TextView f67678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    TextView f67679k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    TextView f67680l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    TextView f67681m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    RadioButton f67682n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    RadioButton f67683o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    RadioButton f67684p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    RadioButton f67685q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    String f67686r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    String f67687s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f67688t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f67689u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private GameRoom f67690v;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Context f67691b;

        a(final Context val$context) {
            this.f67691b = val$context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            com.join.mgps.Util.r0.M(this.f67691b, n.this.f67677i.getText().toString());
        }
    }

    class b implements CompoundButton.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton buttonView, boolean isChecked) {
            if (isChecked) {
                n.this.f67686r = "";
            } else if (com.join.mgps.Util.t2.h(n.this.f67686r)) {
                if (com.join.mgps.Util.t2.i(n.this.f67687s)) {
                    n nVar = n.this;
                    nVar.f67686r = nVar.f67687s;
                } else {
                    n.this.f67686r = ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + "";
                }
            }
            if (!com.join.mgps.Util.t2.i(n.this.f67686r)) {
                n.this.f67680l.setText("房间性质");
                return;
            }
            n.this.f67680l.setText("房间性质（密码" + n.this.f67686r + ")");
        }
    }

    class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            n.this.f67674f.a();
        }
    }

    public interface d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f67695a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f67696b = 2;

        void a();

        void b(int roomType, boolean roomxingzhi, boolean allowSee, String roomPass);
    }

    public n(@NonNull Context context) {
        super(context, R.style.newtrans_floating_dialog);
        this.f67673e = 2;
        this.f67686r = "";
        this.f67687s = "";
        c(context);
    }

    private void b(int roomType, boolean roomxingzhi, boolean allowSee) {
        if (roomType == 2) {
            this.f67672d.setChecked(true);
        } else {
            this.f67672d.setChecked(false);
        }
        if (roomxingzhi) {
            this.f67682n.setChecked(true);
            this.f67685q.setChecked(false);
            this.f67686r = "";
        } else {
            if (com.join.mgps.Util.t2.h(this.f67686r)) {
                if (com.join.mgps.Util.t2.i(this.f67687s)) {
                    this.f67686r = this.f67687s;
                } else {
                    this.f67686r = ((int) (((Math.random() * 9.0d) + 1.0d) * 1000.0d)) + "";
                }
            }
            this.f67682n.setChecked(false);
            this.f67685q.setChecked(true);
        }
        if (com.join.mgps.Util.t2.i(this.f67686r)) {
            this.f67680l.setText("房间性质（密码" + this.f67686r + ")");
        } else {
            this.f67680l.setText("房间性质");
        }
        if (allowSee) {
            this.f67683o.setChecked(true);
            this.f67684p.setChecked(false);
        } else {
            this.f67684p.setChecked(true);
            this.f67683o.setChecked(false);
        }
    }

    private void c(Context context) {
        this.f67670b = context;
        View viewInflate = LayoutInflater.from(context).inflate(R.layout.dialog_arena_room_type, (ViewGroup) null);
        setContentView(viewInflate);
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            getWindow().setAttributes(attributes);
        }
        this.f67671c = (RadioButton) viewInflate.findViewById(R.id.roomTypePhoneLL);
        this.f67672d = (RadioButton) viewInflate.findViewById(R.id.roomTypeAllLL);
        this.f67675g = viewInflate.findViewById(R.id.iv_close);
        this.f67677i = (TextView) viewInflate.findViewById(R.id.tv_roomNum);
        this.f67678j = (TextView) viewInflate.findViewById(R.id.copyTv);
        this.f67682n = (RadioButton) viewInflate.findViewById(R.id.rl_setNo_pwd);
        this.f67685q = (RadioButton) viewInflate.findViewById(R.id.rl_set_pwd);
        this.f67683o = (RadioButton) viewInflate.findViewById(R.id.iv_switch_onlook);
        this.f67679k = (TextView) viewInflate.findViewById(R.id.finishButn);
        this.f67684p = (RadioButton) viewInflate.findViewById(R.id.iv_switch_onlook_n);
        this.f67676h = viewInflate.findViewById(R.id.rl_net_archive);
        this.f67681m = (TextView) viewInflate.findViewById(R.id.tv_archive_name);
        this.f67680l = (TextView) viewInflate.findViewById(R.id.roomxingzhiT);
        this.f67678j.setOnClickListener(new a(context));
        setCancelable(false);
        setCanceledOnTouchOutside(false);
        this.f67682n.setOnCheckedChangeListener(new b());
        View view = this.f67676h;
        if (view != null) {
            view.setOnClickListener(new c());
        }
    }

    private void d(boolean selected, View... views) {
        for (View view : views) {
            view.setSelected(selected);
        }
    }

    public void e(String message) {
        this.f67681m.setText(message);
    }

    /* JADX WARN: Code duplicated, block: B:11:0x007e  */
    public void f(GameRoom mGameRoom, d l10) {
        int i10 = mGameRoom.getAllowPCJoin() ? 2 : 1;
        boolean hasJoinPassword = true ^ mGameRoom.getHasJoinPassword();
        boolean allowSpectatorJoin = mGameRoom.getAllowSpectatorJoin();
        this.f67673e = i10;
        this.f67674f = l10;
        this.f67689u = allowSpectatorJoin;
        this.f67688t = hasJoinPassword;
        this.f67690v = mGameRoom;
        this.f67677i.setText(mGameRoom.getRoomId() + "");
        DownloadTask downloadTaskG = q5.f.M().G("" + mGameRoom.getGameId());
        if (mGameRoom.getElite()) {
            this.f67676h.setVisibility(8);
        } else {
            if (downloadTaskG.getPlugin_num().equals(ConstantIntEnum.FC.value() + "")) {
                this.f67676h.setVisibility(0);
            } else {
                this.f67676h.setVisibility(8);
            }
        }
        this.f67671c.setOnClickListener(this);
        this.f67672d.setOnClickListener(this);
        this.f67675g.setOnClickListener(this);
        this.f67679k.setOnClickListener(this);
        if (mGameRoom.getHasJoinPassword() && com.join.mgps.Util.t2.i(mGameRoom.getPassword())) {
            this.f67687s = mGameRoom.getPassword();
            this.f67686r = mGameRoom.getPassword();
            this.f67680l.setText("房间性质（密码" + mGameRoom.getPassword() + ")");
        } else {
            this.f67680l.setText("房间性质");
        }
        b(this.f67673e, hasJoinPassword, allowSpectatorJoin);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.roomTypePhoneLL || id2 == R.id.roomTypeAllLL) {
            return;
        }
        if (id2 == R.id.iv_close) {
            dismiss();
            return;
        }
        if (id2 == R.id.finishButn) {
            if (this.f67674f != null) {
                if (this.f67671c.isChecked()) {
                    this.f67673e = 1;
                } else {
                    this.f67673e = 2;
                }
                this.f67674f.b(this.f67673e, this.f67682n.isChecked(), this.f67683o.isChecked(), this.f67686r);
            }
            dismiss();
        }
    }

    public n(@NonNull Context context, int themeResId) {
        super(context, R.style.newtrans_floating_dialog);
        this.f67673e = 2;
        this.f67686r = "";
        this.f67687s = "";
        c(context);
    }
}
