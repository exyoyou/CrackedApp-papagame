package b7;

import com.czhj.sdk.common.Constants;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.PayNowActivity_;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.DiscoverListData;
import com.join.mgps.dto.DiscoverListItemBean;
import com.join.mgps.dto.DiscoverListWeiboItemBean;
import com.join.mgps.dto.EmptyMessage;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumProfileMessageData;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GameCommitListBean;
import com.join.mgps.dto.GameMainCommunityBean;
import com.join.mgps.dto.GivePriaceBean;
import com.join.mgps.dto.GroupListBean;
import com.join.mgps.dto.HavenForumDatabean;
import com.join.mgps.dto.HavenWishResultBean;
import com.join.mgps.dto.LabelBean;
import com.join.mgps.dto.MainLabelBean;
import com.join.mgps.dto.MessageCommentReplyResponse;
import com.join.mgps.dto.MulPostData;
import com.join.mgps.dto.NoticeFragmentBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.Response;
import com.join.mgps.dto.ResultResMainBean;
import java.util.List;
import java.util.Map;
import okhttp3.MultipartBody;
import okhttp3.RequestBody;
import retrofit2.Call;
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.Multipart;
import retrofit2.http.POST;
import retrofit2.http.Part;
import retrofit2.http.PartMap;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
public interface g {
    @FormUrlEncoded
    @POST
    Call<ForumResponse<MessageCommentReplyResponse>> A(@Url String url, @FieldMap Map<String, Object> map);

    @GET("/forum/profile/message_reply")
    Call<ForumResponse<ForumData.ForumProfileMessageReplyData>> B(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("comment_pid") int comment_pid, @Query("device_id") String device_id);

    @FormUrlEncoded
    @POST("/group/comment/delete")
    Call<ForumResponse<ForumData.ForumCommentDeleteData>> C(@FieldMap Map<String, String> params);

    @GET("/group/posts/detail/setFirstPost")
    Call<ForumResponse<ForumData.ForumResult>> D(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/group/posts/submitv34/postTipsText")
    Call<ResultResMainBean<String>> E(@Query(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @FormUrlEncoded
    @POST("/forum/posts/favorites")
    Call<ForumResponse<ForumData.ForumPostsFavoritesData>> F(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/group/comment/reply")
    Call<ForumResponse<ForumData.ForumCommentReplyData>> G(@FieldMap Map<String, String> params);

    @GET("/group/forum/tag/userFocusTag")
    Call<ResultResMainBean<EmptyMessage>> H(@Query("uid") String uid, @Query("tag_id") String tag_id, @Query("type") int type, @Query("tag_name") String tag_name);

    @FormUrlEncoded
    @POST("/forum/posts/delete")
    Call<ForumResponse<ForumData.ForumPostsDeleteData>> I(@FieldMap Map<String, String> params);

    @GET("/forum/forum/welcome_posts")
    Call<ForumResponse<ForumData.ForumForumWelcomePostsData>> J(@Query("page") int page, @Query("limit") int limit, @Query("device_id") String device_id);

    @GET("/group/forum/forumv34/getForumGroupIndex")
    Call<ForumResponse<ForumData.ForumGroupIndex>> K(@Query("fid") int fid, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/group/posts/post_gag")
    Call<ForumResponse<ForumData.ForumResult>> L(@FieldMap Map<String, String> params);

    @GET("/forum/search/search_index")
    Call<ForumResponse<ForumData.ForumSearchIndexData>> M(@Query("device_id") String device_id);

    @GET("/group/posts/detail/addPostTag")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> N(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type, @Query("tagid_list") String tagid_list, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/group/forum/forum/exitGroup")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> O(@Query("fid") int fid, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/forum/search/search_query")
    Call<ForumResponse<ForumData.ForumSearchQueryData>> P(@Query("page") int page, @Query("limit") int limit, @Query("keyword") String keyword, @Query("device_id") String device_id);

    @GET("/group/forum/game_recommend")
    Call<ResultResMainBean<GameMainCommunityBean>> Q(@Query("fid") int fid);

    @FormUrlEncoded
    @POST("/forum/posts/praise")
    Call<ForumResponse<ForumData.ForumPostsPraiseData>> R(@FieldMap Map<String, String> params);

    @GET("/group/forum/tag/tagIndexBase")
    Call<ResultResMainBean<MainLabelBean>> S(@Query("uid") String uid, @Query("tag_id") int tag_id, @Query("fid") int fid, @Query("tag_name") String tag_name);

    @GET("/group/posts/forum_group")
    Call<ResultResMainBean<GroupListBean>> T(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("tag_id") String tag_id, @Query("tag_name") String tag_name);

    @GET("/forum/profile/message_list")
    Call<ForumResponse<ForumData.ForumProfileMessageData>> U(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("device_id") String device_id);

    @GET("/group/posts/detail/showAddTagList")
    Call<ForumResponse<List<RecommendLabelTag>>> V(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @GET("/group/posts/detail/showRemoveTagList")
    Call<ForumResponse<List<RecommendLabelTag>>> W(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @GET("/user/favoritev35/get_favorites_list")
    Call<ForumResponse<ForumData.ForumUserFavoritesDatas>> X(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("device_id") String device_id, @Query("version") String version, @Query("type") int type);

    @GET("/group/posts/forum_tags")
    Call<ResultResMainBean<List<LabelBean>>> Y(@Query("uid") String uid, @Query("tag_name") String tag_name, @Query("type") int type);

    @GET("/forum/profile/reply_posts_message_list")
    Call<ForumResponse<ForumProfileMessageData>> Z(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit);

    @GET("/forum/profile/comment")
    Call<ForumResponse<List<ForumData.ForumProfileCommentData>>> a(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("device_id") String device_id);

    @GET("/forum/forum/all_list")
    Call<ForumResponse<ForumData.ForumForumAllData>> a0(@Query("device_id") String device_id);

    @GET("/discover/headlines/index")
    Call<ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>>> b(@Query("uid") int uid, @Query("page") int page, @Query(u.b.f97417c) int tid);

    @GET("/group/forum/game_comment")
    Call<ResultResMainBean<GameCommitListBean>> b0(@Query("game_id") String game_id, @Query("fid") String fid, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/forum/posts/report")
    Call<ForumResponse<ForumData.ForumPostsReportData>> c(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/group/comment/reply")
    Call<ForumResponse<ForumData.ForumCommentReplyReplyData>> c0(@FieldMap Map<String, String> params);

    @GET("/group/posts/forum_tags/search")
    Call<ResultResMainBean<List<LabelBean>>> d(@Query("tag_name") String tag_name);

    @GET("/forum/profile/get_unread_message_count")
    Call<ForumResponse<ForumData.ForumProfileUnreadMessageCountData>> d0(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id);

    @FormUrlEncoded
    @POST("/user/share")
    Call<ForumResponse<ForumData.ForumResult>> e(@FieldMap Map<String, String> params);

    @GET("/group/forum/forum/getPostByType")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> e0(@Query("fid") int fid, @Query("type") int type, @Query("page") int page, @Query("orderBy") int orderBy, @Query("limit") int limit, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/forum/forum/topic_detail")
    Call<ForumResponse<ForumData.ForumForumTopicData>> f(@Query(u.b.f97417c) int tid, @Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("device_id") String device_id);

    @GET("/forum/search/search_query/group_search")
    Call<ForumResponse<ForumData.ForumSearchQueryData>> f0(@Query("page") int page, @Query("limit") int limit, @Query("keyword") String keyword, @Query("device_id") String device_id, @Query("fid") int fid);

    @FormUrlEncoded
    @POST("/forum/posts/help_solvev34")
    Call<ForumResponse<ForumData.ForumPostsHelpSolveData>> g(@FieldMap Map<String, String> params);

    @Headers({"Connection:close"})
    @GET("/group/forum/welcomev35/getHomepageRecommendLabel")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> g0(@Query("gid") int gid, @Query("page") int page, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/forum/profile/posts")
    Call<ForumResponse<ForumData.ForumProfilePostsData>> h(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("device_id") String device_id);

    @Headers({"Connection:close"})
    @GET("/group/forum/welcome/getHomepageRecommendGroup")
    Call<ForumResponse<ForumData.HomepageRecommendGroup>> h0(@Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @POST
    Call<GivePriaceBean> i(@Url String url, @Body CommonRequestBean request);

    @GET
    Call<ForumResponse<HavenForumDatabean>> i0(@Url String url, @Query("name") String name);

    @GET("/forum/forum/plate_detail")
    Call<ForumResponse<ForumData.ForumForumPlateData>> j(@Query("fid") int fid, @Query("page") int page, @Query("limit") int limit, @Query("tab_type") String tab_type, @Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id);

    @GET("/forum/forum/welcome")
    Call<ForumResponse<ForumData.ForumForumWelcomeData>> j0(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id);

    @FormUrlEncoded
    @POST(com.join.mgps.rpc.h.Y1)
    Call<ForumResponse<ForumData.ForumPostsFavoritesData>> k(@FieldMap Map<String, String> params);

    @GET("/forum/forum/all_list")
    Call<ForumResponse<ForumData.ForumForumAllData>> k0(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id);

    @GET("/group/posts/detail")
    Call<ForumResponse<ForumData.ForumPostsData>> l(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query("limit") int limit, @Query("see_lz") int see_lz, @Query("comment_order") String comment_order, @Query("device_id") String device_id, @Query("from") String from, @Query("position") String position);

    @GET("/group/posts/detail")
    Call<ForumResponse<ForumData.ForumPostsData>> l0(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query("limit") int limit, @Query("see_lz") int see_lz, @Query("comment_order") String comment_order, @Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id, @Query("from") String from, @Query("position") String position);

    @GET("/forum/forum/follow_list")
    Call<ForumResponse<ForumData.ForumForumFollowListData>> m(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id);

    @GET("/group/posts/detail/removePostTag")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> m0(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type, @Query("tagid_list") String tagid_list, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/group/forum/welcome/saveHomepageRecommendLabel")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> n(@FieldMap Map<String, String> params);

    @GET("/group/forum/forum/joinGroup")
    Call<ForumResponse<ForumData.HomepageRecommendLabel>> n0(@Query("fid") int fid, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/group/comment/reply_delete")
    Call<ForumResponse<ForumData.ForumCommentReplyDeleteData>> o(@FieldMap Map<String, String> params);

    @GET("/group/posts/detail_comments")
    Call<ForumResponse<ForumData.ForumPostsData>> o0(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query("page") int page, @Query("limit") int limit, @Query("see_lz") int see_lz, @Query("comment_order") String comment_order, @Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id, @Query("from") String from, @Query("position") String position);

    @GET("/forum/profile/favorites_posts")
    Call<ForumResponse<ForumData.ForumProfileFavoritesPostsData>> p(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("device_id") String device_id);

    @FormUrlEncoded
    @POST("/group/posts/wish")
    Call<ForumResponse<HavenWishResultBean>> p0(@FieldMap Map<String, Object> map);

    @GET("/discover/headlines/index")
    Call<ForumResponse<DiscoverListData<DiscoverListItemBean>>> q(@Query("uid") int uid, @Query("page") int page, @Query(u.b.f97417c) int tid);

    @GET("/forum/forum/welcome")
    Call<ForumResponse<ForumData.ForumForumWelcomeData>> q0(@Query("device_id") String device_id);

    @GET("/group/forum/My_forum/myForumMain")
    Call<ForumResponse<ForumData.MyForumMain>> r(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit);

    @GET("/forum/profile/reply_posts_message_list/praise")
    Call<ForumResponse<ForumProfileMessageData>> r0(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit);

    @GET("/group/posts/submitv34/initPostExtra")
    Call<ResultResMainBean<Response>> s(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @GET("/group/posts/gamefavoritelist")
    Call<ResultResMainBean<List<CollectionBeanSub>>> s0(@Query("uid") String uid, @Query("page") int page);

    @GET("/forum/posts/multi_detail")
    Call<ForumResponse<MulPostData>> t(@Query("pids") String pids);

    @GET("/forum/forum/forum_group_list")
    Call<ForumResponse<ForumData.ForumForumGroupsData>> t0(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id);

    @GET("/notification/notice/index")
    Call<NoticeFragmentBean> u(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("appver") String appver, @Query("package_type") String ptype);

    @FormUrlEncoded
    @POST("/group/posts/best")
    Call<ForumResponse<ForumData.ForumPostsBestData>> u0(@FieldMap Map<String, String> params);

    @GET("/forum/forum/plate_detail")
    Call<ForumResponse<ForumData.ForumForumPlateData>> v(@Query("fid") int fid, @Query("page") int page, @Query("limit") int limit, @Query("tab_type") String tab_type, @Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("from") String from, @Query("position") String position, @Query("device_id") String device_id);

    @GET("/group/posts/detail_comments")
    Call<ForumResponse<ForumData.ForumPostsData>> v0(@Query(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Query("page") int page, @Query("limit") int limit, @Query("see_lz") int see_lz, @Query("comment_order") String comment_order, @Query("device_id") String device_id, @Query("from") String from, @Query("position") String position);

    @GET("/forum/forum/welcome_posts")
    Call<ForumResponse<ForumData.ForumForumWelcomePostsData>> w(@Query("page") int page, @Query("limit") int limit, @Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("device_id") String device_id);

    @FormUrlEncoded
    @POST("/forum/forum/follow")
    Call<ForumResponse<ForumData.ForumForumFollowData>> w0(@FieldMap Map<String, String> params);

    @GET("/discover/forum_post/index")
    Call<ForumResponse<List<ForumBean.ForumPostsBean>>> x(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("page") int page);

    @POST("/group/posts/submitv34")
    @Multipart
    Call<ForumResponse<ForumData.ForumPostsSubmitData>> x0(@PartMap Map<String, RequestBody> params, @Part List<MultipartBody.Part> parts);

    @GET("/group/forum/tag/tagIndexPost")
    Call<ResultResMainBean<List<ForumBean.ForumPostsBean>>> y(@Query("uid") String uid, @Query("tag_id") int tag_id, @Query("page") int page, @Query("limit") int limit, @Query("type") int type, @Query(PayNowActivity_.ORDER_EXTRA) String order, @Query(Constants.TOKEN) String token, @Query("fid") String fid);

    @POST("/group/posts/submitv34")
    @Multipart
    Call<ResultResMainBean<Response>> y0(@PartMap Map<String, RequestBody> params, @Part List<MultipartBody.Part> parts);

    @GET("/group/forum/forum/getGroupFans")
    Call<ForumResponse<ForumData.GroupFans>> z(@Query("fid") int fid, @Query("page") int page, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @POST("/group/posts/comment")
    @Multipart
    Call<ForumResponse<ForumData.ForumPostsCommentData>> z0(@PartMap Map<String, RequestBody> params, @Part List<MultipartBody.Part> parts);
}
