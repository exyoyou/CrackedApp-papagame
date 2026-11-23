package com.google.android.material.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.os.Bundle;
import android.os.Parcelable;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.Dimension;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Px;
import androidx.annotation.RestrictTo;
import androidx.annotation.StyleRes;
import androidx.appcompat.view.menu.MenuBuilder;
import androidx.appcompat.view.menu.MenuItemImpl;
import androidx.appcompat.view.menu.MenuPresenter;
import androidx.appcompat.view.menu.MenuView;
import androidx.appcompat.view.menu.SubMenuBuilder;
import androidx.core.view.AccessibilityDelegateCompat;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import androidx.core.widget.TextViewCompat;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate;
import com.google.android.material.R;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes5.dex */
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public class s implements MenuPresenter {
    public static final int F = 0;
    private static final String G = "android:menu:list";
    private static final String H = "android:menu:adapter";
    private static final String I = "android:menu:header";
    private int A;
    private int B;
    int C;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private NavigationMenuView f30962b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    LinearLayout f30963c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private MenuPresenter.Callback f30964d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    MenuBuilder f30965e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f30966f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    c f30967g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    LayoutInflater f30968h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    ColorStateList f30970j;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    ColorStateList f30973m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    ColorStateList f30974n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Drawable f30975o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    RippleDrawable f30976p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f30977q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @Px
    int f30978r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f30979s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f30980t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @Px
    int f30981u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @Px
    int f30982v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @Px
    int f30983w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    @Px
    int f30984x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f30985y;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    int f30969i = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f30971k = 0;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    boolean f30972l = true;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    boolean f30986z = true;
    private int D = -1;
    final View.OnClickListener E = new a();

    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            boolean z10 = true;
            s.this.Q(true);
            MenuItemImpl itemData = ((NavigationMenuItemView) view).getItemData();
            s sVar = s.this;
            boolean zPerformItemAction = sVar.f30965e.performItemAction(itemData, sVar, 0);
            if (itemData != null && itemData.isCheckable() && zPerformItemAction) {
                s.this.f30967g.m(itemData);
            } else {
                z10 = false;
            }
            s.this.Q(false);
            if (z10) {
                s.this.updateMenuView(false);
            }
        }
    }

    private static class b extends l {
        public b(View view) {
            super(view);
        }
    }

    private class c extends RecyclerView.Adapter<l> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final String f30988i = "android:menu:checked";

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final String f30989j = "android:menu:action_views";

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final int f30990k = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final int f30991l = 1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final int f30992m = 2;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private static final int f30993n = 3;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final ArrayList<e> f30994e = new ArrayList<>();

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private MenuItemImpl f30995f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f30996g;

        class a extends AccessibilityDelegateCompat {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ int f30998a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f30999b;

            a(int i10, boolean z10) {
                this.f30998a = i10;
                this.f30999b = z10;
            }

            @Override // androidx.core.view.AccessibilityDelegateCompat
            public void onInitializeAccessibilityNodeInfo(@NonNull View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
                super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
                accessibilityNodeInfoCompat.setCollectionItemInfo(AccessibilityNodeInfoCompat.CollectionItemInfoCompat.obtain(c.this.b(this.f30998a), 1, 1, 1, this.f30999b, view.isSelected()));
            }
        }

        c() {
            j();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public int b(int i10) {
            int i11 = i10;
            for (int i12 = 0; i12 < i10; i12++) {
                if (s.this.f30967g.getItemViewType(i12) == 2 || s.this.f30967g.getItemViewType(i12) == 3) {
                    i11--;
                }
            }
            return i11;
        }

        private void c(int i10, int i11) {
            while (i10 < i11) {
                ((g) this.f30994e.get(i10)).f31004b = true;
                i10++;
            }
        }

        private void j() {
            if (this.f30996g) {
                return;
            }
            this.f30996g = true;
            this.f30994e.clear();
            this.f30994e.add(new d());
            int size = s.this.f30965e.getVisibleItems().size();
            int i10 = -1;
            boolean z10 = false;
            int size2 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                MenuItemImpl menuItemImpl = s.this.f30965e.getVisibleItems().get(i11);
                if (menuItemImpl.isChecked()) {
                    m(menuItemImpl);
                }
                if (menuItemImpl.isCheckable()) {
                    menuItemImpl.setExclusiveCheckable(false);
                }
                if (menuItemImpl.hasSubMenu()) {
                    SubMenu subMenu = menuItemImpl.getSubMenu();
                    if (subMenu.hasVisibleItems()) {
                        if (i11 != 0) {
                            this.f30994e.add(new f(s.this.C, 0));
                        }
                        this.f30994e.add(new g(menuItemImpl));
                        int size3 = this.f30994e.size();
                        int size4 = subMenu.size();
                        boolean z11 = false;
                        for (int i12 = 0; i12 < size4; i12++) {
                            MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i12);
                            if (menuItemImpl2.isVisible()) {
                                if (!z11 && menuItemImpl2.getIcon() != null) {
                                    z11 = true;
                                }
                                if (menuItemImpl2.isCheckable()) {
                                    menuItemImpl2.setExclusiveCheckable(false);
                                }
                                if (menuItemImpl.isChecked()) {
                                    m(menuItemImpl);
                                }
                                this.f30994e.add(new g(menuItemImpl2));
                            }
                        }
                        if (z11) {
                            c(size3, this.f30994e.size());
                        }
                    }
                } else {
                    int groupId = menuItemImpl.getGroupId();
                    if (groupId != i10) {
                        size2 = this.f30994e.size();
                        z10 = menuItemImpl.getIcon() != null;
                        if (i11 != 0) {
                            size2++;
                            ArrayList<e> arrayList = this.f30994e;
                            int i13 = s.this.C;
                            arrayList.add(new f(i13, i13));
                        }
                    } else if (!z10 && menuItemImpl.getIcon() != null) {
                        c(size2, this.f30994e.size());
                        z10 = true;
                    }
                    g gVar = new g(menuItemImpl);
                    gVar.f31004b = z10;
                    this.f30994e.add(gVar);
                    i10 = groupId;
                }
            }
            this.f30996g = false;
        }

        private void l(View view, int i10, boolean z10) {
            ViewCompat.setAccessibilityDelegate(view, new a(i10, z10));
        }

        @NonNull
        public Bundle d() {
            Bundle bundle = new Bundle();
            MenuItemImpl menuItemImpl = this.f30995f;
            if (menuItemImpl != null) {
                bundle.putInt(f30988i, menuItemImpl.getItemId());
            }
            SparseArray<? extends Parcelable> sparseArray = new SparseArray<>();
            int size = this.f30994e.size();
            for (int i10 = 0; i10 < size; i10++) {
                e eVar = this.f30994e.get(i10);
                if (eVar instanceof g) {
                    MenuItemImpl menuItemImplA = ((g) eVar).a();
                    View actionView = menuItemImplA != null ? menuItemImplA.getActionView() : null;
                    if (actionView != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        actionView.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(menuItemImplA.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray(f30989j, sparseArray);
            return bundle;
        }

        public MenuItemImpl e() {
            return this.f30995f;
        }

        int f() {
            int i10 = 0;
            for (int i11 = 0; i11 < s.this.f30967g.getItemCount(); i11++) {
                int itemViewType = s.this.f30967g.getItemViewType(i11);
                if (itemViewType == 0 || itemViewType == 1) {
                    i10++;
                }
            }
            return i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void onBindViewHolder(@NonNull l lVar, int i10) {
            int itemViewType = getItemViewType(i10);
            if (itemViewType != 0) {
                if (itemViewType != 1) {
                    if (itemViewType != 2) {
                        return;
                    }
                    f fVar = (f) this.f30994e.get(i10);
                    lVar.itemView.setPadding(s.this.f30981u, fVar.b(), s.this.f30982v, fVar.a());
                    return;
                }
                TextView textView = (TextView) lVar.itemView;
                textView.setText(((g) this.f30994e.get(i10)).a().getTitle());
                TextViewCompat.setTextAppearance(textView, s.this.f30969i);
                textView.setPadding(s.this.f30983w, textView.getPaddingTop(), s.this.f30984x, textView.getPaddingBottom());
                ColorStateList colorStateList = s.this.f30970j;
                if (colorStateList != null) {
                    textView.setTextColor(colorStateList);
                }
                l(textView, i10, true);
                return;
            }
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) lVar.itemView;
            navigationMenuItemView.setIconTintList(s.this.f30974n);
            navigationMenuItemView.setTextAppearance(s.this.f30971k);
            ColorStateList colorStateList2 = s.this.f30973m;
            if (colorStateList2 != null) {
                navigationMenuItemView.setTextColor(colorStateList2);
            }
            Drawable drawable = s.this.f30975o;
            ViewCompat.setBackground(navigationMenuItemView, drawable != null ? drawable.getConstantState().newDrawable() : null);
            RippleDrawable rippleDrawable = s.this.f30976p;
            if (rippleDrawable != null) {
                navigationMenuItemView.setForeground(rippleDrawable.getConstantState().newDrawable());
            }
            g gVar = (g) this.f30994e.get(i10);
            navigationMenuItemView.setNeedsEmptyIcon(gVar.f31004b);
            s sVar = s.this;
            int i11 = sVar.f30977q;
            int i12 = sVar.f30978r;
            navigationMenuItemView.setPadding(i11, i12, i11, i12);
            navigationMenuItemView.setIconPadding(s.this.f30979s);
            s sVar2 = s.this;
            if (sVar2.f30985y) {
                navigationMenuItemView.setIconSize(sVar2.f30980t);
            }
            navigationMenuItemView.setMaxLines(s.this.A);
            navigationMenuItemView.c(gVar.a(), s.this.f30972l);
            l(navigationMenuItemView, i10, false);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            return this.f30994e.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            e eVar = this.f30994e.get(i10);
            if (eVar instanceof f) {
                return 2;
            }
            if (eVar instanceof d) {
                return 3;
            }
            if (eVar instanceof g) {
                return ((g) eVar).a().hasSubMenu() ? 1 : 0;
            }
            throw new RuntimeException("Unknown item type.");
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        @Nullable
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public l onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 0) {
                s sVar = s.this;
                return new i(sVar.f30968h, viewGroup, sVar.E);
            }
            if (i10 == 1) {
                return new k(s.this.f30968h, viewGroup);
            }
            if (i10 == 2) {
                return new j(s.this.f30968h, viewGroup);
            }
            if (i10 != 3) {
                return null;
            }
            return new b(s.this.f30963c);
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public void onViewRecycled(l lVar) {
            if (lVar instanceof i) {
                ((NavigationMenuItemView) lVar.itemView).d();
            }
        }

        public void k(@NonNull Bundle bundle) {
            MenuItemImpl menuItemImplA;
            View actionView;
            ParcelableSparseArray parcelableSparseArray;
            MenuItemImpl menuItemImplA2;
            int i10 = bundle.getInt(f30988i, 0);
            if (i10 != 0) {
                this.f30996g = true;
                int size = this.f30994e.size();
                for (int i11 = 0; i11 < size; i11++) {
                    e eVar = this.f30994e.get(i11);
                    if ((eVar instanceof g) && (menuItemImplA2 = ((g) eVar).a()) != null && menuItemImplA2.getItemId() == i10) {
                        m(menuItemImplA2);
                        break;
                    }
                }
                this.f30996g = false;
                j();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(f30989j);
            if (sparseParcelableArray != null) {
                int size2 = this.f30994e.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    e eVar2 = this.f30994e.get(i12);
                    if ((eVar2 instanceof g) && (menuItemImplA = ((g) eVar2).a()) != null && (actionView = menuItemImplA.getActionView()) != null && (parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(menuItemImplA.getItemId())) != null) {
                        actionView.restoreHierarchyState(parcelableSparseArray);
                    }
                }
            }
        }

        public void m(@NonNull MenuItemImpl menuItemImpl) {
            if (this.f30995f == menuItemImpl || !menuItemImpl.isCheckable()) {
                return;
            }
            MenuItemImpl menuItemImpl2 = this.f30995f;
            if (menuItemImpl2 != null) {
                menuItemImpl2.setChecked(false);
            }
            this.f30995f = menuItemImpl;
            menuItemImpl.setChecked(true);
        }

        public void n(boolean z10) {
            this.f30996g = z10;
        }

        public void update() {
            j();
            notifyDataSetChanged();
        }
    }

    private static class d implements e {
        d() {
        }
    }

    private interface e {
    }

    private static class f implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f31001a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f31002b;

        public f(int i10, int i11) {
            this.f31001a = i10;
            this.f31002b = i11;
        }

        public int a() {
            return this.f31002b;
        }

        public int b() {
            return this.f31001a;
        }
    }

    private static class g implements e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final MenuItemImpl f31003a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f31004b;

        g(MenuItemImpl menuItemImpl) {
            this.f31003a = menuItemImpl;
        }

        public MenuItemImpl a() {
            return this.f31003a;
        }
    }

    private class h extends RecyclerViewAccessibilityDelegate {
        h(RecyclerView recyclerView) {
            super(recyclerView);
        }

        @Override // androidx.recyclerview.widget.RecyclerViewAccessibilityDelegate, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, @NonNull AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setCollectionInfo(AccessibilityNodeInfoCompat.CollectionInfoCompat.obtain(s.this.f30967g.f(), 1, false));
        }
    }

    private static class i extends l {
        public i(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, View.OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    private static class j extends l {
        public j(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    private static class k extends l {
        public k(@NonNull LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    private static abstract class l extends RecyclerView.ViewHolder {
        public l(View view) {
            super(view);
        }
    }

    private void R() {
        int i10 = (r() || !this.f30986z) ? 0 : this.B;
        NavigationMenuView navigationMenuView = this.f30962b;
        navigationMenuView.setPadding(0, i10, 0, navigationMenuView.getPaddingBottom());
    }

    private boolean r() {
        return g() > 0;
    }

    public void A(@Nullable Drawable drawable) {
        this.f30975o = drawable;
        updateMenuView(false);
    }

    public void B(@Nullable RippleDrawable rippleDrawable) {
        this.f30976p = rippleDrawable;
        updateMenuView(false);
    }

    public void C(int i10) {
        this.f30977q = i10;
        updateMenuView(false);
    }

    public void D(int i10) {
        this.f30979s = i10;
        updateMenuView(false);
    }

    public void E(@Dimension int i10) {
        if (this.f30980t != i10) {
            this.f30980t = i10;
            this.f30985y = true;
            updateMenuView(false);
        }
    }

    public void F(@Nullable ColorStateList colorStateList) {
        this.f30974n = colorStateList;
        updateMenuView(false);
    }

    public void G(int i10) {
        this.A = i10;
        updateMenuView(false);
    }

    public void H(@StyleRes int i10) {
        this.f30971k = i10;
        updateMenuView(false);
    }

    public void I(boolean z10) {
        this.f30972l = z10;
        updateMenuView(false);
    }

    public void J(@Nullable ColorStateList colorStateList) {
        this.f30973m = colorStateList;
        updateMenuView(false);
    }

    public void K(@Px int i10) {
        this.f30978r = i10;
        updateMenuView(false);
    }

    public void L(int i10) {
        this.D = i10;
        NavigationMenuView navigationMenuView = this.f30962b;
        if (navigationMenuView != null) {
            navigationMenuView.setOverScrollMode(i10);
        }
    }

    public void M(@Nullable ColorStateList colorStateList) {
        this.f30970j = colorStateList;
        updateMenuView(false);
    }

    public void N(@Px int i10) {
        this.f30984x = i10;
        updateMenuView(false);
    }

    public void O(@Px int i10) {
        this.f30983w = i10;
        updateMenuView(false);
    }

    public void P(@StyleRes int i10) {
        this.f30969i = i10;
        updateMenuView(false);
    }

    public void Q(boolean z10) {
        c cVar = this.f30967g;
        if (cVar != null) {
            cVar.n(z10);
        }
    }

    public void b(@NonNull View view) {
        this.f30963c.addView(view);
        NavigationMenuView navigationMenuView = this.f30962b;
        navigationMenuView.setPadding(0, 0, 0, navigationMenuView.getPaddingBottom());
    }

    public void c(@NonNull WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.B != systemWindowInsetTop) {
            this.B = systemWindowInsetTop;
            R();
        }
        NavigationMenuView navigationMenuView = this.f30962b;
        navigationMenuView.setPadding(0, navigationMenuView.getPaddingTop(), 0, windowInsetsCompat.getSystemWindowInsetBottom());
        ViewCompat.dispatchApplyWindowInsets(this.f30963c, windowInsetsCompat);
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Nullable
    public MenuItemImpl d() {
        return this.f30967g.e();
    }

    @Px
    public int e() {
        return this.f30982v;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    @Px
    public int f() {
        return this.f30981u;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean flagActionItems() {
        return false;
    }

    public int g() {
        return this.f30963c.getChildCount();
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public int getId() {
        return this.f30966f;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.f30962b == null) {
            NavigationMenuView navigationMenuView = (NavigationMenuView) this.f30968h.inflate(R.layout.design_navigation_menu, viewGroup, false);
            this.f30962b = navigationMenuView;
            navigationMenuView.setAccessibilityDelegateCompat(new h(this.f30962b));
            if (this.f30967g == null) {
                c cVar = new c();
                this.f30967g = cVar;
                cVar.setHasStableIds(true);
            }
            int i10 = this.D;
            if (i10 != -1) {
                this.f30962b.setOverScrollMode(i10);
            }
            LinearLayout linearLayout = (LinearLayout) this.f30968h.inflate(R.layout.design_navigation_item_header, (ViewGroup) this.f30962b, false);
            this.f30963c = linearLayout;
            ViewCompat.setImportantForAccessibility(linearLayout, 2);
            this.f30962b.setAdapter(this.f30967g);
        }
        return this.f30962b;
    }

    public View h(int i10) {
        return this.f30963c.getChildAt(i10);
    }

    @Nullable
    public Drawable i() {
        return this.f30975o;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void initForMenu(@NonNull Context context, @NonNull MenuBuilder menuBuilder) {
        this.f30968h = LayoutInflater.from(context);
        this.f30965e = menuBuilder;
        this.C = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    public int j() {
        return this.f30977q;
    }

    public int k() {
        return this.f30979s;
    }

    public int l() {
        return this.A;
    }

    @Nullable
    public ColorStateList m() {
        return this.f30973m;
    }

    @Nullable
    public ColorStateList n() {
        return this.f30974n;
    }

    @Px
    public int o() {
        return this.f30978r;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onCloseMenu(MenuBuilder menuBuilder, boolean z10) {
        MenuPresenter.Callback callback = this.f30964d;
        if (callback != null) {
            callback.onCloseMenu(menuBuilder, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray<Parcelable> sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:list");
            if (sparseParcelableArray != null) {
                this.f30962b.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle(H);
            if (bundle2 != null) {
                this.f30967g.k(bundle2);
            }
            SparseArray<Parcelable> sparseParcelableArray2 = bundle.getSparseParcelableArray(I);
            if (sparseParcelableArray2 != null) {
                this.f30963c.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    @NonNull
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        if (this.f30962b != null) {
            SparseArray<Parcelable> sparseArray = new SparseArray<>();
            this.f30962b.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray("android:menu:list", sparseArray);
        }
        c cVar = this.f30967g;
        if (cVar != null) {
            bundle.putBundle(H, cVar.d());
        }
        if (this.f30963c != null) {
            SparseArray<Parcelable> sparseArray2 = new SparseArray<>();
            this.f30963c.saveHierarchyState(sparseArray2);
            bundle.putSparseParcelableArray(I, sparseArray2);
        }
        return bundle;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    @Px
    public int p() {
        return this.f30984x;
    }

    @Px
    public int q() {
        return this.f30983w;
    }

    public View s(@LayoutRes int i10) {
        View viewInflate = this.f30968h.inflate(i10, (ViewGroup) this.f30963c, false);
        b(viewInflate);
        return viewInflate;
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void setCallback(MenuPresenter.Callback callback) {
        this.f30964d = callback;
    }

    public boolean t() {
        return this.f30986z;
    }

    public void u(@NonNull View view) {
        this.f30963c.removeView(view);
        if (r()) {
            return;
        }
        NavigationMenuView navigationMenuView = this.f30962b;
        navigationMenuView.setPadding(0, this.B, 0, navigationMenuView.getPaddingBottom());
    }

    @Override // androidx.appcompat.view.menu.MenuPresenter
    public void updateMenuView(boolean z10) {
        c cVar = this.f30967g;
        if (cVar != null) {
            cVar.update();
        }
    }

    public void v(boolean z10) {
        if (this.f30986z != z10) {
            this.f30986z = z10;
            R();
        }
    }

    public void w(@NonNull MenuItemImpl menuItemImpl) {
        this.f30967g.m(menuItemImpl);
    }

    public void x(@Px int i10) {
        this.f30982v = i10;
        updateMenuView(false);
    }

    public void y(@Px int i10) {
        this.f30981u = i10;
        updateMenuView(false);
    }

    public void z(int i10) {
        this.f30966f = i10;
    }
}
