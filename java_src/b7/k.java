package b7;

import app.mgsim.arena.ArenaLobbyServer;
import com.czhj.sdk.common.Constants;
import com.join.mgps.dto.AccountBean;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.AccountresultData;
import com.join.mgps.dto.ArchiveRecordBean;
import com.join.mgps.dto.ArenaGameInfo;
import com.join.mgps.dto.ArenaLobbyPlayCheck;
import com.join.mgps.dto.ArenaSelectServer;
import com.join.mgps.dto.ArenaWelcomeLobby;
import com.join.mgps.dto.BattleChallengeConfig;
import com.join.mgps.dto.BattleStatus;
import com.join.mgps.dto.CloudCreateInfo;
import com.join.mgps.dto.CloudList;
import com.join.mgps.dto.CloudStatus;
import com.join.mgps.dto.Constant;
import com.join.mgps.dto.CreateArchiveRecordBean;
import com.join.mgps.dto.DiscoveryMainDataBean;
import com.join.mgps.dto.GameDataBean;
import com.join.mgps.dto.GameListBannerBean;
import com.join.mgps.dto.GameListBean;
import com.join.mgps.dto.GameWorldGlobalData;
import com.join.mgps.dto.GameWorldRealTimeWorshipBean;
import com.join.mgps.dto.GameWorldResponse;
import com.join.mgps.dto.GameWorldTrophy;
import com.join.mgps.dto.GameWorldUserInfoWrap;
import com.join.mgps.dto.GameWorldWorship;
import com.join.mgps.dto.GameworldFightRecoderResultBean;
import com.join.mgps.dto.GetPaiWeiPlayCodeBean;
import com.join.mgps.dto.GradeListData;
import com.join.mgps.dto.GradeRankListData;
import com.join.mgps.dto.InWorldDataBean;
import com.join.mgps.dto.InvitationPassBean;
import com.join.mgps.dto.Message;
import com.join.mgps.dto.NetBattleGetMatchAvailableServerBean;
import com.join.mgps.dto.NetBattleInviteBean;
import com.join.mgps.dto.NetBattleOnlineCount;
import com.join.mgps.dto.NetBattleStartBattleBean;
import com.join.mgps.dto.NetBattleUserInfoResultBean;
import com.join.mgps.dto.NetGetBattleUdpPortBean;
import com.join.mgps.dto.NewArenaGameListBean;
import com.join.mgps.dto.NewGameDataBean;
import com.join.mgps.dto.PspBattleServer;
import com.join.mgps.dto.ResultArenaBean;
import com.join.mgps.dto.ResultResMainBean;
import com.join.mgps.dto.WelcomeInDataBean;
import com.papa91.arc.bean.PaiWeiDataBean;
import java.util.List;
import java.util.Map;
import retrofit2.Call;
import retrofit2.http.FieldMap;
import retrofit2.http.FormUrlEncoded;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface k {
    @FormUrlEncoded
    @POST("/v14/gameworld/worship_user")
    Call<GameWorldResponse<GameWorldWorship>> A(@FieldMap Map<String, String> params);

    @GET("/netbattle/start_battle_new")
    Call<GameWorldResponse<NetBattleStartBattleBean>> B(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("gameId") String gameId);

    @FormUrlEncoded
    @POST("/discover/home_page/index")
    Call<GameWorldResponse<DiscoveryMainDataBean>> C(@FieldMap Map<String, String> params);

    @GET("/netbattle/start_lobby_game")
    Call<GameWorldResponse<ArenaWelcomeLobby>> D(@Query("uid") int uid, @Query("game_id") long game_id, @Query(Constants.TOKEN) String token, @Query("role") String role, @Query("room_id") int room_id);

    @GET("/v2/game/ranking/detail")
    Call<ResultResMainBean<PaiWeiDataBean>> E(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("gameid") String gameid, @Query("refresh") String refresh, @Query(Constant.MD5) String sign);

    @GET("/lobby/lately_game_list/index")
    Call<ResultResMainBean<GameListBean>> F(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("pn") int pn);

    @GET("/v14/gameworld/last_worship_message")
    Call<GameWorldResponse<List<GameWorldRealTimeWorshipBean>>> G(@Query("gameId") long gameId);

    @GET("/v15/netbattle/get_match_available_server")
    Call<GameWorldResponse<NetBattleGetMatchAvailableServerBean>> H(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("gameId") String gameId);

    @FormUrlEncoded
    @POST("/v14/message/info")
    Call<GameWorldResponse<Message>> I(@FieldMap Map<String, String> params);

    @GET("/netbattle/lobby_game_info")
    Call<GameWorldResponse<List<ArenaGameInfo>>> J(@Query("game_ids") String game_ids);

    @GET("/v2/game/ranking/generatePlayCode")
    Call<ResultResMainBean<GetPaiWeiPlayCodeBean>> K(@Query("uid") String uid, @Query("gameid") String gameid, @Query(Constants.TOKEN) String token, @Query(Constant.MD5) String sign);

    @GET("/lobby/home_page/home")
    Call<ResultResMainBean<GameListBannerBean>> L(@Query("uid") String uid);

    @GET("/lobby/game_list/index")
    Call<ResultResMainBean<NewArenaGameListBean>> M(@Query("rom_type") int rom_type, @Query("game_type") int game_type, @Query("pn") int pn);

    @GET("/netbattle/Invite_create")
    Call<GameWorldResponse<NetBattleInviteBean>> N(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("gameId") String gameId);

    @GET("/v14/gameworld/user_info")
    Call<GameWorldResponse<GameWorldUserInfoWrap>> O(@Query("gameId") long gameId, @Query("uid") int uid, @Query("s_uid") int s_uid);

    @GET("/v14/gameworld/trophy_list")
    Call<GameWorldResponse<List<GameWorldTrophy>>> P(@Query("gameId") long gameId, @Query("limit") int limit);

    @FormUrlEncoded
    @POST("/v14/user/modify/find_mobile_pass")
    Call<AccountResultMainBean<AccountTokenSuccess>> Q(@FieldMap Map<String, String> params);

    @GET("/lobby/create_room")
    Call<ResultArenaBean<BattleChallengeConfig>> R(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("game_id") long game_id);

    @GET("/v14/gameworld/grade_list")
    Call<GameWorldResponse<GradeListData>> S(@Query("game_id") long game_id);

    @FormUrlEncoded
    @POST("/v14/message/read/money")
    Call<GameWorldResponse<GameDataBean>> T(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/v14/gameworld/verify_invitation_code")
    Call<GameWorldResponse<InvitationPassBean>> U(@FieldMap Map<String, String> params);

    @GET("/v14/gameworld/is_invitation_pass")
    Call<GameWorldResponse<InvitationPassBean>> V(@Query("gameId") String gameId, @Query("uid") String uid);

    @FormUrlEncoded
    @POST("/v14/gameworld/new_game_data")
    Call<GameWorldResponse<NewGameDataBean>> W(@FieldMap Map<String, String> params);

    @GET("/v14/gameworld/get_all_archive_record")
    Call<GameWorldResponse<ArchiveRecordBean>> X(@Query("gameId") String gameId, @Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @GET("/netbattle/get_online_count")
    Call<GameWorldResponse<NetBattleOnlineCount>> Y(@Query("gameId") String gameId);

    @FormUrlEncoded
    @POST("/v14/gameworld/delete_archive_record")
    Call<GameWorldResponse<CreateArchiveRecordBean>> Z(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/v14/user/register")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> a(@FieldMap Map<String, String> params);

    @GET("/lobby/login")
    Call<ResultArenaBean<ArenaLobbyServer>> a0(@Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/v14/user/register/third_way_register")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> b(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/v14/gameworld/in_world")
    Call<GameWorldResponse<InWorldDataBean>> b0(@FieldMap Map<String, String> params);

    @GET("/netbattle/Invite_accept")
    Call<GameWorldResponse<NetBattleInviteBean>> c(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("gameId") String gameId);

    @GET("/v15/netbattle/user_info")
    Call<GameWorldResponse<GameworldFightRecoderResultBean>> c0(@Query("gameId") String gameId, @Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/v14/user/send/chk_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> d(@FieldMap Map<String, String> params);

    @GET("/netbattle/Invite_start")
    Call<GameWorldResponse> d0(@Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("gameId") String gameId, @Query("uid") int uid2, @Query("roomid") long roomid);

    @FormUrlEncoded
    @POST("/v14/user/send/send_mobile_code")
    Call<AccountResultMainBean<AccountTokenSuccess>> e(@FieldMap Map<String, String> params);

    @GET("/netbattle/user_info_main")
    Call<GameWorldResponse<NetBattleUserInfoResultBean>> e0(@Query("gameId") String gameId, @Query("tuid") int tuid, @Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @GET("/lobby/game_rank")
    Call<ResultResMainBean<PaiWeiDataBean>> f(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("gameid") String gameid, @Query("refresh") String refresh);

    @GET("/netbattle/lobby_play_check")
    Call<GameWorldResponse<ArenaLobbyPlayCheck>> f0(@Query("uid") String uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/v14/user/logout")
    Call<AccountResultMainBean<AccountTokenSuccess>> g(@FieldMap Map<String, String> params);

    @GET("/netbattle/select_lobby_server")
    Call<GameWorldResponse<List<ArenaSelectServer>>> g0(@Query("a1") String a10, @Query("a2") String a11, @Query("a3") String a12, @Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/v14/user/modify/modify_user_info")
    Call<AccountResultMainBean<AccountTokenSuccess>> h(@FieldMap Map<String, String> params);

    @GET("/netbattle/invite_user_info")
    Call<GameWorldResponse<NetBattleUserInfoResultBean>> h0(@Query("gameId") String gameId, @Query("tuid") int tuid, @Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/v14/user/info")
    Call<AccountResultMainBean<AccountBean>> i(@FieldMap Map<String, String> params);

    @GET("/netbattle/welcome_lobby")
    Call<GameWorldResponse<ArenaWelcomeLobby>> i0(@Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/v14/user/login/chk_token")
    Call<AccountResultMainBean<AccountTokenSuccess>> j(@FieldMap Map<String, String> params);

    @GET("/netbattle/get_udp_test_server")
    Call<GameWorldResponse<NetGetBattleUdpPortBean>> j0(@Query("gameId") String gameId);

    @FormUrlEncoded
    @POST("/v14/user/login/chk_token_expired")
    Call<GameWorldResponse<AccountResultMainBean>> k(@FieldMap Map<String, String> params);

    @GET("/v14/gameworld/get_grade_rank_list")
    Call<GameWorldResponse<GradeRankListData>> k0(@Query("game_id") long game_id, @Query("start_rank") int start_rank, @Query("grade_number") int grade_number, @Query("rank_cond") String rank_cond, @Query("limit") int limit);

    @FormUrlEncoded
    @POST("/v14/user/login")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> l(@FieldMap Map<String, String> params);

    @GET("/v14/gameworld/welcome_in")
    Call<GameWorldResponse<WelcomeInDataBean>> l0(@Query("gameId") String gameId, @Query("uid") int uid, @Query(Constants.TOKEN) String token, @Query("role_name") String role_name);

    @GET("/v14/gameworld/worship_user")
    Call<GameWorldResponse<GameWorldWorship>> m(@Query("gameId") long gameId, @Query("uid") int uid, @Query("to_uid") int to_uid, @Query(Constants.TOKEN) String token);

    @GET("/netbattle/psp_battle_server")
    Call<GameWorldResponse<List<PspBattleServer>>> n();

    @GET("/v16/backup/record_list")
    Call<GameWorldResponse<CloudList>> o(@Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @GET("/v15/netbattle/welcome_in")
    Call<GameWorldResponse<NewGameDataBean>> p(@Query("gameId") String gameId, @Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @GET("/netbattle/simple_user_info")
    Call<GameWorldResponse<NetBattleUserInfoResultBean>> q(@Query("gameId") String gameId, @Query("tuid") int tuid, @Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @GET("/v14/gameworld/global_data")
    Call<GameWorldResponse<GameWorldGlobalData>> r(@Query("gameId") long gameId);

    @FormUrlEncoded
    @POST("/v14/message/read")
    Call<GameWorldResponse<GameDataBean>> s(@FieldMap Map<String, String> params);

    @GET("/v15/netbattle/start_battle")
    Call<GameWorldResponse<BattleStatus>> t(@Query("uid") int uid, @Query(Constants.TOKEN) String token);

    @FormUrlEncoded
    @POST("/v16/backup/completed")
    Call<GameWorldResponse<CloudStatus>> u(@FieldMap Map<String, String> params);

    @GET("/lobby/game_rank/generatePlayCode")
    Call<ResultResMainBean<GetPaiWeiPlayCodeBean>> v(@Query("uid") String uid, @Query("gameid") String gameid);

    @FormUrlEncoded
    @POST("/v14/gameworld/create_archive_record")
    Call<GameWorldResponse<CreateArchiveRecordBean>> w(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/v14/user/login/third_way_login")
    Call<AccountResultMainBean<AccountresultData<AccountBean>>> x(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/v14/message/read/message_count")
    Call<GameWorldResponse<GameDataBean>> y(@FieldMap Map<String, String> params);

    @FormUrlEncoded
    @POST("/v16/backup/create")
    Call<GameWorldResponse<CloudCreateInfo>> z(@FieldMap Map<String, String> params);
}
