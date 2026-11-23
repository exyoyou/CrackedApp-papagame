package com.join.mgps.rpc.impl;

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
import com.join.mgps.rpc.retrofit2.RetrofitApi;
import java.io.IOException;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class g implements com.join.mgps.rpc.i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static g f72418b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b7.g f72419a;

    public g(b7.g service) {
        this.f72419a = service;
    }

    public static g A0() {
        if (f72418b == null) {
            f72418b = new g((b7.g) RetrofitApi.getRetrofit2(com.join.mgps.rpc.h.f72353k).create(b7.g.class));
        }
        return f72418b;
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<MessageCommentReplyResponse> A(String url, Map<String, Object> map) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.A(url, map).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumProfileMessageReplyData> B(int uid, String token, int comment_pid, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.B(uid, token, comment_pid, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumCommentDeleteData> C(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.C(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumResult> D(int pid, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.D(pid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<String> E(int post_type) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.E(post_type).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsFavoritesData> F(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.F(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumCommentReplyData> G(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.G(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<EmptyMessage> H(String uid, String tag_id, int type, String tag_name) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.H(uid, tag_id, type, tag_name).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsDeleteData> I(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.I(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumWelcomePostsData> J(int page, int limit, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.J(page, limit, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumGroupIndex> K(int fid, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.K(fid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumResult> L(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.L(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumSearchIndexData> M(String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.M(device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendLabel> N(int pid, int post_type, String tagid_list, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.N(pid, post_type, tagid_list, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendLabel> O(int fid, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.O(fid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumSearchQueryData> P(int page, int limit, String keyword, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.P(page, limit, keyword, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<GameMainCommunityBean> Q(int fid) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.Q(fid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsPraiseData> R(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.R(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<MainLabelBean> S(String uid, int tag_id, int fid, String tag_name) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.S(uid, tag_id, fid, tag_name).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<GroupListBean> T(String uid, String token, String tag_id, String tag_name) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.T(uid, token, tag_id, tag_name).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumProfileMessageData> U(int uid, String token, int page, int limit, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.U(uid, token, page, limit, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<List<RecommendLabelTag>> V(String uid, String token, int post_type) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.V(uid, token, post_type).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<List<RecommendLabelTag>> W(int pid, String uid, String token, int post_type) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.W(pid, uid, token, post_type).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumUserFavoritesDatas> X(int uid, String token, int page, int limit, String device_id, String version, int type) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.X(uid, token, page, limit, device_id, version, type).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<List<LabelBean>> Y(String uid, String tag_name, int type) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.Y(uid, tag_name, type).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumProfileMessageData> Z(int uid, String token, int page, int limit) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.Z(uid, token, page, limit).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<List<ForumData.ForumProfileCommentData>> a(int uid, String token, int page, int limit, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.a(uid, token, page, limit, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumAllData> a0(String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.a0(device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<DiscoverListData<DiscoverListWeiboItemBean>> b(int uid, int page, int tid) {
        b7.g gVar = this.f72419a;
        if (gVar == null) {
            return null;
        }
        try {
            return gVar.b(uid, page, tid).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<GameCommitListBean> b0(String game_id, String fid, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.b0(game_id, fid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsReportData> c(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.c(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumCommentReplyReplyData> c0(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.c0(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<List<LabelBean>> d(String tag_name) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.d(tag_name).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumProfileUnreadMessageCountData> d0(int uid, String token, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.d0(uid, token, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumResult> e(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.e(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendLabel> e0(int fid, int type, int page, int orderBy, int limit, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.e0(fid, type, page, orderBy, limit, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumTopicData> f(int tid, int uid, String token, int page, int limit, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.f(tid, uid, token, page, limit, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumSearchQueryData> f0(int page, int limit, String keyword, String device_id, int fid) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.f0(page, limit, keyword, device_id, fid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsHelpSolveData> g(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.g(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendLabel> g0(int gid, int page, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.g0(gid, page, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumProfilePostsData> h(int uid, String token, int page, int limit, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.h(uid, token, page, limit, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendGroup> h0(String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.h0(uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public GivePriaceBean i(String url, CommonRequestBean request) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.i(url, request).execute().body();
            }
            return null;
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<HavenForumDatabean> i0(String url, String name) {
        b7.g gVar = this.f72419a;
        if (gVar == null) {
            return null;
        }
        try {
            return gVar.i0(url, name).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumPlateData> j(int fid, int page, int limit, String tab_type, int uid, String token, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.j(fid, page, limit, tab_type, uid, token, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumWelcomeData> j0(int uid, String token, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.j0(uid, token, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsFavoritesData> k(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.k(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumAllData> k0(int uid, String token, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.k0(uid, token, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsData> l(int pid, int limit, int see_lz, String comment_order, String device_id, String from, String position) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.l(pid, limit, see_lz, comment_order, device_id, from, position).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsData> l0(int pid, int limit, int see_lz, String comment_order, int uid, String token, String device_id, String from, String position) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.l0(pid, limit, see_lz, comment_order, uid, token, device_id, from, position).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumFollowListData> m(int uid, String token, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.m(uid, token, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendLabel> m0(int pid, int post_type, String tagid_list, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.m0(pid, post_type, tagid_list, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendLabel> n(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.n(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.HomepageRecommendLabel> n0(int fid, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.n0(fid, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumCommentReplyDeleteData> o(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.o(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsData> o0(int pid, int page, int limit, int see_lz, String comment_order, int uid, String token, String device_id, String from, String position) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.o0(pid, page, limit, see_lz, comment_order, uid, token, device_id, from, position).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumProfileFavoritesPostsData> p(int uid, String token, int page, int limit, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.p(uid, token, page, limit, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<HavenWishResultBean> p0(Map<String, Object> map) {
        b7.g gVar = this.f72419a;
        if (gVar == null) {
            return null;
        }
        try {
            return gVar.p0(map).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<DiscoverListData<DiscoverListItemBean>> q(int uid, int page, int tid) {
        b7.g gVar = this.f72419a;
        if (gVar == null) {
            return null;
        }
        try {
            return gVar.q(uid, page, tid).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumWelcomeData> q0(String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.q0(device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.MyForumMain> r(String uid, String token, int page, int limit) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.r(uid, token, page, limit).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumProfileMessageData> r0(int uid, String token, int page, int limit) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.r0(uid, token, page, limit).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<Response> s(String uid, String token, int post_type) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.s(uid, token, post_type).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<List<CollectionBeanSub>> s0(String uid, int page) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.s0(uid, page).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<MulPostData> t(String pids) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.t(pids).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumGroupsData> t0(int uid, String token, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.t0(uid, token, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public NoticeFragmentBean u(int uid, String token, int page, int limit, String appver, String ptype) {
        b7.g gVar = this.f72419a;
        if (gVar == null) {
            return null;
        }
        try {
            return gVar.u(uid, token, page, limit, appver, ptype).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsBestData> u0(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.u0(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumPlateData> v(int fid, int page, int limit, String tab_type, int uid, String token, String from, String position, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.v(fid, page, limit, tab_type, uid, token, from, position, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsData> v0(int pid, int page, int limit, int see_lz, String comment_order, String device_id, String from, String position) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.v0(pid, page, limit, see_lz, comment_order, device_id, from, position).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumWelcomePostsData> w(int page, int limit, int uid, String token, String device_id) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.w(page, limit, uid, token, device_id).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumForumFollowData> w0(Map<String, String> params) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.w0(params).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<List<ForumBean.ForumPostsBean>> x(String uid, String token, int page) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.x(uid, token, page).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<Response> x0(Map<String, Object> params) {
        try {
            if (this.f72419a == null) {
                return null;
            }
            return this.f72419a.y0(RetrofitApi.getInstance().convert2PartMap(params), RetrofitApi.getInstance().convert2Parts(params)).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ResultResMainBean<List<ForumBean.ForumPostsBean>> y(String uid, int tag_id, int page, int limit, int type, String order, String token, String fid) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.y(uid, tag_id, page, limit, type, order, token, fid).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsSubmitData> y0(Map<String, Object> params) {
        try {
            if (this.f72419a == null) {
                return null;
            }
            return this.f72419a.x0(RetrofitApi.getInstance().convert2PartMap(params), RetrofitApi.getInstance().convert2Parts(params)).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.GroupFans> z(int fid, int page, String uid, String token) {
        try {
            b7.g gVar = this.f72419a;
            if (gVar != null) {
                return gVar.z(fid, page, uid, token).execute().body();
            }
            return null;
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }

    @Override // com.join.mgps.rpc.i
    public ForumResponse<ForumData.ForumPostsCommentData> z0(Map<String, Object> params) {
        try {
            if (this.f72419a == null) {
                return null;
            }
            return this.f72419a.z0(RetrofitApi.getInstance().convert2PartMap(params), RetrofitApi.getInstance().convert2Parts(params)).execute().body();
        } catch (IOException e10) {
            e10.printStackTrace();
            return null;
        }
    }
}
