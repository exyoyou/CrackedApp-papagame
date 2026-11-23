package com.join.kotlin.discount.proxy;

import com.baidu.mobads.sdk.api.IAdInterListener;
import com.join.mgps.Util.v0;
import kotlin.Metadata;
import org.jetbrains.annotations.Nullable;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0010\b\n\u0002\b\b\bf\u0018\u00002\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H&J\b\u0010\u0004\u001a\u00020\u0003H&J\b\u0010\u0005\u001a\u00020\u0003H&J\b\u0010\u0006\u001a\u00020\u0003H&J\b\u0010\u0007\u001a\u00020\u0003H&J\b\u0010\b\u001a\u00020\u0003H&J\u0012\u0010\t\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\u0012\u0010\f\u001a\u00020\u00032\b\u0010\n\u001a\u0004\u0018\u00010\u000bH&J\b\u0010\r\u001a\u00020\u0003H&J\b\u0010\u000e\u001a\u00020\u0003H&J\b\u0010\u000f\u001a\u00020\u0003H&J\b\u0010\u0010\u001a\u00020\u0003H&J\u0010\u0010\u0011\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0013H&J\b\u0010\u0014\u001a\u00020\u0003H&J\b\u0010\u0015\u001a\u00020\u0003H&J\b\u0010\u0016\u001a\u00020\u0003H&J\b\u0010\u0017\u001a\u00020\u0003H&J\b\u0010\u0018\u001a\u00020\u0003H&J\b\u0010\u0019\u001a\u00020\u0003H&J\b\u0010\u001a\u001a\u00020\u0003H&¨\u0006\u001b"}, d2 = {"Lcom/join/kotlin/discount/proxy/GameDetailFragmentClickProxy;", "", "goGift", "", "goCoupon", "goEvent", "goServer", "bookGame", "downBtnClick", "horizontalPicClick", "url", "", "verticalPicClick", "toMoreSubAccount", "expandReleaseWelfare", IAdInterListener.AdCommandType.AD_CLICK, "goComment", "showCommentStatistic", v0.f50057a, "", "goTrade", "clickGameInfoTitle", "clickGoodRate", "supportBigR", "admireBigR", "showBigRRule", "toRefundDetail", "app_wufunNormalRelease"}, k = 1, mv = {2, 1, 0}, xi = 48)
public interface GameDetailFragmentClickProxy {
    void admireBigR();

    void bookGame();

    void clickGameInfoTitle();

    void clickGoodRate();

    void downBtnClick();

    void expandReleaseWelfare();

    void goComment();

    void goCoupon();

    void goEvent();

    void goGift();

    void goServer();

    void goTrade();

    void horizontalPicClick(@Nullable String url);

    void onAdClick();

    void showBigRRule();

    void showCommentStatistic(int i10);

    void supportBigR();

    void toMoreSubAccount();

    void toRefundDetail();

    void verticalPicClick(@Nullable String url);
}
