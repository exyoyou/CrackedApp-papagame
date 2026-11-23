package com.switfpass.pay.activity;

import android.content.Context;
import com.qq.e.comm.managers.setting.GlobalSetting;
import com.switfpass.pay.bean.OrderBena;
import com.switfpass.pay.lib.Resourcemap;
import java.util.Date;

/* JADX INFO: loaded from: classes2.dex */
final class R extends com.switfpass.pay.thread.h {
    private /* synthetic */ QrcodeActivity aJ;

    R(QrcodeActivity qrcodeActivity) {
        this.aJ = qrcodeActivity;
    }

    @Override // com.switfpass.pay.thread.h, com.switfpass.pay.thread.e
    public final void onError(Object obj) {
        super.onError(obj);
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPostExecute() {
        super.onPostExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final void onPreExecute() {
        super.onPreExecute();
    }

    @Override // com.switfpass.pay.thread.e
    public final /* synthetic */ void onSucceed(Object obj) {
        OrderBena orderBena = (OrderBena) obj;
        super.onSucceed(orderBena);
        if (orderBena != null) {
            if (!orderBena.getStatus().equals("201") || !this.aJ.aI) {
                if (orderBena.getStatus().equals(GlobalSetting.UNIFIED_INTERSTITIAL_HS_AD)) {
                    QrcodeActivity.i(this.aJ).setText(Resourcemap.getString_pay_zfb_scan_state_info());
                    QrcodeActivity.j(this.aJ).setImageResource(Resourcemap.getDrawable_n_right_select());
                    QrcodeActivity.k(this.aJ).setBackgroundResource(Resourcemap.getDrawable_n_code_green_bg());
                    return;
                }
                return;
            }
            this.aJ.aI = false;
            orderBena.setService(QrcodeActivity.e(this.aJ).getService());
            orderBena.setTradeName(QrcodeActivity.e(this.aJ).getTradeName());
            orderBena.setCashierName(QrcodeActivity.e(this.aJ).getCashierName());
            orderBena.setTradeTime(String.valueOf(new Date().getTime()));
            orderBena.setPay_logo(QrcodeActivity.e(this.aJ).getPay_logo());
            orderBena.setBankType(QrcodeActivity.e(this.aJ).getBankType());
            PayResultActivity.startActivity(orderBena, (Context) this.aJ);
            this.aJ.finish();
        }
    }
}
