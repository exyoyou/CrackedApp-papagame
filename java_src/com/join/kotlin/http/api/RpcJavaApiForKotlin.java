package com.join.kotlin.http.api;

import com.join.kotlin.ui.account.modle.UnThirdPartRequest;
import com.join.kotlin.ui.modleregin.modle.BtReginResultMain;
import com.join.kotlin.ui.modleregin.modle.MustplayItemNetBean;
import com.join.mgps.dto.RequestGameIdArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import java.util.List;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018\u00002\u00020\u0001J\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H§@¢\u0006\u0002\u0010\u0005J&\u0010\u0006\u001a\f\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u00070\u00032\f\b\u0001\u0010\b\u001a\u0006\u0012\u0002\b\u00030\tH§@¢\u0006\u0002\u0010\nJ*\u0010\u000b\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u00070\u00032\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\r0\tH§@¢\u0006\u0002\u0010\nJ$\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u000f0\u00032\u000e\b\u0001\u0010\b\u001a\b\u0012\u0004\u0012\u00020\r0\tH§@¢\u0006\u0002\u0010\nJ\u001e\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u00032\b\b\u0001\u0010\b\u001a\u00020\u0012H§@¢\u0006\u0002\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/join/kotlin/http/api/RpcJavaApiForKotlin;", "", "getUserData", "Lcom/join/mgps/dto/ResponseModel;", "", "(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getRankingList", "", "requestMain", "Lcom/join/mgps/dto/RequestModel;", "(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "getMustplayDatas", "Lcom/join/kotlin/ui/modleregin/modle/MustplayItemNetBean;", "Lcom/join/mgps/dto/RequestGameIdArgs;", "getBtReginDatas", "Lcom/join/kotlin/ui/modleregin/modle/BtReginResultMain;", "unbindThirdfParty", "", "Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;", "(Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface RpcJavaApiForKotlin {
    @POST("/v6/btGame/areaList")
    @Nullable
    Object getBtReginDatas(@Body @NotNull RequestModel<RequestGameIdArgs> requestModel, @NotNull Continuation<? super ResponseModel<BtReginResultMain>> continuation);

    @POST("/v6/mustPlay/gameList")
    @Nullable
    Object getMustplayDatas(@Body @NotNull RequestModel<RequestGameIdArgs> requestModel, @NotNull Continuation<? super ResponseModel<List<MustplayItemNetBean>>> continuation);

    @POST("/v5/special_game_board/ranking_game_list")
    @Nullable
    Object getRankingList(@Body @NotNull RequestModel<?> requestModel, @NotNull Continuation<? super ResponseModel<List<?>>> continuation);

    @POST("")
    @Nullable
    Object getUserData(@NotNull Continuation<? super ResponseModel<String>> continuation);

    @POST("/thirdParty/account/unbind")
    @Nullable
    Object unbindThirdfParty(@Body @NotNull UnThirdPartRequest unThirdPartRequest, @NotNull Continuation<? super ResponseModel<Boolean>> continuation);
}
