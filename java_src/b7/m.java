package b7;

import com.join.mgps.dto.AccountGetVoucherResult;
import com.join.mgps.dto.AccountPaBiBean;
import com.join.mgps.dto.PapayVoucherResultMain;
import com.join.mgps.dto.PapayWalletResultMain;
import com.join.mgps.dto.PayActivityConfig;
import com.join.mgps.dto.ResultMyVoucherBean;
import com.join.mgps.dto.ResultMyVoucherGameBean;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface m {
    @FormUrlEncoded
    @POST("/wallet/coupon_get")
    Call<PapayVoucherResultMain<AccountGetVoucherResult>> a(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/red_envelope_info")
    Call<PapayWalletResultMain> b(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/coupon_game_info")
    Call<PapayVoucherResultMain<ResultMyVoucherGameBean>> c(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/wallet_info")
    Call<PapayWalletResultMain> d(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/pay_rebate_config")
    Call<PapayVoucherResultMain<PayActivityConfig>> e(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/coupon_info")
    Call<PapayVoucherResultMain<ResultMyVoucherBean>> f(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/coupon_recommend")
    Call<PapayVoucherResultMain<ResultMyVoucherBean>> g(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/wallet/wallet_welcome")
    Call<PapayVoucherResultMain<AccountPaBiBean>> h(@FieldMap Map<String, String> params);
}
