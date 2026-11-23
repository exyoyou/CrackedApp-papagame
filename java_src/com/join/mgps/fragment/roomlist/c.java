package com.join.mgps.fragment.roomlist;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.View;
import android.widget.AbsListView;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import app.mgsim.arena.AreaInfo;
import app.mgsim.arena.SimpleWrapperRoom;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.xrecyclerview.XRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.activity.arena.GameRoomListActivity;
import com.join.mgps.activity.arena.GameRoomListActivity_;
import com.join.mgps.activity.arena.NewArenaDownloadActivity_;
import com.join.mgps.adapter.g2;
import com.join.mgps.customview.h0;
import com.join.mgps.customview.input.InputNumView;
import com.join.mgps.db.tables.EMUApkTable;
import com.join.mgps.dialog.PlugInstallDialog_;
import com.join.mgps.dialog.f1;
import com.join.mgps.dto.FriendBean;
import com.join.mgps.dto.GameConfig;
import com.join.mgps.ptr.PtrClassicFrameLayout;
import com.papa91.arc.ext.Log;
import com.papa91.battle.protocol.Platform;
import com.papa91.battle.protocol.RoomPosition;
import com.papa91.battle.protocol.SimpleRoom;
import com.wufan.user.service.protobuf.UserInfo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import t6.o;
import t6.p;

/* JADX INFO: loaded from: classes3.dex */
@EFragment(R.layout.fragment_standardorelite_room)
public class c extends Fragment {
    private static final int N = 1000;
    private static Field O = null;
    private static Method P = null;
    private static final int Q = 1012;
    private static final int R = 1013;
    public static final int S = 1014;
    public static final int T = 1015;
    private static final String U = "StandardEliteRoomFragment";
    String A;
    private Dialog F;
    private n K;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Bean
    com.join.mgps.Util.b f70751c;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @ViewById
    TextView f70756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @ViewById
    XRecyclerView f70757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @ViewById
    PtrClassicFrameLayout f70758j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    GameRoomListActivity_ f70759k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private g2 f70760l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private GridLayoutManager f70761m;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.join.mgps.dialog.j f70767s;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    com.join.mgps.dialog.f f70770v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private SimpleRoom f70771w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    h0.e f70772x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    ConcurrentHashMap<Integer, AreaInfo> f70773y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    AreaInfo f70774z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f70752d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<SimpleWrapperRoom> f70753e = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<SimpleWrapperRoom> f70754f = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<SimpleWrapperRoom> f70755g = Collections.synchronizedList(new ArrayList());

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    float f70762n = 0.0f;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f70763o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    long f70764p = 1000;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    Handler f70765q = new Handler();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Runnable f70766r = new d();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    long f70768t = 0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    long f70769u = 0;
    private int B = 3;
    public int C = 1;
    private String D = "";
    private m E = new k();
    private final Comparator<SimpleWrapperRoom> G = new l();
    private final Comparator<SimpleWrapperRoom> H = new a();
    private final Comparator<SimpleWrapperRoom> I = new b();
    private final Comparator<SimpleWrapperRoom> J = new C0729c();
    boolean L = false;
    boolean M = false;

    class a implements Comparator<SimpleWrapperRoom> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(SimpleWrapperRoom lhs, SimpleWrapperRoom rhs) {
            if (!lhs.simpleRoom.getVip() && rhs.simpleRoom.getVip()) {
                return 1;
            }
            if (lhs.simpleRoom.getVip() && !rhs.simpleRoom.getVip()) {
                return -1;
            }
            if (lhs.simpleRoom.getCopper() > rhs.simpleRoom.getCopper()) {
                return 1;
            }
            return lhs.simpleRoom.getCopper() == rhs.simpleRoom.getCopper() ? 0 : -1;
        }
    }

    class b implements Comparator<SimpleWrapperRoom> {
        b() {
        }

        private int a(long startTime, int playSeconds) {
            return (int) ((((SystemClock.elapsedRealtime() - startTime) / 1000) + ((long) playSeconds)) - 1);
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public int compare(SimpleWrapperRoom lhs, SimpleWrapperRoom rhs) {
            if (!lhs.simpleRoom.getVip() && rhs.simpleRoom.getVip()) {
                return 1;
            }
            if (lhs.simpleRoom.getVip() && !rhs.simpleRoom.getVip()) {
                return -1;
            }
            if (a(lhs.initialStartTime, lhs.simpleRoom.getPlaySeconds()) > a(rhs.initialStartTime, rhs.simpleRoom.getPlaySeconds())) {
                return 1;
            }
            return a(lhs.initialStartTime, lhs.simpleRoom.getPlaySeconds()) == a(rhs.initialStartTime, rhs.simpleRoom.getPlaySeconds()) ? 0 : -1;
        }
    }

    /* JADX INFO: renamed from: com.join.mgps.fragment.roomlist.c$c, reason: collision with other inner class name */
    class C0729c implements Comparator<SimpleWrapperRoom> {
        C0729c() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(SimpleWrapperRoom lhs, SimpleWrapperRoom rhs) {
            if (!lhs.simpleRoom.getVip() && rhs.simpleRoom.getVip()) {
                return 1;
            }
            if (lhs.simpleRoom.getVip() && !rhs.simpleRoom.getVip()) {
                return -1;
            }
            int seatsNumber = lhs.simpleRoom.getSeatsNumber() - lhs.simpleRoom.getSitDownloadNumber();
            int seatsNumber2 = rhs.simpleRoom.getSeatsNumber() - rhs.simpleRoom.getSitDownloadNumber();
            if (seatsNumber < seatsNumber2) {
                return 1;
            }
            return seatsNumber == seatsNumber2 ? 0 : -1;
        }
    }

    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            XRecyclerView xRecyclerView = c.this.f70757i;
            if (xRecyclerView == null) {
                return;
            }
            if (xRecyclerView.getScrollState() == 0 && !c.this.f70755g.equals(c.this.f70754f)) {
                c.this.f70755g.clear();
                c cVar = c.this;
                if (cVar.f70762n == 0.0f) {
                    float width = cVar.f70757i.getWidth();
                    float dimensionPixelOffset = c.this.getResources().getDimensionPixelOffset(R.dimen.wdp858);
                    if (width > 1.25f * dimensionPixelOffset) {
                        c.this.f70762n = width / dimensionPixelOffset;
                    } else {
                        c.this.f70762n = 1.0f;
                    }
                    c.this.f70760l.h(c.this.f70762n);
                }
                c.this.f70755g.addAll(c.this.f70754f);
                if (c.this.f70760l != null) {
                    c.this.f70760l.notifyDataSetChanged();
                }
            }
            c cVar2 = c.this;
            if (cVar2.f70763o) {
                cVar2.f70765q.postDelayed(this, cVar2.f70764p);
            }
        }
    }

    class e extends GridLayoutManager.SpanSizeLookup {
        e() {
        }

        @Override // androidx.recyclerview.widget.GridLayoutManager.SpanSizeLookup
        public int getSpanSize(int position) {
            return 1;
        }
    }

    class f implements g2.b {
        f() {
        }

        @Override // com.join.mgps.adapter.g2.b
        public void a(RecyclerView.ViewHolder holder, int position) {
            c.this.u0(position);
        }
    }

    class g implements XRecyclerView.f {
        g() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onLoadMore() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XRecyclerView.f
        public void onRefresh() {
            if (com.join.android.app.common.utils.m.j(c.this.f70759k)) {
                c cVar = c.this;
                cVar.f70759k.refreshData(cVar.f70752d);
            } else {
                c.this.showToast("当前网络不可用!");
                c.this.f70757i.stopRefresh();
            }
        }
    }

    class h extends RecyclerView.OnScrollListener {
        h() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            super.onScrolled(recyclerView, dx, dy);
            if (!c.this.f70752d && (c.this.getActivity() instanceof GameRoomListActivity)) {
                ((GameRoomListActivity) c.this.getActivity()).onScrolled(dy);
            }
        }
    }

    class i extends RecyclerView.ItemDecoration {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ int f70783e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final /* synthetic */ int f70784f;

        i(final int val$hSpaceHalf, final int val$vSpaceHalf) {
            this.f70783e = val$hSpaceHalf;
            this.f70784f = val$vSpaceHalf;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.ItemDecoration
        public void getItemOffsets(Rect outRect, View view, RecyclerView parent, RecyclerView.State state) {
            if (parent.getChildPosition(view) % 2 == 0) {
                outRect.right = this.f70783e;
            } else {
                outRect.left = this.f70783e;
            }
            int i10 = this.f70784f;
            outRect.top = i10;
            outRect.bottom = i10;
        }
    }

    class j implements InputNumView.d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.join.mgps.customview.input.a f70786a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ SimpleRoom f70787b;

        j(final com.join.mgps.customview.input.a val$mInputGameRoomPwdDialog, final SimpleRoom val$simpleRoom) {
            this.f70786a = val$mInputGameRoomPwdDialog;
            this.f70787b = val$simpleRoom;
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void a() {
            this.f70786a.c();
        }

        @Override // com.join.mgps.customview.input.InputNumView.d
        public void b(String num) {
            this.f70786a.c();
            c.this.f70759k.joinRoom(this.f70787b.getRoomId(), num, c.this.f70752d);
        }
    }

    class k implements m {
        k() {
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void a(int roomType) {
            c.this.C = roomType;
            long jCurrentTimeMillis = System.currentTimeMillis();
            c.this.w0("----onRoomSortChanged onShowPeripheralChanged---  sort data start  Time :" + jCurrentTimeMillis);
            c.this.H0();
            c.this.U0();
            c cVar = c.this;
            cVar.i0(false, cVar.D);
            c.this.b0();
            c.this.c0();
            c.this.n0();
            c.this.K.a(c.this.f70754f.size(), c.this.f70752d);
            c.this.w0("----onRoomSortChanged onShowPeripheralChanged ---sort data spend  Time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void b(GameConfig config) {
            if (c.this.r0("" + config.getGame_id())) {
                DownloadTask downloadTaskG = q5.f.M().G("" + config.getGame_id());
                PlugInstallDialog_.intent(c.this.getContext()).c(o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
                return;
            }
            if (!c.this.e0(config.getGame_id())) {
                c.this.M0(config.getGame_id(), 1013);
                return;
            }
            if (c.this.s0(config.getGame_id())) {
                return;
            }
            if (!(c.this.getActivity() instanceof GameRoomListActivity) || ((GameRoomListActivity) c.this.getActivity()).getInviteFriend() == null) {
                c.this.f70759k.createRoom(config.getGame_id(), c.this.f70752d);
                return;
            }
            FriendBean inviteFriend = ((GameRoomListActivity) c.this.getActivity()).getInviteFriend();
            inviteFriend.setGameId(config.getGame_id());
            inviteFriend.setElite(c.this.f70752d);
            com.wufan.friend.chat.c.u().o(inviteFriend);
            ((GameRoomListActivity) c.this.getActivity()).setInviteFriend(null);
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void c(String gameId) {
            if (TextUtils.isEmpty(gameId)) {
                return;
            }
            c.this.w0("----onRoomSortChanged onGameListSelected---  gameId :" + gameId);
            long jCurrentTimeMillis = System.currentTimeMillis();
            c.this.w0("----onRoomSortChanged onGameListSelected---  sort data start  Time :" + jCurrentTimeMillis);
            c.this.H0();
            c.this.D = gameId;
            if (TextUtils.isEmpty(c.this.D)) {
                synchronized (c.this.f70754f) {
                    c.this.f70754f.clear();
                    c.this.f70754f.addAll(c.this.f70753e);
                    c.this.U0();
                    c.this.K0();
                }
            } else {
                c.this.i0(true, gameId);
            }
            c.this.b0();
            c.this.c0();
            c.this.n0();
            c.this.w0("----onRoomSortChanged onGameListSelected---sort data spend  Time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
        }

        @Override // com.join.mgps.fragment.roomlist.c.m
        public void d(int sortType, int roomType) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            c.this.w0("----onRoomSortChanged onPrioritySortChanged---  sort data start  Time :" + jCurrentTimeMillis);
            c.this.H0();
            c cVar = c.this;
            cVar.C = roomType;
            cVar.U0();
            c.this.B = sortType;
            c.this.K0();
            c cVar2 = c.this;
            cVar2.i0(false, cVar2.D);
            c.this.b0();
            c.this.c0();
            c.this.n0();
            c.this.K.a(c.this.f70754f.size(), c.this.f70752d);
            c.this.w0("----onRoomSortChanged onPrioritySortChanged---sort data spend  Time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    class l implements Comparator<SimpleWrapperRoom> {
        l() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(SimpleWrapperRoom lhs, SimpleWrapperRoom rhs) {
            if (!lhs.simpleRoom.getVip() && rhs.simpleRoom.getVip()) {
                return 1;
            }
            if (lhs.simpleRoom.getVip() && !rhs.simpleRoom.getVip()) {
                return -1;
            }
            if (lhs.simpleRoom.getCopper() < rhs.simpleRoom.getCopper()) {
                return 1;
            }
            return lhs.simpleRoom.getCopper() == rhs.simpleRoom.getCopper() ? 0 : -1;
        }
    }

    public interface m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f70791a = 1;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f70792b = 2;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f70793c = 3;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f70794d = 4;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f70795e = 5;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final int f70796f = 6;

        void a(int roomType);

        void b(GameConfig config);

        void c(String gameId);

        void d(int sortType, int roomType);
    }

    public interface n {
        void a(int newSize, boolean isElite);

        void b(boolean isElite);
    }

    static {
        try {
            Field declaredField = AbsListView.class.getDeclaredField("mFlingRunnable");
            O = declaredField;
            declaredField.setAccessible(true);
            Method declaredMethod = O.getType().getDeclaredMethod("endFling", new Class[0]);
            P = declaredMethod;
            declaredMethod.setAccessible(true);
        } catch (Exception unused) {
            P = null;
        }
    }

    private void A0() {
        this.B = 3;
        this.C = 1;
        this.D = "";
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void H0() {
        n0();
        f1 f1VarX = com.join.mgps.Util.h0.h0(this.f70759k).x(this.f70759k);
        this.F = f1VarX;
        f1VarX.setTitle("正在刷新数据，请稍等...");
        this.F.setCancelable(false);
        this.F.setCanceledOnTouchOutside(false);
        this.F.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void K0() {
        synchronized (this.f70754f) {
            int i10 = this.B;
            if (i10 == 3) {
                Collections.sort(this.f70754f, this.G);
            } else if (i10 == 4) {
                Collections.sort(this.f70754f, this.H);
            } else if (i10 == 5) {
                Collections.sort(this.f70754f, this.I);
            } else if (i10 == 6) {
                Collections.sort(this.f70754f, this.J);
            }
        }
    }

    public static void O0(RecyclerView list) {
        Method method = P;
        if (method != null) {
            try {
                method.invoke(O.get(list), new Object[0]);
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean U0() {
        synchronized (this.f70754f) {
            this.f70754f.clear();
            this.f70754f.addAll(this.f70753e);
            Iterator<SimpleWrapperRoom> it2 = this.f70754f.iterator();
            while (it2.hasNext()) {
                SimpleWrapperRoom next = it2.next();
                if (this.C == 2 && !W0(next.simpleRoom)) {
                    it2.remove();
                    this.f70754f.remove(next);
                }
            }
        }
        return false;
    }

    private UserInfo a0(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private List<SimpleWrapperRoom> f0(final List<SimpleRoom> newDatas, boolean isAdd) {
        ArrayList arrayList = new ArrayList();
        if (newDatas != null) {
            for (SimpleRoom simpleRoom : newDatas) {
                SimpleWrapperRoom simpleWrapperRoomCloneSimpleRoom = SimpleWrapperRoom.cloneSimpleRoom(simpleRoom);
                boolean z10 = false;
                if (isAdd) {
                    Iterator<SimpleWrapperRoom> it2 = this.f70753e.iterator();
                    while (it2.hasNext()) {
                        if (it2.next().simpleRoom.getRoomId() == simpleRoom.getRoomId()) {
                            z10 = true;
                            break;
                        }
                    }
                }
                if (!z10) {
                    arrayList.add(simpleWrapperRoomCloneSimpleRoom);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i0(boolean shouldClearData, String gameId) {
        synchronized (this.f70754f) {
            if (TextUtils.isEmpty(gameId)) {
                return;
            }
            if (shouldClearData) {
                this.f70754f.clear();
                this.f70754f.addAll(this.f70753e);
            }
            try {
                long j10 = Long.parseLong(gameId);
                Iterator<SimpleWrapperRoom> it2 = this.f70754f.iterator();
                while (it2.hasNext()) {
                    SimpleWrapperRoom next = it2.next();
                    if (next.simpleRoom.getGameId() != j10) {
                        it2.remove();
                        this.f70754f.remove(next);
                    }
                }
            } catch (Exception unused) {
            }
        }
    }

    private boolean p0(String uri) {
        try {
            this.f70759k.getPackageManager().getPackageInfo(uri, 1);
            return true;
        } catch (PackageManager.NameNotFoundException unused) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean s0(String gameId) {
        try {
            DownloadTask downloadTaskG = q5.f.M().G(gameId);
            return UtilsMy.b2(getContext(), gameId, downloadTaskG, p.o().n(downloadTaskG.getPlugin_num()), true);
        } catch (Exception unused) {
            return false;
        }
    }

    private void stopTimer() {
    }

    private void y0(ArrayList<SimpleWrapperRoom> lists) {
        if (lists == null) {
            return;
        }
        synchronized (this.f70753e) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < lists.size(); i10++) {
                SimpleRoom simpleRoom = lists.get(i10).simpleRoom;
                for (int i11 = 0; i11 < this.f70753e.size(); i11++) {
                    SimpleWrapperRoom simpleWrapperRoom = this.f70753e.get(i11);
                    if (simpleRoom.getRoomId() == simpleWrapperRoom.simpleRoom.getRoomId()) {
                        arrayList.add(simpleWrapperRoom);
                        break;
                    }
                }
            }
            this.f70753e.removeAll(arrayList);
        }
    }

    public void B0(List<SimpleWrapperRoom> rooms) {
        this.f70753e = rooms;
    }

    public void C0(List<SimpleWrapperRoom> rooms) {
        this.f70754f = rooms;
    }

    public void D0(n callback) {
        this.K = callback;
    }

    void E0() {
        com.join.mgps.dialog.f fVar = this.f70770v;
        if (fVar != null) {
            fVar.b();
        }
        if (getActivity() == null) {
            return;
        }
        GameRoomListActivity gameRoomListActivity = (GameRoomListActivity) getActivity();
        if (r0("" + gameRoomListActivity.getGameConfigData().getGame_list().get(0).getGame_id())) {
            DownloadTask downloadTaskG = q5.f.M().G("" + gameRoomListActivity.getGameConfigData().getGame_list().get(0).getGame_id());
            PlugInstallDialog_.intent(getContext()).c(o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
            return;
        }
        if (gameRoomListActivity.getGameConfigData().getGame_list().size() == 1) {
            if (e0(gameRoomListActivity.getGameConfigData().getGame_list().get(0).getGame_id())) {
                this.f70759k.createRoom(gameRoomListActivity.getGameConfigData().getGame_list().get(0).getGame_id(), this.f70752d);
                return;
            } else {
                M0(gameRoomListActivity.getGameConfigData().getGame_list().get(0).getGame_id(), 1013);
                return;
            }
        }
        com.join.mgps.dialog.f fVar2 = new com.join.mgps.dialog.f(getActivity(), this.E);
        this.f70770v = fVar2;
        fVar2.d(gameRoomListActivity.getGameConfigData().getGame_list(), this.f70752d);
        this.f70770v.e();
    }

    @UiThread
    void F0(final SimpleRoom simpleRoom) {
        com.join.mgps.customview.input.a aVar = new com.join.mgps.customview.input.a(this.f70759k, "请输入房间密码", 4, false);
        aVar.g(new j(aVar, simpleRoom));
        aVar.h();
    }

    public void G0(int roomId) {
        if (this.f70759k == null) {
            return;
        }
        synchronized (this.f70754f) {
            for (int i10 = 0; i10 < this.f70754f.size(); i10++) {
                SimpleWrapperRoom simpleWrapperRoom = this.f70754f.get(i10);
                if (simpleWrapperRoom.simpleRoom.getRoomId() == roomId) {
                    F0(simpleWrapperRoom.simpleRoom);
                    break;
                }
            }
        }
    }

    public void I0() {
        IntentUtil.getInstance().goLoginBattle(this.f70759k);
    }

    public void J0(h0.e callbackServer, ConcurrentHashMap<Integer, AreaInfo> areas, AreaInfo currentArea, int recomendNumber) {
        synchronized (this.f70753e) {
            this.f70772x = callbackServer;
            this.f70773y = areas;
            this.f70774z = currentArea;
            com.join.mgps.dialog.j jVar = this.f70767s;
            if (jVar != null) {
                jVar.a();
            }
            if (getActivity() == null) {
                return;
            }
            GameRoomListActivity gameRoomListActivity = (GameRoomListActivity) getActivity();
            com.join.mgps.dialog.j jVar2 = new com.join.mgps.dialog.j(this.f70759k, this.E, callbackServer, areas, currentArea, recomendNumber);
            this.f70767s = jVar2;
            jVar2.d(this.C, gameRoomListActivity.getGameConfigData().getGame_list(), this.D, this.B);
            this.f70767s.f();
        }
    }

    void L0() {
        this.f70763o = true;
        this.f70765q.post(this.f70766r);
    }

    public void M0(String gameId, int requestCode) {
        Intent intent = new Intent(this.f70759k, (Class<?>) NewArenaDownloadActivity_.class);
        intent.putExtra("gameId", gameId);
        intent.putExtra(NewArenaDownloadActivity_.P, this.M);
        intent.putExtra(NewArenaDownloadActivity_.Q, this.L);
        startActivityForResult(intent, requestCode);
    }

    public void N0() {
        if (!com.join.android.app.common.utils.m.j(this.f70759k)) {
            showToast("当前网络不可用，请检查网络！");
            return;
        }
        if (!V0()) {
            I0();
            return;
        }
        String game_id = ((GameRoomListActivity) getActivity()).getGameConfigData().getGame_list().get(0).getGame_id();
        if (!r0("" + game_id)) {
            if (e0(game_id)) {
                this.f70759k.fastJoinRoom(Long.parseLong(game_id));
                return;
            } else {
                M0(game_id, 1014);
                return;
            }
        }
        DownloadTask downloadTaskG = q5.f.M().G("" + game_id);
        PlugInstallDialog_.intent(getContext()).c(o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
    }

    void P0() {
        this.f70763o = false;
        this.f70765q.removeCallbacks(this.f70766r);
    }

    public void Q0() {
        if (this.f70759k == null) {
            return;
        }
        this.f70757i.stopRefresh();
    }

    public void R0() {
        O0(this.f70757i);
    }

    @UiThread
    public void S0(ArrayList<SimpleRoom> datas) {
        if (this.f70759k == null || datas == null || datas.size() <= 0) {
            return;
        }
        synchronized (this.f70754f) {
            System.currentTimeMillis();
            ArrayList<SimpleWrapperRoom> arrayList = new ArrayList<>();
            for (int i10 = 0; i10 < datas.size(); i10++) {
                SimpleRoom simpleRoom = datas.get(i10);
                for (int i11 = 0; i11 < this.f70754f.size(); i11++) {
                    SimpleWrapperRoom simpleWrapperRoom = this.f70754f.get(i11);
                    if (simpleRoom.getRoomId() == simpleWrapperRoom.simpleRoom.getRoomId()) {
                        arrayList.add(simpleWrapperRoom);
                        break;
                    }
                }
            }
            if (arrayList.size() > 0) {
                m0(arrayList);
            }
        }
    }

    @UiThread
    public void T0(ArrayList<SimpleRoom> datas) {
        boolean z10;
        boolean z11;
        if (this.f70759k == null || datas == null || datas.size() <= 0) {
            return;
        }
        synchronized (this.f70754f) {
            boolean z12 = this.f70755g == null || this.f70754f.size() == 0;
            long jCurrentTimeMillis = System.currentTimeMillis();
            w0("---updateListData---- start Time :" + jCurrentTimeMillis);
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            int size = datas.size();
            for (int i10 = 0; i10 < size; i10++) {
                SimpleRoom simpleRoom = datas.get(i10);
                int i11 = 0;
                while (true) {
                    if (i11 >= this.f70753e.size()) {
                        z11 = false;
                        break;
                    } else {
                        if (simpleRoom.getRoomId() == this.f70753e.get(i11).simpleRoom.getRoomId()) {
                            arrayList2.add(SimpleWrapperRoom.cloneSimpleRoom(simpleRoom));
                            z11 = true;
                            break;
                        }
                        i11++;
                    }
                }
                if (!z11) {
                    arrayList.add(SimpleWrapperRoom.cloneSimpleRoom(simpleRoom));
                }
            }
            int size2 = arrayList2.size();
            if (size2 > 0) {
                for (int i12 = 0; i12 < size2; i12++) {
                    SimpleWrapperRoom simpleWrapperRoom = (SimpleWrapperRoom) arrayList2.get(i12);
                    Iterator<SimpleWrapperRoom> it2 = this.f70753e.iterator();
                    int i13 = -1;
                    while (it2.hasNext()) {
                        int i14 = i13 + 1;
                        if (simpleWrapperRoom.simpleRoom.getRoomId() == it2.next().simpleRoom.getRoomId()) {
                            this.f70753e.set(i14, simpleWrapperRoom);
                        }
                        i13 = i14;
                    }
                }
            }
            if (arrayList.size() > 0) {
                this.f70753e.addAll(arrayList);
            }
            arrayList.clear();
            arrayList2.clear();
            for (int i15 = 0; i15 < size; i15++) {
                SimpleRoom simpleRoom2 = datas.get(i15);
                int i16 = 0;
                while (true) {
                    if (i16 >= this.f70754f.size()) {
                        z10 = false;
                        break;
                    } else {
                        if (simpleRoom2.getRoomId() == this.f70754f.get(i16).simpleRoom.getRoomId()) {
                            arrayList2.add(SimpleWrapperRoom.cloneSimpleRoom(simpleRoom2));
                            z10 = true;
                            break;
                        }
                        i16++;
                    }
                }
                if (!z10) {
                    arrayList.add(SimpleWrapperRoom.cloneSimpleRoom(simpleRoom2));
                }
            }
            int size3 = arrayList2.size();
            if (size3 > 0) {
                for (int i17 = 0; i17 < size3; i17++) {
                    SimpleWrapperRoom simpleWrapperRoom2 = (SimpleWrapperRoom) arrayList2.get(i17);
                    Iterator<SimpleWrapperRoom> it3 = this.f70754f.iterator();
                    int i18 = -1;
                    while (it3.hasNext()) {
                        i18++;
                        SimpleWrapperRoom next = it3.next();
                        if (simpleWrapperRoom2.simpleRoom.getRoomId() == next.simpleRoom.getRoomId()) {
                            if (this.C != 2) {
                                this.f70754f.set(i18, simpleWrapperRoom2);
                            } else if (W0(simpleWrapperRoom2.simpleRoom)) {
                                this.f70754f.set(i18, simpleWrapperRoom2);
                            } else {
                                it3.remove();
                                this.f70754f.remove(next);
                            }
                        }
                    }
                }
            }
            if (arrayList.size() > 0) {
                for (int i19 = 0; i19 < arrayList.size(); i19++) {
                    SimpleWrapperRoom simpleWrapperRoom3 = (SimpleWrapperRoom) arrayList.get(i19);
                    if (this.C != 2) {
                        this.f70754f.add(simpleWrapperRoom3);
                    } else if (W0(simpleWrapperRoom3.simpleRoom)) {
                        this.f70754f.add(simpleWrapperRoom3);
                    }
                }
            }
            i0(false, this.D);
            K0();
            b0();
            if (z12) {
                c0();
            }
            this.K.a(this.f70754f.size(), this.f70752d);
            w0("---updateListData---- spend Time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    public boolean V0() {
        return (a0(this.f70759k) == null || AccountUtil_.getInstance_(this.f70759k).isTourist()) ? false : true;
    }

    boolean W0(SimpleRoom sr) {
        if (sr == null) {
            return false;
        }
        int i10 = 0;
        int i11 = 0;
        boolean z10 = false;
        for (int i12 = 0; i12 < sr.getPlayerListCount(); i12++) {
            RoomPosition playerList = sr.getPlayerList(i12);
            if (playerList.getUid() == 0) {
                i11++;
            } else if (playerList.getPlatform() == Platform.MOBILE) {
                i10++;
                if (playerList.getUid() == sr.getLeaderId()) {
                    z10 = true;
                }
            }
        }
        return !sr.getAllowPCJoin() && (i10 + i11 == sr.getPlayerListCount()) && z10;
    }

    @AfterViews
    void afterViews() {
        this.f70760l = new g2(this.f70759k, this.f70755g);
        GridLayoutManager gridLayoutManager = new GridLayoutManager(this.f70759k, 2);
        this.f70761m = gridLayoutManager;
        gridLayoutManager.setSpanSizeLookup(new e());
        this.f70757i.setLayoutManager(this.f70761m);
        this.f70757i.setAdapter(this.f70760l);
        this.f70760l.f(new f());
        this.f70757i.setPreLoadCount(10);
        this.f70757i.setPullRefreshEnabled(true);
        this.f70757i.setLoadingMoreEnabled(false);
        this.f70757i.setLoadingListener(new g());
        this.f70757i.addOnScrollListener(new h());
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.wdp14) / 2;
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.wdp14) / 2;
        getResources().getDimensionPixelSize(R.dimen.wdp32);
        this.f70757i.addItemDecoration(new i(dimensionPixelSize, dimensionPixelSize2));
    }

    @UiThread
    void b0() {
        if (this.f70756h == null) {
            return;
        }
        if (this.f70755g == null || this.f70754f.size() != 0) {
            this.f70756h.setVisibility(8);
        } else {
            this.f70756h.setVisibility(0);
        }
    }

    @UiThread
    void c0() {
        this.f70765q.removeCallbacks(this.f70766r);
        this.f70765q.post(this.f70766r);
    }

    public void d0(final List<SimpleRoom> newDatas, boolean isPushFinished) {
        if (this.f70759k == null) {
            w0("---addPushListData activity is null ---");
            return;
        }
        synchronized (this.f70754f) {
            boolean z10 = this.f70755g == null || this.f70754f.size() == 0;
            long jCurrentTimeMillis = System.currentTimeMillis();
            w0("---addPushListData---- start Time :" + jCurrentTimeMillis);
            if (newDatas != null && newDatas.size() > 0) {
                List<SimpleWrapperRoom> listF0 = f0(newDatas, true);
                this.f70753e.addAll(listF0);
                this.f70754f.addAll(listF0);
            }
            if (isPushFinished) {
                U0();
                this.B = 3;
                K0();
                i0(false, this.D);
                this.K.b(this.f70752d);
                this.f70757i.stopRefresh();
            }
            b0();
            if (z10) {
                c0();
            }
            this.K.a(this.f70754f.size(), this.f70752d);
            w0("---addPushListData---- spend Time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    public boolean e0(String gameId) {
        this.L = false;
        this.M = false;
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG == null || downloadTaskG.getStatus() != 5) {
            this.L = false;
        } else {
            this.L = true;
            EMUApkTable eMUApkTableN = o.o().n(downloadTaskG.getPlugin_num());
            if (eMUApkTableN == null) {
                this.M = true;
            } else if (!com.join.android.app.common.utils.o.t(this.f70759k, eMUApkTableN, false, new String[0]) || UtilsMy.D0(this.f70759k, eMUApkTableN)) {
                this.M = false;
            } else {
                this.M = true;
            }
        }
        return this.M && this.L;
    }

    public void g0() {
        if (this.f70768t > 0 && System.currentTimeMillis() - this.f70768t <= 1000) {
            w0("fast join room so fast ,waiting a moment!");
            return;
        }
        this.f70768t = System.currentTimeMillis();
        if (!com.join.android.app.common.utils.m.j(this.f70759k)) {
            showToast("当前网络不可用，请检查网络！");
        } else if (V0()) {
            E0();
        } else {
            I0();
        }
    }

    void h0(boolean enable) {
        if (enable) {
            return;
        }
        this.f70758j.C();
    }

    public List<SimpleWrapperRoom> j0() {
        return this.f70753e;
    }

    public List<SimpleWrapperRoom> k0() {
        return this.f70754f;
    }

    public int l0() {
        return this.C;
    }

    @UiThread
    void m0(ArrayList<SimpleWrapperRoom> removedList) {
        if (removedList == null) {
            return;
        }
        synchronized (this.f70754f) {
            if (removedList.size() > 0) {
                this.f70754f.removeAll(removedList);
                y0(removedList);
                if (this.f70754f.size() <= 0) {
                    A0();
                }
                this.K.a(this.f70754f.size(), this.f70752d);
            }
        }
    }

    void n0() {
        Dialog dialog = this.F;
        if (dialog == null || !dialog.isShowing()) {
            return;
        }
        this.F.dismiss();
    }

    void o0() {
        if (getActivity() == null) {
            return;
        }
        PtrClassicFrameLayout ptrClassicFrameLayout = (PtrClassicFrameLayout) getActivity().findViewById(android.R.id.content).findViewById(R.id.mPtrFrame);
        this.f70758j = ptrClassicFrameLayout;
        ptrClassicFrameLayout.C();
    }

    @Override // androidx.fragment.app.Fragment
    public void onActivityResult(int requestCode, int resultCode, Intent data) {
        SimpleRoom simpleRoom;
        super.onActivityResult(requestCode, resultCode, data);
        if (resultCode == -1) {
            if (requestCode == 1012) {
                if (this.f70759k == null || (simpleRoom = this.f70771w) == null) {
                    return;
                }
                if (simpleRoom.getHasJoinPassword()) {
                    F0(this.f70771w);
                    return;
                } else {
                    this.f70759k.joinRoom(this.f70771w.getRoomId(), "", this.f70752d);
                    return;
                }
            }
            if (requestCode == 1013) {
                this.f70759k.createRoom(data.getStringExtra("gameId"), this.f70752d);
                return;
            }
            if (requestCode == 1014) {
                this.f70759k.fastJoinRoom(Long.parseLong(data.getStringExtra("gameId")));
            } else if (requestCode == 1015) {
                data.getStringExtra("gameId");
                this.f70759k.fastJoinRoomSelected();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onAttach(Context context) {
        super.onAttach(context);
        w0("---onAttach---");
        this.f70759k = (GameRoomListActivity_) context;
        L0();
    }

    @Override // androidx.fragment.app.Fragment
    public void onCreate(@Nullable Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        w0("---onCreate---");
        Bundle arguments = getArguments();
        this.f70752d = arguments.getBoolean("isElite");
        this.D = arguments.getString("filterGameId", "");
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        P0();
        stopTimer();
        super.onDestroy();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDetach() {
        super.onDetach();
        this.f70759k = null;
    }

    public boolean q0() {
        boolean z10 = true;
        if (this.f70759k == null) {
            return true;
        }
        synchronized (this.f70754f) {
            if (this.f70754f.size() > 0) {
                z10 = false;
            }
        }
        return z10;
    }

    public boolean r0(String gameId) {
        DownloadTask downloadTaskG = q5.f.M().G(gameId);
        if (downloadTaskG != null && downloadTaskG.getDown_type() != 2) {
            return false;
        }
        EMUApkTable eMUApkTableN = downloadTaskG != null ? o.o().n(downloadTaskG.getPlugin_num()) : null;
        if (downloadTaskG == null || downloadTaskG.getStatus() != 11) {
            return eMUApkTableN != null && com.join.android.app.common.utils.o.i(eMUApkTableN);
        }
        return true;
    }

    public void refresh() {
        this.f70757i.scrollToPosition(0);
        this.f70758j.g(true);
    }

    @UiThread
    void showToast(String message) {
        try {
            if (requireContext() == null) {
                return;
            }
            a3.b(requireContext()).d(message);
        } catch (Exception e10) {
            Log.d(U, message);
            e10.printStackTrace();
        }
    }

    public void t0(String gameId) {
        m mVar = this.E;
        if (mVar != null) {
            mVar.c(gameId);
        }
    }

    void u0(int position) {
        if (this.f70769u > 0 && System.currentTimeMillis() - this.f70769u <= 1000) {
            w0("join room so fast ,waiting a moment!");
            return;
        }
        this.f70769u = System.currentTimeMillis();
        if (!com.join.android.app.common.utils.m.j(this.f70759k)) {
            showToast("当前网络不可用，请检查网络！");
            return;
        }
        synchronized (this.f70754f) {
            if (this.f70754f.size() <= 0) {
                return;
            }
            if (position >= this.f70754f.size()) {
                return;
            }
            SimpleRoom simpleRoom = this.f70754f.get(position).simpleRoom;
            this.f70771w = simpleRoom;
            if (!simpleRoom.getAllowPCJoin() && com.join.mgps.socket.fight.arena.c.o(this.f70759k)) {
                showToast("禁止PC用户加入!");
                return;
            }
            if (!this.f70771w.getAllowSpectatorJoin() && this.f70771w.getSeatsNumber() == this.f70771w.getSitDownloadNumber()) {
                showToast("房间已满，禁止观赛！");
                return;
            }
            if (!V0()) {
                I0();
                return;
            }
            if (r0("" + this.f70771w.getGameId())) {
                DownloadTask downloadTaskG = q5.f.M().G("" + this.f70771w.getGameId());
                PlugInstallDialog_.intent(getContext()).c(o.o().n(downloadTaskG.getPlugin_num())).a(downloadTaskG).b(2).start();
                return;
            }
            if (e0("" + this.f70771w.getGameId())) {
                if (!s0(this.f70771w.getGameId() + "")) {
                    if (this.f70771w.getHasJoinPassword()) {
                        F0(this.f70771w);
                    } else {
                        this.f70759k.joinRoom(this.f70771w.getRoomId(), "", this.f70752d);
                    }
                }
            } else {
                M0("" + this.f70771w.getGameId(), 1012);
            }
        }
    }

    public void v0(String colloctionId) {
        if (colloctionId == null || colloctionId.equals(this.A)) {
            return;
        }
        this.A = colloctionId;
        this.f70753e.clear();
    }

    @Background
    void w0(String printInfo) {
        g1.b(U, printInfo);
    }

    public void x0(final List<SimpleRoom> newDatas, boolean isPushFinished) {
        if (this.f70759k == null) {
            w0("---refreshPushListData activity is null ---");
            return;
        }
        synchronized (this.f70754f) {
            long jCurrentTimeMillis = System.currentTimeMillis();
            w0("---refreshPushListData---- start Time :" + jCurrentTimeMillis);
            if (newDatas != null && newDatas.size() >= 0) {
                List<SimpleWrapperRoom> listF0 = f0(newDatas, false);
                this.f70753e.clear();
                this.f70754f.clear();
                this.f70753e.addAll(listF0);
                this.f70754f.addAll(listF0);
            }
            if (isPushFinished) {
                U0();
                this.B = 3;
                K0();
                i0(false, this.D);
                this.K.b(this.f70752d);
                this.f70757i.stopRefresh();
            }
            b0();
            this.K.a(this.f70754f.size(), this.f70752d);
            w0("---refreshPushListData---- spend Time :" + (System.currentTimeMillis() - jCurrentTimeMillis));
        }
    }

    @UiThread
    public void z0(int roomId) {
        if (this.f70759k == null) {
            return;
        }
        synchronized (this.f70754f) {
            ArrayList<SimpleWrapperRoom> arrayList = new ArrayList<>();
            for (SimpleWrapperRoom simpleWrapperRoom : this.f70754f) {
                SimpleRoom simpleRoom = simpleWrapperRoom.simpleRoom;
                if (simpleRoom != null && roomId == simpleRoom.getRoomId()) {
                    arrayList.add(simpleWrapperRoom);
                    break;
                }
            }
            if (arrayList.size() > 0) {
                m0(arrayList);
            }
        }
    }
}
