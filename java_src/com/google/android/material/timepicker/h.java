package com.google.android.material.timepicker;

import android.content.Context;
import android.view.View;
import android.view.accessibility.AccessibilityManager;
import androidx.core.content.ContextCompat;
import androidx.core.view.accessibility.AccessibilityNodeInfoCompat;
import com.bykv.vk.component.ttvideo.player.MediaPlayer;
import com.google.android.material.R;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.sigmob.sdk.base.mta.PointType;

/* JADX INFO: loaded from: classes5.dex */
class h implements ClockHandView.c, TimePickerView.f, TimePickerView.e, ClockHandView.b, i {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f32407g = {"12", "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "10", "11"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f32408h = {com.sigmob.sdk.archives.tar.e.V, "1", "2", "3", "4", "5", "6", "7", GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD, "9", "10", "11", "12", PointType.SIGMOB_REPORT_TRACKING, "14", "15", "16", PointType.LOAD_READY, "18", "19", com.windmill.sdk.point.PointType.WIND_ADAPTER, "21", "22", "23"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String[] f32409i = {com.sigmob.sdk.archives.tar.e.V, "5", "10", "15", com.windmill.sdk.point.PointType.WIND_ADAPTER, "25", PointType.DOWNLOAD_TRACKING, "35", "40", "45", "50", "55"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final int f32410j = 30;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int f32411k = 6;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final TimePickerView f32412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TimeModel f32413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f32414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float f32415e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f32416f = false;

    class a extends com.google.android.material.timepicker.b {
        a(Context context, int i10) {
            super(context, i10);
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(h.this.f32413c.d(), String.valueOf(h.this.f32413c.f())));
        }
    }

    class b extends com.google.android.material.timepicker.b {
        b(Context context, int i10) {
            super(context, i10);
        }

        @Override // com.google.android.material.timepicker.b, androidx.core.view.AccessibilityDelegateCompat
        public void onInitializeAccessibilityNodeInfo(View view, AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
            super.onInitializeAccessibilityNodeInfo(view, accessibilityNodeInfoCompat);
            accessibilityNodeInfoCompat.setContentDescription(view.getResources().getString(R.string.material_minute_suffix, String.valueOf(h.this.f32413c.f32349f)));
        }
    }

    public h(TimePickerView timePickerView, TimeModel timeModel) {
        this.f32412b = timePickerView;
        this.f32413c = timeModel;
        initialize();
    }

    private String[] g() {
        return this.f32413c.f32347d == 1 ? f32408h : f32407g;
    }

    private int h() {
        return (this.f32413c.f() * 30) % MediaPlayer.MEDIA_PLAYER_OPTION_ENABLE_DEMUXER_STALL;
    }

    private void i(int i10, int i11) {
        TimeModel timeModel = this.f32413c;
        if (timeModel.f32349f == i11 && timeModel.f32348e == i10) {
            return;
        }
        this.f32412b.performHapticFeedback(4);
    }

    private void k() {
        TimeModel timeModel = this.f32413c;
        int i10 = 1;
        if (timeModel.f32350g == 10 && timeModel.f32347d == 1 && timeModel.f32348e >= 12) {
            i10 = 2;
        }
        this.f32412b.m(i10);
    }

    private void l() {
        TimePickerView timePickerView = this.f32412b;
        TimeModel timeModel = this.f32413c;
        timePickerView.b(timeModel.f32351h, timeModel.f(), this.f32413c.f32349f);
    }

    private void m() {
        n(f32407g, "%d");
        n(f32409i, TimeModel.f32343i);
    }

    private void n(String[] strArr, String str) {
        for (int i10 = 0; i10 < strArr.length; i10++) {
            strArr[i10] = TimeModel.b(this.f32412b.getResources(), strArr[i10], str);
        }
    }

    @Override // com.google.android.material.timepicker.i
    public void a() {
        this.f32412b.setVisibility(8);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.b
    public void b(float f10, boolean z10) {
        this.f32416f = true;
        TimeModel timeModel = this.f32413c;
        int i10 = timeModel.f32349f;
        int i11 = timeModel.f32348e;
        if (timeModel.f32350g == 10) {
            this.f32412b.n(this.f32415e, false);
            AccessibilityManager accessibilityManager = (AccessibilityManager) ContextCompat.getSystemService(this.f32412b.getContext(), AccessibilityManager.class);
            if (!(accessibilityManager != null && accessibilityManager.isTouchExplorationEnabled())) {
                j(12, true);
            }
        } else {
            int iRound = Math.round(f10);
            if (!z10) {
                this.f32413c.C(((iRound + 15) / 30) * 5);
                this.f32414d = this.f32413c.f32349f * 6;
            }
            this.f32412b.n(this.f32414d, z10);
        }
        this.f32416f = false;
        l();
        i(i11, i10);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.e
    public void c(int i10) {
        this.f32413c.D(i10);
    }

    @Override // com.google.android.material.timepicker.TimePickerView.f
    public void d(int i10) {
        j(i10, true);
    }

    @Override // com.google.android.material.timepicker.ClockHandView.c
    public void e(float f10, boolean z10) {
        if (this.f32416f) {
            return;
        }
        TimeModel timeModel = this.f32413c;
        int i10 = timeModel.f32348e;
        int i11 = timeModel.f32349f;
        int iRound = Math.round(f10);
        TimeModel timeModel2 = this.f32413c;
        if (timeModel2.f32350g == 12) {
            timeModel2.C((iRound + 3) / 6);
            this.f32414d = (float) Math.floor(this.f32413c.f32349f * 6);
        } else {
            int i12 = (iRound + 15) / 30;
            if (timeModel2.f32347d == 1) {
                i12 %= 12;
                if (this.f32412b.j() == 2) {
                    i12 += 12;
                }
            }
            this.f32413c.A(i12);
            this.f32415e = h();
        }
        if (z10) {
            return;
        }
        l();
        i(i10, i11);
    }

    @Override // com.google.android.material.timepicker.i
    public void initialize() {
        if (this.f32413c.f32347d == 0) {
            this.f32412b.w();
        }
        this.f32412b.i(this);
        this.f32412b.t(this);
        this.f32412b.s(this);
        this.f32412b.q(this);
        m();
        invalidate();
    }

    @Override // com.google.android.material.timepicker.i
    public void invalidate() {
        this.f32415e = h();
        TimeModel timeModel = this.f32413c;
        this.f32414d = timeModel.f32349f * 6;
        j(timeModel.f32350g, false);
        l();
    }

    void j(int i10, boolean z10) {
        boolean z11 = i10 == 12;
        this.f32412b.l(z11);
        this.f32413c.f32350g = i10;
        this.f32412b.c(z11 ? f32409i : g(), z11 ? R.string.material_minute_suffix : this.f32413c.d());
        k();
        this.f32412b.n(z11 ? this.f32414d : this.f32415e, z10);
        this.f32412b.a(i10);
        this.f32412b.p(new a(this.f32412b.getContext(), R.string.material_hour_selection));
        this.f32412b.o(new b(this.f32412b.getContext(), R.string.material_minute_selection));
    }

    @Override // com.google.android.material.timepicker.i
    public void show() {
        this.f32412b.setVisibility(0);
    }
}
