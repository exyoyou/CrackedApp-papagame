package b7;

import com.join.mgps.dto.CommentAllListBean;
import com.join.mgps.dto.CommentCreateArgs;
import com.join.mgps.dto.CommentCreateBean;
import com.join.mgps.dto.CommentDetailBean;
import com.join.mgps.dto.CommentListForSelfBean;
import com.join.mgps.dto.CommentModifyArgs;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentPraiseRequestBean;
import com.join.mgps.dto.CommentRequest;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.dto.CommentSelfRequestBean;
import com.join.mgps.dto.CommentTokenBean;
import com.join.mgps.dto.DeleteCommentArgs;
import com.join.mgps.dto.GamedetialCommentRequest;
import com.join.mgps.dto.RequestCommentAllListArgs;
import com.join.mgps.dto.RequestCommentDetailArgs;
import com.join.mgps.dto.RequestCommentpraiseArgs;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface e {
    @POST("/commentlist/index")
    Call<CommentResponse<CommentAllListBean>> a(@Body RequestCommentAllListArgs requestInterface);

    @POST("/addcomment/index")
    Call<CommentResponse<CommentCreateBean>> b(@Body CommentCreateArgs requestInterface);

    @POST("/adddespise/index")
    Call<CommentResponse<CommentPraiseBean>> c(@Body CommentPraiseRequestBean request);

    @POST("/addpraise/index")
    Call<CommentResponse<CommentPraiseBean>> d(@Body RequestCommentpraiseArgs requestInterface);

    @POST("/adddespise/index")
    Call<CommentResponse<CommentPraiseBean>> e(@Body RequestCommentpraiseArgs requestInterface);

    @POST("/modifyComment/index")
    Call<CommentResponse<CommentCreateBean>> f(@Body CommentModifyArgs requestInterface);

    @POST("/token/index")
    Call<CommentResponse<CommentTokenBean>> g(@Body CommentRequest request);

    @POST("/commentDetailList/index")
    Call<CommentResponse<CommentDetailBean>> h(@Body RequestCommentDetailArgs requestInterface);

    @POST(com.join.mgps.rpc.h.S0)
    Call<CommentResponse<CommentAllListBean>> i(@Body GamedetialCommentRequest params);

    @POST("/addpraise/index")
    Call<CommentResponse<CommentPraiseBean>> j(@Body CommentPraiseRequestBean request);

    @POST("/commentListForSelfv2/index")
    Call<CommentResponse<CommentListForSelfBean>> k(@Body CommentSelfRequestBean request);

    @POST("/delComment/index")
    Call<CommentResponse<CommentPraiseBean>> l(@Body DeleteCommentArgs requestInterface);
}
