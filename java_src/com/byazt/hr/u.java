package com.byazt.hr;

import android.text.TextUtils;
import android.util.Pair;
import java.util.Date;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: loaded from: classes6.dex */
@com.byazt.zqa.c(c = {0, 1, 29, 67})
public class u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, Long> f15078c;
    public Map<String, Pair<String, String>> tt;

    @com.byazt.zqa.c(c = {0, 1, 29, 57})
    private static class c {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static u f15081c = new u();
    }

    public Pair<String, String> a(String str) {
        return this.tt.get(str);
    }

    public sp da(String str) {
        return x.c().tt(str);
    }

    public void i(String str) {
        x.c().c(str);
    }

    public i n(String str) {
        return da.c().tt(str);
    }

    public void sp(final String str) {
        com.byazt.eu.n.c(new Runnable() { // from class: com.byazt.hr.u.2
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "addShowFreqctlCount ritId = " + str);
                sp spVarDa = u.this.da(str);
                if (spVarDa == null || !spVarDa.x()) {
                    return;
                }
                for (n nVar : spVarDa.sl()) {
                    if (nVar.n() < nVar.c()) {
                        u.this.c(spVarDa, nVar.ve(), nVar.n() + 1);
                    }
                }
            }
        });
    }

    public void tt() {
        this.tt = new ConcurrentHashMap();
        this.f15078c = new ConcurrentHashMap();
    }

    public void uj(String str) {
        da.c().c(str);
    }

    public boolean ve(String str) {
        i iVarN = n(str);
        if (iVarN != null && iVarN.x() && iVarN.t()) {
            long time = new Date().getTime();
            long jSl = iVarN.sl();
            long jSl2 = iVarN.sl() + iVarN.i();
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "checkPacing currentTime = " + a.tt(time) + " showTime = " + a.tt(jSl) + " pacingBean.getPacing() = " + iVarN.i() + " pacingTime = " + a.tt(jSl2));
            if (time <= jSl2) {
                this.f15078c.put(str, Long.valueOf(time - jSl));
                return false;
            }
        }
        return true;
    }

    public boolean x(String str) {
        sp spVarDa = da(str);
        if (spVarDa == null || !spVarDa.x()) {
            return true;
        }
        for (n nVar : spVarDa.sl()) {
            Date date = new Date();
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "checkFreqctl date = " + date.getTime() + " item.getEffectiveTime() = " + nVar.uj());
            if (date.getTime() > nVar.uj()) {
                c(spVarDa, nVar.ve(), 0);
                c(spVarDa, nVar.ve(), a.c(nVar.tt()));
                com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "checkFreqctl 有效期外计数需要清0，过期时间需要更新 = " + nVar.ve());
            } else {
                if (nVar.n() >= nVar.c()) {
                    com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "checkFreqctl 到了上线不可以展示 ruleId = " + nVar.ve() + " count = " + nVar.n());
                    Map<String, Pair<String, String>> map = this.tt;
                    String strVe = nVar.ve();
                    StringBuilder sb2 = new StringBuilder();
                    sb2.append(nVar.n());
                    map.put(str, new Pair<>(strVe, sb2.toString()));
                    return false;
                }
                com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "checkFreqctl 未到上线可以展示 ruleId = " + nVar.ve() + " count = " + nVar.n());
            }
        }
        return true;
    }

    private u() {
        tt();
    }

    public static u c() {
        return c.f15081c;
    }

    public long c(String str) {
        Long l10 = this.f15078c.get(str);
        if (l10 == null) {
            return -2L;
        }
        return l10.longValue();
    }

    public void tt(final String str) {
        com.byazt.eu.n.c(new Runnable() { // from class: com.byazt.hr.u.1
            @Override // java.lang.Runnable
            public void run() {
                com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "updateShowPacingTime ritId = " + str);
                i iVarN = u.this.n(str);
                if (iVarN == null || !iVarN.x()) {
                    return;
                }
                Date date = new Date();
                com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "updateShowPacingTime save time = " + a.tt(date.getTime()));
                u.this.c(str, date.getTime());
            }
        });
    }

    public void tt(i iVar) {
        da.c().c(iVar);
    }

    public boolean c(i iVar) {
        if (iVar == null) {
            return false;
        }
        i iVarN = n(iVar.tt());
        if (iVarN == null) {
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "pacing 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(iVar.da())) {
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "pacing ruleId 为空 清空本地数据 ");
            uj(iVar.uj());
            return false;
        }
        if (TextUtils.equals(iVarN.da(), iVar.da())) {
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "pacing ruleId 一致 ruleId = " + iVarN.da() + " 无需处理");
            return false;
        }
        com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "pacing ruleId不一致，缓存新规则 old ruleId = " + iVarN.da() + "  new ruleId = " + iVar.da());
        StringBuilder sb2 = new StringBuilder("pacing 删除 ritId = ");
        sb2.append(iVar.uj());
        com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", sb2.toString());
        uj(iVar.uj());
        return true;
    }

    public void tt(sp spVar) {
        x.c().c(spVar);
    }

    public void c(String str, long j10) {
        da.c().c(str, j10);
    }

    public boolean c(sp spVar) {
        if (spVar == null) {
            return false;
        }
        sp spVarDa = da(spVar.tt());
        if (spVarDa == null) {
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "freqctl 规则为空直接存储");
            return true;
        }
        if (TextUtils.isEmpty(spVar.n())) {
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "freqctl version 为空 清空本地数据 ");
            i(spVarDa.tt());
            return false;
        }
        if (TextUtils.equals(spVarDa.n(), spVar.n())) {
            com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "freqctl version 一致 version = " + spVarDa.n() + "无需处理");
            return false;
        }
        com.byazt.eu.tt.c("TTMediationSDK_IntervalShowControl", "freqctl version不一致，缓存新规则 old version = " + spVarDa.n() + "  new version " + spVar.n());
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(sp spVar, String str, int i10) {
        x.c().c(spVar, str, i10);
    }

    private void c(sp spVar, String str, long j10) {
        x.c().c(spVar, str, j10);
    }
}
