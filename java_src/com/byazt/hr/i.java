package com.byazt.hr;

import android.text.TextUtils;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 42})
public class i extends uj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public long f15061a;
    public String sp;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public long f15062x;

    public i(String str, String str2, String str3, String str4, int i10, String str5, String str6) {
        super(str, str2, str3, str4, i10);
        this.f15062x = 0L;
        this.f15061a = 0L;
        try {
            this.f15061a = Long.parseLong(str5);
        } catch (Exception unused) {
        }
        this.sp = str6;
    }

    public void c(long j10) {
        this.f15062x = j10;
    }

    public String da() {
        return this.sp;
    }

    public long i() {
        return this.f15061a;
    }

    public long sl() {
        return this.f15062x;
    }

    public boolean t() {
        return this.f15062x != 0;
    }

    @Override // com.byazt.hr.uj
    public String toString() {
        return "BaseIntervalBean{waterfallId='" + this.f15083c + "', showRulesVersion='" + this.ve + "', timingMode=" + this.f15084n + "}IntervalPacingBean{pacing=" + this.f15061a + ", pacingRuleId='" + this.sp + "', effectiveTime=" + this.f15062x + '}';
    }

    @Override // com.byazt.hr.uj
    public boolean x() {
        return (TextUtils.isEmpty(this.sp) || this.f15061a == 0) ? false : true;
    }

    public i(String str, String str2, String str3, String str4, int i10, String str5, String str6, String str7) {
        this(str, str2, str3, str4, i10, str5, str6);
        this.f15062x = 0L;
        try {
            this.f15062x = Long.parseLong(str7);
        } catch (Exception unused) {
        }
    }
}
