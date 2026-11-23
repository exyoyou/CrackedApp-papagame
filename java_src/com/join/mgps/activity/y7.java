package com.join.mgps.activity;

import android.content.Context;
import android.graphics.Color;
import android.text.TextUtils;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.fragment.app.Fragment;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.adapter.FragmentStateAdapter;
import androidx.viewpager2.widget.ViewPager2;
import com.MApplication;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.base.BaseQuickAdapter;
import com.join.mgps.dto.GameFromPopoWinBean;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.EFragment;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EFragment(R.layout.fragment_my_game_papa_fav_vp)
public class y7 extends com.join.mgps.fragment.e {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @ViewById
    RecyclerView f58245c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @ViewById
    ViewPager2 f58246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Context f58247e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private UserInfo f58249g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f58250h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f58251i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    com.join.mgps.rpc.b f58252j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ArrayList<GameFromPopoWinBean.DataBean> f58253k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private e f58254l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private d f58256n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f58257o;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f58259q;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f58248f = 1;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f58255m = true;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f58258p = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f58260r = false;

    class a extends RecyclerView.OnScrollListener {
        a() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.OnScrollListener
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int newState) {
            super.onScrollStateChanged(recyclerView, newState);
            if (newState == 0 && y7.this.f58255m) {
                y7 y7Var = y7.this;
                y7Var.f58248f++;
                y7Var.R();
            }
        }
    }

    class b implements BaseQuickAdapter.j {
        b() {
        }

        @Override // com.join.mgps.base.BaseQuickAdapter.j
        public void onItemClick(BaseQuickAdapter adapter, View view, int position) {
            ViewPager2 viewPager2 = y7.this.f58246d;
            if (viewPager2 == null || viewPager2.getCurrentItem() == position) {
                return;
            }
            y7.this.f58246d.setCurrentItem(position);
            y7.this.Y(position);
            y7.this.f58254l.notifyDataSetChanged();
        }
    }

    class c extends ViewPager2.OnPageChangeCallback {
        c() {
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public void onPageSelected(int position) {
            super.onPageSelected(position);
            RecyclerView recyclerView = y7.this.f58245c;
            if (recyclerView != null) {
                recyclerView.smoothScrollToPosition(position);
                y7.this.Y(position);
                y7.this.f58254l.notifyDataSetChanged();
            }
        }
    }

    class d extends FragmentStateAdapter {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<GameFromPopoWinBean.DataBean> f58264e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<Long> f58265f;

        public d(Fragment fragment, List<GameFromPopoWinBean.DataBean> datas) {
            super(fragment);
            this.f58265f = new ArrayList();
            this.f58264e = datas;
            c();
        }

        private void c() {
            this.f58265f.clear();
            for (GameFromPopoWinBean.DataBean dataBean : this.f58264e) {
                this.f58265f.add(Long.valueOf((dataBean.getTitle() + dataBean.getId()).hashCode()));
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void d(String gameId) {
            for (int i10 = 0; i10 < getItemCount(); i10++) {
                Fragment fragmentFindFragmentByTag = y7.this.getChildFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + getItemId(i10));
                if (fragmentFindFragmentByTag != null && (fragmentFindFragmentByTag instanceof MyGamePapaFavFragment_)) {
                    ((MyGamePapaFavFragment_) fragmentFindFragmentByTag).b0(gameId);
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void e(List<GameFromPopoWinBean.DataBean> datas, boolean refreshChildFragment) {
            this.f58264e = datas;
            c();
            notifyDataSetChanged();
            if (y7.this.f58248f == 1 && refreshChildFragment) {
                for (int i10 = 0; i10 < getItemCount(); i10++) {
                    Fragment fragmentFindFragmentByTag = y7.this.getChildFragmentManager().findFragmentByTag(com.xinzhu.overmind.server.os.f.TAG + getItemId(i10));
                    if (fragmentFindFragmentByTag != null && (fragmentFindFragmentByTag instanceof MyGamePapaFavFragment_)) {
                        GameFromPopoWinBean.DataBean dataBean = datas.get(i10);
                        ((MyGamePapaFavFragment_) fragmentFindFragmentByTag).a0(dataBean.getTitle(), dataBean.getId());
                    }
                }
            }
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        public boolean containsItem(long itemId) {
            return this.f58265f.contains(Long.valueOf(itemId));
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter
        @NonNull
        public Fragment createFragment(int position) {
            GameFromPopoWinBean.DataBean dataBean = this.f58264e.get(position);
            return MyGamePapaFavFragment_.r0().b(dataBean.getId()).c(dataBean.getTitle()).build();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f58264e.size();
        }

        @Override // androidx.viewpager2.adapter.FragmentStateAdapter, androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int position) {
            GameFromPopoWinBean.DataBean dataBean = this.f58264e.get(position);
            return (dataBean.getTitle() + dataBean.getId()).hashCode();
        }
    }

    class e extends BaseQuickAdapter<GameFromPopoWinBean.DataBean, com.join.mgps.base.b> {
        public e(List<GameFromPopoWinBean.DataBean> data) {
            super(R.layout.item_my_game_papa_fav_tag, data);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.join.mgps.base.BaseQuickAdapter
        /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
        public void convert(@NonNull com.join.mgps.base.b helper, GameFromPopoWinBean.DataBean item) {
            helper.setText(R.id.tvTag, item.getTitle()).setTextColor(R.id.tvTag, Color.parseColor(item.isSelected() ? "#FFFFFF" : "#262626")).setBackgroundRes(R.id.tvTag, item.isSelected() ? R.drawable.shape_tag_my_papa_game_selected : R.drawable.shape_tag_my_papa_game_unselected);
        }
    }

    private boolean S() {
        File externalFilesDir = this.f58247e.getExternalFilesDir("backup");
        boolean z10 = externalFilesDir.exists() && externalFilesDir.isDirectory() && externalFilesDir.listFiles() != null && externalFilesDir.listFiles().length > 0;
        this.f58257o = z10;
        return z10;
    }

    void Q(boolean isRefresh) {
        UserInfo accountData = AccountUtil_.getInstance_(this.f58247e).getAccountData();
        boolean z10 = this.f58257o;
        if (accountData == null || this.f58249g == null) {
            return;
        }
        if (isRefresh || accountData.getUid() != this.f58249g.getUid() || MApplication.f3167a2 || S() != z10) {
            this.f58249g = accountData;
            this.f58253k.clear();
            GameFromPopoWinBean.DataBean dataBean = new GameFromPopoWinBean.DataBean();
            dataBean.setTitle(LocalGameActivity.ALL);
            this.f58253k.add(dataBean);
            if (S()) {
                GameFromPopoWinBean.DataBean dataBean2 = new GameFromPopoWinBean.DataBean();
                dataBean2.setTitle("存档");
                this.f58253k.add(dataBean2);
            }
            e eVar = this.f58254l;
            if (eVar != null) {
                eVar.notifyDataSetChanged();
            }
            this.f58255m = true;
            this.f58248f = 1;
            R();
            MApplication.f3167a2 = false;
        }
    }

    @Background
    void R() {
        UserInfo userInfo;
        try {
            if (!AccountUtil_.getInstance_(this.f58247e).isTourist() && (userInfo = this.f58249g) != null && !TextUtils.isEmpty(userInfo.getToken())) {
                if (!com.join.android.app.common.utils.m.j(this.f58247e)) {
                    Z();
                    U(true);
                    return;
                }
                LinkedMultiValueMap linkedMultiValueMap = new LinkedMultiValueMap();
                UserInfo userInfo2 = this.f58249g;
                linkedMultiValueMap.add("uid", Integer.valueOf(userInfo2 == null ? 0 : userInfo2.getUid()));
                linkedMultiValueMap.add("page", Integer.valueOf(this.f58248f));
                linkedMultiValueMap.add("type", 1);
                linkedMultiValueMap.add("device_id", this.f58250h);
                linkedMultiValueMap.add("version", this.f58251i);
                GameFromPopoWinBean gameFromPopoWinBeanQ = this.f58252j.q(linkedMultiValueMap);
                if (gameFromPopoWinBeanQ == null || gameFromPopoWinBeanQ.getError() != 0 || gameFromPopoWinBeanQ.getData() == null || gameFromPopoWinBeanQ.getData().size() == 0) {
                    Z();
                    U(true);
                    return;
                }
                this.f58253k.addAll(gameFromPopoWinBeanQ.getData());
                if (this.f58248f == 1) {
                    if (this.f58258p < this.f58253k.size()) {
                        this.f58253k.get(this.f58258p).setSelected(true);
                    } else {
                        this.f58253k.get(0).setSelected(true);
                    }
                }
                U(true);
                return;
            }
            Z();
            U(false);
        } catch (Exception e10) {
            e10.printStackTrace();
            U(true);
        }
    }

    @UiThread
    void U(boolean refreshChildFragment) {
        ArrayList<GameFromPopoWinBean.DataBean> arrayList = new ArrayList<>();
        for (GameFromPopoWinBean.DataBean dataBean : this.f58253k) {
            Iterator<GameFromPopoWinBean.DataBean> it2 = arrayList.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    arrayList.add(dataBean);
                    break;
                }
                GameFromPopoWinBean.DataBean next = it2.next();
                if (TextUtils.equals(next.getTitle(), dataBean.getTitle()) && TextUtils.equals(next.getId(), dataBean.getId())) {
                    break;
                }
            }
        }
        Iterator<GameFromPopoWinBean.DataBean> it3 = arrayList.iterator();
        while (it3.hasNext()) {
            GameFromPopoWinBean.DataBean next2 = it3.next();
            if (!TextUtils.isEmpty(next2.getGame_count()) && Integer.parseInt(next2.getGame_count()) <= 0) {
                it3.remove();
            }
        }
        this.f58253k = arrayList;
        e eVar = this.f58254l;
        if (eVar != null) {
            eVar.setNewData(arrayList);
        }
        if (getActivity() != null) {
            if (this.f58256n == null) {
                this.f58256n = new d(this, this.f58253k);
                this.f58246d.setOffscreenPageLimit(Math.max(this.f58253k.size() - 1, 1));
                this.f58246d.setAdapter(this.f58256n);
            } else {
                this.f58246d.setOffscreenPageLimit(Math.max(this.f58253k.size() - 1, 1));
                this.f58256n.e(this.f58253k, refreshChildFragment);
                this.f58256n.notifyDataSetChanged();
            }
        }
    }

    void V(String gameId) {
        d dVar = this.f58256n;
        if (dVar != null) {
            dVar.d(gameId);
        }
    }

    @UiThread
    void W(String groupId) {
        ArrayList<GameFromPopoWinBean.DataBean> arrayList = this.f58253k;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        Iterator<GameFromPopoWinBean.DataBean> it2 = this.f58253k.iterator();
        while (it2.hasNext()) {
            if (TextUtils.equals(it2.next().getId(), groupId)) {
                it2.remove();
            }
        }
        U(false);
    }

    public void X(boolean forceRefresh) {
        this.f58260r = forceRefresh;
    }

    void Y(int position) {
        ArrayList<GameFromPopoWinBean.DataBean> arrayList = this.f58253k;
        if (arrayList == null || arrayList.size() <= 0) {
            return;
        }
        int i10 = 0;
        while (i10 < this.f58253k.size()) {
            this.f58253k.get(i10).setSelected(i10 == position);
            i10++;
        }
        this.f58258p = position;
    }

    @UiThread
    void Z() {
        this.f58255m = false;
    }

    @AfterViews
    void afterviews() {
        UserInfo userInfo;
        Context context = getContext();
        this.f58247e = context;
        this.f58249g = AccountUtil_.getInstance_(context).getAccountData();
        if (!AccountUtil_.getInstance_(this.f58247e).isTourist() && (userInfo = this.f58249g) != null && !TextUtils.isEmpty(userInfo.getToken())) {
            this.f58259q = true;
        }
        this.f58250h = "";
        RequestBeanUtil.getInstance(this.f58247e);
        this.f58251i = RequestBeanUtil.getVersionAndVersionName();
        this.f58252j = com.join.mgps.rpc.impl.a.c0();
        this.f58253k = new ArrayList<>();
        GameFromPopoWinBean.DataBean dataBean = new GameFromPopoWinBean.DataBean();
        dataBean.setTitle(LocalGameActivity.ALL);
        this.f58253k.add(dataBean);
        if (S()) {
            GameFromPopoWinBean.DataBean dataBean2 = new GameFromPopoWinBean.DataBean();
            dataBean2.setTitle("存档");
            this.f58253k.add(dataBean2);
        }
        this.f58245c.setLayoutManager(new LinearLayoutManager(getContext(), 0, false));
        e eVar = new e(this.f58253k);
        this.f58254l = eVar;
        this.f58245c.setAdapter(eVar);
        this.f58245c.addOnScrollListener(new a());
        this.f58254l.setOnItemClickListener(new b());
        this.f58246d.registerOnPageChangeCallback(new c());
        R();
    }

    @Override // com.join.mgps.fragment.e
    protected void lazyLoad() {
    }

    @Override // com.join.mgps.fragment.e, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (this.f58259q) {
            this.f58259q = false;
        } else {
            Q(this.f58260r);
            this.f58260r = false;
        }
    }
}
