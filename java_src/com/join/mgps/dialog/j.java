package com.join.mgps.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.os.Build;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.RadioGroup;
import app.mgsim.arena.AreaInfo;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.n3;
import com.join.mgps.dto.GameConfig;
import com.papa91.battle.protocol.BattleArea;
import java.util.Enumeration;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes3.dex */
public class j implements View.OnClickListener {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Dialog f67614b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Activity f67615c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    int f67616d = 1;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    int f67617e = 3;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    RadioGroup f67618f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    RadioGroup f67619g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private com.join.mgps.fragment.roomlist.c.m f67620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ConcurrentHashMap<Integer, AreaInfo> f67621i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    AreaInfo f67622j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f67623k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    ImageView f67624l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ImageView f67625m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ImageView f67626n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    View f67627o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    View f67628p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    View f67629q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    View f67630r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    View f67631s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    View f67632t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    com.join.mgps.customview.h0.e f67633u;

    class a implements RadioGroup.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int checkedId) {
            if (checkedId == R.id.rb_phone) {
                j.this.f67616d = 2;
            } else {
                if (checkedId != R.id.rb_synthesize) {
                    return;
                }
                j.this.f67616d = 1;
            }
        }
    }

    class b implements RadioGroup.OnCheckedChangeListener {
        b() {
        }

        @Override // android.widget.RadioGroup.OnCheckedChangeListener
        public void onCheckedChanged(RadioGroup radioGroup, int checkedId) {
            switch (checkedId) {
                case R.id.rb_rank_asc /* 2131366675 */:
                    j.this.f67617e = 4;
                    break;
                case R.id.rb_rank_desc /* 2131366676 */:
                    j.this.f67617e = 3;
                    break;
                case R.id.rb_remoned /* 2131366677 */:
                case R.id.rb_synthesize /* 2131366679 */:
                default:
                    j.this.f67617e = 3;
                    break;
                case R.id.rb_seat_asc /* 2131366678 */:
                    j.this.f67617e = 6;
                    break;
                case R.id.rb_time_asc /* 2131366680 */:
                    j.this.f67617e = 5;
                    break;
            }
        }
    }

    public j(Activity activity, com.join.mgps.fragment.roomlist.c.m callback, final com.join.mgps.customview.h0.e callbackServer, ConcurrentHashMap<Integer, AreaInfo> areas, AreaInfo currentArea, int recomendNumber) {
        this.f67615c = activity;
        this.f67633u = callbackServer;
        this.f67620h = callback;
        b(activity);
        this.f67623k = recomendNumber;
        c(areas, currentArea);
        this.f67621i = areas;
        this.f67622j = currentArea;
    }

    private void e(View view, boolean isHighPing, View recView, boolean isCurrentArea) {
        view.setBackgroundResource(isHighPing ? R.drawable.bg_circle_eb3a25 : R.drawable.bg_circle_30d92d);
        recView.setVisibility(isCurrentArea ? 0 : 8);
    }

    public void a() {
        this.f67614b.dismiss();
    }

    void b(final Activity activity) {
        Dialog dialog = new Dialog(activity, R.style.newtrans_floating_dialog);
        this.f67614b = dialog;
        if (Build.VERSION.SDK_INT >= 28) {
            WindowManager.LayoutParams attributes = dialog.getWindow().getAttributes();
            attributes.layoutInDisplayCutoutMode = 1;
            this.f67614b.getWindow().setAttributes(attributes);
        }
        View viewInflate = LayoutInflater.from(activity).inflate(R.layout.dialog_room_sort, (ViewGroup) null);
        viewInflate.findViewById(R.id.iv_close).setOnClickListener(this);
        viewInflate.findViewById(R.id.tvSubmit).setOnClickListener(this);
        this.f67618f = (RadioGroup) viewInflate.findViewById(R.id.rgRoomType);
        this.f67619g = (RadioGroup) viewInflate.findViewById(R.id.rgRoomSort);
        this.f67627o = viewInflate.findViewById(R.id.view_bj);
        this.f67628p = viewInflate.findViewById(R.id.view_sh);
        this.f67629q = viewInflate.findViewById(R.id.view_gz);
        this.f67631s = viewInflate.findViewById(R.id.rl_sh);
        this.f67630r = viewInflate.findViewById(R.id.rl_bj);
        this.f67632t = viewInflate.findViewById(R.id.rl_gz);
        this.f67626n = (ImageView) viewInflate.findViewById(R.id.iv_gz_battle_area_rec);
        this.f67625m = (ImageView) viewInflate.findViewById(R.id.iv_sh_battle_area_rec);
        this.f67624l = (ImageView) viewInflate.findViewById(R.id.iv_bj_battle_area_rec);
        n3.b(viewInflate, R.id.rl_bj).setOnClickListener(this);
        n3.b(viewInflate, R.id.rl_sh).setOnClickListener(this);
        n3.b(viewInflate, R.id.rl_gz).setOnClickListener(this);
        this.f67618f.setOnCheckedChangeListener(new a());
        this.f67619g.setOnCheckedChangeListener(new b());
        this.f67614b.setContentView(viewInflate);
        Window window = this.f67614b.getWindow();
        WindowManager.LayoutParams attributes2 = window.getAttributes();
        attributes2.width = -1;
        attributes2.height = -1;
        window.setGravity(17);
    }

    public void c(final ConcurrentHashMap<Integer, AreaInfo> areas, AreaInfo currentArea) {
        Enumeration<AreaInfo> enumerationElements = areas.elements();
        this.f67630r.setSelected(false);
        this.f67631s.setSelected(false);
        this.f67632t.setSelected(false);
        while (enumerationElements.hasMoreElements()) {
            AreaInfo areaInfoNextElement = enumerationElements.nextElement();
            if (areaInfoNextElement.getArea() == currentArea.getArea()) {
                AreaInfo areaInfo = new AreaInfo();
                this.f67622j = areaInfo;
                areaInfo.setArea(areaInfoNextElement.getArea());
                this.f67622j.setHost(areaInfoNextElement.getHost());
                this.f67622j.setOnLinePeopleCounts(areaInfoNextElement.getOnLinePeopleCounts());
                this.f67622j.setPingTime(areaInfoNextElement.getPingTime());
                this.f67622j.setPort(areaInfoNextElement.getPort());
            }
            if (areaInfoNextElement.getArea() == 1) {
                e(this.f67627o, com.join.mgps.socket.fight.arena.c.m(areaInfoNextElement.getPingTime()), this.f67624l, areaInfoNextElement.getArea() == this.f67623k);
                if (areaInfoNextElement.getArea() == currentArea.getArea()) {
                    this.f67630r.setSelected(true);
                }
            } else if (areaInfoNextElement.getArea() == 2) {
                e(this.f67628p, com.join.mgps.socket.fight.arena.c.m(areaInfoNextElement.getPingTime()), this.f67625m, areaInfoNextElement.getArea() == this.f67623k);
                if (areaInfoNextElement.getArea() == currentArea.getArea()) {
                    this.f67631s.setSelected(true);
                }
            } else if (areaInfoNextElement.getArea() == 3) {
                e(this.f67629q, com.join.mgps.socket.fight.arena.c.m(areaInfoNextElement.getPingTime()), this.f67626n, areaInfoNextElement.getArea() == this.f67623k);
                if (areaInfoNextElement.getArea() == currentArea.getArea()) {
                    this.f67632t.setSelected(true);
                }
            }
        }
    }

    public void d(final int roomType, List<GameConfig> gameLists, final String currentGameId, final int currentPrioritySort) {
        this.f67616d = roomType;
        this.f67618f.check(roomType == 2 ? R.id.rb_phone : R.id.rb_synthesize);
        this.f67617e = currentPrioritySort;
        if (currentPrioritySort == 3) {
            this.f67619g.check(R.id.rb_rank_desc);
            return;
        }
        if (currentPrioritySort == 4) {
            this.f67619g.check(R.id.rb_rank_asc);
            return;
        }
        if (currentPrioritySort == 5) {
            this.f67619g.check(R.id.rb_time_asc);
        } else if (currentPrioritySort != 6) {
            this.f67619g.check(R.id.rb_rank_desc);
        } else {
            this.f67619g.check(R.id.rb_seat_asc);
        }
    }

    public void f() {
        if (this.f67614b.isShowing()) {
            return;
        }
        this.f67614b.show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id2 = view.getId();
        if (id2 == R.id.iv_close) {
            com.join.mgps.fragment.roomlist.c.m mVar = this.f67620h;
            if (mVar != null) {
                mVar.d(this.f67617e, this.f67616d);
            }
            a();
            return;
        }
        if (id2 == R.id.tvSubmit) {
            com.join.mgps.fragment.roomlist.c.m mVar2 = this.f67620h;
            if (mVar2 != null) {
                mVar2.d(this.f67617e, this.f67616d);
            }
            a();
            return;
        }
        if (id2 == R.id.rl_bj) {
            this.f67633u.a(BattleArea.BJ);
            this.f67622j.setArea(1);
        } else if (id2 == R.id.rl_sh) {
            this.f67633u.a(BattleArea.SH);
            this.f67622j.setArea(2);
        } else if (id2 == R.id.rl_gz) {
            this.f67633u.a(BattleArea.GZ);
            this.f67622j.setArea(3);
        }
        c(this.f67621i, this.f67622j);
    }
}
