package com.join.kotlin.ui.gameexpress;

import android.app.Activity;
import android.content.Context;
import android.text.TextUtils;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.ui.gameexpress.adapter.GameExpressQualityCommentAdapter;
import com.join.kotlin.ui.gameexpress.model.bean.GameExpressHotCommentBean;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.r0;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.MYAccountReginFinishActivity_;
import com.join.mgps.dto.CommentPraiseBean;
import com.join.mgps.dto.CommentPraiseRequestBean;
import com.join.mgps.dto.CommentResponse;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.RangesKt___RangesKt;
import org.jetbrains.annotations.NotNull;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000D\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J.\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\r\u001a\u00020\u000eJ\u001e\u0010\u000f\u001a\u00020\u00052\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bJ0\u0010\u0010\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0011\u001a\u00020\u000eH\u0002J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0010\u0010\u0014\u001a\u00020\u00132\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0012\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0006\u0010\u0006\u001a\u00020\u0007H\u0002J\u0018\u0010\u0017\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0018\u001a\u00020\u0019H\u0002¨\u0006\u001a"}, d2 = {"Lcom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper;", "", "<init>", "()V", "praise", "", "context", "Landroid/content/Context;", "adapter", "Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressQualityCommentAdapter;", "commentId", "", "gameId", "praiseType", "", "refreshPraiseChanged", "praisePosts", "type", "isLogined", "", "validAccount", MYAccountReginFinishActivity_.ACCOUNT_BEAN_EXTRA, "Lcom/wufan/user/service/protobuf/UserInfo;", "showToast", "message", "", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nGameExpressCommentPraiseHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressCommentPraiseHelper.kt\ncom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,139:1\n360#2,7:140\n*S KotlinDebug\n*F\n+ 1 GameExpressCommentPraiseHelper.kt\ncom/join/kotlin/ui/gameexpress/GameExpressCommentPraiseHelper\n*L\n49#1:140,7\n*E\n"})
public final class GameExpressCommentPraiseHelper {

    @NotNull
    public static final GameExpressCommentPraiseHelper INSTANCE = new GameExpressCommentPraiseHelper();

    private GameExpressCommentPraiseHelper() {
    }

    private final UserInfo accountBean(Context context) {
        return AccountUtil_.getInstance_(context).getAccountData();
    }

    private final boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        if (userInfoAccountBean == null) {
            return false;
        }
        return t2.i(userInfoAccountBean.getToken());
    }

    private final void praisePosts(final Context context, final GameExpressQualityCommentAdapter adapter, final long commentId, final long gameId, final int type) {
        new Thread(new Runnable() { // from class: com.join.kotlin.ui.gameexpress.s
            @Override // java.lang.Runnable
            public final void run() {
                GameExpressCommentPraiseHelper.praisePosts$lambda$1(context, commentId, gameId, type, adapter);
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void praisePosts$lambda$1(Context context, long j10, long j11, int i10, GameExpressQualityCommentAdapter gameExpressQualityCommentAdapter) {
        String msg;
        String msg2;
        try {
            if (!r0.Y0(context)) {
                r0.L0(context);
                INSTANCE.showToast(context, "尚未登录，请先登录！");
                return;
            }
            CommentPraiseRequestBean commentPraiseRequestBean = RequestBeanUtil.getInstance(context).getCommentPraiseRequestBean(AccountUtil_.getInstance_(context).getUid(), new PrefDef_(context).commentToken().d(), AccountUtil_.getInstance_(context).getToken(), (int) j10, String.valueOf(j11), i10);
            Intrinsics.checkNotNullExpressionValue(commentPraiseRequestBean, "getCommentPraiseRequestBean(...)");
            CommentResponse<CommentPraiseBean> commentResponseJ = com.join.mgps.rpc.impl.e.m().j(commentPraiseRequestBean);
            if (commentResponseJ == null) {
                return;
            }
            int code = commentResponseJ.getCode();
            if (code != 0) {
                if (TextUtils.isEmpty(commentResponseJ.getMsg())) {
                    msg2 = i10 == 1 ? "点赞失败" : "取消点赞失败";
                } else {
                    msg2 = commentResponseJ.getMsg();
                }
                GameExpressCommentPraiseHelper gameExpressCommentPraiseHelper = INSTANCE;
                Intrinsics.checkNotNull(msg2);
                gameExpressCommentPraiseHelper.showToast(context, msg2);
                gameExpressCommentPraiseHelper.refreshPraiseChanged(gameExpressQualityCommentAdapter, j10, j11);
            } else {
                if (TextUtils.isEmpty(commentResponseJ.getMsg())) {
                    msg = i10 == 1 ? "点赞成功" : "取消点赞成功";
                } else {
                    msg = commentResponseJ.getMsg();
                }
                GameExpressCommentPraiseHelper gameExpressCommentPraiseHelper2 = INSTANCE;
                Intrinsics.checkNotNull(msg);
                gameExpressCommentPraiseHelper2.showToast(context, msg);
            }
            if (code == 706) {
                h0.h0(context).m(context);
            }
        } catch (Exception e10) {
            GameExpressCommentPraiseHelper gameExpressCommentPraiseHelper3 = INSTANCE;
            gameExpressCommentPraiseHelper3.showToast(context, i10 != 1 ? "取消点赞失败" : "点赞失败");
            gameExpressCommentPraiseHelper3.refreshPraiseChanged(gameExpressQualityCommentAdapter, j10, j11);
            e10.printStackTrace();
        }
    }

    private final void showToast(final Context context, final String message) {
        Activity activity = context instanceof Activity ? (Activity) context : null;
        if (activity != null) {
            activity.runOnUiThread(new Runnable() { // from class: com.join.kotlin.ui.gameexpress.t
                @Override // java.lang.Runnable
                public final void run() {
                    GameExpressCommentPraiseHelper.showToast$lambda$2(context, message);
                }
            });
        } else {
            a3.b(context).d(message);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void showToast$lambda$2(Context context, String str) {
        a3.b(context).d(str);
    }

    private final boolean validAccount(Context context) {
        return (accountBean(context) == null || AccountUtil_.getInstance_(context).isTourist()) ? false : true;
    }

    public final void praise(@NotNull Context context, @NotNull GameExpressQualityCommentAdapter adapter, long commentId, long gameId, int praiseType) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        if (!isLogined(context)) {
            a3.b(context).d(context.getString(R.string.forum_user_not_login));
        } else if (!validAccount(context)) {
            h0.h0(context).m(context);
        } else {
            refreshPraiseChanged(adapter, commentId, gameId);
            praisePosts(context, adapter, commentId, gameId, praiseType);
        }
    }

    public final void refreshPraiseChanged(@NotNull GameExpressQualityCommentAdapter adapter, long commentId, long gameId) {
        Intrinsics.checkNotNullParameter(adapter, "adapter");
        Iterator<GameExpressHotCommentBean> it2 = adapter.getItems().iterator();
        int i10 = 0;
        while (true) {
            if (!it2.hasNext()) {
                i10 = -1;
                break;
            }
            GameExpressHotCommentBean next = it2.next();
            if (next.getComment_id() == commentId && next.getGame_id() == gameId) {
                break;
            } else {
                i10++;
            }
        }
        if (i10 < 0) {
            return;
        }
        GameExpressHotCommentBean gameExpressHotCommentBean = adapter.getItems().get(i10);
        int iCoerceAtLeast = gameExpressHotCommentBean.getIs_praise() ? RangesKt___RangesKt.coerceAtLeast(gameExpressHotCommentBean.getComment_praise() - 1, 0) : gameExpressHotCommentBean.getComment_praise() + 1;
        gameExpressHotCommentBean.set_praise(!gameExpressHotCommentBean.getIs_praise());
        gameExpressHotCommentBean.setComment_praise(iCoerceAtLeast);
        adapter.notifyItemChanged(i10);
    }
}
