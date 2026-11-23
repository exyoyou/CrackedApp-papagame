package com.join.mgps.ptr;

import android.content.Context;
import android.graphics.Color;
import android.util.AttributeSet;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.i0;
import com.join.mgps.ptr.header.DropBounceHeaderView;
import com.join.mgps.ptr.header.MaterialHeader;
import com.join.mgps.ptr.header.RentalsSunHeaderView;
import com.join.mgps.ptr.header.StoreHouseHeader;

/* JADX INFO: loaded from: classes3.dex */
public class PtrClassicFrameLayout extends PtrFrameLayout {
    private Style R;
    private PtrUIHeader S;
    private PtrClassicDefaultHeader T;

    enum Style {
        Classical,
        DropBounce,
        Material,
        RentalsSun,
        StoreHouse
    }

    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f71953a;

        static {
            int[] iArr = new int[Style.values().length];
            f71953a = iArr;
            try {
                iArr[Style.Classical.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f71953a[Style.DropBounce.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f71953a[Style.Material.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f71953a[Style.RentalsSun.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f71953a[Style.StoreHouse.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    public PtrClassicFrameLayout(Context context) {
        super(context);
        this.R = Style.DropBounce;
        T();
    }

    private void N() {
        PtrClassicDefaultHeader ptrClassicDefaultHeader = new PtrClassicDefaultHeader(getContext());
        this.T = ptrClassicDefaultHeader;
        setHeaderView(ptrClassicDefaultHeader);
        e(this.T);
    }

    private void O() {
        Context context = getContext();
        DropBounceHeaderView dropBounceHeaderView = new DropBounceHeaderView(context);
        dropBounceHeaderView.setUp(this);
        dropBounceHeaderView.setColor(Color.parseColor("#4EA9E9"));
        dropBounceHeaderView.setLayoutParams(new PtrFrameLayout.LayoutParams(-1, 50));
        dropBounceHeaderView.setPadding(0, i0.a(context, 8.0f), 0, i0.a(context, 9.0f));
        setLoadingMinTime(1000);
        setDurationToCloseHeader(500);
        this.S = dropBounceHeaderView;
    }

    private void P() {
        MaterialHeader materialHeader = new MaterialHeader(getContext());
        materialHeader.setColorSchemeColors(getResources().getIntArray(R.array.materia_colors));
        materialHeader.setLayoutParams(new PtrFrameLayout.LayoutParams(-1, -2));
        materialHeader.setPadding(0, z6.b.b(15.0f), 0, z6.b.b(10.0f));
        materialHeader.setPtrFrameLayout(this);
        this.S = materialHeader;
    }

    private void Q() {
        RentalsSunHeaderView rentalsSunHeaderView = new RentalsSunHeaderView(getContext());
        rentalsSunHeaderView.setLayoutParams(new PtrFrameLayout.LayoutParams(-1, -2));
        rentalsSunHeaderView.setPadding(0, z6.b.b(15.0f), 0, z6.b.b(10.0f));
        rentalsSunHeaderView.setUp(this);
        this.S = rentalsSunHeaderView;
    }

    private void R() {
        StoreHouseHeader storeHouseHeader = new StoreHouseHeader(getContext());
        storeHouseHeader.setPadding(0, z6.b.b(15.0f), 0, 0);
        storeHouseHeader.n(new String[]{"PAPA LOADING..."}[0]);
        setBackgroundColor(getResources().getColor(R.color.merchant_listing_name_color));
        this.S = storeHouseHeader;
    }

    private void S() {
        int i10 = this.A;
        if (i10 == 1) {
            this.R = Style.Classical;
            return;
        }
        if (i10 == 2) {
            this.R = Style.DropBounce;
            return;
        }
        if (i10 == 3) {
            this.R = Style.Material;
            return;
        }
        if (i10 == 4) {
            this.R = Style.RentalsSun;
        } else if (i10 == 5) {
            this.R = Style.StoreHouse;
        } else {
            this.R = Style.DropBounce;
        }
    }

    private void T() {
        S();
        int i10 = a.f71953a[this.R.ordinal()];
        if (i10 == 1) {
            N();
            return;
        }
        if (i10 == 2) {
            O();
        } else if (i10 == 3) {
            P();
        } else if (i10 == 4) {
            Q();
        } else if (i10 == 5) {
            R();
        }
        setHeaderView(this.S);
        e(this.S);
    }

    public PtrClassicDefaultHeader getClassicHeader() {
        return this.T;
    }

    public PtrUIHeader getHeader() {
        return this.S;
    }

    public void setLastUpdateTimeKey(String key) {
        PtrClassicDefaultHeader ptrClassicDefaultHeader = this.T;
        if (ptrClassicDefaultHeader != null) {
            ptrClassicDefaultHeader.setLastUpdateTimeKey(key);
        }
    }

    public void setLastUpdateTimeRelateObject(Object object) {
        PtrClassicDefaultHeader ptrClassicDefaultHeader = this.T;
        if (ptrClassicDefaultHeader != null) {
            ptrClassicDefaultHeader.setLastUpdateTimeRelateObject(object);
        }
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.R = Style.DropBounce;
        T();
    }

    public PtrClassicFrameLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.R = Style.DropBounce;
        T();
    }
}
