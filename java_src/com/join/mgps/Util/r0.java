package com.join.mgps.Util;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Layout;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.ClickableSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.ImageSpan;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.MApplication;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.photoviewer.ImagePagerActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.widget.span.CenteredImageSpan;
import com.join.mgps.activity.ForumIndexActivity_;
import com.join.mgps.activity.ForumPostsActivity;
import com.join.mgps.activity.ForumPostsActivity_;
import com.join.mgps.activity.ForumProfileCommentActivity_;
import com.join.mgps.activity.ForumProfileFavoritesActivity_;
import com.join.mgps.activity.ForumProfileMessageActivity_;
import com.join.mgps.activity.ForumProfileMessageReplyActivity;
import com.join.mgps.activity.ForumProfileMessageReplyActivity_;
import com.join.mgps.activity.ForumTopicActivity;
import com.join.mgps.activity.ForumTopicActivity_;
import com.join.mgps.activity.HomePopupAdActivity_;
import com.join.mgps.activity.MGMainActivity_;
import com.join.mgps.activity.MYAccountDetialActivity_;
import com.join.mgps.activity.OemDetailActivity;
import com.join.mgps.activity.OemDetailActivity_;
import com.join.mgps.activity.SearchHintActivity_;
import com.join.mgps.activity.SharePostsActivity;
import com.join.mgps.activity.SharePostsActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.db.tables.ForumTable;
import com.join.mgps.dto.BannerBean;
import com.join.mgps.dto.CommonRequestBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBannerBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.OemBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResponseDownloadCenterAd;
import com.join.mgps.dto.ShareBean;
import com.windmill.sdk.WMConstants;
import com.wufan.user.service.protobuf.UserInfo;
import java.io.File;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import org.androidannotations.annotations.EBean;

/* JADX INFO: loaded from: classes4.dex */
@EBean(scope = EBean.Scope.Singleton)
public class r0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static String f49987b = "r0";

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static int f49988c = 1200000;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static int f49989d = 10;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static int f49990e = 6;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static int f49991f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static long f49992g = 314572;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static long f49993h = 104857;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static Bitmap.CompressFormat f49994i = Bitmap.CompressFormat.JPEG;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static int f49995j = 6;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final int f49996k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final int f49997l = 2;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final int f49998m = 3;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private LinkedList<j> f49999a;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ String f50000b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ String f50001c;

        a(final String val$href, final String val$pid) {
            this.f50000b = val$href;
            this.f50001c = val$pid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (t2.i(this.f50000b)) {
                r0.Q0(v10.getContext(), this.f50000b);
            } else {
                if (!t2.i(this.f50001c) || this.f50001c.equals(WMConstants.TIMER_STAGE_NONE)) {
                    return;
                }
                ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
                forumPostsBean.setPid(Integer.parseInt(this.f50001c));
                r0.v0(v10.getContext(), forumPostsBean);
            }
        }
    }

    class b implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ IntentDateBean f50002b;

        b(final IntentDateBean val$dataBean) {
            this.f50002b = val$dataBean;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f50002b == null) {
                return;
            }
            IntentUtil.getInstance().intentActivity(v10.getContext(), this.f50002b);
        }
    }

    class c implements TextUtils.EllipsizeCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int[] f50003a;

        c(final int[] val$range) {
            this.f50003a = val$range;
        }

        @Override // android.text.TextUtils.EllipsizeCallback
        public void ellipsized(int start, int end) {
            this.f50003a[0] = start;
        }
    }

    class d implements ViewTreeObserver.OnGlobalLayoutListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ TextView f50004b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ SpannableStringBuilder f50005c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f50006d;

        d(final TextView val$mTextView, final SpannableStringBuilder val$content, final int val$maxLines) {
            this.f50004b = val$mTextView;
            this.f50005c = val$content;
            this.f50006d = val$maxLines;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            this.f50004b.setText(this.f50005c);
            if (this.f50004b.getLineCount() <= this.f50006d) {
                r0.i1(this.f50004b.getViewTreeObserver(), this);
                return;
            }
            String str = ((Object) this.f50005c.subSequence(0, this.f50004b.getLayout().getLineEnd(this.f50006d - 1) - 3)) + "...";
            if (!TextUtils.isEmpty(str) && this.f50005c.length() > str.length()) {
                this.f50005c.replace(str.length(), this.f50005c.length(), (CharSequence) "");
            }
            this.f50004b.setText(this.f50005c);
        }
    }

    class e implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ List f50007b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f50008c;

        e(final List val$rawList, final int val$imgIndex) {
            this.f50007b = val$rawList;
            this.f50008c = val$imgIndex;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            String[] strArr = new String[this.f50007b.size()];
            this.f50007b.toArray(strArr);
            r0.G0(v10.getContext(), this.f50008c, strArr);
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            r0.R0(v10.getContext());
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            r0.T0(v10.getContext());
        }
    }

    static /* synthetic */ class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f50009a;

        static {
            int[] iArr = new int[HtmlDocUtil.PostDetail.Type.values().length];
            f50009a = iArr;
            try {
                iArr[HtmlDocUtil.PostDetail.Type.Text.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f50009a[HtmlDocUtil.PostDetail.Type.Image.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f50009a[HtmlDocUtil.PostDetail.Type.Video.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private static abstract class i {
        private i() {
        }

        public abstract void a(List<ForumBean> forums);

        public abstract void b(int count);

        public abstract void c(ForumBean.ForumProfilePostUserInfoBean bean);

        public abstract void d(int statusCode);

        public abstract void e(ForumData.ForumPostsSubmitData data);

        /* synthetic */ i(a aVar) {
            this();
        }
    }

    public static class j extends i {
        public j() {
            super(null);
        }

        @Override // com.join.mgps.Util.r0.i
        public void a(List<ForumBean> forums) {
        }

        @Override // com.join.mgps.Util.r0.i
        public void b(int count) {
        }

        @Override // com.join.mgps.Util.r0.i
        public void c(ForumBean.ForumProfilePostUserInfoBean bean) {
        }

        @Override // com.join.mgps.Util.r0.i
        public void d(int statusCode) {
        }

        @Override // com.join.mgps.Util.r0.i
        public void e(ForumData.ForumPostsSubmitData data) {
        }
    }

    private static class k extends ClickableSpan {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f50010b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private int f50011c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f50012d;

        public k() {
        }

        public int a() {
            return this.f50011c;
        }

        public String b() {
            return this.f50012d;
        }

        public int c() {
            return this.f50010b;
        }

        public void d(int fid) {
            this.f50011c = fid;
        }

        public void e(String fname) {
            this.f50012d = fname;
        }

        public void f(int id2) {
            this.f50010b = id2;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View widget) {
            if (this.f50011c == 0) {
                IntentUtil.getInstance().goMainLabelActivity(widget.getContext(), this.f50010b);
            } else {
                IntentUtil.getInstance().goMainLabelActivity(widget.getContext(), this.f50010b, this.f50011c, this.f50012d);
            }
        }

        @Override // android.text.style.ClickableSpan, android.text.style.CharacterStyle
        public void updateDrawState(TextPaint ds) {
            ds.setColor(ds.linkColor);
            ds.bgColor = Color.parseColor("#00000000");
            ds.setUnderlineText(false);
            ds.clearShadowLayer();
        }

        public k(int id2) {
            this.f50010b = id2;
        }
    }

    public static List<ForumBean> A(String arg) {
        return (List) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(List.class, ForumBean.class));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void A0(Context context, ForumBean.ForumPostsBean postsBean, ForumBean.ForumCommentBean bean, ForumBean.ForumCommentReplyBean replyBean) {
        String json = JsonMapper.nonDefaultMapper().toJson(bean);
        ((ForumProfileMessageReplyActivity_.q0) ((ForumProfileMessageReplyActivity_.q0) ((ForumProfileMessageReplyActivity_.q0) ((ForumProfileMessageReplyActivity_.q0) ForumProfileMessageReplyActivity_.intent(context).extra(ForumProfileMessageReplyActivity.KEY_FORUM_REPLY_BEAN, JsonMapper.nonDefaultMapper().toJson(replyBean))).extra(ForumProfileMessageReplyActivity.KEY_FORUM_COMMENT_BEAN, json)).extra(ForumProfileMessageReplyActivity.KEY_FORUM_POST_BEAN, JsonMapper.nonDefaultMapper().toJson(postsBean))).flags(67108864)).startForResult(3);
    }

    public static void A1(final TextView mTextView, final SpannableStringBuilder content) {
        z1(mTextView, 3, content);
    }

    public static List<ForumBean.ForumExtBean> B(String arg) {
        return (List) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(List.class, ForumBean.ForumExtBean.class));
    }

    public static void B0(Context context) {
        SearchHintActivity_.intent(context).a(1).start();
    }

    public static void B1(TextView textView, String type, String to, String msg) {
        String string;
        Context context = textView.getContext();
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        if (type.equals("praise") || type.equals("bestanswer") || type.equals("best")) {
            string = context.getString(R.string.profile_message_item_content_praise, msg);
        } else if (type.equals("comment")) {
            string = context.getString(R.string.profile_message_item_content_comment, msg);
        } else if (type.equals("reply")) {
            string = context.getString(R.string.profile_message_item_content_reply, to, msg);
            int iIndexOf = string.indexOf(to);
            iArr[0] = iIndexOf;
            iArr2[0] = iIndexOf + to.length();
        } else {
            string = "";
        }
        SpannableString spannableString = new SpannableString(string);
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#2a72cb")), iArr[0], iArr2[0], 33);
        if (string.contains("#*#")) {
            ImageSpan imageSpan = new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon));
            String[] strArrSplit = string.split("#\\*#");
            if (strArrSplit.length > 1) {
                spannableString.setSpan(imageSpan, string.indexOf(strArrSplit[0]) + strArrSplit[0].length(), string.indexOf(strArrSplit[0]) + strArrSplit[0].length() + 3, 33);
                if (strArrSplit.length > 2) {
                    spannableString.setSpan(new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon)), string.indexOf(strArrSplit[1]) + strArrSplit[1].length(), string.indexOf(strArrSplit[1]) + strArrSplit[1].length() + 3, 33);
                }
            }
        }
        textView.setText(spannableString);
    }

    public static ForumBannerBean.ForumBannerMessagesData C(String arg) {
        return (ForumBannerBean.ForumBannerMessagesData) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumBannerBean.ForumBannerMessagesData.class, new Class[0]));
    }

    public static void C0(Context context, int fid) {
        SearchHintActivity_.intent(context).a(1).start();
    }

    public static void C1(ImageView img, final int imgIndex, final List<String> rawList) {
        if (rawList == null || rawList.size() == 0) {
            return;
        }
        img.setOnClickListener(new e(rawList, imgIndex));
    }

    public static ForumData.ForumForumWelcomeData D(String arg) {
        return (ForumData.ForumForumWelcomeData) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.ForumForumWelcomeData.class, new Class[0]));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void D0(Context context, ForumBean.ForumTopicBean bean) {
        ((ForumTopicActivity_.m) ((ForumTopicActivity_.m) ForumTopicActivity_.intent(context).extra(ForumTopicActivity.KEY_FORUM_TOPIC_BEAN, JsonMapper.nonDefaultMapper().toJson(bean))).flags(67108864)).start();
    }

    public static void D1(TextView textView, String value, String defValue) {
        if (t2.h(value) || value.equals("null")) {
            textView.setText(defValue);
        } else {
            textView.setText(value);
        }
    }

    public static ForumData.ForumForumWelcomePostsData E(String arg) {
        return (ForumData.ForumForumWelcomePostsData) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.ForumForumWelcomePostsData.class, new Class[0]));
    }

    public static void E0(Context context) {
        new Intent();
        new Bundle();
        ForumIndexActivity_.intent(context).start();
    }

    public static void E1(View view, final IntentDateBean dataBean) {
        view.setOnClickListener(new b(dataBean));
    }

    public static ForumData.ForumPostsPraiseData F(String arg) {
        return (ForumData.ForumPostsPraiseData) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.ForumPostsPraiseData.class, new Class[0]));
    }

    public static void F0(Context context, String adBean) {
        HomePopupAdActivity_.intent(context).a(adBean).start();
    }

    public static void F1(View view, final String href, final String pid) {
        view.setOnClickListener(new a(href, pid));
    }

    public static ForumRequestBean.ForumPostsPraiseRequestBean G(String arg) {
        return (ForumRequestBean.ForumPostsPraiseRequestBean) JsonMapper.getInstance().fromJson(arg, ForumRequestBean.ForumPostsPraiseRequestBean.class);
    }

    public static void G0(Context context, int position, String[] urls) {
        Intent intent = new Intent(context, (Class<?>) ImagePagerActivity.class);
        intent.putExtra("image_urls", urls);
        intent.putExtra("image_index", position);
        context.startActivity(intent);
    }

    public static void G1(Context context, int pid) {
        ShareBean shareBean = new ShareBean();
        shareBean.setTitle(com.join.android.app.mgsim.wufun.b.f35536i);
        shareBean.setText("最好用的联机模拟器");
        String str = com.join.mgps.rpc.h.f72353k + String.format("/forum/posts/share_detail?pid=%d&device_id=%s", Integer.valueOf(pid), i1.d(""));
        shareBean.setQqUrl(str);
        shareBean.setqZoneShareUrl(str);
        shareBean.setWechatFriendUrl(str);
        shareBean.setWechatShareUrl(str);
        shareBean.setWeiboShareUrl(str);
        shareBean.setFrom(4);
        shareBean.setGameId(pid + "");
        w.r(context, shareBean);
    }

    public static ForumData.ForumProfilePostsData H(String arg) {
        return (ForumData.ForumProfilePostsData) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.ForumProfilePostsData.class, new Class[0]));
    }

    public static void H0(Context ctx, String linkValue, String title) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        if (t2.i(title)) {
            intentDateBean.setObject(title);
        }
        intentDateBean.setLink_type_val(linkValue);
        IntentUtil.getInstance().intentActivity(ctx, intentDateBean);
    }

    public static void H1(Context context, ForumBean.ForumPostsBean bean) {
        String imageUrl;
        String string;
        Exception e10;
        if (bean == null) {
            return;
        }
        ShareBean shareBean = new ShareBean();
        String strSubstring = "最好用的联机模拟器";
        try {
            if (t2.h(bean.getMessage()) || !HtmlDocUtil.d(bean.getMessage())) {
                imageUrl = (bean.getRs_list() == null || bean.getRs_list().size() == 0) ? "" : bean.getRs_list().get(0).getThumb();
            } else {
                List<HtmlDocUtil.PostDetail> listC = HtmlDocUtil.c(bean.getMessage());
                imageUrl = "";
                string = "最好用的联机模拟器";
                for (int i10 = 0; i10 < listC.size(); i10++) {
                    try {
                        HtmlDocUtil.PostDetail postDetail = listC.get(i10);
                        if (!string.equals("最好用的联机模拟器") && t2.i(imageUrl)) {
                            break;
                        }
                        int i11 = h.f50009a[postDetail.f49375a.ordinal()];
                        if (i11 != 1) {
                            if (i11 == 2) {
                                HtmlDocUtil.b bVar = (HtmlDocUtil.b) postDetail.a();
                                if (t2.h(imageUrl)) {
                                    imageUrl = bean.getCdn_url() + bVar.d();
                                }
                            }
                        } else if (string.equals("最好用的联机模拟器")) {
                            string = ((HtmlDocUtil.c) postDetail.a()).d().toString();
                        }
                    } catch (Exception e11) {
                        e10 = e11;
                        e10.printStackTrace();
                    }
                }
                strSubstring = string;
            }
        } catch (Exception e12) {
            imageUrl = "";
            string = "最好用的联机模拟器";
            e10 = e12;
        }
        if (t2.h(imageUrl)) {
            imageUrl = new ShareBean().getImageUrl();
        }
        shareBean.setTitle(com.join.android.app.mgsim.wufun.b.f35536i);
        if (strSubstring.length() > 100) {
            strSubstring = strSubstring.substring(0, 100);
        }
        shareBean.setText(strSubstring);
        if (t2.i(bean.getSubject())) {
            shareBean.setTitle(bean.getSubject());
        }
        shareBean.setImageUrl(imageUrl);
        String str = com.join.mgps.rpc.h.f72353k + String.format("/forum/posts/share_detail?pid=%d&device_id=%s", Integer.valueOf(bean.getPid()), i1.d(""));
        shareBean.setQqUrl(str);
        shareBean.setqZoneShareUrl(str);
        shareBean.setWechatFriendUrl(str);
        shareBean.setWechatShareUrl(str);
        shareBean.setWeiboShareUrl(str);
        shareBean.setArticleId(bean.getPid() + "");
        shareBean.setFrom(4);
        shareBean.setGameId(bean.getPid() + "");
        w.r(context, shareBean);
    }

    public static ForumData.ForumProfileUnreadMessageCountData I(String arg) {
        return (ForumData.ForumProfileUnreadMessageCountData) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.ForumProfileUnreadMessageCountData.class, new Class[0]));
    }

    public static void I0(Context context, ForumBean.GameInfo gameInfo) {
        IntentUtil.getInstance().goGameDetialActivity(context, gameInfo.getGame_id(), gameInfo.getGame_info_tpl_type(), gameInfo.getSp_tpl_two_position(), 0);
    }

    public static ForumData.ForumUserFavoritesDatas J(String arg) {
        return (ForumData.ForumUserFavoritesDatas) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.ForumUserFavoritesDatas.class, new Class[0]));
    }

    public static void J0(Context context, ForumBean.GameInfo gameInfo, int fromtype) {
        IntentUtil.getInstance().goGameDetialActivity(context, gameInfo.getGame_id(), gameInfo.getGame_info_tpl_type(), gameInfo.getSp_tpl_two_position(), fromtype);
    }

    public static ForumData.HomepageRecommendGroup K(String arg) {
        return (ForumData.HomepageRecommendGroup) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.HomepageRecommendGroup.class, new Class[0]));
    }

    public static void K0(Context context, UserInfo accountBean) {
        MYAccountDetialActivity_.intent(context).start();
    }

    public static ForumData.HomepageRecommendLabel L(String arg) {
        return (ForumData.HomepageRecommendLabel) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumData.HomepageRecommendLabel.class, new Class[0]));
    }

    public static void L0(Context context) {
        IntentUtil.getInstance().goLogin(context);
    }

    public static void M(Context context, String s10) {
        h1.e("copyToClickBoard method called.", "content=" + s10);
        if (context == null) {
            return;
        }
        ((ClipboardManager) context.getSystemService(Constants.WS_MESSAGE_TYPE_CLIPBOARD)).setText(s10);
        a3.b(context).d("复制成功");
    }

    public static void M0(Context context) {
        LoginSplashActivity_.intent(context).start();
    }

    public static void N() {
        try {
            t6.t.p().delete(t6.t.p().o(ForumBean.ForumEvent.MyProfileFavorites));
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void N0(Context context, OemBean.OemDetailBean bean) {
        Intent intent = new Intent(context, (Class<?>) OemDetailActivity_.class);
        intent.putExtra(OemDetailActivity.KEY_OEM_DETAIL, JsonMapper.nonDefaultMapper().toJson(bean));
        ((Activity) context).startActivityForResult(intent, 1);
    }

    public static void O(String key) {
        try {
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.SearchListData.name());
            forumTable.setArgs1(key);
            t6.t.p().n(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void O0(Context context, ForumRequestBean.ForumPostsSubmitRequestBean bean, Class clsFrom) {
        ((SharePostsActivity_.h) ((SharePostsActivity_.h) SharePostsActivity_.intent(context).extra(SharePostsActivity.KEY_FROM_POSTS_SUBMIT_REQUEST, JsonMapper.nonDefaultMapper().toJson(bean))).extra(SharePostsActivity.KEY_FROM_CLASS, clsFrom.getName())).start();
    }

    private static int P(TextPaint tp, CharSequence cs, int line, int lineWidth) {
        StaticLayout staticLayout = new StaticLayout(cs, tp, lineWidth, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, true);
        if (staticLayout.getLineCount() <= line) {
            return -1;
        }
        int lineStart = staticLayout.getLineStart(line - 1);
        int[] iArr = {0};
        TextUtils.ellipsize(cs.subSequence(lineStart, cs.length()), tp, lineWidth, TextUtils.TruncateAt.END, false, new c(iArr));
        return lineStart + iArr[0];
    }

    public static void P0(Context context, String link_type_val) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("悟饭视频");
        intentDateBean.setLink_type_val(link_type_val);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static void Q(final TextView mTextView, final SpannableStringBuilder content) {
        P(mTextView.getPaint(), content.toString(), 2, 1);
    }

    public static void Q0(Context context, String link_type_val) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setObject("悟饭视频");
        intentDateBean.setLink_type_val(link_type_val);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static String R(int num) {
        if (num < 0) {
            return "0";
        }
        if (num < 1000) {
            return String.valueOf(num);
        }
        if (num < 10000) {
            int i10 = num / 100;
            return String.valueOf(((i10 / 10) % 10) + o0.f49827a + (i10 % 10) + "K");
        }
        if (num >= 100000) {
            if (num >= 1000000) {
                return "99W+";
            }
            return String.valueOf((num / 10000) + "W");
        }
        int i11 = num / 1000;
        return String.valueOf(((i11 / 10) % 10) + o0.f49827a + (i11 % 10) + "W");
    }

    public static void R0(Context ctx) {
        H0(ctx, "http://anv3cjapi.5fun.com/member/vip_view/welfare/nickname", null);
    }

    public static ImageSpan S(Drawable bg) {
        return new com.join.mgps.customview.t0(bg);
    }

    public static void S0(View... views) {
        if (views == null) {
            return;
        }
        f fVar = new f();
        for (View view : views) {
            if (view != null) {
                view.setOnClickListener(fVar);
            }
        }
    }

    public static UserInfo T(Context context) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData == null || !t2.i(accountData.getToken())) {
            return null;
        }
        return accountData;
    }

    public static void T0(Context ctx) {
        H0(ctx, "http://anv3cjapi.5fun.com/member/vip_view/welfare/vip", null);
    }

    public static ResponseDownloadCenterAd U() {
        try {
            String args2 = t6.t.p().o(ForumBean.ForumEvent.DownloadCenterAd).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return y(args2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void U0(View... views) {
    }

    public static ForumBannerBean.ForumBannerRequestBean V(Context context, int pn) {
        CommonRequestBean commuityRequestBean = RequestBeanUtil.getInstance(context).getCommuityRequestBean(pn);
        if (commuityRequestBean == null) {
            return null;
        }
        try {
            return new ForumBannerBean.ForumBannerRequestBean(commuityRequestBean.getVersion(), commuityRequestBean.getDeviceid(), commuityRequestBean.getRequesttype(), commuityRequestBean.getSign(), new ForumBannerBean.ForumBannerRequestBean.RequestMessages(commuityRequestBean.getMessages().getModeltype(), new ForumBannerBean.ForumBannerRequestBean.RequestMessagesArgs(Integer.valueOf(pn))));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void V0(Context context, String videoSrc, String actionBarTitle) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(videoSrc);
        if (!t2.i(actionBarTitle)) {
            actionBarTitle = "悟饭视频";
        }
        intentDateBean.setObject(actionBarTitle);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static ForumRequestBean.ForumCommentDeleteRequestBean W(Context context, int pid) {
        if (!Y0(context)) {
            return null;
        }
        ForumRequestBean.ForumCommentDeleteRequestBean forumCommentDeleteRequestBean = new ForumRequestBean.ForumCommentDeleteRequestBean();
        forumCommentDeleteRequestBean.setPid(pid);
        forumCommentDeleteRequestBean.setUid(o0(context));
        forumCommentDeleteRequestBean.setToken(p0(context));
        return forumCommentDeleteRequestBean;
    }

    public static void W0(View... views) {
        if (views == null) {
            return;
        }
        g gVar = new g();
        for (View view : views) {
            if (view != null) {
                view.setOnClickListener(gVar);
            }
        }
    }

    public static ForumRequestBean.ForumCommentReplyDeleteRequestBean X(Context context, int rid) {
        if (!Y0(context)) {
            return null;
        }
        ForumRequestBean.ForumCommentReplyDeleteRequestBean forumCommentReplyDeleteRequestBean = new ForumRequestBean.ForumCommentReplyDeleteRequestBean();
        forumCommentReplyDeleteRequestBean.setRid(rid);
        forumCommentReplyDeleteRequestBean.setUid(o0(context));
        forumCommentReplyDeleteRequestBean.setToken(p0(context));
        return forumCommentReplyDeleteRequestBean;
    }

    public static void X0(View view) {
        if (view != null) {
            view.invalidate();
        }
    }

    public static ForumRequestBean.ForumCommentReplyRequestBean Y(Context context, int pid, String message, int rid) {
        if (!Y0(context)) {
            return null;
        }
        ForumRequestBean.ForumCommentReplyRequestBean forumCommentReplyRequestBean = new ForumRequestBean.ForumCommentReplyRequestBean();
        forumCommentReplyRequestBean.setRid(rid);
        forumCommentReplyRequestBean.setPid(pid);
        forumCommentReplyRequestBean.setMessage(message);
        forumCommentReplyRequestBean.setUid(o0(context));
        forumCommentReplyRequestBean.setToken(p0(context));
        return forumCommentReplyRequestBean;
    }

    public static boolean Y0(Context context) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        return accountData != null && t2.i(accountData.getToken());
    }

    public static String Z() {
        return "forum_image";
    }

    public static void Z0(Context context) {
        Intent intent = new Intent();
        intent.setClass(context, MGMainActivity_.class);
        intent.setFlags(67108864);
        Bundle bundle = new Bundle();
        bundle.putInt("MainPos", 5);
        intent.putExtras(bundle);
        context.startActivity(intent);
        MApplication.f3181y = false;
    }

    public static ForumBannerBean.ForumBannerDataBannerBean a0() {
        try {
            String args2 = t6.t.p().o(ForumBean.ForumEvent.ForumIndexBanner).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return z(args2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static ForumRequestBean.ForumPostsCommentRequestBean b0(Context context, int pid, String message, List<String> images) {
        if (!Y0(context)) {
            return null;
        }
        ForumRequestBean.ForumPostsCommentRequestBean forumPostsCommentRequestBean = new ForumRequestBean.ForumPostsCommentRequestBean();
        forumPostsCommentRequestBean.setPid(pid);
        forumPostsCommentRequestBean.setMessage(message);
        forumPostsCommentRequestBean.setUid(o0(context));
        forumPostsCommentRequestBean.setToken(p0(context));
        forumPostsCommentRequestBean.setImages(images);
        return forumPostsCommentRequestBean;
    }

    public static void c(List<ForumBean.GameInfo.GameTagInfo> tipBeans, LinearLayout view, Context context) {
        if (tipBeans == null) {
            return;
        }
        try {
            view.removeAllViews();
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.setMargins(4, 0, 4, 0);
            for (ForumBean.GameInfo.GameTagInfo gameTagInfo : tipBeans) {
                if (gameTagInfo.getId() != null && !gameTagInfo.getId().equals("") && !gameTagInfo.getId().equals("44") && !gameTagInfo.getId().equals("45") && !gameTagInfo.getId().equals("47") && !gameTagInfo.getId().equals("48")) {
                    TextView textView = new TextView(context);
                    textView.setLayoutParams(layoutParams);
                    textView.setGravity(17);
                    textView.setText(gameTagInfo.getName() + "");
                    textView.setTextColor(Color.parseColor(gameTagInfo.getColor()));
                    textView.setPadding(0, 0, 0, 0);
                    textView.setSingleLine(true);
                    textView.setTextSize(9.0f);
                    textView.setBackgroundDrawable(z2.a(context, gameTagInfo.getColor() + ""));
                    view.addView(textView);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static ForumRequestBean.ForumPostsDeleteRequestBean c0(Context context, int pid) {
        if (!Y0(context)) {
            return null;
        }
        ForumRequestBean.ForumPostsDeleteRequestBean forumPostsDeleteRequestBean = new ForumRequestBean.ForumPostsDeleteRequestBean();
        forumPostsDeleteRequestBean.setPid(pid);
        forumPostsDeleteRequestBean.setUid(o0(context));
        forumPostsDeleteRequestBean.setToken(p0(context));
        forumPostsDeleteRequestBean.setDevice_id("");
        return forumPostsDeleteRequestBean;
    }

    public static void d(TextView tv2, SpannableStringBuilder ssb) {
        if (tv2 == null) {
            return;
        }
        try {
            Context context = tv2.getContext();
            SpannableString spannableString = new SpannableString("已解答");
            spannableString.setSpan(new com.join.mgps.customview.t0(z2.c(context, "#737373", "#737373"), Color.parseColor("#ffffff")), 0, spannableString.length(), 33);
            ssb.append((CharSequence) spannableString).append(" ");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static ForumRequestBean.ForumPostsHelpSolveRequestBean d0(Context context, int pid, int rid) {
        if (!Y0(context)) {
            return null;
        }
        ForumRequestBean.ForumPostsHelpSolveRequestBean forumPostsHelpSolveRequestBean = new ForumRequestBean.ForumPostsHelpSolveRequestBean();
        forumPostsHelpSolveRequestBean.setPid(pid);
        forumPostsHelpSolveRequestBean.setRid(rid);
        forumPostsHelpSolveRequestBean.setUid(o0(context));
        forumPostsHelpSolveRequestBean.setToken(p0(context));
        forumPostsHelpSolveRequestBean.setDevice_id("");
        return forumPostsHelpSolveRequestBean;
    }

    public static void e(Context context, SpannableStringBuilder ssb, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        if (tagInfos == null || tagInfos.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < tagInfos.size(); i10++) {
            try {
                ForumBean.ForumPostsBean.TagInfo tagInfo = tagInfos.get(i10);
                String name = tagInfo.getName();
                tagInfo.getColor();
                if (!t2.h(name)) {
                    SpannableString spannableString = new SpannableString(name);
                    spannableString.setSpan(new com.join.mgps.customview.t0(z2.b(context, tagInfo.getColor(), context.getResources().getDimensionPixelSize(R.dimen.wdp5)), Color.parseColor(TextUtils.isEmpty(tagInfo.getFont_color()) ? "#ffffff" : tagInfo.getFont_color())), 0, spannableString.length(), 33);
                    ssb.append((CharSequence) spannableString).append(" ");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    public static ForumRequestBean.ForumPostsPraiseRequestBean e0(Context context, int pid) {
        if (!Y0(context)) {
            return null;
        }
        ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBean = new ForumRequestBean.ForumPostsPraiseRequestBean();
        forumPostsPraiseRequestBean.setPid(pid);
        forumPostsPraiseRequestBean.setUid(o0(context));
        forumPostsPraiseRequestBean.setToken(p0(context));
        return forumPostsPraiseRequestBean;
    }

    private static void f(Context mContext, SpannableStringBuilder ssb, boolean ask, String moneyForAnswer) {
        if (ask) {
            try {
                Drawable drawable = mContext.getResources().getDrawable(R.drawable.icon_ask);
                int dimensionPixelSize = mContext.getResources().getDimensionPixelSize(R.dimen.mg_forum_post_message_text_size);
                drawable.setBounds(0, 0, dimensionPixelSize, dimensionPixelSize);
                com.join.mgps.customview.u0 u0Var = new com.join.mgps.customview.u0(drawable, 1.2f);
                SpannableString spannableString = new SpannableString("[ask]");
                spannableString.setSpan(u0Var, 0, spannableString.length(), 33);
                SpannableString spannableString2 = new SpannableString("赏" + moneyForAnswer + "铜板");
                spannableString2.setSpan(new com.join.mgps.customview.t0(z2.c(mContext, "#F85F45", "#F85F45"), Color.parseColor("#ffffff")), 0, spannableString2.length(), 33);
                ssb.append((CharSequence) spannableString2).append(" ");
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    public static ForumBannerBean.ForumBannerRequestBean f0(Context context, int fid) {
        CommonRequestBean commuityZoneRequestBean = RequestBeanUtil.getInstance(context).getCommuityZoneRequestBean(fid);
        if (commuityZoneRequestBean == null) {
            return null;
        }
        try {
            return new ForumBannerBean.ForumBannerRequestBean(commuityZoneRequestBean.getVersion(), commuityZoneRequestBean.getDeviceid(), commuityZoneRequestBean.getRequesttype(), commuityZoneRequestBean.getSign(), new ForumBannerBean.ForumBannerRequestBean.RequestMessages(commuityZoneRequestBean.getMessages().getModeltype(), new ForumBannerBean.ForumBannerRequestBean.RequestMessagesArgs(Integer.valueOf(fid))));
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void f1(int pid, boolean isFavorite) {
    }

    public static void g(TextView tv2, SpannableStringBuilder ssb, boolean best, boolean ask, String moneyForAnswer) {
        if (tv2 == null) {
            return;
        }
        try {
            Context context = tv2.getContext();
            float lineSpacingMultiplier = tv2.getLineSpacingMultiplier();
            if (ask) {
                Drawable drawable = context.getResources().getDrawable(R.drawable.icon_ask);
                int textSize = (int) tv2.getTextSize();
                drawable.setBounds(0, 0, textSize, textSize);
                com.join.mgps.customview.u0 u0Var = new com.join.mgps.customview.u0(drawable, lineSpacingMultiplier);
                SpannableString spannableString = new SpannableString("[ask]");
                spannableString.setSpan(u0Var, 0, spannableString.length(), 33);
                SpannableString spannableString2 = new SpannableString("赏" + moneyForAnswer + "铜板");
                spannableString2.setSpan(new com.join.mgps.customview.t0(z2.c(context, "#F85F45", "#F85F45"), Color.parseColor("#ffffff")), 0, spannableString2.length(), 33);
                ssb.append((CharSequence) spannableString2).append(" ");
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static ForumData.HomepageRecommendGroup g0() {
        try {
            String args2 = t6.t.p().o(ForumBean.ForumEvent.HomepageRecommendGroup).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return K(args2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void g1() {
        try {
            ForumTable forumTableO = t6.t.p().o(ForumBean.ForumEvent.ForumIndexBanner);
            if (forumTableO != null) {
                t6.t.p().delete(forumTableO);
            }
            ForumTable forumTableO2 = t6.t.p().o(ForumBean.ForumEvent.HomepageRecommendGroup);
            if (forumTableO != null) {
                t6.t.p().delete(forumTableO2);
            }
            ForumTable forumTableO3 = t6.t.p().o(ForumBean.ForumEvent.HomepageRecommendLabel);
            if (forumTableO != null) {
                t6.t.p().delete(forumTableO3);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void h(Context context, SpannableStringBuilder ssb, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        if (tagInfos == null || tagInfos.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < tagInfos.size(); i10++) {
            try {
                ForumBean.ForumPostsBean.TagInfo tagInfo = tagInfos.get(i10);
                String name = tagInfo.getName();
                tagInfo.getColor();
                if (!t2.h(name)) {
                    SpannableString spannableString = new SpannableString(name);
                    Drawable drawable = ContextCompat.getDrawable(context, tagInfo.getResId());
                    if (drawable != null) {
                        int dimension = (int) context.getResources().getDimension(R.dimen.wdp45);
                        drawable.setBounds(0, 0, dimension, dimension);
                        spannableString.setSpan(new CenteredImageSpan(drawable), 0, name.length(), 33);
                        ssb.append((CharSequence) spannableString).append(" ");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    public static ForumData.HomepageRecommendLabel h0() {
        try {
            String args2 = t6.t.p().o(ForumBean.ForumEvent.HomepageRecommendLabel).getArgs2();
            if (TextUtils.isEmpty(args2)) {
                return null;
            }
            return L(args2);
        } catch (Exception e10) {
            e10.printStackTrace();
            return null;
        }
    }

    public static void h1(ForumData.ForumUserFavoritesData changeItem) {
        if (changeItem == null) {
            return;
        }
        try {
            ForumTable forumTableO = t6.t.p().o(ForumBean.ForumEvent.MyProfileFavorites);
            if (t2.h(forumTableO.getArgs1())) {
                return;
            }
            ForumData.ForumUserFavoritesDatas forumUserFavoritesDatasJ = J(forumTableO.getArgs1());
            List<ForumData.ForumUserFavoritesData> favorites_list = forumUserFavoritesDatasJ != null ? forumUserFavoritesDatasJ.getFavorites_list() : null;
            if (favorites_list == null || favorites_list.size() == 0) {
                return;
            }
            for (ForumData.ForumUserFavoritesData forumUserFavoritesData : favorites_list) {
                if (forumUserFavoritesData.getType() == changeItem.getType() && forumUserFavoritesData.getGame() != null) {
                    if (changeItem.getType() == 1 && forumUserFavoritesData.getGame() != null && changeItem.getGame() != null && forumUserFavoritesData.getGame().getGame_id().equals(changeItem.getGame().getGame_id())) {
                        favorites_list.remove(forumUserFavoritesData);
                        s1(forumUserFavoritesDatasJ);
                        return;
                    } else if (changeItem.getType() == 2 && forumUserFavoritesData.getPost() != null && changeItem.getPost() != null && forumUserFavoritesData.getPost().getPid() == changeItem.getPost().getPid()) {
                        favorites_list.remove(forumUserFavoritesData);
                        s1(forumUserFavoritesDatasJ);
                        return;
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static void i(Context context, SpannableStringBuilder ssb, List<RecommendLabelTag> tagInfos, int fid, String fname) {
        if (tagInfos == null || tagInfos.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < tagInfos.size(); i10++) {
            try {
                RecommendLabelTag recommendLabelTag = tagInfos.get(i10);
                String tag_name = recommendLabelTag.getTag_name();
                int tag_id = recommendLabelTag.getTag_id();
                if (!t2.h(tag_name)) {
                    SpannableString spannableString = new SpannableString("#" + tag_name + "#");
                    spannableString.setSpan(new ForegroundColorSpan(context.getResources().getColor(R.color.mg_forum_tag_color)), 0, spannableString.length(), 17);
                    k kVar = new k(tag_id);
                    kVar.d(fid);
                    kVar.e(fname);
                    spannableString.setSpan(kVar, 0, spannableString.length(), 17);
                    ssb.append((CharSequence) spannableString).append(" ");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
    }

    public static Integer[] i0(String url) {
        Integer[] numArr = null;
        try {
            if (!t2.i(url)) {
                return null;
            }
            String strF = t2.f(url);
            String[] strArrSplit = strF.contains("_size_") ? strF.split("_size_") : null;
            String[] strArrSplit2 = (strArrSplit == null || strArrSplit.length <= 1 || !strArrSplit[1].contains("_")) ? null : strArrSplit[1].split("_");
            if (strArrSplit2 == null || strArrSplit2.length <= 1 || !t2.i(strArrSplit2[0]) || !t2.i(strArrSplit2[1])) {
                return null;
            }
            numArr = new Integer[]{Integer.valueOf(Integer.parseInt(strArrSplit2[0])), Integer.valueOf(Integer.parseInt(strArrSplit2[1]))};
            return numArr;
        } catch (Exception e10) {
            e10.printStackTrace();
            return numArr;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressLint({"NewApi"})
    public static void i1(ViewTreeObserver obs, ViewTreeObserver.OnGlobalLayoutListener listener) {
        if (obs == null) {
            return;
        }
        obs.removeOnGlobalLayoutListener(listener);
    }

    public static void j(int pid, boolean isFavorite, List<ForumBean.ForumPostsBean> dataSet) {
        for (int i10 = 0; dataSet != null && i10 < dataSet.size(); i10++) {
            ForumBean.ForumPostsBean forumPostsBean = dataSet.get(i10);
            if (forumPostsBean.getPid() == pid) {
                forumPostsBean.setIs_favorite(isFavorite);
                return;
            }
        }
    }

    public static IntentDateBean j0(BannerBean bean) {
        if (bean == null) {
            return null;
        }
        return new IntentDateBean(bean.getLink_type(), bean.getJump_type(), bean.getLink_type_val(), bean.getCrc_link_type_val(), bean.getTpl_type(), bean.getTitle());
    }

    public static void k(int pid, boolean isFavorite, List<ForumData.ForumUserFavoritesData> dataSet) {
        for (int i10 = 0; dataSet != null && i10 < dataSet.size(); i10++) {
            ForumData.ForumUserFavoritesData forumUserFavoritesData = dataSet.get(i10);
            if (forumUserFavoritesData.getPost() != null && forumUserFavoritesData.getPost().getPid() == pid) {
                forumUserFavoritesData.getPost().setIs_favorite(isFavorite);
                if (isFavorite) {
                    return;
                }
                h1(forumUserFavoritesData);
                return;
            }
        }
    }

    public static IntentDateBean k0(ForumBannerBean.ForumBannerDataBannerCellBean bean) {
        if (bean == null) {
            return null;
        }
        return new IntentDateBean(!TextUtils.isEmpty(bean.getLink_type()) ? Integer.parseInt(bean.getLink_type()) : 0, !TextUtils.isEmpty(bean.getJump_type()) ? Integer.parseInt(bean.getJump_type()) : 0, bean.getLink_type_val(), bean.getCrc_link_type_val(), bean.getTpl_type(), bean.getTitle());
    }

    public static void k1(ResponseDownloadCenterAd result) {
        try {
            String json = JsonMapper.nonDefaultMapper().toJson(result);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.DownloadCenterAd.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(json);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            t6.t.p().u(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static int l(Context context, int error) {
        if (error == 701) {
            a3.b(context).d("登录验证失败，请重新登录");
            L0(context);
        }
        return error;
    }

    public static File l0() {
        File file = new File(z.f50164c, ".cache/" + Z());
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static void l1(ForumBannerBean.ForumBannerDataBannerBean result) {
        try {
            String strM = m(result);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.ForumIndexBanner.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(strM);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            t6.t.p().u(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String m(ForumBannerBean.ForumBannerDataBannerBean data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    public static SpannableStringBuilder m0(Context context, String message, boolean showTag, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        if (showTag) {
            h(context, spannableStringBuilder, tagInfos);
            f(context, spannableStringBuilder, ask, moneyForAnswer);
        }
        spannableStringBuilder.append((CharSequence) message);
        return spannableStringBuilder;
    }

    public static void m1(ForumRequestBean.ForumPostsPraiseRequestBean request, ForumData.ForumPostsPraiseData result) {
        String strW = w(request);
        String strR = r(result);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.PostsPraise.name());
        forumTable.setArgs1(strW);
        forumTable.setArgs1(strR);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t6.t.p().u(forumTable);
    }

    public static String n(ForumBannerBean.ForumBannerMessagesData data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    public static String n0(String key) {
        try {
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.SearchListData.name());
            forumTable.setArgs1(key);
            ForumTable forumTableQ = t6.t.p().q(forumTable);
            return forumTableQ != null ? forumTableQ.getArgs2() : "";
        } catch (Exception e10) {
            e10.printStackTrace();
            return "";
        }
    }

    public static void n1(ForumData.ForumProfilePostsData data) {
        String strS = s(data);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ProfilePosts.name());
        forumTable.setArgs1(strS);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t6.t.p().u(forumTable);
    }

    public static String o(ForumBean bean) {
        return JsonMapper.nonDefaultMapper().toJson(bean);
    }

    public static int o0(Context context) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        if (accountData == null || !t2.i(accountData.getToken())) {
            return -1;
        }
        return accountData.getUid();
    }

    public static void o1(ForumData.ForumProfileUnreadMessageCountData data) {
        String strT = t(data);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ProfileGetUnreadMessageCount.name());
        forumTable.setArgs1(strT);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t6.t.p().u(forumTable);
    }

    public static String p(ForumData.ForumForumWelcomeData data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    public static String p0(Context context) {
        UserInfo accountData = AccountUtil_.getInstance_(context).getAccountData();
        return (accountData == null || !t2.i(accountData.getToken())) ? "" : accountData.getToken();
    }

    public static void p1(ForumData.ForumForumWelcomePostsData forumWelcomePostsData) {
        String strQ = q(forumWelcomePostsData);
        ForumTable forumTable = new ForumTable();
        forumTable.setType(ForumBean.ForumEvent.ForumWelcomePosts.name());
        forumTable.setArgs1(strQ);
        forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
        t6.t.p().l(forumTable);
    }

    public static String q(ForumData.ForumForumWelcomePostsData data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    public static void q0(Context context, String typlType, String crc_link_type_val) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(2);
        if (t2.i(typlType)) {
            intentDateBean.setTpl_type(typlType);
        } else {
            intentDateBean.setTpl_type("2");
        }
        intentDateBean.setCrc_link_type_val(crc_link_type_val);
        intentDateBean.setExtBean(null);
        IntentUtil.getInstance().intentActivity(context, intentDateBean);
    }

    public static void q1(ForumData.HomepageRecommendGroup result) {
        try {
            String strV = v(result);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.HomepageRecommendGroup.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(strV);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            t6.t.p().u(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String r(ForumData.ForumPostsPraiseData data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    public static void r0(Context context, ForumBean forumBean) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void r1(ForumData.HomepageRecommendLabel result) {
        try {
            String json = JsonMapper.nonDefaultMapper().toJson(result);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.HomepageRecommendLabel.name());
            forumTable.setArgs1("");
            forumTable.setArgs2(json);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            t6.t.p().u(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String s(ForumData.ForumProfilePostsData data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    public static void s0(Context context, ForumBean forumBean, ExtBean extBean) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void s1(ForumData.ForumUserFavoritesDatas result) {
        try {
            String strU = u(result);
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.MyProfileFavorites.name());
            forumTable.setArgs1("");
            forumTable.setArgs1(strU);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            t6.t.p().u(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String t(ForumData.ForumProfileUnreadMessageCountData data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    public static void t0(Context context, ForumBean forumBean, List<ForumBean> followedBeans) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void t1(String key, String value) {
        try {
            ForumTable forumTable = new ForumTable();
            forumTable.setType(ForumBean.ForumEvent.SearchListData.name());
            forumTable.setArgs1(key);
            forumTable.setArgs2(value);
            forumTable.setTime(String.valueOf(System.currentTimeMillis() / 1000));
            t6.t.p().t(forumTable);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public static String u(ForumData.ForumUserFavoritesDatas bean) {
        return JsonMapper.nonDefaultMapper().toJson(bean);
    }

    public static void u0(Context context, ForumBean forumBean, boolean refresh) {
        IntentUtil.getInstance().goForumGroupActivity(context, forumBean.getFid());
    }

    public static void u1(TextView textView, String from, String to, String msg) {
        String string;
        Context context = textView.getContext();
        textView.setGravity(16);
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        if (t2.i(to)) {
            string = context.getString(R.string.comment_item_content_2, from, to, msg);
            int iIndexOf = string.indexOf(from);
            int length = iIndexOf + from.length();
            int iIndexOf2 = iArr2[0] + string.substring(length).indexOf(to);
            iArr = new int[]{iIndexOf, iIndexOf2};
            iArr2 = new int[]{length, iIndexOf2 + to.length()};
        } else {
            string = context.getString(R.string.comment_item_content_1, from, msg);
            int iIndexOf3 = string.indexOf(from);
            iArr[0] = iIndexOf3;
            iArr2[0] = iIndexOf3 + from.length();
        }
        SpannableString spannableString = new SpannableString(string);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#2a72cb")), iArr[i10], iArr2[i10], 33);
        }
        if (string.contains("#*#")) {
            ImageSpan imageSpan = new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon));
            String[] strArrSplit = string.split("#\\*#");
            if (strArrSplit.length > 1) {
                spannableString.setSpan(imageSpan, strArrSplit[0].length(), strArrSplit[0].length() + 3, 33);
                if (strArrSplit.length > 2) {
                    spannableString.setSpan(new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon)), string.indexOf(strArrSplit[1]) + strArrSplit[1].length(), string.indexOf(strArrSplit[1]) + strArrSplit[1].length() + 3, 33);
                }
            }
        }
        textView.setText(spannableString);
    }

    public static String v(ForumData.HomepageRecommendGroup data) {
        return JsonMapper.nonDefaultMapper().toJson(data);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void v0(Context context, ForumBean.ForumPostsBean forumPostsBean) {
        ((ForumPostsActivity_.m1) ForumPostsActivity_.intent(context).extra(ForumPostsActivity.KEY_FORUM_POSTS_BEAN, JsonMapper.getInstance().toJson(forumPostsBean))).startForResult(3);
    }

    public static void v1(TextView textView, String from, int fromVip, int fromSVip, String to, int toVip, int toSVip, String msg) {
        String string;
        Context context = textView.getContext();
        textView.setGravity(16);
        int[] iArr = new int[1];
        int[] iArr2 = new int[1];
        if (t2.i(to)) {
            string = context.getString(R.string.comment_item_content_2, from, to, msg);
            int iIndexOf = string.indexOf(from);
            int length = iIndexOf + from.length();
            int iIndexOf2 = iArr2[0] + string.substring(length).indexOf(to);
            iArr = new int[]{iIndexOf, iIndexOf2};
            iArr2 = new int[]{length, iIndexOf2 + to.length()};
        } else {
            string = context.getString(R.string.comment_item_content_1, from, msg);
            int iIndexOf3 = string.indexOf(from);
            iArr[0] = iIndexOf3;
            iArr2[0] = iIndexOf3 + from.length();
        }
        SpannableString spannableString = new SpannableString(string);
        for (int i10 = 0; i10 < iArr.length; i10++) {
            int color = Color.parseColor("#2a72cb");
            if (i10 == 0) {
                if (fromVip > 0) {
                    color = Color.parseColor("#ff0000");
                }
                if (fromSVip > 0) {
                    color = Color.parseColor("#f6c004");
                }
            } else {
                if (toVip > 0) {
                    color = Color.parseColor("#ff0000");
                }
                if (toSVip > 0) {
                    color = Color.parseColor("#f6c004");
                }
            }
            spannableString.setSpan(new ForegroundColorSpan(color), iArr[i10], iArr2[i10], 33);
        }
        if (string.contains("#*#")) {
            ImageSpan imageSpan = new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon));
            String[] strArrSplit = string.split("#\\*#");
            if (strArrSplit.length > 1) {
                spannableString.setSpan(imageSpan, strArrSplit[0].length(), strArrSplit[0].length() + 3, 33);
                if (strArrSplit.length > 2) {
                    spannableString.setSpan(new ImageSpan(textView.getContext(), BitmapFactory.decodeResource(textView.getContext().getResources(), R.drawable.official_icon)), string.indexOf(strArrSplit[1]) + strArrSplit[1].length(), string.indexOf(strArrSplit[1]) + strArrSplit[1].length() + 3, 33);
                }
            }
        }
        textView.setText(spannableString);
    }

    public static String w(ForumRequestBean.ForumPostsPraiseRequestBean bean) {
        return JsonMapper.nonDefaultMapper().toJson(bean);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void w0(Context context, ForumBean.ForumPostsBean forumPostsBean, ExtBean extBean) {
        ((ForumPostsActivity_.m1) ForumPostsActivity_.intent(context).extra(ForumPostsActivity.KEY_FORUM_POSTS_BEAN, JsonMapper.nonDefaultMapper().toJson(forumPostsBean))).a(extBean).startForResult(3);
    }

    public static void w1(TextView tv2, String message, boolean best, boolean ask, String moneyForAnswer, List<ForumBean.ForumPostsBean.TagInfo> tagInfos) {
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        h(tv2.getContext(), spannableStringBuilder, tagInfos);
        g(tv2, spannableStringBuilder, best, ask, moneyForAnswer);
        spannableStringBuilder.append((CharSequence) message);
        tv2.setText(spannableStringBuilder);
    }

    public static String x(List<ForumBean> bean) {
        return JsonMapper.nonDefaultMapper().toJson(bean);
    }

    public static void x0(Context context) {
        ForumProfileCommentActivity_.intent(context).start();
    }

    public static void x1(ListView listView, int height) {
        ViewGroup.LayoutParams layoutParams = listView.getLayoutParams();
        layoutParams.height = height;
        listView.setLayoutParams(layoutParams);
    }

    public static ResponseDownloadCenterAd y(String arg) {
        return (ResponseDownloadCenterAd) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ResponseDownloadCenterAd.class, new Class[0]));
    }

    public static void y0(Context context) {
        ForumProfileFavoritesActivity_.intent(context).start();
    }

    public static void y1(ListView listView) {
        ListAdapter adapter;
        if (listView == null || (adapter = listView.getAdapter()) == null || adapter.getCount() == 0) {
            return;
        }
        int measuredHeight = 0;
        for (int i10 = 0; i10 < adapter.getCount(); i10++) {
            View view = adapter.getView(i10, null, listView);
            view.measure(0, 0);
            measuredHeight += view.getMeasuredHeight();
        }
        x1(listView, measuredHeight + (listView.getDividerHeight() * (adapter.getCount() - 1)));
    }

    public static ForumBannerBean.ForumBannerDataBannerBean z(String arg) {
        return (ForumBannerBean.ForumBannerDataBannerBean) JsonMapper.getInstance().fromJson(arg, JsonMapper.getInstance().createCollectionType(ForumBannerBean.ForumBannerDataBannerBean.class, new Class[0]));
    }

    public static void z0(Context context) {
        ForumProfileMessageActivity_.intent(context).start();
    }

    public static void z1(final TextView mTextView, final int maxLines, final SpannableStringBuilder content) {
        mTextView.getViewTreeObserver().addOnGlobalLayoutListener(new d(mTextView, content, maxLines));
    }

    public void a1(List<ForumBean> forums) {
        LinkedList<j> linkedList = this.f49999a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().a(forums);
        }
    }

    public void b(j observer) {
        if (this.f49999a == null) {
            this.f49999a = new LinkedList<>();
        }
        if (this.f49999a.contains(observer)) {
            return;
        }
        this.f49999a.add(observer);
    }

    public void b1(int count) {
        LinkedList<j> linkedList = this.f49999a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().b(count);
        }
    }

    public void c1(ForumBean.ForumProfilePostUserInfoBean bean) {
        LinkedList<j> linkedList = this.f49999a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().c(bean);
        }
    }

    public void d1(int statusCode) {
        LinkedList<j> linkedList = this.f49999a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().d(statusCode);
        }
    }

    public void e1(ForumData.ForumPostsSubmitData data) {
        LinkedList<j> linkedList = this.f49999a;
        if (linkedList == null) {
            return;
        }
        Iterator<j> it2 = linkedList.iterator();
        while (it2.hasNext()) {
            it2.next().e(data);
        }
    }

    public void j1(j observer) {
        LinkedList<j> linkedList = this.f49999a;
        if (linkedList == null) {
            return;
        }
        linkedList.remove(observer);
    }
}
