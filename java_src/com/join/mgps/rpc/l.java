package com.join.mgps.rpc;

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
import retrofit2.http.Body;
import retrofit2.http.GET;
import retrofit2.http.POST;
import retrofit2.http.Path;
import retrofit2.http.Query;

/* JADX INFO: loaded from: classes3.dex */
public interface l {
    @POST("/v14/gameworld/worship_user")
    GameWorldResponse<GameWorldWorship> A(@Body Map<String, String> params);

    @GET("/netbattle/start_battle_new?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleStartBattleBean> B(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("gameId") String gameId);

    @POST("/discover/home_page/index")
    GameWorldResponse<DiscoveryMainDataBean> C(@Body Map<String, String> params);

    @GET("/netbattle/start_lobby_game?uid={uid}&game_id={game_id}&token={token}&role={role}&room_id={room_id}")
    GameWorldResponse<ArenaWelcomeLobby> D(@Path("uid") int uid, @Path("game_id") long game_id, @Path(Constants.TOKEN) String token, @Path("role") String role, @Path("room_id") int room_id);

    @GET("/v2/game/ranking/detail")
    ResultResMainBean<PaiWeiDataBean> E(@Query("uid") String uid, @Query(Constants.TOKEN) String token, @Query("gameid") String gameid, @Query("refresh") String refresh, @Query(Constant.MD5) String sign);

    @GET("/lobby/lately_game_list/index?uid={uid}&token={token}&pn={pn}")
    ResultResMainBean<GameListBean> F(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("pn") int pn);

    @GET("/v14/gameworld/last_worship_message?game_id={gameId}")
    GameWorldResponse<List<GameWorldRealTimeWorshipBean>> G(@Path("gameId") long gameId);

    @GET("/v15/netbattle/get_match_available_server?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleGetMatchAvailableServerBean> H(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("gameId") String gameId);

    @POST("/v14/message/info")
    GameWorldResponse<Message> I(@Body Map<String, String> params);

    @GET("/netbattle/lobby_game_info?game_ids={game_ids}")
    GameWorldResponse<List<ArenaGameInfo>> J(@Path("game_ids") String game_ids);

    @GET("/v2/game/ranking/generatePlayCode")
    ResultResMainBean<GetPaiWeiPlayCodeBean> K(@Query("uid") String uid, @Query("gameid") String gameid, @Query(Constants.TOKEN) String token, @Query(Constant.MD5) String sign);

    @GET("/lobby/home_page/home?uid={uid}")
    ResultResMainBean<GameListBannerBean> L(@Path("uid") String uid);

    @GET("/lobby/game_list/index?rom_type={rom_type}&game_type={game_type}&pn={pn}")
    ResultResMainBean<NewArenaGameListBean> M(@Path("rom_type") int rom_type, @Path("game_type") int game_type, @Path("pn") int pn);

    @GET("/netbattle/Invite_create?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleInviteBean> N(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("gameId") String gameId);

    @GET("v14/gameworld/user_info?game_id={gameId}&uid={uid}&s_uid={s_uid}")
    GameWorldResponse<GameWorldUserInfoWrap> O(@Path("gameId") long gameId, @Path("uid") int uid, @Path("s_uid") int s_uid);

    @GET("v14/gameworld/trophy_list?game_id={gameId}&limit={limit}")
    GameWorldResponse<List<GameWorldTrophy>> P(@Path("gameId") long gameId, @Path("limit") int limit);

    @POST("/v14/user/modify/find_mobile_pass")
    AccountResultMainBean<AccountTokenSuccess> Q(@Body Map<String, String> params);

    @GET("/lobby/create_room?uid={uid}&token={token}&game_id={game_id}")
    ResultArenaBean<BattleChallengeConfig> R(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("game_id") long game_id);

    @GET("v14/gameworld/grade_list?game_id={game_id}")
    GameWorldResponse<GradeListData> S(@Path("game_id") long game_id);

    @POST("/v14/message/read/money")
    GameWorldResponse<GameDataBean> T(@Body Map<String, String> params);

    @POST("/v14/gameworld/verify_invitation_code")
    GameWorldResponse<InvitationPassBean> U(@Body Map<String, String> params);

    @GET("/v14/gameworld/is_invitation_pass?game_id={gameId}&uid={uid}")
    GameWorldResponse<InvitationPassBean> V(@Path("gameId") String gameId, @Path("uid") String uid);

    @POST("/v14/gameworld/new_game_data")
    GameWorldResponse<NewGameDataBean> W(@Body Map<String, String> params);

    @GET("/v14/gameworld/get_all_archive_record?game_id={gameId}&uid={uid}&token={token}")
    GameWorldResponse<ArchiveRecordBean> X(@Path("gameId") String gameId, @Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @GET("/netbattle/get_online_count?game_id={gameId}")
    GameWorldResponse<NetBattleOnlineCount> Y(@Path("gameId") String gameId);

    @POST("/v14/gameworld/delete_archive_record")
    GameWorldResponse<CreateArchiveRecordBean> Z(@Body Map<String, String> params);

    @POST("/v14/user/register")
    AccountResultMainBean<AccountresultData<AccountBean>> a(@Body Map<String, String> params);

    @GET("/lobby/login?uid={uid}&token={token}")
    ResultArenaBean<ArenaLobbyServer> a0(@Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @POST("/v14/user/register/third_way_register")
    AccountResultMainBean<AccountresultData<AccountBean>> b(@Body Map<String, String> params);

    @POST("/v14/gameworld/in_world")
    GameWorldResponse<InWorldDataBean> b0(@Body Map<String, String> params);

    @GET("/netbattle/Invite_accept?uid={uid}&token={token}&game_id={gameId}")
    GameWorldResponse<NetBattleInviteBean> c(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("gameId") String gameId);

    @GET("/v15/netbattle/user_info?game_id={gameId}&uid={uid}&token={token}")
    GameWorldResponse<GameworldFightRecoderResultBean> c0(@Path("gameId") String gameId, @Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @POST("/v14/user/send/chk_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> d(@Body Map<String, String> params);

    @GET("/netbattle/Invite_start?uid={uid}&token={token}&game_id={gameId}&uid2={uid2}&roomid={roomid}")
    GameWorldResponse d0(@Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("gameId") String gameId, @Path("uid") int uid2, @Path("roomid") long roomid);

    @POST("/v14/user/send/send_mobile_code")
    AccountResultMainBean<AccountTokenSuccess> e(@Body Map<String, String> params);

    @GET("/netbattle/user_info_main?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}")
    GameWorldResponse<NetBattleUserInfoResultBean> e0(@Path("gameId") String gameId, @Path("tuid") int tuid, @Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @GET("/lobby/game_rank?uid={uid}&token={token}&gameid={gameid}&refresh={refresh}")
    ResultResMainBean<PaiWeiDataBean> f(@Path("uid") String uid, @Path(Constants.TOKEN) String token, @Path("gameid") String gameid, @Path("refresh") String refresh);

    @GET("/netbattle/lobby_play_check?uid={uid}&token={token}")
    GameWorldResponse<ArenaLobbyPlayCheck> f0(@Path("uid") String uid, @Path(Constants.TOKEN) String token);

    @POST("/v14/user/logout")
    AccountResultMainBean<AccountTokenSuccess> g(@Body Map<String, String> params);

    @GET("/netbattle/select_lobby_server?a1={a1}&a2={a2}&a3={a3}&uid={uid}&token={token}")
    GameWorldResponse<List<ArenaSelectServer>> g0(@Path("a1") String a10, @Path("a2") String a11, @Path("a3") String a12, @Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @POST("/v14/user/modify/modify_user_info")
    AccountResultMainBean<AccountTokenSuccess> h(@Body Map<String, String> params);

    @GET("/netbattle/invite_user_info?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}")
    GameWorldResponse<NetBattleUserInfoResultBean> h0(@Path("gameId") String gameId, @Path("tuid") int tuid, @Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @POST("/v14/user/info")
    AccountResultMainBean<AccountBean> i(@Body Map<String, String> params);

    @GET("/netbattle/welcome_lobby?uid={uid}&token={token}&test_flag=1")
    GameWorldResponse<ArenaWelcomeLobby> i0(@Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @POST("/v14/user/login/chk_token")
    AccountResultMainBean<AccountTokenSuccess> j(@Body Map<String, String> params);

    @GET("/netbattle/get_udp_test_server?game_id={gameId}")
    GameWorldResponse<NetGetBattleUdpPortBean> j0(@Path("gameId") String gameId);

    @POST("/v14/user/login/chk_token_expired")
    GameWorldResponse<AccountResultMainBean> k(@Body Map<String, String> params);

    @GET("v14/gameworld/get_grade_rank_list?game_id={game_id}&start_rank={start_rank}&grade_number={grade_number}&rank_cond={rank_cond}&limit={limit}")
    GameWorldResponse<GradeRankListData> k0(@Path("game_id") long game_id, @Path("start_rank") int start_rank, @Path("grade_number") int grade_number, @Path("rank_cond") String rank_cond, @Path("limit") int limit);

    @POST("/v14/user/login")
    AccountResultMainBean<AccountresultData<AccountBean>> l(@Body Map<String, String> params);

    @GET("/v14/gameworld/welcome_in?game_id={gameId}&uid={uid}&token={token}&role_name={role_name}")
    GameWorldResponse<WelcomeInDataBean> l0(@Path("gameId") String gameId, @Path("uid") int uid, @Path(Constants.TOKEN) String token, @Path("role_name") String role_name);

    @GET("v14/gameworld/worship_user?game_id={gameId}&uid={uid}&to_uid={to_uid}&token={token}")
    GameWorldResponse<GameWorldWorship> m(@Path("gameId") long gameId, @Path("uid") int uid, @Path("to_uid") int to_uid, @Path(Constants.TOKEN) String token);

    @GET("/netbattle/psp_battle_server")
    GameWorldResponse<List<PspBattleServer>> n();

    @GET("/v16/backup/record_list?uid={uid}&token={token}")
    GameWorldResponse<CloudList> o(@Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @GET("/v15/netbattle/welcome_in?game_id={gameId}&uid={uid}&token={token}")
    GameWorldResponse<NewGameDataBean> p(@Path("gameId") String gameId, @Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @GET("/netbattle/simple_user_info?game_id={gameId}&tuid={tuid}&uid={uid}&token={token}")
    GameWorldResponse<NetBattleUserInfoResultBean> q(@Path("gameId") String gameId, @Path("tuid") int tuid, @Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @GET("v14/gameworld/global_data?game_id={gameId}")
    GameWorldResponse<GameWorldGlobalData> r(@Path("gameId") long gameId);

    @POST("/v14/message/read")
    GameWorldResponse<GameDataBean> s(@Body Map<String, String> params);

    @GET("/v15/netbattle/start_battle?uid={uid}&token={token}")
    GameWorldResponse<BattleStatus> t(@Path("uid") int uid, @Path(Constants.TOKEN) String token);

    @POST("/v16/backup/completed")
    GameWorldResponse<CloudStatus> u(@Body Map<String, String> params);

    @GET("/lobby/game_rank/generatePlayCode?uid={uid}&gameid={gameid}")
    ResultResMainBean<GetPaiWeiPlayCodeBean> v(@Path("uid") String uid, @Path("gameid") String gameid);

    @POST("/v14/gameworld/create_archive_record")
    GameWorldResponse<CreateArchiveRecordBean> w(@Body Map<String, String> params);

    @POST("/v14/user/login/third_way_login")
    AccountResultMainBean<AccountresultData<AccountBean>> x(@Body Map<String, String> params);

    @POST("/v14/message/read/message_count")
    GameWorldResponse<GameDataBean> y(@Body Map<String, String> params);

    @POST("/v16/backup/create")
    GameWorldResponse<CloudCreateInfo> z(@Body Map<String, String> params);
}
