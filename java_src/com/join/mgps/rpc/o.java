package com.join.mgps.rpc;

import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.AccountPaBiBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.ResultMyVoucherBean;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import java.util.Map;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface o {
    @POST("/wallet/coupon_get")
    PapayVoucherResultMain<AccountGetVoucherResult> a(@Body Map<String, String> params);

    @POST("/wallet/red_envelope_info")
    PapayWalletResultMain b(@Body Map<String, String> params);

    @POST("/wallet/coupon_game_info")
    PapayVoucherResultMain<ResultMyVoucherGameBean> c(@Body Map<String, String> params);

    @POST("/wallet/wallet_info")
    PapayWalletResultMain d(@Body Map<String, String> params);

    @POST("/wallet/pay_rebate_config")
    PapayVoucherResultMain<PayActivityConfig> e(@Body Map<String, String> params);

    @POST("/wallet/coupon_info")
    PapayVoucherResultMain<ResultMyVoucherBean> f(@Body Map<String, String> params);

    @POST("/wallet/coupon_recommend")
    PapayVoucherResultMain<ResultMyVoucherBean> g(@Body Map<String, String> params);

    @POST("/wallet/wallet_welcome")
    PapayVoucherResultMain<AccountPaBiBean> h(@Body Map<String, String> params);
}
