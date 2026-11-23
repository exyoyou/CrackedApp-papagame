package com.join.kotlin.network.api;

import com.join.kotlin.ui.search.model.SearchDataBean;
import com.join.kotlin.ui.search.model.args.SearchArgs;
import com.join.kotlin.ui.search.model.args.SearchMoreArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.ResponseModel;
import com.sigmob.sdk.base.mta.PointCategory;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\bf\u0018\u00002\u00020\u0001J&\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\t\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006H§@¢\u0006\u0002\u0010\bJ&\u0010\n\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00032\u000e\b\u0001\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u000b0\u0006H§@¢\u0006\u0002\u0010\b¨\u0006\f"}, d2 = {"Lcom/join/kotlin/network/api/SearchGameApiService;", "", "gameSearchList", "Lcom/join/mgps/dto/ResponseModel;", "Lcom/join/kotlin/ui/search/model/SearchDataBean;", PointCategory.REQUEST, "Lcom/join/mgps/dto/RequestModel;", "Lcom/join/kotlin/ui/search/model/args/SearchArgs;", "(Lcom/join/mgps/dto/RequestModel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "gameSearchListMore", "searchListMore", "Lcom/join/kotlin/ui/search/model/args/SearchMoreArgs;", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface SearchGameApiService {
    @POST("/v8/search/search_list")
    @Nullable
    Object gameSearchList(@Body @NotNull RequestModel<SearchArgs> requestModel, @NotNull Continuation<? super ResponseModel<SearchDataBean>> continuation);

    @POST("/v8/search/recommend_list")
    @Nullable
    Object gameSearchListMore(@Body @NotNull RequestModel<SearchArgs> requestModel, @NotNull Continuation<? super ResponseModel<SearchDataBean>> continuation);

    @POST("/v8/search/more_list")
    @Nullable
    Object searchListMore(@Body @NotNull RequestModel<SearchMoreArgs> requestModel, @NotNull Continuation<? super ResponseModel<SearchDataBean>> continuation);
}
