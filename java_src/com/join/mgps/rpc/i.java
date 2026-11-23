package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.Headers;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;
import retrofit2.http.Url;

/* JADX INFO: loaded from: classes3.dex */
public interface i {
    @FormUrlEncoded
    @POST
    ForumResponse<MessageCommentReplyResponse> A(@Url String url, @FieldMap Map<String, Object> map);

    @GET("/forum/profile/message_reply?uid={uid}&token={token}&comment_pid={comment_pid}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileMessageReplyData> B(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("comment_pid") int comment_pid, @Path("device_id") String device_id);

    @POST("/group/comment/delete")
    ForumResponse<ForumData.ForumCommentDeleteData> C(@Body Map<String, String> params);

    @GET("/group/posts/detail/setFirstPost?pid={pid}&uid={uid}&token={token}")
    ForumResponse<ForumData.ForumResult> D(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @GET("/group/posts/submitv34/postTipsText?post_type={post_type}")
    ResultResMainBean<String> E(@Path(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @POST("/forum/posts/favorites")
    ForumResponse<ForumData.ForumPostsFavoritesData> F(@Body Map<String, String> params);

    @POST("/group/comment/reply")
    ForumResponse<ForumData.ForumCommentReplyData> G(@Body Map<String, String> params);

    @GET("/group/forum/tag/userFocusTag?uid={uid}&tag_id={tag_id}&type={type}&tag_name={tag_name}")
    ResultResMainBean<EmptyMessage> H(@Path("uid") String uid, @Path("tag_id") String tag_id, @Path("type") int type, String tag_name);

    @POST("/forum/posts/delete")
    ForumResponse<ForumData.ForumPostsDeleteData> I(@Body Map<String, String> params);

    @GET("/forum/forum/welcome_posts?page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomePostsData> J(@Path("page") int page, @Path("limit") int limit, @Path("device_id") String device_id);

    @GET("/group/forum/forumv34/getForumGroupIndex?fid={fid}&uid={uid}&token={token}")
    ForumResponse<ForumData.ForumGroupIndex> K(@Path("fid") int fid, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @POST("/group/posts/post_gag")
    ForumResponse<ForumData.ForumResult> L(@Body Map<String, String> params);

    @GET("/forum/search/search_index?device_id={device_id}")
    ForumResponse<ForumData.ForumSearchIndexData> M(@Path("device_id") String device_id);

    @GET("/group/posts/detail/addPostTag?pid={pid}&post_type={post_type}&tagid_list={tagid_list}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> N(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type, @Path("tagid_list") String tagid_list, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @GET("/group/forum/forum/exitGroup?fid={fid}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> O(@Path("fid") int fid, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @GET("/forum/search/search_query?page={page}&limit={limit}&keyword={keyword}&device_id={device_id}")
    ForumResponse<ForumData.ForumSearchQueryData> P(@Path("page") int page, @Path("limit") int limit, @Path("keyword") String keyword, @Path("device_id") String device_id);

    @GET("/group/forum/game_recommend?fid={fid}")
    ResultResMainBean<GameMainCommunityBean> Q(@Path("fid") int fid);

    @POST("/forum/posts/praise")
    ForumResponse<ForumData.ForumPostsPraiseData> R(@Body Map<String, String> params);

    @GET("/group/forum/tag/tagIndexBase?uid={uid}&tag_id={tag_id}&fid={fid}")
    ResultResMainBean<MainLabelBean> S(@Path("uid") String uid, @Path("tag_id") int tag_id, @Path("fid") int fid, String tag_name);

    @GET("/group/posts/forum_group?uid={uid}&token={token}&tag_id={tag_id}&tag_name={tag_name}")
    ResultResMainBean<GroupListBean> T(@Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path("tag_id") String tag_id, String tag_name);

    @GET("/forum/profile/message_list?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileMessageData> U(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("page") int page, @Path("limit") int limit, @Path("device_id") String device_id);

    @GET("/group/posts/detail/showAddTagList?uid={uid}&token={token}&post_type={post_type}")
    ForumResponse<List<RecommendLabelTag>> V(@Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @GET("/group/posts/detail/showRemoveTagList?pid={pid}&uid={uid}&token={token}&post_type={post_type}")
    ForumResponse<List<RecommendLabelTag>> W(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @GET("/user/favoritev35/get_favorites_list?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}&version={version}&type={type}")
    ForumResponse<ForumData.ForumUserFavoritesDatas> X(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("page") int page, @Path("limit") int limit, @Path("device_id") String device_id, @Path("version") String version, @Path("type") int type);

    @GET("/group/posts/forum_tags?uid={uid}&tag_name={tag_name}&type={type}")
    ResultResMainBean<List<LabelBean>> Y(@Path("uid") String uid, @Path("tag_name") String tag_name, @Path("type") int type);

    @GET("/forum/profile/reply_posts_message_list")
    ForumResponse<ForumProfileMessageData> Z(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit);

    @GET("/forum/profile/comment?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<List<ForumData.ForumProfileCommentData>> a(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("page") int page, @Path("limit") int limit, @Path("device_id") String device_id);

    @GET("/forum/forum/all_list?device_id={device_id}")
    ForumResponse<ForumData.ForumForumAllData> a0(@Path("device_id") String device_id);

    @GET("/discover/headlines/index")
    ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>> b(@Query("uid") int uid, @Query("page") int page, @Query(u.b.f97417c) int tid);

    @GET("/group/forum/game_comment?game_id={game_id}&fid={fid}&uid={uid}&token={token}")
    ResultResMainBean<GameCommitListBean> b0(@Path("game_id") String game_id, @Path("fid") String fid, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @POST("/forum/posts/report")
    ForumResponse<ForumData.ForumPostsReportData> c(@Body Map<String, String> params);

    @POST("/group/comment/reply")
    ForumResponse<ForumData.ForumCommentReplyReplyData> c0(@Body Map<String, String> params);

    @GET("/group/posts/forum_tags/search?tag_name={tag_name}")
    ResultResMainBean<List<LabelBean>> d(@Path("tag_name") String tag_name);

    @GET("/forum/profile/get_unread_message_count?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileUnreadMessageCountData> d0(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id);

    @POST("/user/share")
    ForumResponse<ForumData.ForumResult> e(@Body Map<String, String> params);

    @GET("/group/forum/forum/getPostByType?fid={fid}&type={type}&page={page}&orderBy={orderBy}&limit={limit}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> e0(@Path("fid") int fid, @Path("type") int type, @Path("page") int page, @Path("orderBy") int orderBy, @Path("limit") int limit, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @GET("/forum/forum/topic_detail?tid={tid}&uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumTopicData> f(@Path(u.b.f97417c) int tid, @Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("page") int page, @Path("limit") int limit, @Path("device_id") String device_id);

    @GET("/forum/search/search_query/group_search?page={page}&limit={limit}&keyword={keyword}&device_id={device_id}&fid={fid}")
    ForumResponse<ForumData.ForumSearchQueryData> f0(@Path("page") int page, @Path("limit") int limit, @Path("keyword") String keyword, @Path("device_id") String device_id, @Path("fid") int fid);

    @POST("/forum/posts/help_solvev34")
    ForumResponse<ForumData.ForumPostsHelpSolveData> g(@Body Map<String, String> params);

    @GET("/group/forum/welcomev35/getHomepageRecommendLabel?gid={gid}&page={page}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> g0(@Query("gid") int gid, @Query("page") int page, @Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @GET("/forum/profile/posts?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfilePostsData> h(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("page") int page, @Path("limit") int limit, @Path("device_id") String device_id);

    @GET("/group/forum/welcome/getHomepageRecommendGroup?uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendGroup> h0(@Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @POST
    GivePriaceBean i(@Url String url, @Body CommonRequestBean request);

    @GET("/posts/tags")
    ForumResponse<HavenForumDatabean> i0(@Url String url, @Query("name") String name);

    @GET("/forum/forum/plate_detail?fid={fid}&page={page}&limit={limit}&tab_type={tab_type}&uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumPlateData> j(@Path("fid") int fid, @Path("page") int page, @Path("limit") int limit, @Path("tab_type") String tab_type, @Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id);

    @GET("/forum/forum/welcome?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomeData> j0(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id);

    @POST(h.Y1)
    ForumResponse<ForumData.ForumPostsFavoritesData> k(@Body Map<String, String> params);

    @GET("/forum/forum/all_list?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumAllData> k0(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id);

    @GET("/group/posts/detail?pid={pid}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> l(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path("limit") int limit, @Path("see_lz") int see_lz, @Path("comment_order") String comment_order, @Path("device_id") String device_id, @Path("from") String from, @Path("position") String position);

    @GET("/group/posts/detail?pid={pid}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&uid={uid}&token={token}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> l0(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path("limit") int limit, @Path("see_lz") int see_lz, @Path("comment_order") String comment_order, @Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id, @Path("from") String from, @Path("position") String position);

    @GET("/forum/forum/follow_list?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumFollowListData> m(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id);

    @GET("/group/posts/detail/removePostTag?pid={pid}&post_type={post_type}&tagid_list={tagid_list}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> m0(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type, @Path("tagid_list") String tagid_list, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @POST("/group/forum/welcome/saveHomepageRecommendLabel")
    ForumResponse<ForumData.HomepageRecommendLabel> n(@Body Map<String, String> params);

    @GET("/group/forum/forum/joinGroup?fid={fid}&uid={uid}&token={token}")
    ForumResponse<ForumData.HomepageRecommendLabel> n0(@Path("fid") int fid, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @POST("/group/comment/reply_delete")
    ForumResponse<ForumData.ForumCommentReplyDeleteData> o(@Body Map<String, String> params);

    @GET("/group/posts/detail_comments?pid={pid}&page={page}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&uid={uid}&token={token}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> o0(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path("page") int page, @Path("limit") int limit, @Path("see_lz") int see_lz, @Path("comment_order") String comment_order, @Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id, @Path("from") String from, @Path("position") String position);

    @GET("/forum/profile/favorites_posts?uid={uid}&token={token}&page={page}&limit={limit}&device_id={device_id}")
    ForumResponse<ForumData.ForumProfileFavoritesPostsData> p(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("page") int page, @Path("limit") int limit, @Path("device_id") String device_id);

    @FormUrlEncoded
    @POST("/group/posts/wish")
    ForumResponse<HavenWishResultBean> p0(@FieldMap Map<String, Object> map);

    @GET("/discover/headlines/index")
    ForumResponse<DiscoverListData<DiscoverListItemBean>> q(@Query("uid") int uid, @Query("page") int page, @Query(u.b.f97417c) int tid);

    @GET("/forum/forum/welcome?device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomeData> q0(@Path("device_id") String device_id);

    @GET("/group/forum/My_forum/myForumMain?uid={uid}&token={token}&page={page}&limit={limit}")
    ForumResponse<ForumData.MyForumMain> r(@Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path("page") int page, @Path("limit") int limit);

    @GET("/forum/profile/reply_posts_message_list/praise")
    ForumResponse<ForumProfileMessageData> r0(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit);

    @GET("/group/posts/submitv34/initPostExtra?uid={uid}&token={token}&post_type={post_type}")
    ResultResMainBean<Response> s(@Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA) int post_type);

    @GET("/group/posts/gamefavoritelist?uid={uid}&page={page}")
    ResultResMainBean<List<CollectionBeanSub>> s0(@Path("uid") String uid, @Path("page") int page);

    @GET("/forum/posts/multi_detail?pids={pids}")
    ForumResponse<MulPostData> t(@Path("pids") String pids);

    @GET("/forum/forum/forum_group_list?uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumGroupsData> t0(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id);

    @GET("/notification/notice/index")
    NoticeFragmentBean u(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("page") int page, @Query("limit") int limit, @Query("appver") String appver, @Query("package_type") String ptype);

    @POST("/group/posts/best")
    ForumResponse<ForumData.ForumPostsBestData> u0(@Body Map<String, String> params);

    @GET("/forum/forum/plate_detail?fid={fid}&page={page}&limit={limit}&tab_type={tab_type}&uid={uid}&token={token}&from={from}&position={position}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumPlateData> v(@Path("fid") int fid, @Path("page") int page, @Path("limit") int limit, @Path("tab_type") String tab_type, @Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("from") String from, @Path("position") String position, @Path("device_id") String device_id);

    @GET("/group/posts/detail_comments?pid={pid}&page={page}&limit={limit}&see_lz={see_lz}&comment_order={comment_order}&device_id={device_id}&from={from}&position={position}")
    ForumResponse<ForumData.ForumPostsData> v0(@Path(ForumPostsTagSelectActivity_.PID_EXTRA) int pid, @Path("page") int page, @Path("limit") int limit, @Path("see_lz") int see_lz, @Path("comment_order") String comment_order, @Path("device_id") String device_id, @Path("from") String from, @Path("position") String position);

    @GET("/forum/forum/welcome_posts?page={page}&limit={limit}&uid={uid}&token={token}&device_id={device_id}")
    ForumResponse<ForumData.ForumForumWelcomePostsData> w(@Path("page") int page, @Path("limit") int limit, @Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("device_id") String device_id);

    @POST("/forum/forum/follow")
    ForumResponse<ForumData.ForumForumFollowData> w0(@Body Map<String, String> params);

    @GET("/discover/forum_post/index?uid={uid}&token={token}&page={page}")
    ForumResponse<List<ForumBean.ForumPostsBean>> x(@Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path("page") int page);

    @Headers({"Content-Type:multipart/form-data"})
    @POST("/group/posts/submitv34")
    ResultResMainBean<Response> x0(@Body Map<String, Object> params);

    @GET("/group/forum/tag/tagIndexPost?uid={uid}&tag_id={tag_id}&page={page}&limit={limit}&type={type}&order={order}&token={token}&fid={fid}")
    ResultResMainBean<List<ForumBean.ForumPostsBean>> y(@Path("uid") String uid, @Path("tag_id") int tag_id, @Path("page") int page, @Path("limit") int limit, @Path("type") int type, @Path(PayNowActivity_.ORDER_EXTRA) String order, @Path(Constants.TOKEN) String token, @Path("fid") String fid);

    @Headers({"Content-Type:multipart/form-data"})
    @POST("/group/posts/submitv34")
    ForumResponse<ForumData.ForumPostsSubmitData> y0(@Body Map<String, Object> params);

    @GET("/group/forum/forum/getGroupFans?fid={fid}&page={page}&uid={uid}&token={token}")
    ForumResponse<ForumData.GroupFans> z(@Path("fid") int fid, @Path("page") int page, @Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @Headers({"Content-Type:multipart/form-data", "Charset:UTF-8"})
    @POST("/group/posts/comment")
    ForumResponse<ForumData.ForumPostsCommentData> z0(@Body Map<String, Object> params);
}
