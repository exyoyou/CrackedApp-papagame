package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.POST;

/* JADX INFO: loaded from: classes3.dex */
public interface f {
    @POST("/commentlist/index")
    CommentResponse<CommentAllListBean> a(@Body RequestCommentAllListArgs requestInterface);

    @POST("/addcomment/index")
    CommentResponse<CommentCreateBean> b(@Body CommentCreateArgs requestInterface);

    @POST("/adddespise/index")
    CommentResponse<CommentPraiseBean> c(@Body CommentPraiseRequestBean request);

    @POST("/addpraise/index")
    CommentResponse<CommentPraiseBean> d(@Body RequestCommentpraiseArgs requestInterface);

    @POST("/adddespise/index")
    CommentResponse<CommentPraiseBean> e(@Body RequestCommentpraiseArgs requestInterface);

    @POST("/modifyComment/index")
    CommentResponse<CommentCreateBean> f(@Body CommentModifyArgs requestInterface);

    @POST("/token/index")
    CommentResponse<CommentTokenBean> g(@Body CommentRequest request);

    @POST("/commentDetailList/index")
    CommentResponse<CommentDetailBean> h(@Body RequestCommentDetailArgs requestInterface);

    @POST(h.S0)
    CommentResponse<CommentAllListBean> i(@Body GamedetialCommentRequest params);

    @POST("/addpraise/index")
    CommentResponse<CommentPraiseBean> j(@Body CommentPraiseRequestBean request);

    @POST("/commentListForSelfv2/index")
    CommentResponse<CommentListForSelfBean> k(@Body CommentSelfRequestBean request);

    @POST("/delComment/index")
    CommentResponse<CommentPraiseBean> l(@Body DeleteCommentArgs requestInterface);
}
