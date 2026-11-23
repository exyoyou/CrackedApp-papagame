package b7;

import com.join.mgps.activity.login.ChangeNiknameRequest;
import com.join.mgps.activity.login.ChuanglanRequest;
import com.join.mgps.activity.login.LoginResultMain;
import com.join.mgps.activity.login.LoginUserStatuDataBean;
import com.join.mgps.activity.login.LoginUserStatuRequest;
import com.join.mgps.activity.login.LoginjiguangRequest;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountLoginresultData;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.LoginMethodResultData;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestUserCenterArgs;
import com.join.mgps.dto.ResponseModel;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.SimulatorExitPanel;
import com.join.mgps.dto.SimulatorExitPanelArgs;
import com.join.mgps.dto.UserCenterBean;
import com.xinzhu.overmind.client.frameworks.accounts.GrantCredentialsPermissionActivity;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface j {
    @POST("/v4/personal_center/index")
    Call<ResultMainBean<UserCenterBean>> a(@Body CommonRequestBean<RequestUserCenterArgs> requestInterfac);

    @POST("/user/v3/nick_name/perfecting")
    Call<LoginResultMain<AccountresultData>> b(@Body ChangeNiknameRequest result);

    @GET("/login/methods")
    Call<AccountResultMainBean<LoginMethodResultData>> c(@Query("versionCode") String versionCode, @Query(GrantCredentialsPermissionActivity.f89265g) String account);

    @POST("/activity/v1/simulator/exitPanel")
    Call<ResponseModel<SimulatorExitPanel>> d(@Body RequestModel<SimulatorExitPanelArgs> request);

    @POST("/login/oneclick/login")
    Call<AccountResultMainBean<AccountLoginresultData>> e(@Body Map<String, Object> params);

    @POST("/user/v3/login/jpush")
    Call<LoginResultMain<AccountresultData<AccountBean>>> f(@Body LoginjiguangRequest request);

    @POST("/user/v4/login/flash")
    Call<LoginResultMain<AccountresultData<AccountBean>>> g(@Body ChuanglanRequest result);

    @POST("/login/oneclick/check_login")
    Call<AccountResultMainBean<AccountLoginresultData>> h(@Body Map<String, Object> params);

    @POST("/user/v3/member_state/index")
    Call<LoginResultMain<LoginUserStatuDataBean>> i(@Body LoginUserStatuRequest request);
}
