package com.join.mgps.activity;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.LightingColorFilter;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.media.MediaPlayer;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.AnimationUtils;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.Spinner;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import android.widget.Toast;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.BaseAppCompatActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.donkingliang.consecutivescroller.ConsecutiveScrollerLayout;
import com.facebook.drawee.view.SimpleDraweeView;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.common.view.ClearEditText;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.component.video.MediaController;
import com.join.android.app.component.video.MyVideoView;
import com.join.android.app.component.xrecyclerview.XQuickRecyclerView;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.HtmlDocUtil;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.RequestBeanUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.activity.posting.PostingActivity;
import com.join.mgps.adapter.ForumCommentAdapter;
import com.join.mgps.adapter.ForumPostsAdapter;
import com.join.mgps.customview.BaiduAdBannerRelativeLayout;
import com.join.mgps.customview.CustomLoadingView;
import com.join.mgps.customview.ForumStickView;
import com.join.mgps.customview.KeyboardListenLayout;
import com.join.mgps.customview.RewardType;
import com.join.mgps.customview.VipView;
import com.join.mgps.customview.WrapContentGridView;
import com.join.mgps.dto.AccountResultMainBean;
import com.join.mgps.dto.AccountTokenSuccess;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.DetailResultBean;
import com.join.mgps.dto.ExtBean;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.RecommendLabelTag;
import com.join.mgps.dto.ResultMainBean;
import com.join.mgps.dto.TouristLoginRequestBean;
import com.join.mgps.pref.PrefDef_;
import com.wufan.user.service.protobuf.UserInfo;
import fm.jiecao.jcvideoplayer_lib.JCVideoPlayer;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.WindowFeature;
import org.androidannotations.annotations.res.StringRes;
import org.greenrobot.eventbus.Subscribe;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: loaded from: classes4.dex */
@WindowFeature({10})
@EActivity(R.layout.mg_forum_post_activity)
public class ForumPostsActivity extends BaseAppCompatActivity implements ForumStickView.e {
    public static final String KEY_FORUM_POSTS_BEAN = ForumPostsActivity.class.getSimpleName() + "key_forum_posts_bean";
    public static final String KEY_MEDIACMD = "key_mediacmd";
    public static final String KEY_MEDIACMDPARAMS = "key_mediacmd_params";
    private static final int MAX_POSTS_IMAGE = 9;
    public static final int RESULT_CODE_POST_INFO = 3;
    private static final String TAG = "ForumPostsActivity";

    @ViewById
    RelativeLayout actionbarLayout;
    private BaiduAdBannerRelativeLayout adView;

    @ViewById
    ImageView back_image;

    @ViewById
    Button btn_chat_extension;

    @ViewById
    Button btn_chat_praise;

    @ViewById
    Button btn_chat_send;

    @ViewById
    Button btn_chat_star;

    @ViewById
    View chat_layout_extension;

    @ViewById
    LinearLayout chat_layout_extension_container;

    @ViewById
    LinearLayout chat_layout_more;

    @ViewById
    TextView copperTitleTv;

    @ViewById
    SimpleDraweeView cover;
    String coverUrl;

    @ViewById
    ConsecutiveScrollerLayout csl_view;
    private int curCid;
    private String curMessage;
    private int curPid;
    private int curRid;
    private int dialog4Event;

    @ViewById
    TextView edit_comment_count;

    @ViewById
    ClearEditText edit_user_comment;

    @Extra
    ExtBean extBean;

    @ViewById
    TextView footer_tip;
    private com.join.mgps.dialog.x0 forumDialog;
    private com.join.mgps.dialog.x0 forumDialog4More;
    private List<ForumBean.ForumGagType> forumGagType;
    private com.join.mgps.dialog.y0 forumLoadingDialog;
    ForumBean.ForumPostsBean forumPostsBean;

    @ViewById
    Button forum_post_host;

    @ViewById
    ImageView forum_post_moderator;

    @ViewById
    TextView forum_post_nickname;

    @ViewById
    TextView forum_post_stickie;

    @ViewById
    ForumStickView fsv_stick;
    ForumBean.GameInfo gameInfo;
    b0 gridAdapter;
    WrapContentGridView gridView;
    ForumPostsAdapter headAdapter;
    List<ForumPostsAdapter.e0> headData;
    com.join.android.app.component.video.c helper;

    @ViewById
    ImageView image_add;

    @ViewById
    ImageView iv_more;

    @ViewById
    LinearLayout layout_chat_cell_container;

    @ViewById
    TextView layout_title;
    List<ForumCommentAdapter.z> listData;

    @ViewById
    LinearLayout loadingLayout;

    @ViewById
    CustomLoadingView loadingView;
    public RecyclerView mAbsListView;
    private a0 mForumPostsFuncWindow;
    boolean mFullScreenFlag;
    public com.join.mgps.recycler.c mItemsPositionGetter;
    f0 mPicsAdapter;
    e0 mPostGagDialog;
    private com.join.mgps.dialog.a2 mPrePostingHintDialog;
    List<String> mSelectedImages;

    @ViewById
    HListView matchListView;
    MediaController mediaController;

    @ViewById
    TextView member_honor;

    @ViewById
    TextView moderator;
    LinearLayout moreFuncBest;
    ImageView moreFuncBestImg;
    View moreFuncBlock1;
    View moreFuncBlock2;
    LinearLayout moreFuncDelete;
    LinearLayout moreFuncFavorite;
    ImageView moreFuncFavoriteImg;
    LinearLayout moreFuncReport;
    View moreFuncRow2;
    LinearLayout moreFuncShare;
    ImageView moreFuncShareImg;
    LinearLayout moreFuncSort;
    ImageView moreFuncSortImg;

    @StringRes(resName = "connect_server_excption")
    String netConnectException;

    @StringRes(resName = "net_excption")
    String netExcption;
    ForumCommentAdapter newAdapter;

    @ViewById
    ImageView officialIcon;

    @ViewById
    ImageView play;

    @ViewById
    TextView postFuncHost;

    @ViewById
    LinearLayout postFuncMore;

    @ViewById
    LinearLayout postFunction;
    private com.join.mgps.rpc.e recommendClient;

    @ViewById
    RelativeLayout rl_comment_count;
    com.join.mgps.rpc.b rpcAccountClient;
    com.join.mgps.rpc.i rpcForumClient;

    @ViewById
    XQuickRecyclerView rv_comment_list;

    @ViewById
    RecyclerView rv_head;

    @ViewById
    SimpleDraweeView sdv_head;
    g0 sortPopWindow;

    @ViewById
    MyVideoView video;

    @ViewById
    FrameLayout videoContainer;
    int videoIndex;

    @ViewById
    RelativeLayout videoLayout;
    String videoUrl;

    @ViewById
    View view_empty;

    @ViewById
    VipView vipFlag;
    final String COMMENT_ORDER_ASC = "asc";
    final String COMMENT_ORDER_DESC = "desc";
    int see_lz = 0;
    String comment_order = "asc";
    private final int EVENT_COMMENT = 1;
    private final int EVENT_COMMENT_REPLY = 2;
    private final int EVENT_COMMENT_REPLY_REPLY = 4;
    private final int EVENT_DELETE_COMMENT = 17;
    private final int EVENT_DELETE_COMMENT_REPLY = 18;
    private final int EVENT_DELETE_COMMENT_REPLY_REPLY = 20;
    private final int EVENT_REPORT_COMMENT = 33;
    private final int EVENT_REPORT_COMMENT_REPLY = 34;
    private final int EVENT_REPORT_COMMENT_REPLY_REPLY = 36;
    private int curEventType = 1;
    ForumCommentAdapter.w forumPostsOnClickListener = new k();
    private int pageCount = 0;
    private int loadingPage = 0;
    private final int LOADING = 0;
    private final int LOADING_FAILED = 16;
    private final int LOADING_SUCCESS = 32;
    private final int LOADING_NETWORK_FAILED = 17;
    private final int LOADING_DB_FAILED = 18;
    private final int LOADING_SRV_INFO_DELETED = 20;
    private final int LOADING_SRV_POSTS_FAILED = 24;
    private int loadingState = 0;
    int toggleSendOn = 0;
    private net.bither.util.b.e mCompressListener = new s();
    private boolean isShowKeyboard = false;
    boolean isShowInputExtensionFunction = false;
    boolean isShowInputExtensionBoard = false;
    List<RecommendLabelTag> selectedItems = new ArrayList();
    private final PostingActivity.m mPostingCallback = new e();
    volatile boolean isPreLoading = false;
    View.OnClickListener moreFuncListener = new f();
    boolean doingForumPostFavorite = false;
    com.join.mgps.customview.e.d iForumExtFuncListener = new l();
    boolean doingForumPostReport = false;
    boolean doingReport = false;
    boolean doingForumPostDelete = false;
    boolean doingForumPostBest = false;
    int currentPlayPosition = -1;
    int playPositionOffset = 0;
    boolean isActive = false;
    int mTop = -1;
    int mOffsetY = -1;
    int videoDefaultHeight = 0;
    com.join.mgps.customview.t mDialog = null;
    private Map<String, DownloadTask> downloadTasksMap = new ConcurrentHashMap();
    Map<String, DownloadTask> downloadedMap = new HashMap();
    Map<String, DownloadTask> downloadingMap = new HashMap();
    private List<DownloadTask> downloadTasks = new ArrayList();
    int getGameDownloadInfoStatus = 0;
    boolean downloadGameWhenInfoGotcha = false;
    boolean doingAddTags = false;
    boolean doingRemoveTags = false;
    boolean doingSetFirstPost = false;
    boolean doingPostGag = false;
    public int firstVisible = 0;
    public int visibleCount = 0;
    public int totalCount = 0;

    public enum MediaCmd {
        CMD_PLAY,
        CMD_PLAY_BACKGROUND,
        CMD_PAUSE,
        CMD_STOP,
        CMD_FULLSCREEN,
        CMD_TRANSLATE_Y
    }

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51569b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f51570c;

        a(final int val$pid, final int val$rid) {
            this.f51569b = val$pid;
            this.f51570c = val$rid;
        }

        private void a(int pid) {
            ForumPostsActivity.this.doForumPostReport(pid, 0);
        }

        private void b(int rid) {
            ForumPostsActivity.this.doForumPostReport(0, rid);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (ForumPostsActivity.this.curEventType == 17) {
                ForumPostsActivity.this.deleteComment(this.f51569b);
            } else if (ForumPostsActivity.this.curEventType == 18 || ForumPostsActivity.this.curEventType == 20) {
                ForumPostsActivity.this.deleteCommentReply(this.f51570c);
            } else if (ForumPostsActivity.this.curEventType == 33) {
                a(this.f51569b);
            } else if (ForumPostsActivity.this.curEventType == 34 || ForumPostsActivity.this.curEventType == 36) {
                b(this.f51570c);
            }
            ForumPostsActivity.this.forumDialog.dismiss();
        }
    }

    public class a0 extends PopupWindow {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Context f51572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final View f51573b;

        class a implements View.OnTouchListener {
            a() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (event.getAction() != 4) {
                    return false;
                }
                a0.this.dismiss();
                return true;
            }
        }

        public a0(Context context, View parent, int width, int height) {
            super(parent, width, height, true);
            this.f51572a = context;
            this.f51573b = parent;
            b();
            a();
        }

        private void a() {
        }

        private void b() {
            setBackgroundDrawable(new BitmapDrawable());
            setTouchable(true);
            setOutsideTouchable(true);
            setTouchInterceptor(new a());
        }
    }

    class b implements f0.c {
        b() {
        }

        @Override // com.join.mgps.activity.ForumPostsActivity.f0.c
        public void a(int position, String path) {
            ForumPostsActivity.this.mSelectedImages.remove(position);
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.mPicsAdapter.c(forumPostsActivity.mSelectedImages);
            ForumPostsActivity.this.mPicsAdapter.notifyDataSetChanged();
        }

        @Override // com.join.mgps.activity.ForumPostsActivity.f0.c
        public void b() {
            ForumPostsActivity.this.goMyAlbumActivity4PickPic();
        }
    }

    class b0 extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<c0> f51577b = new ArrayList();

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.setFirstPost();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.doForumPostFavorite();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.doForumPostShare();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class d implements View.OnClickListener {
            d() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws Throwable {
                ForumPostsActivity.this.postFuncSort();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class e implements View.OnClickListener {
            e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) throws Throwable {
                ForumPostsActivity.this.postFuncSort();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class f implements View.OnClickListener {
            f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.doForumPostReport();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class g implements View.OnClickListener {
            g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.dialog4Event = R.id.extFuncDelete;
                ForumPostsActivity.this.showPromptDialog();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class h implements View.OnClickListener {
            h() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.dialog4Event = R.id.extFuncBest;
                ForumPostsActivity.this.showPromptDialog();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class i implements View.OnClickListener {
            i() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.doForumTagsAdd();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        class j implements View.OnClickListener {
            j() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                ForumPostsActivity.this.doForumTagsDel();
                ForumPostsActivity.this.dismissFuncWindow();
            }
        }

        public b0() {
        }

        public List<c0> a(c0 bean) {
            if (bean == null) {
                return this.f51577b;
            }
            if (this.f51577b == null) {
                this.f51577b = new ArrayList();
            }
            this.f51577b.add(bean);
            return this.f51577b;
        }

        public List<c0> b() {
            return this.f51577b;
        }

        public void c(List<c0> beans) {
            this.f51577b = beans;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<c0> list = this.f51577b;
            if (list != null) {
                return list.size();
            }
            return 0;
        }

        @Override // android.widget.Adapter
        public Object getItem(int i10) {
            List<c0> list = this.f51577b;
            if (list != null) {
                return list.get(i10);
            }
            return null;
        }

        @Override // android.widget.Adapter
        public long getItemId(int i10) {
            return i10;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getItemViewType(int position) {
            return super.getItemViewType(position);
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            d0 d0Var;
            if (view != null) {
                d0Var = (d0) view.getTag();
            } else {
                d0Var = ForumPostsActivity.this.new d0();
                view = LayoutInflater.from(ForumPostsActivity.this).inflate(R.layout.forum_posts_activity_functions_item, (ViewGroup) null);
                d0Var.f51609a = (ImageView) view.findViewById(R.id.icon);
                d0Var.f51610b = (TextView) view.findViewById(R.id.name);
                d0Var.f51611c = view.findViewById(R.id.v_divider);
                view.setTag(d0Var);
            }
            if (i10 == getCount() - 1) {
                d0Var.f51611c.setVisibility(8);
            } else {
                d0Var.f51611c.setVisibility(0);
            }
            c0 c0Var = (c0) getItem(i10);
            int i11 = c0Var.f51601a;
            if (i11 == 1) {
                d0Var.f51609a.setBackgroundResource(c0Var.f51603c ? R.drawable.more_func_favorite_selected : R.drawable.more_func_favorite);
                d0Var.f51610b.setText("收藏");
                view.setOnClickListener(new b());
            } else if (i11 == 2) {
                d0Var.f51609a.setBackgroundResource(R.drawable.ic_forum_post_share);
                d0Var.f51610b.setText("分享");
                view.setOnClickListener(new c());
            } else if (i11 == 3) {
                d0Var.f51609a.setBackgroundResource(R.drawable.more_func_alphabet);
                d0Var.f51610b.setText("倒序查看");
                view.setOnClickListener(new d());
            } else if (i11 == 4) {
                d0Var.f51609a.setBackgroundResource(R.drawable.more_func_alphabet_selected);
                d0Var.f51610b.setText("正序查看");
                view.setOnClickListener(new e());
            } else if (i11 == 5) {
                d0Var.f51609a.setBackgroundResource(R.drawable.ic_forum_post_report);
                d0Var.f51610b.setText("举报");
                view.setOnClickListener(new f());
            } else if (i11 == 6) {
                d0Var.f51609a.setBackgroundResource(R.drawable.ic_forum_post_delete);
                d0Var.f51610b.setText("删帖");
                view.setOnClickListener(new g());
            } else if (i11 == 7) {
                d0Var.f51609a.setBackgroundResource(c0Var.f51604d ? R.drawable.more_func_best_pressed : R.drawable.more_func_best_default);
                d0Var.f51610b.setText("加精");
                view.setOnClickListener(new h());
            } else if (i11 == 8) {
                d0Var.f51609a.setBackgroundResource(R.drawable.more_func_tag_add);
                d0Var.f51610b.setText("收录至话题");
                view.setOnClickListener(new i());
            } else if (i11 == 9) {
                d0Var.f51609a.setBackgroundResource(R.drawable.ic_forum_post_delete);
                d0Var.f51610b.setText("移除话题");
                view.setOnClickListener(new j());
            } else if (i11 == 10) {
                d0Var.f51609a.setBackgroundResource(c0Var.f51605e ? R.drawable.more_func_first_selected : R.drawable.more_func_first_default);
                d0Var.f51610b.setText("置顶");
                view.setOnClickListener(new a());
            }
            return view;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public int getViewTypeCount() {
            return super.getViewTypeCount();
        }
    }

    class c implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ForumPostsAdapter.e0.i f51589b;

        c(final ForumPostsAdapter.e0.i val$item) {
            this.f51589b = val$item;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            CommentSelfListActivity_.intent(view.getContext()).a(this.f51589b.f59582b).start();
        }
    }

    class c0 {

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public static final int f51591g = 1;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final int f51592h = 2;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public static final int f51593i = 3;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public static final int f51594j = 4;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static final int f51595k = 5;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static final int f51596l = 6;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final int f51597m = 7;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public static final int f51598n = 8;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final int f51599o = 9;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final int f51600p = 10;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f51601a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public String f51602b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f51603c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f51604d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f51605e;

        c0() {
        }
    }

    class d implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f51607b;

        d(final int val$gagUid) {
            this.f51607b = val$gagUid;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ForumCommentAdapter.w wVar;
            CommentSelfListActivity_.intent(view.getContext()).a(this.f51607b).start();
            String uid = AccountUtil_.getInstance_(view.getContext()).getUid();
            if (TextUtils.isEmpty(uid)) {
                return;
            }
            if (uid.equals(this.f51607b + "") || (wVar = ForumPostsActivity.this.forumPostsOnClickListener) == null) {
                return;
            }
            wVar.m(this.f51607b);
        }
    }

    class d0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ImageView f51609a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public TextView f51610b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public View f51611c;

        d0() {
        }
    }

    class e implements PostingActivity.m {
        e() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int value) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int type) {
            if (type == 4355) {
                IntentUtil.getInstance().goShareWebActivity(ForumPostsActivity.this, com.join.mgps.rpc.h.f72385t);
            } else {
                if (type != 4356) {
                    return;
                }
                IntentUtil.getInstance().goShareWebActivity(ForumPostsActivity.this, com.join.mgps.rpc.h.f72382s);
            }
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(int type) {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int type) {
            ForumPostsActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(GroupInfoBean groupInfoBean) {
        }
    }

    class e0 extends Dialog implements View.OnClickListener, AdapterView.OnItemSelectedListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<ForumBean.ForumGagType> f51614b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        h0<ForumBean.ForumGagType> f51615c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        Spinner f51616d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        EditText f51617e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private String f51618f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        int f51619g;

        public e0(Context context) {
            super(context, R.style.dialog_error);
            this.f51619g = -1;
            View viewInflate = LayoutInflater.from(context).inflate(R.layout.mg_forum_post_gag_dialog, (ViewGroup) null);
            setContentView(viewInflate);
            setCancelable(true);
            setCanceledOnTouchOutside(false);
            viewInflate.measure(0, 0);
            this.f51616d = (Spinner) com.join.mgps.Util.n3.b(viewInflate, R.id.spinner);
            this.f51617e = (EditText) com.join.mgps.Util.n3.b(viewInflate, R.id.txt);
            Button button = (Button) com.join.mgps.Util.n3.b(viewInflate, R.id.dialog_button_ok);
            Button button2 = (Button) com.join.mgps.Util.n3.b(viewInflate, R.id.dialog_button_cancle);
            this.f51617e.setMinHeight(this.f51616d.getMeasuredHeight());
            button.setOnClickListener(this);
            button2.setOnClickListener(this);
            this.f51616d.setOnItemSelectedListener(this);
            h0<ForumBean.ForumGagType> h0Var = ForumPostsActivity.this.new h0<>(getContext(), R.layout.mg_forum_post_gag_spinner_item);
            this.f51615c = h0Var;
            this.f51616d.setAdapter((SpinnerAdapter) h0Var);
        }

        public void a(String guid) {
            this.f51618f = guid;
        }

        public void b(List<ForumBean.ForumGagType> types) {
            if (this.f51614b == null) {
                this.f51614b = new ArrayList();
            }
            this.f51614b.clear();
            this.f51614b.addAll(types);
            if (this.f51615c == null) {
                h0<ForumBean.ForumGagType> h0Var = ForumPostsActivity.this.new h0<>(getContext(), R.layout.mg_forum_post_gag_spinner_item);
                this.f51615c = h0Var;
                this.f51616d.setAdapter((SpinnerAdapter) h0Var);
            }
            this.f51615c.clear();
            ForumBean.ForumGagType forumGagType = new ForumBean.ForumGagType();
            forumGagType.setType(-1);
            forumGagType.setName("设置禁言时间");
            this.f51615c.add(forumGagType);
            this.f51615c.addAll(this.f51614b);
            this.f51615c.notifyDataSetChanged();
        }

        @Override // android.app.Dialog, android.content.DialogInterface
        public void dismiss() {
            this.f51619g = -1;
            super.dismiss();
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id2 = view.getId();
            if (id2 != R.id.dialog_button_ok) {
                if (id2 == R.id.dialog_button_cancle) {
                    dismiss();
                    return;
                }
                return;
            }
            String string = this.f51617e.getText().toString();
            if (TextUtils.isEmpty(string)) {
                com.join.mgps.Util.a3.b(getContext()).d("请填写禁言理由");
                return;
            }
            Spinner spinner = this.f51616d;
            int selectedItemPosition = spinner != null ? spinner.getSelectedItemPosition() : 0;
            h0<ForumBean.ForumGagType> h0Var = this.f51615c;
            if (h0Var != null && selectedItemPosition < h0Var.getCount()) {
                ForumBean.ForumGagType forumGagType = (ForumBean.ForumGagType) this.f51615c.getItem(selectedItemPosition);
                if (forumGagType.getType() == -1) {
                    com.join.mgps.Util.a3.b(getContext()).d("请选择禁言时间");
                    return;
                }
                this.f51619g = forumGagType.getType();
            }
            ForumPostsActivity.this.postGag(this.f51618f, this.f51619g, string);
            dismiss();
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int pos, long id2) {
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) throws Throwable {
            switch (v10.getId()) {
                case R.id.moreFuncBest /* 2131366026 */:
                    ForumPostsActivity.this.dialog4Event = R.id.extFuncBest;
                    ForumPostsActivity.this.showPromptDialog();
                    break;
                case R.id.moreFuncDelete /* 2131366028 */:
                    ForumPostsActivity.this.dialog4Event = R.id.extFuncDelete;
                    ForumPostsActivity.this.showPromptDialog();
                    break;
                case R.id.moreFuncFavorite /* 2131366030 */:
                    ForumPostsActivity.this.doForumPostFavorite();
                    break;
                case R.id.moreFuncReport /* 2131366032 */:
                    ForumPostsActivity.this.doForumPostReport();
                    break;
                case R.id.moreFuncShare /* 2131366034 */:
                    ForumPostsActivity.this.doForumPostShare();
                    break;
                case R.id.moreFuncSort /* 2131366036 */:
                    ForumPostsActivity.this.postFuncSort();
                    break;
            }
            if (ForumPostsActivity.this.mForumPostsFuncWindow.isShowing()) {
                ForumPostsActivity.this.mForumPostsFuncWindow.dismiss();
            }
        }
    }

    static class f0 extends BaseAdapter {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final String f51622f = "add_image";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Context f51624c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private c f51626e;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f51625d = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f51623b = new ArrayList();

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                f0 f0Var = f0.this;
                if (f0Var.f51625d) {
                    return;
                }
                f0Var.f51625d = true;
                if (f0Var.f51626e != null) {
                    f0.this.f51626e.b();
                }
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f51628b;

            b(final int val$position) {
                this.f51628b = val$position;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (f0.this.f51626e != null) {
                    c cVar = f0.this.f51626e;
                    int i10 = this.f51628b;
                    cVar.a(i10, (String) f0.this.getItem(i10));
                }
            }
        }

        public interface c {
            void a(int position, String path);

            void b();
        }

        class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ImageView f51630a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ImageView f51631b;

            d() {
            }
        }

        public f0(Context context) {
            this.f51624c = context;
        }

        private ImageLoader b() {
            return ImageLoader.r(3, ImageLoader.Type.LIFO);
        }

        private void e(View parent, View view) {
            float f10 = this.f51624c.getResources().getDisplayMetrics().density;
            int i10 = (int) (this.f51624c.getResources().getDisplayMetrics().scaledDensity * 200.0f);
            int i11 = (this.f51624c.getResources().getDisplayMetrics().widthPixels / 4) - 10;
            view.setLayoutParams(new AbsHListView.LayoutParams(i11, -1));
            ((ViewGroup) view).getChildAt(0).setLayoutParams(new LinearLayout.LayoutParams(i11, i11));
            parent.setLayoutParams(new LinearLayout.LayoutParams(-1, i10));
        }

        public void c(List<String> arg) {
            if (this.f51623b == null) {
                this.f51623b = new ArrayList();
            }
            this.f51623b.clear();
            this.f51623b.addAll(arg);
            if (arg.size() < 9) {
                this.f51623b.add(f51622f);
            }
        }

        public void d(boolean isStartPickPic) {
            this.f51625d = isStartPickPic;
        }

        public void f(c l10) {
            this.f51626e = l10;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f51623b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            List<String> list = this.f51623b;
            if (list == null) {
                return null;
            }
            return list.get(position);
        }

        @Override // android.widget.Adapter
        public long getItemId(int position) {
            return position;
        }

        @Override // android.widget.Adapter
        public View getView(final int position, View convertView, ViewGroup parent) {
            d dVar;
            try {
                if (convertView != null) {
                    dVar = (d) convertView.getTag();
                } else {
                    convertView = LayoutInflater.from(this.f51624c).inflate(R.layout.forum_post_pic_item, (ViewGroup) null);
                    dVar = new d();
                    dVar.f51630a = (ImageView) convertView.findViewById(R.id.image);
                    dVar.f51631b = (ImageView) convertView.findViewById(R.id.image_delete);
                    convertView.setTag(dVar);
                }
                dVar.f51630a.setOnClickListener(null);
                dVar.f51631b.setVisibility(0);
                if (position == getCount() - 1 && this.f51623b.get(position).equals(f51622f)) {
                    dVar.f51631b.setVisibility(8);
                    dVar.f51630a.setImageResource(R.drawable.pic_add);
                    dVar.f51630a.setOnClickListener(new a());
                } else {
                    b().v(this.f51623b.get(position), dVar.f51630a);
                    dVar.f51631b.setOnClickListener(new b(position));
                }
                e(parent, convertView);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            super.notifyDataSetChanged();
        }
    }

    class g implements PopupWindow.OnDismissListener {
        g() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = ForumPostsActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            ForumPostsActivity.this.getWindow().setAttributes(attributes);
        }
    }

    class h implements PopupWindow.OnDismissListener {
        h() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            WindowManager.LayoutParams attributes = ForumPostsActivity.this.getWindow().getAttributes();
            attributes.alpha = 1.0f;
            ForumPostsActivity.this.getWindow().setAttributes(attributes);
        }
    }

    class h0<T> extends ArrayAdapter<ForumBean.ForumGagType> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f51642b;

        public h0(@LayoutRes Context context, int resource) {
            super(context, resource);
            this.f51642b = resource;
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
            ForumBean.ForumGagType forumGagType = (ForumBean.ForumGagType) getItem(position);
            View viewInflate = ForumPostsActivity.this.getLayoutInflater().inflate(this.f51642b, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(android.R.id.text1);
            if (textView != null) {
                textView.setText(forumGagType.getName());
            }
            return viewInflate;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @NonNull
        public View getView(int position, @Nullable View convertView, @NonNull ViewGroup parent) {
            ForumBean.ForumGagType forumGagType = (ForumBean.ForumGagType) getItem(position);
            View viewInflate = ForumPostsActivity.this.getLayoutInflater().inflate(this.f51642b, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(android.R.id.text1);
            if (textView != null) {
                textView.setText(forumGagType.getName());
            }
            return viewInflate;
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumPostsActivity.this.dialog4Event = -1;
            ForumPostsActivity.this.forumDialog4More.dismiss();
        }
    }

    class j implements View.OnClickListener {
        j() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumPostsActivity.this.excePositiveClick();
            ForumPostsActivity.this.forumDialog4More.dismiss();
        }
    }

    class k implements ForumCommentAdapter.w {
        k() {
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void a(int pid) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            if (!com.join.mgps.Util.r0.Y0(forumPostsActivity)) {
                com.join.mgps.Util.a3.b(forumPostsActivity).d("用户未登录，请登录");
                com.join.mgps.Util.r0.L0(forumPostsActivity);
            } else if (ForumPostsActivity.this.validAccount()) {
                ForumPostsActivity.this.reversePraise();
                ForumPostsActivity.this.praisePosts();
            } else {
                ForumPostsActivity.this.showSendPromptDialog(-1);
                ForumPostsActivity.this.showDialog();
            }
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void b(int pid) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.show(forumPostsActivity.forumPostsBean);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void c(int position) {
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void d(int cid) {
            ForumPostsActivity.this.curEventType = 17;
            ForumPostsActivity.this.showPromptDialog(cid, 0);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void e(String gameId) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.downloadGameWhenInfoGotcha = true;
            forumPostsActivity.downloadGameById(gameId);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void f(int rid) {
            ForumPostsActivity.this.doForumPostReport(0, rid);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void g(View v10, int rid) {
            ForumPostsActivity.this.hideExtensionFunction(true);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void h(int rid) {
            ForumPostsActivity.this.curEventType = 18;
            ForumPostsActivity.this.showPromptDialog(0, rid);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void i(int cid, String cNickname) {
            q(cid, cNickname);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void j(int cid) {
            ForumPostsActivity.this.doForumPostReport(cid, 0);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void k(int cid, int rid, String rNickname) {
            ForumPostsActivity.this.hideExtensionFunction(true);
            ForumPostsActivity.this.curEventType = 4;
            ForumPostsActivity.this.curCid = cid;
            ForumPostsActivity.this.curRid = rid;
            ForumPostsActivity.this.edit_user_comment.setText("");
            ForumPostsActivity.this.edit_user_comment.requestFocus();
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.showSystemKeyBoard(forumPostsActivity.edit_user_comment);
            ForumPostsActivity.this.edit_user_comment.setHint("回复" + rNickname + ":");
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void l() {
            ForumPostsActivity.this.doForumPostReport();
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void m(int gagUid) {
            ForumPostsActivity.this.showPostGagDialog(gagUid);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void n() {
            ForumPostsActivity.this.clearCommentMessage();
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void o(int cid) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.helpSolvePosts(forumPostsActivity.forumPostsBean.getPid(), cid);
        }

        @Override // com.join.mgps.adapter.ForumCommentAdapter.w
        public void p(View v10, int cid) {
            ForumPostsActivity.this.hideExtensionFunction(true);
        }

        @UiThread
        void q(int cid, String cNickname) {
            ForumPostsActivity.this.curEventType = 2;
            ForumPostsActivity.this.curCid = cid;
            ForumPostsActivity.this.curRid = 0;
            ForumPostsActivity.this.hideExtensionFunction(true);
            ForumPostsActivity.this.edit_user_comment.setText("");
            ForumPostsActivity.this.edit_user_comment.setHint("回复" + cNickname + ":");
            ForumPostsActivity.this.edit_user_comment.requestFocus();
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.showSystemKeyBoard(forumPostsActivity.edit_user_comment);
        }
    }

    class l implements com.join.mgps.customview.e.d {
        l() {
        }

        @Override // com.join.mgps.customview.e.d
        public void a(int pid) {
        }

        @Override // com.join.mgps.customview.e.d
        public void b(ForumBean.ForumPostsBean bean) {
        }

        @Override // com.join.mgps.customview.e.d
        public void c(ForumBean.ForumPostsBean bean) {
            ForumBean.ForumPostsBean forumPostsBean = ForumPostsActivity.this.forumPostsBean;
            if (forumPostsBean != null) {
                forumPostsBean.setIs_favorite(bean.is_favorite());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void d(int pid, boolean success) {
            if (success) {
                ForumPostsActivity.this.finishM();
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void e(ForumBean.ForumPostsBean bean) {
            ForumBean.ForumPostsBean forumPostsBean = ForumPostsActivity.this.forumPostsBean;
            if (forumPostsBean != null) {
                forumPostsBean.setBest(bean.getBest());
            }
        }

        @Override // com.join.mgps.customview.e.d
        public void onCancel() {
        }
    }

    class m implements MediaPlayer.OnCompletionListener {
        m() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public void onCompletion(MediaPlayer mp) {
            ForumPostsActivity.this.playBackground(true);
        }
    }

    class n implements MediaPlayer.OnPreparedListener {
        n() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public void onPrepared(MediaPlayer mp) {
            ForumPostsActivity.this.resume();
        }
    }

    class o implements MediaPlayer.OnErrorListener {
        o() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public boolean onError(MediaPlayer mp, int what, int extra) {
            ForumPostsActivity.this.playBackground(true);
            com.join.mgps.Util.a3.b(ForumPostsActivity.this.video.getContext()).d("视频播放失败");
            return false;
        }
    }

    class p implements MyVideoView.h {
        p() {
        }

        @Override // com.join.android.app.component.video.MyVideoView.h
        public boolean a(boolean flag) {
            com.join.mgps.Util.h1.e("onScreenChanged", "fullscreen=" + flag);
            ForumPostsActivity.this.fullscreen();
            return false;
        }
    }

    class q implements View.OnClickListener {
        q() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            v10.setVisibility(8);
            ForumPostsActivity.this.resume();
        }
    }

    static /* synthetic */ class r {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f51653a;

        static {
            int[] iArr = new int[HtmlDocUtil.PostDetail.Type.values().length];
            f51653a = iArr;
            try {
                iArr[HtmlDocUtil.PostDetail.Type.Text.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f51653a[HtmlDocUtil.PostDetail.Type.Image.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f51653a[HtmlDocUtil.PostDetail.Type.Video.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f51653a[HtmlDocUtil.PostDetail.Type.RickText.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    class s implements net.bither.util.b.e {
        s() {
        }

        private void b(List<String> list) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            if (forumPostsActivity.toggleSendOn == 1) {
                forumPostsActivity.toggleSendOn = 2;
                ForumRequestBean.ForumPostsCommentRequestBean forumPostsCommentRequestBeanB0 = com.join.mgps.Util.r0.b0(forumPostsActivity, forumPostsActivity.curPid, ForumPostsActivity.this.curMessage, ForumPostsActivity.this.mSelectedImages);
                if (list != null && list.size() != 0) {
                    forumPostsCommentRequestBeanB0.setImages(list);
                }
                ForumPostsActivity.this.submitForumPostsComment(forumPostsCommentRequestBeanB0);
            }
        }

        @Override // net.bither.util.b.e
        public void a(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState) {
            List<String> list;
            if (!allFinished.booleanValue() || (list = ForumPostsActivity.this.mSelectedImages) == null || list.size() == 0) {
                b(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < ForumPostsActivity.this.mSelectedImages.size(); i10++) {
                String str = ForumPostsActivity.this.mSelectedImages.get(i10);
                int iIntValue = compressState.get(str).intValue();
                String str2 = compressMap.get(str);
                if (iIntValue == 1) {
                    arrayList.add(str2);
                }
            }
            b(arrayList);
        }
    }

    class t implements XQuickRecyclerView.g {
        t() {
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.g
        public void onLoadMore() throws Throwable {
            if (!com.join.android.app.common.utils.m.j(ForumPostsActivity.this)) {
                ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
                forumPostsActivity.showToast(forumPostsActivity.getString(R.string.net_connect_failed));
                ForumPostsActivity.this.stopXlistRefreshAndLoadMore();
            } else {
                ForumPostsActivity forumPostsActivity2 = ForumPostsActivity.this;
                forumPostsActivity2.loadForumPostsData(false, false, forumPostsActivity2.pageCount + 1);
                if (ForumPostsActivity.this.loadingPage == -1) {
                    ForumPostsActivity.this.stopXlistRefreshAndLoadMore();
                }
            }
        }

        @Override // com.join.android.app.component.xrecyclerview.XQuickRecyclerView.g
        public void onRefresh() {
        }
    }

    class u implements ConsecutiveScrollerLayout.f {
        u() {
        }

        @Override // com.donkingliang.consecutivescroller.ConsecutiveScrollerLayout.f
        public void a(View v10, int scrollY, int oldScrollY, int scrollState) {
            ForumPostsActivity forumPostsActivity = ForumPostsActivity.this;
            forumPostsActivity.videoScrollStateChanged(forumPostsActivity.rv_head, scrollState);
            ForumPostsActivity.this.rv_comment_list.onScrollStateChanged(scrollState);
        }
    }

    class v implements KeyboardListenLayout.a {
        v() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onHidden() {
        }

        @Override // com.join.mgps.customview.KeyboardListenLayout.a
        public void onShown() {
            if (ForumPostsActivity.this.curEventType == 1) {
                ForumPostsActivity.this.hideExtensionFunction(false);
            } else {
                ForumPostsActivity.this.hideExtensionFunction(true);
            }
        }
    }

    class w implements View.OnFocusChangeListener {
        w() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View v10, boolean hasFocus) {
            if (!hasFocus) {
                ForumPostsActivity.this.rl_comment_count.setVisibility(0);
                ForumPostsActivity.this.btn_chat_praise.setVisibility(0);
                ForumPostsActivity.this.btn_chat_star.setVisibility(0);
                ForumPostsActivity.this.btn_chat_send.setVisibility(8);
                return;
            }
            ForumPostsActivity.this.rl_comment_count.setVisibility(8);
            ForumPostsActivity.this.btn_chat_praise.setVisibility(8);
            ForumPostsActivity.this.btn_chat_star.setVisibility(8);
            ForumPostsActivity.this.btn_chat_send.setVisibility(0);
            ForumPostsActivity.this.showSystemKeyBoard(v10);
        }
    }

    class x extends CustomLoadingView.e {
        x(CustomLoadingView loadingView) {
            super(loadingView);
        }

        @Override // com.join.mgps.customview.CustomLoadingView.e
        public void b() throws Throwable {
            ForumPostsActivity.this.loading(true);
        }
    }

    class y implements View.OnClickListener {
        y() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            ForumPostsActivity.this.forumDialog.dismiss();
        }
    }

    class z implements DialogInterface.OnCancelListener {
        z() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            ForumPostsActivity.this.toggleSendOn = 0;
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void deleteTempPic(List<String> images) {
        if (images == null || images.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < images.size(); i10++) {
            try {
                File file = new File(images.get(i10));
                if (file.getParentFile().exists()) {
                    UtilsMy.delete(file.getParentFile());
                }
                if (file.exists() && file.getAbsolutePath().contains(com.join.mgps.Util.r0.l0().getAbsolutePath())) {
                    UtilsMy.delete(file);
                }
            } catch (Exception unused) {
            }
        }
        net.bither.util.b.p().f94541c = new Hashtable<>();
        net.bither.util.b.p().f94540b = new Hashtable<>();
    }

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doForumPostShare() {
        try {
            if (com.join.android.app.common.utils.m.j(this)) {
                com.join.mgps.Util.r0.H1(this, this.forumPostsBean);
            } else {
                com.join.mgps.Util.r0.G1(this, this.forumPostsBean.getPid());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void excePositiveClick() {
        switch (this.dialog4Event) {
            case R.id.extFuncBest /* 2131363275 */:
                doForumPostBest();
                break;
            case R.id.extFuncDelete /* 2131363278 */:
                deletePosts();
                break;
            case R.id.extFuncFavorite /* 2131363279 */:
                doForumPostFavorite();
                break;
            case R.id.extFuncReport /* 2131363282 */:
                doForumPostReport();
                break;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void finishM() {
        Activity splashActivity = IntentUtil.getInstance().getSplashActivity();
        if (splashActivity != null) {
            splashActivity.finish();
            IntentUtil.getInstance().setSplashActivity(null);
            Intent intent = new Intent();
            intent.setClass(splashActivity, MGMainActivity_.class);
            intent.setFlags(67108864);
            intent.addFlags(C.ENCODING_PCM_A_LAW);
            startActivity(intent);
        }
        finish();
    }

    private List<String> getImagesFromAlbum(Intent intent) {
        Bundle extras;
        if (intent == null || (extras = intent.getExtras()) == null) {
            return null;
        }
        return (List) extras.get(MyAlbumActivity.KEY_SELECTED_IMAGES);
    }

    private void hideUserUi() {
        this.actionbarLayout.setVisibility(8);
        this.rv_comment_list.setVisibility(8);
        this.layout_chat_cell_container.setVisibility(8);
    }

    private boolean inRangeOfView(View view, MotionEvent ev) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return ev.getX() >= ((float) i10) && ev.getX() <= ((float) (i10 + view.getWidth())) && ev.getY() >= ((float) i11) && ev.getY() <= ((float) (i11 + view.getHeight()));
    }

    private void initForumPostsFuncPopupWindow() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.forum_posts_activity_functions1, (ViewGroup) null);
        a0 a0Var = new a0(this, viewInflate, -2, -2);
        this.mForumPostsFuncWindow = a0Var;
        a0Var.setOnDismissListener(new h());
        this.gridView = (WrapContentGridView) viewInflate.findViewById(R.id.gridView);
        if (this.gridAdapter == null) {
            this.gridAdapter = new b0();
        }
        this.gridView.setAdapter((ListAdapter) this.gridAdapter);
        initGridAdapterData();
    }

    private void initForumPostsFuncPopupWindow1() {
        View viewInflate = LayoutInflater.from(this).inflate(R.layout.forum_posts_activity_functions, (ViewGroup) null);
        a0 a0Var = new a0(this, viewInflate, -1, -2);
        this.mForumPostsFuncWindow = a0Var;
        a0Var.setOnDismissListener(new g());
        this.moreFuncFavorite = (LinearLayout) viewInflate.findViewById(R.id.moreFuncFavorite);
        this.moreFuncShare = (LinearLayout) viewInflate.findViewById(R.id.moreFuncShare);
        this.moreFuncSort = (LinearLayout) viewInflate.findViewById(R.id.moreFuncSort);
        this.moreFuncRow2 = viewInflate.findViewById(R.id.row2);
        this.moreFuncDelete = (LinearLayout) viewInflate.findViewById(R.id.moreFuncDelete);
        this.moreFuncReport = (LinearLayout) viewInflate.findViewById(R.id.moreFuncReport);
        this.moreFuncBest = (LinearLayout) viewInflate.findViewById(R.id.moreFuncBest);
        this.moreFuncBlock1 = viewInflate.findViewById(R.id.block1);
        this.moreFuncBlock2 = viewInflate.findViewById(R.id.block2);
        this.moreFuncFavoriteImg = (ImageView) viewInflate.findViewById(R.id.moreFuncFavoriteImg);
        this.moreFuncShareImg = (ImageView) viewInflate.findViewById(R.id.moreFuncShareImg);
        this.moreFuncSortImg = (ImageView) viewInflate.findViewById(R.id.moreFuncSortImg);
        this.moreFuncBestImg = (ImageView) viewInflate.findViewById(R.id.moreFuncBestImg);
        this.moreFuncFavorite.setOnClickListener(this.moreFuncListener);
        this.moreFuncShare.setOnClickListener(this.moreFuncListener);
        this.moreFuncSort.setOnClickListener(this.moreFuncListener);
        this.moreFuncDelete.setOnClickListener(this.moreFuncListener);
        this.moreFuncReport.setOnClickListener(this.moreFuncListener);
        this.moreFuncBest.setOnClickListener(this.moreFuncListener);
    }

    /* JADX WARN: Code duplicated, block: B:63:0x00d0 A[PHI: r6
      0x00d0: PHI (r6v4 java.lang.String) = 
      (r6v1 java.lang.String)
      (r6v1 java.lang.String)
      (r6v1 java.lang.String)
      (r6v1 java.lang.String)
      (r6v2 java.lang.String)
      (r6v1 java.lang.String)
      (r6v1 java.lang.String)
      (r6v1 java.lang.String)
      (r6v5 java.lang.String)
     binds: [B:59:0x00c3, B:61:0x00cd, B:56:0x00bf, B:52:0x00ab, B:50:0x00a6, B:36:0x0082, B:31:0x0075, B:26:0x0067, B:22:0x005a] A[DONT_GENERATE, DONT_INLINE]] */
    private void initGridAdapterData() {
        b0 b0Var = this.gridAdapter;
        if (b0Var == null) {
            return;
        }
        if (b0Var.b() != null) {
            this.gridAdapter.b().clear();
        }
        int[] iArr = {2, 5, 6, 7, 8, 9, 10};
        String[] strArr = {"分享", "举报", "删帖", "加精", "收录至话题", "移除话题", "置顶"};
        for (int i10 = 0; i10 < 7; i10++) {
            int i11 = iArr[i10];
            String str = strArr[i10];
            c0 c0Var = new c0();
            if (i11 == 7) {
                if (this.forumPostsBean.is_best_allow()) {
                    if (this.forumPostsBean.getBest() == 1) {
                        str = "取消精华";
                    }
                    c0Var.f51604d = this.forumPostsBean.getBest() == 1;
                    c0Var.f51601a = i11;
                    c0Var.f51602b = str;
                    this.gridAdapter.a(c0Var);
                }
            } else if (i11 == 6) {
                if (this.forumPostsBean.is_del_allow()) {
                    c0Var.f51601a = i11;
                    c0Var.f51602b = str;
                    this.gridAdapter.a(c0Var);
                }
            } else if (i11 == 8) {
                if (this.forumPostsBean.is_add_tag_allow()) {
                    c0Var.f51601a = i11;
                    c0Var.f51602b = str;
                    this.gridAdapter.a(c0Var);
                }
            } else if (i11 == 9) {
                if (this.forumPostsBean.is_remove_tag_allow()) {
                    c0Var.f51601a = i11;
                    c0Var.f51602b = str;
                    this.gridAdapter.a(c0Var);
                }
            } else if (i11 != 10) {
                if (i11 == 1) {
                    c0Var.f51603c = this.forumPostsBean.is_favorite();
                } else if (i11 == 3) {
                    if (!this.comment_order.equals("asc")) {
                    }
                } else if (i11 != 4 || this.comment_order.equals("desc")) {
                }
                c0Var.f51601a = i11;
                c0Var.f51602b = str;
                this.gridAdapter.a(c0Var);
            } else if (this.forumPostsBean.is_first()) {
                if (this.forumPostsBean.getFirst() == 1) {
                    str = "取消置顶";
                }
                c0Var.f51605e = this.forumPostsBean.getFirst() == 1;
                c0Var.f51601a = i11;
                c0Var.f51602b = str;
                this.gridAdapter.a(c0Var);
            }
        }
        this.gridAdapter.notifyDataSetChanged();
    }

    private void initHListView() {
        this.mSelectedImages = new ArrayList();
        f0 f0Var = new f0(this);
        this.mPicsAdapter = f0Var;
        f0Var.c(this.mSelectedImages);
        this.mPicsAdapter.f(new b());
        this.matchListView.setAdapter((ListAdapter) this.mPicsAdapter);
    }

    private void initViews() {
        this.postFunction.setVisibility(8);
        refreshMoreFuncHostImg();
        String str = (String) getIntent().getSerializableExtra(KEY_FORUM_POSTS_BEAN);
        if (!com.join.mgps.Util.t2.h(str)) {
            this.forumPostsBean = (ForumBean.ForumPostsBean) JsonMapper.getInstance().fromJson(str, JsonMapper.getInstance().createCollectionType(ForumBean.ForumPostsBean.class, new Class[0]));
        }
        if (this.forumPostsBean == null) {
            finishM();
            return;
        }
        this.helper = new com.join.android.app.component.video.c(this, "ForumPostsVideoHelper");
        this.rv_comment_list.setLayoutManager(new LinearLayoutManager(this));
        this.rv_comment_list.setPreLoadCount(com.join.mgps.Util.r0.f49990e);
        this.rv_comment_list.setLoadingListener(new t());
        ForumCommentAdapter forumCommentAdapter = new ForumCommentAdapter(this);
        this.newAdapter = forumCommentAdapter;
        forumCommentAdapter.k0(this.forumPostsOnClickListener);
        this.rv_comment_list.setAdapter(this.newAdapter);
        this.headData = new ArrayList();
        this.listData = new ArrayList();
        this.headAdapter = new ForumPostsAdapter(this, this.helper);
        this.rv_head.setLayoutManager(new LinearLayoutManager(this));
        this.rv_head.setAdapter(this.headAdapter);
        this.fsv_stick.setForumStickViewListener(this);
        this.csl_view.setOnVerticalScrollChangeListener(new u());
        this.forumLoadingDialog = new com.join.mgps.dialog.y0(this);
        clearCommentMessage();
        try {
            ((KeyboardListenLayout) this.actionbarLayout.getParent()).setOnSoftKeyboardListener(new v());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        this.edit_user_comment.setOnFocusChangeListener(new w());
        SpannableString spannableString = new SpannableString("每次最多可以分享9张图");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#808080")), 8, 9, 33);
        this.footer_tip.setText(spannableString);
        initHListView();
        initForumPostsFuncPopupWindow();
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && com.join.mgps.Util.t2.i(userInfoAccountBean.getToken());
    }

    private void loadDBData() {
        changeLoadingState(18);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void loading(boolean isReload) throws Throwable {
        changeLoadingState(0);
        this.rv_comment_list.reset();
        loadDBData();
        if (com.join.android.app.common.utils.m.j(this)) {
            loadForumPostsData(isReload, true, 1);
        } else {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(17);
        }
    }

    private void playVideo() {
        String str = this.videoUrl;
        String str2 = this.coverUrl;
        this.cover.setVisibility(0);
        this.cover.setScaleType(ImageView.ScaleType.FIT_XY);
        com.join.android.app.common.utils.l.h(this.cover, str2);
        LinearLayout linearLayout = this.loadingLayout;
        if (this.mediaController == null) {
            MediaController mediaController = new MediaController(this);
            this.mediaController = mediaController;
            mediaController.q();
            this.mediaController.hide();
            this.mediaController.setVisibility(8);
        }
        if (this.video.isPlaying()) {
            MyVideoView myVideoView = this.video;
            if (myVideoView != null) {
                myVideoView.I();
                linearLayout.setVisibility(8);
            }
            MediaController mediaController2 = this.mediaController;
            if (mediaController2 != null) {
                mediaController2.setVisibility(8);
            }
        }
        this.video.setVisibility(0);
        this.mediaController.setAnchorView(this.video);
        this.mediaController.setMediaPlayer(this.video);
        this.video.setMediaController(this.mediaController);
        this.video.requestFocus();
        linearLayout.setVisibility(0);
        if (!this.video.E() || this.video.isPlaying()) {
            this.video.setVideoPath(str);
            com.join.mgps.Util.h1.e("play a new video ...");
        } else {
            resume();
            com.join.mgps.Util.h1.e("play a last video ...");
        }
        this.video.setOnCompletionListener(new m());
        this.video.setOnPreparedListener(new n());
        this.video.setOnErrorListener(new o());
        this.video.setScreenChangedListener(new p());
        this.play.setOnClickListener(new q());
    }

    private void processGagType(List<ForumBean.ForumGagType> forum_gag_type) {
        if (forum_gag_type == null) {
            return;
        }
        if (this.forumGagType == null) {
            this.forumGagType = new ArrayList();
        }
        this.forumGagType.clear();
        this.forumGagType.addAll(forum_gag_type);
    }

    private void reGetToken() {
        if (AccountUtil_.getInstance_(this).isTourist()) {
            touristLogin();
        } else {
            showMessage(getString(R.string.forum_user_login_invalid));
        }
    }

    private void receiveDelete(DownloadTask downloadTask) {
        try {
            Iterator<DownloadTask> it2 = this.downloadTasks.iterator();
            while (it2.hasNext()) {
                DownloadTask next = it2.next();
                if (next.getCrc_link_type_val().equals(downloadTask.getCrc_link_type_val())) {
                    this.downloadTasksMap.remove(next.getCrc_link_type_val());
                    it2.remove();
                    break;
                }
            }
            notifyUpdateUi(downloadTask, 2);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveError(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        try {
            UtilsMy.U4(map.get(downloadTask.getCrc_link_type_val()));
            notifyUpdateUi(downloadTask, 3);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    private void receiveStart(DownloadTask downloadTask) {
        UtilsMy.Y4(this.downloadTasks, downloadTask);
        if (!this.downloadTasksMap.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        notifyUpdateUi(downloadTask, 0);
    }

    private void receiveSuccess(DownloadTask downloadTask) {
        Map<String, DownloadTask> map = this.downloadTasksMap;
        if (map == null || downloadTask == null) {
            return;
        }
        if (!map.containsKey(downloadTask.getCrc_link_type_val())) {
            this.downloadTasks.add(downloadTask);
            this.downloadTasksMap.put(downloadTask.getCrc_link_type_val(), downloadTask);
        }
        DownloadTask downloadTask2 = this.downloadTasksMap.get(downloadTask.getCrc_link_type_val());
        if (downloadTask2 == null) {
            return;
        }
        downloadTask2.setStatus(downloadTask.getStatus());
        downloadTask2.setVer(downloadTask.getVer());
        downloadTask2.setCfg_ver(downloadTask.getCfg_ver());
        downloadTask2.setSource_ver(downloadTask.getSource_ver());
        downloadTask2.setGameZipPath(downloadTask.getGameZipPath());
        notifyUpdateUi(downloadTask, 1);
    }

    private void receiveUpdate() {
        int i10 = 0;
        while (true) {
            List<DownloadTask> list = this.downloadTasks;
            if (list == null || i10 >= list.size()) {
                return;
            }
            notifyUpdateUi(q5.f.M().G(this.downloadTasks.get(i10).getCrc_link_type_val()), 4);
            i10++;
        }
    }

    private void refreshCommentCount() {
        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
        if (forumPostsBean == null || forumPostsBean.getCommit() <= 0) {
            this.edit_comment_count.setText("0");
            this.edit_comment_count.setVisibility(8);
        } else {
            this.edit_comment_count.setText(com.join.mgps.Util.t2.e(this.forumPostsBean.getCommit()));
            this.edit_comment_count.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void reversePraise() {
        boolean zIs_praise = this.forumPostsBean.is_praise();
        int praise = this.forumPostsBean.getPraise();
        this.forumPostsBean.setPraise(zIs_praise ? praise - 1 : praise + 1);
        this.forumPostsBean.setIs_praise(!zIs_praise);
        modifyPraiseView(this.forumPostsBean.is_praise(), this.forumPostsBean.getPraise());
    }

    private void sendCommentReplyReplyRequest() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
            return;
        }
        if (!validAccount()) {
            showSendPromptDialog(-1);
            showDialog();
            return;
        }
        ForumRequestBean.ForumCommentReplyRequestBean forumCommentReplyRequestBeanY = com.join.mgps.Util.r0.Y(this, this.curCid, this.curMessage, this.curRid);
        forumCommentReplyRequestBeanY.setDevice_id("");
        ForumResponse<ForumData.ForumCommentReplyReplyData> forumResponseC0 = this.rpcForumClient.c0(forumCommentReplyRequestBeanY.getParams());
        if (forumResponseC0 == null) {
            showSendPromptDialog(1);
            return;
        }
        if (forumResponseC0.getError() == 706) {
            showToast(getString(R.string.tour_perfect_info_for_comment_toast));
            showDialog();
            return;
        }
        ForumData.ForumCommentReplyReplyData data = forumResponseC0.getData();
        if (!data.isResult()) {
            if (data.getError_type() == 1) {
                dismissSendPromptDialog();
                showPrePostingHintDialog(data.getError_type());
                return;
            } else if (TextUtils.isEmpty(data.getMsg())) {
                showSendPromptDialog(1);
                return;
            } else {
                dismissSendPromptDialog();
                showToast(data.getMsg());
                return;
            }
        }
        showSendPromptDialog(2);
        ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
        UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
        forumCommentReplyBean.setUid(userInfoT.getUid());
        forumCommentReplyBean.setNickname(userInfoT.getNickname());
        forumCommentReplyBean.setMessage(forumCommentReplyRequestBeanY.getMessage());
        forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
        forumCommentReplyBean.setRrid(this.curRid);
        if (this.curRid != 0) {
            forumCommentReplyBean.setRid(data.getRid());
            processCommentReplySendSuccess(forumCommentReplyBean);
            showRewardToast(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
        }
    }

    private void sendCommentReplyRequest() {
        if (!isLogined(this)) {
            showMessage(getString(R.string.forum_user_not_login));
            return;
        }
        if (!validAccount()) {
            showSendPromptDialog(-1);
            showDialog();
            return;
        }
        ForumRequestBean.ForumCommentReplyRequestBean forumCommentReplyRequestBeanY = com.join.mgps.Util.r0.Y(this, this.curCid, this.curMessage, this.curRid);
        forumCommentReplyRequestBeanY.setDevice_id("");
        ForumResponse<ForumData.ForumCommentReplyData> forumResponseG = this.rpcForumClient.G(forumCommentReplyRequestBeanY.getParams());
        if (forumResponseG == null) {
            showSendPromptDialog(1);
            return;
        }
        if (forumResponseG.getError() == 706) {
            showToast(getString(R.string.tour_perfect_info_for_comment_toast));
            showDialog();
            return;
        }
        ForumData.ForumCommentReplyData data = forumResponseG.getData();
        if (!data.isResult()) {
            if (data.getError_type() == 1) {
                dismissSendPromptDialog();
                showPrePostingHintDialog(data.getError_type());
                return;
            } else if (TextUtils.isEmpty(data.getMsg())) {
                showSendPromptDialog(1);
                return;
            } else {
                dismissSendPromptDialog();
                showToast(data.getMsg());
                return;
            }
        }
        showSendPromptDialog(2);
        ForumBean.ForumCommentReplyBean forumCommentReplyBean = new ForumBean.ForumCommentReplyBean();
        UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
        forumCommentReplyBean.setUid(userInfoT.getUid());
        forumCommentReplyBean.setNickname(userInfoT.getNickname());
        forumCommentReplyBean.setMessage(forumCommentReplyRequestBeanY.getMessage());
        forumCommentReplyBean.setAdd_time(System.currentTimeMillis() / 1000);
        forumCommentReplyBean.setRrid(this.curRid);
        forumCommentReplyBean.setRid(data.getRid());
        processCommentReplyDirectSendSuccess(forumCommentReplyBean);
        showRewardToast(RewardType.REPLY_POST, data.getReward_money(), data.getReward_exp());
    }

    private void setPostGag(View v10, final int gagUid) {
        if (v10 == null) {
            return;
        }
        v10.setOnClickListener(new d(gagUid));
    }

    private void showForumPostsFuncPopupWindow(View view) {
        initForumPostsFuncPopupWindow();
        WrapContentGridView wrapContentGridView = this.gridView;
        if (wrapContentGridView != null) {
            wrapContentGridView.setStretchMode(2);
        }
        refreshMoreFuncSortImg();
        refreshMoreFuncBestImg();
        initGridAdapterData();
        this.mForumPostsFuncWindow.setAnimationStyle(R.style.animation_album_popup);
        this.mForumPostsFuncWindow.getContentView().measure(0, 0);
        this.mForumPostsFuncWindow.showAsDropDown(view);
    }

    private void showUserUi() {
        this.actionbarLayout.setVisibility(0);
        this.rv_comment_list.setVisibility(0);
        this.layout_chat_cell_container.setVisibility(0);
    }

    private void updatePostTitleView(ForumPostsAdapter.e0.i item) {
        try {
            this.forum_post_nickname.setText(item.f59584d);
            try {
                this.vipFlag.setVipData(item.f59591k, item.f59592l);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            if (item.f59586f) {
                this.forum_post_stickie.setVisibility(0);
            } else {
                this.forum_post_stickie.setVisibility(8);
            }
            if (item.f59589i) {
                this.officialIcon.setVisibility(0);
            } else {
                this.officialIcon.setVisibility(8);
            }
            if (item.f59588h) {
                this.forum_post_nickname.setTextColor(getResources().getColor(R.color.app_blue_color));
                this.forum_post_moderator.setVisibility(0);
            } else {
                UtilsMy.R3(this, this.forum_post_nickname, item.f59591k, item.f59592l, R.color.forum_nickname_color);
                this.forum_post_moderator.setVisibility(8);
            }
            com.join.android.app.common.utils.l.y(this.sdv_head, item.f59583c);
            this.sdv_head.setOnClickListener(new c(item));
            if (item.f59595o) {
                this.moderator.setVisibility(0);
            } else {
                this.moderator.setVisibility(8);
            }
            if (TextUtils.isEmpty(item.f59596p)) {
                this.member_honor.setVisibility(8);
            } else {
                this.member_honor.setVisibility(0);
                this.member_honor.setText(item.f59596p);
            }
            com.join.mgps.Util.r0.S0(this.sdv_head, this.forum_post_nickname);
            com.join.mgps.Util.r0.U0(this.vipFlag);
            String str = item.f59593m;
            String str2 = item.f59594n;
            if (this.copperTitleTv != null) {
                if (TextUtils.isEmpty(str)) {
                    this.copperTitleTv.setVisibility(8);
                } else {
                    this.copperTitleTv.setVisibility(0);
                    this.copperTitleTv.setText(str);
                    Drawable drawable = getResources().getDrawable(R.drawable.forum_post_host);
                    if (TextUtils.isEmpty(str2) || str2.length() != 7 || !str2.contains("#")) {
                        str2 = "#2fccdf";
                    }
                    drawable.setColorFilter(new LightingColorFilter(Color.parseColor(str2), Color.parseColor(str2)));
                    this.copperTitleTv.setBackgroundDrawable(drawable);
                }
            }
            setPostGag(this.sdv_head, item.f59582b);
        } catch (Exception e11) {
            e11.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void addPostTag(String tagList) {
        ForumData.HomepageRecommendLabel data;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingAddTags = false;
            return;
        }
        boolean z10 = true;
        if (this.doingAddTags) {
            return;
        }
        this.doingAddTags = true;
        int pid = this.forumPostsBean.getPid();
        int post_type = this.forumPostsBean.getPost_type();
        String uid = AccountUtil_.getInstance_(this).getUid();
        String token = AccountUtil_.getInstance_(this).getToken();
        try {
            try {
                if (com.join.mgps.Util.r0.c0(this, pid) != null) {
                    ForumResponse<ForumData.HomepageRecommendLabel> forumResponseN = this.rpcForumClient.N(pid, post_type, tagList, uid, token);
                    if (forumResponseN == null || forumResponseN.getError() != 0 || (data = forumResponseN.getData()) == null || !data.isResult()) {
                        z10 = false;
                    }
                    if (z10) {
                        showToast("收录话题成功");
                        notifyTagAdded(tagList);
                    } else {
                        String msg = (forumResponseN == null || forumResponseN.getData() == null) ? "" : forumResponseN.getData().getMsg();
                        if (TextUtils.isEmpty(msg)) {
                            showToast("收录话题失败");
                        } else {
                            showToast(msg);
                        }
                        List<RecommendLabelTag> list = this.selectedItems;
                        if (list != null) {
                            list.clear();
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("收录话题失败");
                List<RecommendLabelTag> list2 = this.selectedItems;
                if (list2 != null) {
                    list2.clear();
                }
            }
        } finally {
            this.doingAddTags = false;
        }
    }

    @AfterViews
    void afterViews() throws Throwable {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        this.rpcAccountClient = com.join.mgps.rpc.impl.a.c0();
        try {
            initFields();
            initViews();
            loading(true);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void autoPlayScroll(RecyclerView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        if (this.firstVisible != firstVisibleItem || firstVisibleItem == 0) {
            this.firstVisible = firstVisibleItem;
            this.visibleCount = visibleItemCount;
            this.totalCount = totalItemCount;
        }
    }

    @Click
    void back_image() {
        if (this.isShowInputExtensionBoard) {
            btn_chat_extension();
        } else if (this.isShowKeyboard) {
            clearCommentMessage();
        } else {
            setResult4Request();
            finishM();
        }
    }

    @Click
    void btn_chat_extension() {
        if (this.isShowInputExtensionBoard) {
            hideExtensionBoard();
            return;
        }
        List<String> list = this.mSelectedImages;
        if ((list != null) && (list.size() > 0)) {
            showExtensionContentBoard();
        } else {
            goMyAlbumActivity4PickPic();
        }
    }

    @Click
    void btn_chat_praise() {
        if (!com.join.mgps.Util.r0.Y0(this)) {
            com.join.mgps.Util.a3.b(this).d("用户未登录，请登录");
            com.join.mgps.Util.r0.L0(this);
        } else if (!validAccount()) {
            showSendPromptDialog(-1);
            showDialog();
        } else {
            this.btn_chat_praise.startAnimation(AnimationUtils.loadAnimation(this, R.anim.scale_reset));
            reversePraise();
            praisePosts();
        }
    }

    @Click
    void btn_chat_send() {
        String string = this.edit_user_comment.getText().toString();
        this.curMessage = string;
        if (com.join.mgps.Util.t2.h(string)) {
            showToast("回复内容不能为空");
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        if (com.join.mgps.Util.t2.h(accountData.getNickname()) || (accountData.getAccount().equals(accountData.getNickname()) && accountData.getAccount().startsWith("pa"))) {
            IntentUtil.getInstance().goChangeNickname(this);
            return;
        }
        int i10 = this.curEventType;
        if (i10 == 1) {
            sendComment();
        } else if (i10 == 2) {
            sendCommentReply();
        } else if (i10 == 4) {
            sendCommentReply();
        }
    }

    @Click
    void btn_chat_star() {
        this.btn_chat_star.startAnimation(AnimationUtils.loadAnimation(this, R.anim.scale_reset));
        refreshMoreFuncFavoriteImg();
        doForumPostFavorite();
    }

    void callbackPlayVideo(Bundle arg) {
        if (arg == null) {
            return;
        }
        String string = arg.getString("key_mediacmd");
        Object[] objArr = (Object[]) arg.get("key_mediacmd_params");
        com.join.mgps.Util.h1.e("callbackPlayVideo", "cmd=" + string, "params=" + objArr.toString());
        if (string.equals(MediaCmd.CMD_PLAY.name())) {
            String str = null;
            String str2 = null;
            for (int i10 = 0; i10 < objArr.length; i10++) {
                String str3 = (String) objArr[i10];
                if (i10 == 0) {
                    int i11 = Integer.parseInt(str3);
                    if (i11 == this.videoIndex) {
                        return;
                    }
                    stop();
                    this.videoIndex = i11;
                } else if (i10 == 1) {
                    str = str3;
                } else if (i10 == 2) {
                    str2 = str3;
                }
            }
            com.join.mgps.Util.h1.e("CMD_PLAY", "videoUrl=" + str, "coverUrl=" + str2);
            this.videoContainer.setVisibility(0);
            this.video.setVisibility(0);
            this.isActive = true;
            setVideoContainerParams();
            play(str, str2);
            return;
        }
        if (string.equals(MediaCmd.CMD_PLAY_BACKGROUND.name())) {
            if (this.videoIndex == -1) {
                return;
            }
            if (Boolean.parseBoolean((String) objArr[0])) {
                this.videoContainer.setVisibility(8);
                this.video.setVisibility(8);
                this.isActive = false;
                stop();
                return;
            }
            if (this.videoIndex == -1) {
                return;
            }
            this.videoContainer.setVisibility(0);
            this.video.setVisibility(0);
            this.isActive = true;
            return;
        }
        if (string.equals(MediaCmd.CMD_PAUSE.name())) {
            pause();
            return;
        }
        if (string.equals(MediaCmd.CMD_STOP.name())) {
            stop();
            return;
        }
        if (string.equals(MediaCmd.CMD_FULLSCREEN.name())) {
            String str4 = "false";
            for (int i12 = 0; i12 < objArr.length; i12++) {
                if (i12 == 0) {
                    str4 = (String) objArr[0];
                }
                if (i12 == 1) {
                }
            }
            Boolean.parseBoolean(str4);
            fullscreen();
            return;
        }
        if (string.equals(MediaCmd.CMD_TRANSLATE_Y.name())) {
            String str5 = "0";
            String str6 = "0";
            for (int i13 = 0; i13 < objArr.length; i13++) {
                if (i13 == 0) {
                    str5 = (String) objArr[0];
                }
                if (i13 == 1) {
                    str6 = (String) objArr[1];
                }
            }
            int i14 = Integer.parseInt(str5);
            int i15 = Integer.parseInt(str6);
            com.join.mgps.Util.h1.e("CMD_TRANSLATE_Y", "top=" + i14, "offset=" + i15);
            offsetContainer(i14, i15);
        }
    }

    @UiThread
    public void changeCommentUI(boolean showEmpty) {
    }

    void changeDownloadTaskNumber(DownloadTask task, int from) {
        if (task == null) {
            return;
        }
        String crc_link_type_val = task.getCrc_link_type_val();
        if (from == 2) {
            if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                this.downloadedMap.put(crc_link_type_val, task);
            }
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                return;
            }
            this.downloadingMap.put(crc_link_type_val, task);
            return;
        }
        if (from == 3) {
            if (this.downloadingMap.containsKey(crc_link_type_val)) {
                this.downloadingMap.remove(crc_link_type_val);
                return;
            }
            return;
        }
        if (from != 5) {
            if (from == 6) {
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 7) {
                if (this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.remove(crc_link_type_val);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    this.downloadingMap.remove(crc_link_type_val);
                    return;
                }
                return;
            }
            if (from == 10) {
                if (!this.downloadedMap.containsKey(crc_link_type_val)) {
                    this.downloadedMap.put(crc_link_type_val, task);
                }
                if (this.downloadingMap.containsKey(crc_link_type_val)) {
                    return;
                }
                this.downloadingMap.put(crc_link_type_val, task);
                return;
            }
            if (from != 11) {
                return;
            }
        } else if (this.downloadedMap.containsKey(crc_link_type_val)) {
            this.downloadedMap.remove(crc_link_type_val);
        }
        if (this.downloadingMap.containsKey(crc_link_type_val)) {
            this.downloadingMap.remove(crc_link_type_val);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void changeLoadingState(int state) {
        try {
            int i10 = this.loadingState;
            if (i10 == 32) {
                return;
            }
            if (state == 32) {
                this.loadingState = 32;
                this.loadingView.l(2);
            } else if (state == 0) {
                this.loadingState = 0;
                this.loadingView.o();
                this.loadingView.l(1);
            } else {
                this.loadingState = state | i10;
                CustomLoadingView customLoadingView = this.loadingView;
                customLoadingView.setListener(new x(customLoadingView));
                if (checkFailed(-11)) {
                    this.loadingState = 16;
                    this.loadingView.l(9);
                } else if (checkFailed(22)) {
                    this.loadingState = 16;
                    this.loadingView.setFailedMsg("该贴已经删除~");
                    this.loadingView.l(10);
                } else if (checkFailed(31) || checkFailed(26)) {
                    this.loadingState = 16;
                    this.loadingView.setFailedMsg("加载失败，再试试吧~");
                    this.loadingView.l(16);
                } else if (checkFailed(17)) {
                    this.loadingState = 16;
                    this.loadingView.l(9);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void checkAndClearMessage() {
        if ((this.isShowInputExtensionFunction && this.isShowInputExtensionBoard) || this.isShowKeyboard) {
            return;
        }
        clearCommentMessage();
    }

    boolean checkFailed(int val) {
        return (this.loadingState & val) == val;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void clearCommentMessage() {
        this.btn_chat_extension.setVisibility(8);
        this.curMessage = "";
        this.curPid = this.forumPostsBean.getPid();
        this.curCid = -1;
        this.curRid = -1;
        this.curEventType = 1;
        this.btn_chat_praise.setVisibility(0);
        this.btn_chat_star.setVisibility(0);
        this.btn_chat_send.setVisibility(8);
        this.edit_user_comment.setText("");
        this.edit_user_comment.setHint("添加评论");
        this.edit_user_comment.clearFocus();
        hideSystemKeyBoard(this.edit_user_comment);
        refreshCommentCount();
    }

    void clearImageMemoryLruCache() {
        if (this.listData == null) {
            return;
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deleteComment(int pid) {
        ForumResponse<ForumData.ForumCommentDeleteData> forumResponseC;
        try {
            try {
                if (com.join.android.app.common.utils.m.j(this)) {
                    ForumRequestBean.ForumCommentDeleteRequestBean forumCommentDeleteRequestBeanW = com.join.mgps.Util.r0.W(this, pid);
                    if (forumCommentDeleteRequestBeanW != null) {
                        forumCommentDeleteRequestBeanW.setDevice_id("");
                        forumResponseC = this.rpcForumClient.C(forumCommentDeleteRequestBeanW.getParams());
                    } else {
                        forumResponseC = null;
                    }
                    if (forumResponseC == null) {
                        if (!com.join.mgps.Util.r0.Y0(this)) {
                            com.join.mgps.Util.r0.L0(this);
                        }
                        showToast("评论删除失败");
                    } else if (forumResponseC.getData().isResult()) {
                        showToast("评论已删除");
                        processCommentDeleteSuccess(pid);
                    } else {
                        showToast("评论删除失败");
                    }
                } else {
                    showToast(getString(R.string.net_connect_failed));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("评论删除失败");
            }
        } finally {
            clearCommentMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deleteCommentReply(int rid) {
        ForumResponse<ForumData.ForumCommentReplyDeleteData> forumResponseO;
        if (rid == 0) {
            return;
        }
        try {
            ForumRequestBean.ForumCommentReplyDeleteRequestBean forumCommentReplyDeleteRequestBeanX = com.join.mgps.Util.r0.X(this, rid);
            if (forumCommentReplyDeleteRequestBeanX != null) {
                forumCommentReplyDeleteRequestBeanX.setDevice_id("");
                forumResponseO = this.rpcForumClient.o(forumCommentReplyDeleteRequestBeanX.getParams());
            } else {
                forumResponseO = null;
            }
            if (forumResponseO == null) {
                if (com.join.mgps.Util.r0.Y0(this)) {
                    return;
                }
                com.join.mgps.Util.r0.L0(this);
            } else if (!forumResponseO.getData().isResult()) {
                showToast("回复删除失败");
            } else {
                processDeleteCommentReplySuccess(rid);
                showToast("回复已删除");
            }
        } catch (Exception e10) {
            showToast("回复删除失败");
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void deletePosts() {
        ForumData.ForumPostsDeleteData data;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingForumPostDelete = false;
            return;
        }
        boolean z10 = true;
        if (this.doingForumPostDelete) {
            return;
        }
        this.doingForumPostDelete = true;
        int pid = this.forumPostsBean.getPid();
        try {
            try {
                if (com.join.mgps.Util.r0.c0(this, pid) != null) {
                    ForumResponse<ForumData.ForumPostsDeleteData> forumResponseI = this.rpcForumClient.I(com.join.mgps.Util.r0.c0(this, pid).getParams());
                    if (forumResponseI == null || forumResponseI.getError() != 0 || (data = forumResponseI.getData()) == null || !data.isResult()) {
                        z10 = false;
                    }
                    if (z10) {
                        showToast("帖子删除成功");
                        finishM();
                    } else {
                        showToast("帖子删除失败");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.doingForumPostDelete = false;
        }
    }

    void dismissFuncWindow() {
        a0 a0Var = this.mForumPostsFuncWindow;
        if (a0Var == null || !a0Var.isShowing()) {
            return;
        }
        this.mForumPostsFuncWindow.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void dismissSendPromptDialog() {
        try {
            com.join.mgps.dialog.y0 y0Var = this.forumLoadingDialog;
            if (y0Var == null || !y0Var.isShowing()) {
                return;
            }
            this.forumLoadingDialog.dismiss();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public boolean dispatchTouchEvent(MotionEvent ev) {
        if (ev.getAction() != 0) {
            if (getWindow().superDispatchTouchEvent(ev)) {
                return true;
            }
            return onTouchEvent(ev);
        }
        View currentFocus = getCurrentFocus();
        if (!isIgnored(ev) && isShouldHideInput(currentFocus, ev)) {
            InputMethodManager inputMethodManager = (InputMethodManager) getSystemService("input_method");
            if (inputMethodManager == null || !this.isShowKeyboard) {
                checkAndClearMessage();
            } else {
                inputMethodManager.hideSoftInputFromWindow(currentFocus.getWindowToken(), 0);
                this.isShowKeyboard = false;
            }
        }
        return super.dispatchTouchEvent(ev);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void doForumPostBest() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingForumPostBest = false;
            return;
        }
        if (this.doingForumPostBest) {
            return;
        }
        int i10 = 1;
        this.doingForumPostBest = true;
        ForumBean.ForumPostsBean forumPostsBean = new ForumBean.ForumPostsBean();
        try {
            ForumBean.ForumPostsBean forumPostsBean2 = this.forumPostsBean;
            if (forumPostsBean2 != null) {
                forumPostsBean = (ForumBean.ForumPostsBean) forumPostsBean2.clone();
            }
        } catch (CloneNotSupportedException e10) {
            e10.printStackTrace();
        }
        try {
            try {
                if (!com.join.mgps.Util.r0.Y0(this)) {
                    com.join.mgps.Util.r0.L0(this);
                    showToast(getString(R.string.forum_user_not_login));
                    return;
                }
                UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                ForumResponse<ForumData.ForumPostsBestData> forumResponseU0 = this.rpcForumClient.u0(new ForumRequestBean.ForumPostsFavoritesRequestBean(userInfoT.getUid(), userInfoT.getToken(), forumPostsBean.getPid(), "").getParams());
                if (forumResponseU0 != null) {
                    int error = forumResponseU0.getError();
                    if (error == 0) {
                        ForumData.ForumPostsBestData data = forumResponseU0.getData();
                        if (data == null) {
                            showToast(getString(R.string.forum_post_best_fail));
                        } else if (data.isResult()) {
                            boolean z10 = data.getBest() == 1;
                            if (z10) {
                                showToast(getString(R.string.forum_post_best_success));
                            } else {
                                showToast(getString(R.string.forum_post_debest_success));
                            }
                            if (!z10) {
                                i10 = 0;
                            }
                            forumPostsBean.setBest(i10);
                        } else if (com.join.mgps.Util.t2.i(data.getMessage())) {
                            showToast(data.getMessage());
                        }
                    } else if (error == 701) {
                        showToast(getString(R.string.forum_user_login_invalid));
                    }
                } else {
                    showToast(getString(R.string.forum_post_best_fail));
                }
                ForumBean.ForumPostsBean forumPostsBean3 = this.forumPostsBean;
                if (forumPostsBean3 != null) {
                    forumPostsBean3.setBest(forumPostsBean.getBest());
                    refreshMoreFuncBestImg();
                }
            } catch (Exception e11) {
                ForumBean.ForumPostsBean forumPostsBean4 = this.forumPostsBean;
                if (forumPostsBean4 != null) {
                    forumPostsBean4.setBest(forumPostsBean.getBest());
                    refreshMoreFuncBestImg();
                }
                showToast(getString(R.string.forum_post_best_fail));
                e11.printStackTrace();
            }
        } finally {
            this.doingForumPostBest = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void doForumPostFavorite() {
        if (this.doingForumPostFavorite) {
            return;
        }
        this.doingForumPostFavorite = true;
        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
        forumPostsBean.setIs_favorite(true ^ forumPostsBean.is_favorite());
        refreshMoreFuncFavoriteImg();
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                showToast(getString(R.string.net_connect_failed));
                changeLoadingState(17);
                this.doingForumPostFavorite = false;
                return;
            }
            try {
                if (IntentUtil.getInstance().goLoginInteractive(this)) {
                    processMoreFuncFavoriteFailed();
                    return;
                }
                UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                ForumRequestBean.ForumPostsFavoritesRequestBean forumPostsFavoritesRequestBean = new ForumRequestBean.ForumPostsFavoritesRequestBean(userInfoT.getUid(), userInfoT.getToken(), this.forumPostsBean.getPid(), "");
                forumPostsFavoritesRequestBean.setApp_ver(com.join.android.app.common.utils.q.n(this).z() + "_" + com.join.android.app.common.utils.q.n(this).A());
                ForumResponse<ForumData.ForumPostsFavoritesData> forumResponseF = this.rpcForumClient.F(forumPostsFavoritesRequestBean.getParams());
                if (forumResponseF != null) {
                    int error = forumResponseF.getError();
                    if (error == 0) {
                        ForumData.ForumPostsFavoritesData data = forumResponseF.getData();
                        if (data != null) {
                            this.forumPostsBean.setIs_favorite(data.isFavorites());
                            refreshMoreFuncFavoriteImg();
                            if (data.isFavorites()) {
                                showToast("帖子已收藏");
                            } else {
                                showToast("帖子已取消收藏");
                            }
                            com.join.mgps.Util.r0.f1(this.forumPostsBean.getPid(), data.isFavorites());
                        } else {
                            processMoreFuncFavoriteFailed();
                            showToast("帖子收藏失败");
                        }
                    } else if (error == 701) {
                        processMoreFuncFavoriteFailed();
                        showToast("用户验证失效，请重新登录！");
                    }
                } else {
                    processMoreFuncFavoriteFailed();
                    showToast("帖子收藏失败");
                }
                refreshMoreFuncFavoriteImg();
            } catch (Exception e10) {
                processMoreFuncFavoriteFailed();
                showToast("帖子收藏失败");
                e10.printStackTrace();
            }
        } finally {
            this.doingForumPostFavorite = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void doForumPostReport() {
        IntentUtil.getInstance().goShareWebActivity(this, com.join.mgps.rpc.h.f72353k + "/group/posts/forum_report/index?pid=" + this.forumPostsBean.getPid());
    }

    void doForumTagsAdd() {
        IntentUtil.getInstance().goForumPostsTagSelectActivity(this, 1, this.forumPostsBean.getPid(), JsonMapper.getInstance().toJson(this.forumPostsBean.getEmploy_tags()), this.forumPostsBean.getPost_type());
    }

    void doForumTagsDel() {
        IntentUtil.getInstance().goForumPostsTagSelectActivity(this, 2, this.forumPostsBean.getPid(), JsonMapper.getInstance().toJson(this.forumPostsBean.getTag_list()), this.forumPostsBean.getPost_type());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @Background
    public void downloadGameById(String str) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast("获取游戏信息失败");
            return;
        }
        if (this.getGameDownloadInfoStatus == 1) {
            return;
        }
        try {
            try {
                UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
                ResultMainBean<List<DetailResultBean>> resultMainBeanI0 = this.recommendClient.I0(RequestBeanUtil.getInstance(this).getAppDetialBean(str, accountData != null ? accountData.getUid() : 0, null));
                if (resultMainBeanI0 != null && resultMainBeanI0.getFlag() != 0) {
                    List<DetailResultBean> data = resultMainBeanI0.getMessages().getData();
                    if (data.size() != 0) {
                        DetailResultBean detailResultBean = data.get(0);
                        if (this.downloadGameWhenInfoGotcha) {
                            startDown(detailResultBean);
                        }
                    }
                } else if (resultMainBeanI0 == null || resultMainBeanI0.getFlag() != 0) {
                    showToast("获取游戏信息失败");
                } else {
                    showToast("获取游戏信息失败");
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("获取游戏信息失败");
            }
        } finally {
            this.getGameDownloadInfoStatus = 0;
            this.downloadGameWhenInfoGotcha = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void error(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    void fullscreen() {
        if (!(getResources().getConfiguration().orientation == 2)) {
            this.mFullScreenFlag = true;
            hideUserUi();
            resetVideoContainerParams();
        } else {
            this.mFullScreenFlag = false;
            showUserUi();
            setVideoContainerParams();
            offsetContainer(0, 0);
        }
    }

    String getCdnUrl(String cdnUrl, String imgUrl) {
        if (com.join.mgps.Util.t2.h(imgUrl)) {
            return null;
        }
        if (imgUrl.startsWith("http") || imgUrl.startsWith(cdnUrl)) {
            return imgUrl;
        }
        return cdnUrl + imgUrl;
    }

    String getSelectedIds() {
        String str = "";
        if (this.selectedItems == null) {
            return "";
        }
        for (int i10 = 0; i10 < this.selectedItems.size(); i10++) {
            str = str + this.selectedItems.get(i10).getTag_id();
            if (i10 != this.selectedItems.size() - 1) {
                str = str + ",";
            }
        }
        return str;
    }

    int getVideoDefaultHeight(Context context) {
        if (context == null) {
            return 0;
        }
        if (this.videoDefaultHeight == 0) {
            Resources resources = context.getResources();
            this.videoDefaultHeight = (int) (((resources.getDisplayMetrics().widthPixels - (resources.getDimensionPixelSize(R.dimen.mg_forum_post_item_padding) * 2)) * 1.0f) / 1.8f);
        }
        return this.videoDefaultHeight;
    }

    public void goMyAlbumActivity4PickPic() {
        Intent intent = new Intent(this, (Class<?>) MyAlbumActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(MyAlbumActivity.KEY_SELECTED_IMAGES, (Serializable) this.mSelectedImages);
        intent.putExtras(bundle);
        startActivityForResult(intent, 256);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void helpSolvePosts(int pid, int rid) {
        ForumResponse<ForumData.ForumPostsHelpSolveData> forumResponseG;
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                showToast(getString(R.string.net_connect_failed));
                return;
            }
            try {
                ForumRequestBean.ForumPostsHelpSolveRequestBean forumPostsHelpSolveRequestBeanD0 = com.join.mgps.Util.r0.d0(this, pid, rid);
                if (forumPostsHelpSolveRequestBeanD0 != null) {
                    forumPostsHelpSolveRequestBeanD0.setDevice_id("");
                    forumResponseG = this.rpcForumClient.g(forumPostsHelpSolveRequestBeanD0.getParams());
                } else {
                    forumResponseG = null;
                }
                if (forumResponseG == null) {
                    if (!com.join.mgps.Util.r0.Y0(this)) {
                        com.join.mgps.Util.r0.L0(this);
                    }
                    showToast("采纳失败，请重新操作！");
                    return;
                }
                int error = forumResponseG.getError();
                if (error == 0) {
                    ForumData.ForumPostsHelpSolveData data = forumResponseG.getData();
                    if (data.isResult()) {
                        processCommentHelpSolveSuccess(rid);
                        showToast("采纳成功！");
                    } else if (com.join.mgps.Util.t2.h(data.getMessage())) {
                        showToast("采纳失败，请重新操作！");
                    } else {
                        showToast(data.getMessage());
                    }
                } else if (error == 701) {
                    showToast(getResources().getString(R.string.forum_user_login_invalid));
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showToast("采纳失败，请重新操作！");
            }
        } finally {
            clearCommentMessage();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideExtensionBoard() {
        try {
            this.chat_layout_more.setVisibility(8);
            this.chat_layout_extension.setVisibility(8);
            this.chat_layout_extension_container.setVisibility(8);
            this.isShowInputExtensionBoard = false;
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void hideExtensionFunction(boolean hide) {
        hideExtensionBoard();
        if (hide) {
            this.btn_chat_extension.setVisibility(8);
        } else {
            this.btn_chat_extension.setVisibility(0);
        }
        this.isShowInputExtensionFunction = hide;
    }

    @Override // com.BaseAppCompatActivity
    public void hideKeyBoardHandler() {
        super.hideKeyBoardHandler();
    }

    public void hideSystemKeyBoard(View v10) {
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(v10.getWindowToken(), 0);
        this.isShowKeyboard = false;
    }

    @Click
    void image_add() {
        goMyAlbumActivity4PickPic();
    }

    public void initFields() {
        this.recommendClient = com.join.mgps.rpc.impl.d.O1();
        com.join.mgps.Util.j0.a().d(this);
    }

    public boolean isIgnored(MotionEvent ev) {
        return inRangeOfView(findViewById(new int[]{R.id.layout_chat_cell_container}[0]), ev);
    }

    boolean isPlayPositionVisible() {
        return false;
    }

    public boolean isShouldHideInput(View v10, MotionEvent event) {
        if (v10 == null || !(v10 instanceof EditText)) {
            return false;
        }
        int[] iArr = {0, 0};
        v10.getLocationInWindow(iArr);
        int i10 = iArr[0];
        int i11 = iArr[1];
        return event.getX() <= ((float) i10) || event.getX() >= ((float) (v10.getWidth() + i10)) || event.getY() <= ((float) i11) || event.getY() >= ((float) (v10.getHeight() + i11));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:100:0x017e A[PHI: r14
      0x017e: PHI (r14v4 int) = (r14v3 int), (r14v9 int) binds: [B:99:0x017c, B:75:0x0148] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:21:0x0033 A[Catch: Exception -> 0x0025, all -> 0x016d, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x0025, blocks: (B:15:0x0021, B:21:0x0033, B:25:0x0048, B:27:0x004e, B:28:0x0073), top: B:115:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0041  */
    /* JADX WARN: Code duplicated, block: B:25:0x0048 A[Catch: Exception -> 0x0025, all -> 0x016d, TRY_ENTER, TryCatch #3 {Exception -> 0x0025, blocks: (B:15:0x0021, B:21:0x0033, B:25:0x0048, B:27:0x004e, B:28:0x0073), top: B:115:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:27:0x004e A[Catch: Exception -> 0x0025, all -> 0x016d, TryCatch #3 {Exception -> 0x0025, blocks: (B:15:0x0021, B:21:0x0033, B:25:0x0048, B:27:0x004e, B:28:0x0073), top: B:115:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:28:0x0073 A[Catch: Exception -> 0x0025, all -> 0x016d, TRY_LEAVE, TryCatch #3 {Exception -> 0x0025, blocks: (B:15:0x0021, B:21:0x0033, B:25:0x0048, B:27:0x004e, B:28:0x0073), top: B:115:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x008c A[Catch: all -> 0x016d, Exception -> 0x0170, TRY_ENTER, TryCatch #0 {Exception -> 0x0170, blocks: (B:19:0x002b, B:30:0x008c, B:32:0x0092), top: B:111:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:32:0x0092 A[Catch: all -> 0x016d, Exception -> 0x0170, TRY_LEAVE, TryCatch #0 {Exception -> 0x0170, blocks: (B:19:0x002b, B:30:0x008c, B:32:0x0092), top: B:111:0x002b }] */
    /* JADX WARN: Code duplicated, block: B:35:0x00b6 A[Catch: Exception -> 0x016b, all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:37:0x00d2, B:39:0x00da, B:42:0x00ea, B:44:0x00f0, B:52:0x0105, B:54:0x0110, B:56:0x0117, B:58:0x011d, B:62:0x0129, B:64:0x012d, B:69:0x0137, B:73:0x0143, B:59:0x0123, B:61:0x0127, B:78:0x014d, B:84:0x015a, B:34:0x00b1, B:97:0x0174, B:35:0x00b6), top: B:113:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:37:0x00d2 A[Catch: Exception -> 0x016b, all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:37:0x00d2, B:39:0x00da, B:42:0x00ea, B:44:0x00f0, B:52:0x0105, B:54:0x0110, B:56:0x0117, B:58:0x011d, B:62:0x0129, B:64:0x012d, B:69:0x0137, B:73:0x0143, B:59:0x0123, B:61:0x0127, B:78:0x014d, B:84:0x015a, B:34:0x00b1, B:97:0x0174, B:35:0x00b6), top: B:113:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:39:0x00da A[Catch: Exception -> 0x016b, all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:37:0x00d2, B:39:0x00da, B:42:0x00ea, B:44:0x00f0, B:52:0x0105, B:54:0x0110, B:56:0x0117, B:58:0x011d, B:62:0x0129, B:64:0x012d, B:69:0x0137, B:73:0x0143, B:59:0x0123, B:61:0x0127, B:78:0x014d, B:84:0x015a, B:34:0x00b1, B:97:0x0174, B:35:0x00b6), top: B:113:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0110 A[Catch: Exception -> 0x016b, all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:37:0x00d2, B:39:0x00da, B:42:0x00ea, B:44:0x00f0, B:52:0x0105, B:54:0x0110, B:56:0x0117, B:58:0x011d, B:62:0x0129, B:64:0x012d, B:69:0x0137, B:73:0x0143, B:59:0x0123, B:61:0x0127, B:78:0x014d, B:84:0x015a, B:34:0x00b1, B:97:0x0174, B:35:0x00b6), top: B:113:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:59:0x0123 A[Catch: Exception -> 0x016b, all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:37:0x00d2, B:39:0x00da, B:42:0x00ea, B:44:0x00f0, B:52:0x0105, B:54:0x0110, B:56:0x0117, B:58:0x011d, B:62:0x0129, B:64:0x012d, B:69:0x0137, B:73:0x0143, B:59:0x0123, B:61:0x0127, B:78:0x014d, B:84:0x015a, B:34:0x00b1, B:97:0x0174, B:35:0x00b6), top: B:113:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:61:0x0127 A[Catch: Exception -> 0x016b, all -> 0x0184, TryCatch #1 {all -> 0x0184, blocks: (B:37:0x00d2, B:39:0x00da, B:42:0x00ea, B:44:0x00f0, B:52:0x0105, B:54:0x0110, B:56:0x0117, B:58:0x011d, B:62:0x0129, B:64:0x012d, B:69:0x0137, B:73:0x0143, B:59:0x0123, B:61:0x0127, B:78:0x014d, B:84:0x015a, B:34:0x00b1, B:97:0x0174, B:35:0x00b6), top: B:113:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:68:0x0136  */
    /* JADX WARN: Code duplicated, block: B:71:0x0141  */
    /* JADX WARN: Code duplicated, block: B:72:0x0142  */
    /* JADX WARN: Code duplicated, block: B:77:0x014b  */
    /* JADX WARN: Code duplicated, block: B:81:0x0154  */
    /* JADX WARN: Code duplicated, block: B:84:0x015a A[Catch: Exception -> 0x016b, all -> 0x0184, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0184, blocks: (B:37:0x00d2, B:39:0x00da, B:42:0x00ea, B:44:0x00f0, B:52:0x0105, B:54:0x0110, B:56:0x0117, B:58:0x011d, B:62:0x0129, B:64:0x012d, B:69:0x0137, B:73:0x0143, B:59:0x0123, B:61:0x0127, B:78:0x014d, B:84:0x015a, B:34:0x00b1, B:97:0x0174, B:35:0x00b6), top: B:113:0x001f }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0165  */
    @Background
    public void loadForumPostsData(boolean isReload, boolean clearComment, int page) throws Throwable {
        int i10;
        int i11;
        int i12;
        UserInfo userInfoT;
        ExtBean extBean;
        String from;
        String position;
        ForumResponse<ForumData.ForumPostsData> forumResponseV0;
        ForumData.ForumPostsData data;
        ForumBean.ForumPostsBean posts;
        List<ForumBean.ForumCommentBean> comment_list;
        List<ForumBean.ForumGagType> forum_gag_type;
        List<ForumCommentAdapter.z> list;
        boolean z10;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            changeLoadingState(17);
            stopXlistRefreshAndLoadMore();
            return;
        }
        if (this.forumPostsBean == null || page == (i10 = this.loadingPage)) {
            return;
        }
        if (i10 == -1) {
            stopXlistRefreshAndLoadMore();
            return;
        }
        this.loadingPage = page;
        boolean z11 = true;
        try {
            if (page > 1) {
                try {
                    try {
                        showMoreLoading();
                        try {
                            userInfoT = com.join.mgps.Util.r0.T(this);
                            extBean = this.extBean;
                            if (extBean != null) {
                                from = extBean.getFrom();
                                position = this.extBean.getPosition();
                            } else {
                                from = "";
                                position = from;
                            }
                            try {
                                if (page == 1) {
                                    if (com.join.mgps.Util.r0.Y0(this)) {
                                        forumResponseV0 = this.rpcForumClient.l0(this.forumPostsBean.getPid(), com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, userInfoT.getUid(), userInfoT.getToken(), "", from, position);
                                    } else {
                                        forumResponseV0 = this.rpcForumClient.l(this.forumPostsBean.getPid(), com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, "", from, position);
                                    }
                                    i12 = 0;
                                } else if (com.join.mgps.Util.r0.Y0(this)) {
                                    i12 = 0;
                                    forumResponseV0 = this.rpcForumClient.o0(this.forumPostsBean.getPid(), page, com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, userInfoT.getUid(), userInfoT.getToken(), "", from, position);
                                } else {
                                    i12 = 0;
                                    forumResponseV0 = this.rpcForumClient.v0(this.forumPostsBean.getPid(), page, com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, "", from, position);
                                }
                                if (forumResponseV0 != null) {
                                    this.loadingPage = i12;
                                    changeLoadingState(24);
                                    if (this.loadingPage != -1) {
                                        this.loadingPage = i12;
                                    }
                                    stopXlistRefreshAndLoadMore();
                                    return;
                                }
                                data = forumResponseV0.getData();
                                if (data != null) {
                                    changeLoadingState(24);
                                    if (this.loadingPage != -1) {
                                        this.loadingPage = i12;
                                    }
                                    stopXlistRefreshAndLoadMore();
                                    return;
                                }
                                posts = data.getPosts();
                                comment_list = data.getComment_list();
                                forum_gag_type = data.getForum_gag_type();
                                if (page != 1 && (posts == null || posts.getPid() == 0)) {
                                    this.loadingPage = -1;
                                    changeLoadingState(20);
                                    if (this.loadingPage != -1) {
                                        this.loadingPage = i12;
                                    }
                                    stopXlistRefreshAndLoadMore();
                                    return;
                                }
                                if (page == 1 && isReload) {
                                    setPostViewData(posts, true);
                                    processPostsInfo(posts);
                                    processGagType(forum_gag_type);
                                }
                                if (clearComment) {
                                    this.listData.clear();
                                }
                                if (comment_list != null || comment_list.size() == 0) {
                                    this.loadingPage = -1;
                                    if (page == 1) {
                                        this.pageCount = page;
                                    }
                                } else {
                                    this.pageCount = page;
                                    processCommentList(comment_list, page);
                                }
                                list = this.listData;
                                if (list != null || list.size() <= 0) {
                                    z10 = true;
                                } else {
                                    z10 = false;
                                }
                                changeCommentUI(z10);
                                changeLoadingState(32);
                                if (!isReload) {
                                    z11 = false;
                                }
                                notifyAdapter(z11);
                                if (this.loadingPage != -1) {
                                    this.loadingPage = i12;
                                }
                            } catch (Exception e10) {
                                e = e10;
                                i11 = 24;
                                changeLoadingState(i11);
                                e.printStackTrace();
                                if (this.loadingPage != -1) {
                                    this.loadingPage = i12;
                                }
                            }
                        } catch (Exception e11) {
                            e = e11;
                            i12 = 0;
                        }
                    } catch (Exception e12) {
                        e = e12;
                        i11 = 24;
                        i12 = 0;
                        changeLoadingState(i11);
                        e.printStackTrace();
                        if (this.loadingPage != -1) {
                            this.loadingPage = i12;
                        }
                        stopXlistRefreshAndLoadMore();
                    }
                } catch (Throwable th) {
                    th = th;
                    if (this.loadingPage != -1) {
                        this.loadingPage = 0;
                    }
                    stopXlistRefreshAndLoadMore();
                    throw th;
                }
            } else {
                userInfoT = com.join.mgps.Util.r0.T(this);
                extBean = this.extBean;
                if (extBean != null) {
                    from = extBean.getFrom();
                    position = this.extBean.getPosition();
                } else {
                    from = "";
                    position = from;
                }
                if (page == 1) {
                    if (com.join.mgps.Util.r0.Y0(this)) {
                        forumResponseV0 = this.rpcForumClient.l0(this.forumPostsBean.getPid(), com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, userInfoT.getUid(), userInfoT.getToken(), "", from, position);
                    } else {
                        forumResponseV0 = this.rpcForumClient.l(this.forumPostsBean.getPid(), com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, "", from, position);
                    }
                    i12 = 0;
                } else if (com.join.mgps.Util.r0.Y0(this)) {
                    i12 = 0;
                    forumResponseV0 = this.rpcForumClient.o0(this.forumPostsBean.getPid(), page, com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, userInfoT.getUid(), userInfoT.getToken(), "", from, position);
                } else {
                    i12 = 0;
                    forumResponseV0 = this.rpcForumClient.v0(this.forumPostsBean.getPid(), page, com.join.mgps.Util.r0.f49989d, this.see_lz, this.comment_order, "", from, position);
                }
                if (forumResponseV0 != null) {
                    this.loadingPage = i12;
                    changeLoadingState(24);
                    if (this.loadingPage != -1) {
                        this.loadingPage = i12;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                data = forumResponseV0.getData();
                if (data != null) {
                    changeLoadingState(24);
                    if (this.loadingPage != -1) {
                        this.loadingPage = i12;
                    }
                    stopXlistRefreshAndLoadMore();
                    return;
                }
                posts = data.getPosts();
                comment_list = data.getComment_list();
                forum_gag_type = data.getForum_gag_type();
                if (page != 1) {
                }
                if (page == 1) {
                    setPostViewData(posts, true);
                    processPostsInfo(posts);
                    processGagType(forum_gag_type);
                }
                if (clearComment) {
                    this.listData.clear();
                }
                if (comment_list != null) {
                    this.loadingPage = -1;
                    if (page == 1) {
                        this.pageCount = page;
                    }
                } else {
                    this.loadingPage = -1;
                    if (page == 1) {
                        this.pageCount = page;
                    }
                }
                list = this.listData;
                if (list != null) {
                    z10 = true;
                } else {
                    z10 = true;
                }
                changeCommentUI(z10);
                changeLoadingState(32);
                if (!isReload) {
                    z11 = false;
                }
                notifyAdapter(z11);
                if (this.loadingPage != -1) {
                    this.loadingPage = i12;
                }
            }
            stopXlistRefreshAndLoadMore();
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread(delay = 500)
    public void lodingVideo() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void modifyPraiseView(boolean like, int count) {
        if (like) {
            this.btn_chat_praise.setBackgroundResource(R.drawable.ic_forum_like);
        } else {
            this.btn_chat_praise.setBackgroundResource(R.drawable.ic_forum_unlike);
        }
        notifyAdapter(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyAdapter(boolean isReload) {
        if (isReload) {
            this.newAdapter.setNewData(this.listData);
        } else {
            this.newAdapter.notifyDataSetChanged();
        }
    }

    void notifyPlayViewOffset() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyTagAdded(String tagList) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void notifyTagRemoved(String tagList) {
    }

    void notifyUpdateUi(DownloadTask downloadTask, int event) {
    }

    void offsetContainer(int top, int offsetY) {
        if (getResources().getConfiguration().orientation == 2) {
            ViewCompat.setTranslationY(this.videoContainer, -this.videoContainer.getTop());
            return;
        }
        this.mTop = top;
        this.mOffsetY = offsetY;
        com.join.mgps.Util.h1.e("offsetContainer", "mTop=" + this.mTop, "mOffsetY=" + this.mOffsetY);
        ViewCompat.setTranslationY(this.videoContainer, (float) this.mOffsetY);
    }

    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        int i10;
        super.onActivityResult(requestCode, resultCode, data);
        try {
            if (requestCode == 256) {
                this.mSelectedImages.clear();
                List<String> imagesFromAlbum = getImagesFromAlbum(data);
                if (imagesFromAlbum != null) {
                    this.mSelectedImages.addAll(imagesFromAlbum);
                }
                this.mPicsAdapter.c(this.mSelectedImages);
                this.mPicsAdapter.notifyDataSetChanged();
                this.mPicsAdapter.d(false);
                if (this.mSelectedImages.size() > 0) {
                    showExtensionContentBoard();
                    return;
                }
                return;
            }
            if (requestCode == 10001 && data != null && resultCode == -1) {
                Bundle extras = data.getExtras();
                String string = "";
                if (extras != null) {
                    int i11 = extras.getInt("action");
                    string = extras.getString("ids");
                    i10 = i11;
                } else {
                    i10 = 0;
                }
                this.selectedItems = (List) JsonMapper.getInstance().fromJson(string, JsonMapper.getInstance().createCollectionType(ArrayList.class, RecommendLabelTag.class));
                if (i10 == 1) {
                    addPostTag(getSelectedIds());
                } else if (i10 == 2) {
                    removePostTag(getSelectedIds());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.isShowInputExtensionBoard) {
            btn_chat_extension();
            return;
        }
        if (this.isShowKeyboard) {
            clearCommentMessage();
            return;
        }
        setResult4Request();
        if (JCVideoPlayer.d()) {
            return;
        }
        super.onBackPressed();
    }

    @Click({R.id.iv_more})
    void onClickMore() {
        if (this.mForumPostsFuncWindow == null) {
            initForumPostsFuncPopupWindow();
        }
        if (this.mForumPostsFuncWindow.isShowing()) {
            this.mForumPostsFuncWindow.dismiss();
        } else {
            showForumPostsFuncPopupWindow(this.iv_more);
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.activity.ComponentActivity, android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration newConfig) {
        int i10 = newConfig.keyboard;
        if (i10 == 16) {
            if (this.isShowInputExtensionBoard) {
                btn_chat_extension();
            }
        } else if (i10 == 16 && this.isShowInputExtensionBoard) {
            btn_chat_extension();
        }
        newConfig.toString();
        videoConfigurationChanged(newConfig);
        super.onConfigurationChanged(newConfig);
        if (newConfig.orientation == 2) {
            setSystemUiHide(true);
        } else {
            setSystemUiHide(false);
            JCVideoPlayer.d();
        }
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.y0 y0Var = this.forumLoadingDialog;
        if (y0Var != null && y0Var.isShowing()) {
            this.forumLoadingDialog.dismiss();
        }
        this.forumLoadingDialog = null;
        net.bither.util.b.p().y(this.mCompressListener);
        net.bither.util.b.p().f94541c = new Hashtable<>();
        net.bither.util.b.p().f94540b = new Hashtable<>();
        clearImageMemoryLruCache();
        com.join.mgps.Util.j0.a().e(this);
        super.onDestroy();
    }

    @Subscribe(threadMode = ThreadMode.MAIN)
    public void onEventMainThread(com.join.mgps.event.r downloadTaskEvent) {
        DownloadTask downloadTaskA = downloadTaskEvent.a();
        changeDownloadTaskNumber(downloadTaskA, downloadTaskEvent.c());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("zip DownloadStatus =");
        sb2.append(downloadTaskEvent.c());
        int iC = downloadTaskEvent.c();
        if (iC == 2) {
            updateUI(downloadTaskA, 1);
            return;
        }
        if (iC == 3) {
            updateUI(downloadTaskA, 2);
            return;
        }
        if (iC != 5) {
            if (iC == 6) {
                updateUI(downloadTaskA, 6);
                return;
            }
            if (iC == 7) {
                updateUI(downloadTaskA, 3);
                return;
            }
            if (iC == 8) {
                updateUI(downloadTaskA, 4);
                return;
            }
            if (iC != 48) {
                switch (iC) {
                    case 10:
                        updateUI(downloadTaskA, 7);
                        break;
                    case 12:
                        updateUI(downloadTaskA, 8);
                        break;
                    case 13:
                        updateUI(downloadTaskA, 9);
                        break;
                }
                return;
            }
        }
        updateUI(downloadTaskA, 5);
    }

    @Override // com.BaseAppCompatActivity
    public void onFavoriteChanged(int pid, boolean isFavorite) {
        super.onFavoriteChanged(pid, isFavorite);
        ArrayList arrayList = new ArrayList();
        arrayList.add(this.forumPostsBean);
        com.join.mgps.Util.r0.j(pid, isFavorite, arrayList);
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        if (keyCode == 4 && event.getRepeatCount() == 0 && getResources().getConfiguration().orientation == 2) {
            this.mFullScreenFlag = true;
            toggleFullScreen();
            return true;
        }
        if (keyCode == 4) {
            finishM();
        }
        return super.onKeyDown(keyCode, event);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        stop();
        super.onPause();
        if (fm.jiecao.jcvideoplayer_lib.f.c() == null || fm.jiecao.jcvideoplayer_lib.f.c().f91211c != 3) {
            this.mAbsListView = null;
            this.mItemsPositionGetter = null;
        }
        JCVideoPlayer.H();
    }

    @Receiver(actions = {p5.a.G, p5.a.I})
    void onPayGameSuccess(@Receiver.Extra("gameData") CollectionBeanSub sub) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.BaseAppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        net.bither.util.b.p().e(this.mCompressListener);
    }

    @Click({R.id.rl_comment_count})
    void onScrollStickView() {
        this.csl_view.c0(this.fsv_stick);
    }

    @Override // com.BaseAppCompatActivity, androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onStop() {
        super.onStop();
    }

    void pause() {
        MyVideoView myVideoView = this.video;
        if (myVideoView.isPlaying() && (myVideoView != null)) {
            this.video.pause();
            this.play.setVisibility(0);
        }
    }

    void play(String videoUrl, String coverUrl) {
        String str = this.videoUrl;
        if (str != null && str.equals(videoUrl) && this.video.isPlaying()) {
            pause();
            return;
        }
        MyVideoView myVideoView = this.video;
        if (myVideoView != null) {
            if (myVideoView.E() && this.videoUrl.equals(videoUrl)) {
                this.video.seekTo(0);
                resume();
            } else {
                this.video.G();
            }
        }
        this.videoUrl = videoUrl;
        this.coverUrl = coverUrl;
        if (com.join.mgps.Util.t2.h(videoUrl)) {
            stop();
            return;
        }
        this.cover.setVisibility(8);
        this.play.setVisibility(8);
        playVideo();
    }

    void playBackground(boolean flag) {
        Bundle bundle = new Bundle();
        bundle.putString("key_mediacmd", MGMainActivity.MediaCmd.CMD_PLAY_BACKGROUND.name());
        bundle.putStringArray("key_mediacmd_params", new String[]{String.valueOf(flag)});
        callbackPlayVideo(bundle);
    }

    void postFuncHost() throws Throwable {
        if (this.loadingState == 0) {
            return;
        }
        if (this.see_lz == 0) {
            this.see_lz = 1;
        } else {
            this.see_lz = 0;
        }
        refreshMoreFuncHostImg();
        this.loadingState = 0;
        this.loadingPage = 0;
        this.pageCount = 0;
        loading(false);
    }

    @Click
    void postFuncMore() {
        if (this.mForumPostsFuncWindow == null) {
            initForumPostsFuncPopupWindow();
        }
        if (this.mForumPostsFuncWindow.isShowing()) {
            this.mForumPostsFuncWindow.dismiss();
        } else {
            showForumPostsFuncPopupWindow(this.actionbarLayout);
        }
    }

    void postFuncSort() throws Throwable {
        if (this.loadingState == 0) {
            return;
        }
        if (this.comment_order.equals("asc")) {
            this.comment_order = "desc";
        } else {
            this.comment_order = "asc";
        }
        refreshMoreFuncSortImg();
        this.loadingState = 0;
        this.loadingPage = 0;
        loading(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void postGag(String guid, int timeType, String remarks) {
        ForumData.ForumResult data;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingPostGag = false;
            return;
        }
        boolean z10 = true;
        if (this.doingPostGag) {
            return;
        }
        this.doingPostGag = true;
        this.forumPostsBean.getPid();
        String uid = AccountUtil_.getInstance_(this).getUid();
        String token = AccountUtil_.getInstance_(this).getToken();
        ForumRequestBean.PostGagRequestBean postGagRequestBean = new ForumRequestBean.PostGagRequestBean();
        postGagRequestBean.setUid(uid);
        postGagRequestBean.setToken(token);
        postGagRequestBean.setGag_uid(guid);
        postGagRequestBean.setGag_time(timeType);
        postGagRequestBean.setRemarks(remarks);
        try {
            try {
                ForumResponse<ForumData.ForumResult> forumResponseL = this.rpcForumClient.L(postGagRequestBean.getParams());
                if (forumResponseL == null || forumResponseL.getError() != 0 || (data = forumResponseL.getData()) == null || !data.isResult()) {
                    z10 = false;
                }
                if (z10) {
                    showToast("禁言成功");
                } else {
                    String msg = (forumResponseL == null || forumResponseL.getData() == null) ? "" : forumResponseL.getData().getMsg();
                    if (TextUtils.isEmpty(msg)) {
                        showToast("禁言失败");
                    } else {
                        showToast(msg);
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.doingPostGag = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void praisePosts() {
        try {
            if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                showToast("尚未登录，请先登录！");
                return;
            }
            ForumRequestBean.ForumPostsPraiseRequestBean forumPostsPraiseRequestBeanE0 = com.join.mgps.Util.r0.e0(this, this.curPid);
            forumPostsPraiseRequestBeanE0.setDevice_id("");
            ForumResponse<ForumData.ForumPostsPraiseData> forumResponseR = this.rpcForumClient.R(forumPostsPraiseRequestBeanE0.getParams());
            if (forumResponseR == null) {
                return;
            }
            if (forumResponseR.getError() == 706) {
                reversePraise();
                showDialog();
                return;
            }
            ForumData.ForumPostsPraiseData data = forumResponseR.getData();
            boolean zIs_praise = this.forumPostsBean.is_praise();
            if (data.isResult()) {
                if (zIs_praise) {
                    showToast("点赞成功");
                } else {
                    showToast("取消点赞成功");
                }
            } else if (zIs_praise) {
                showToast("点赞失败");
            } else {
                showToast("取消点赞失败");
            }
            com.join.mgps.Util.r0.m1(forumPostsPraiseRequestBeanE0, data);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void preLoadImages(ListView view, int firstVisibleItem, int lastVisiblePos, int totalItemCount) {
        if (lastVisiblePos == totalItemCount - 1 || this.isPreLoading) {
            return;
        }
        try {
            this.isPreLoading = true;
            ArrayList arrayList = new ArrayList();
            for (int i10 = lastVisiblePos + 1; i10 < this.listData.size(); i10++) {
                Object itemAtPosition = view.getItemAtPosition(lastVisiblePos);
                if (itemAtPosition instanceof ForumPostsAdapter.e0.k) {
                    arrayList.add(((ForumPostsAdapter.e0.k) itemAtPosition).f59615a);
                } else if (itemAtPosition instanceof ForumPostsAdapter.e0.p) {
                    arrayList.add(((ForumPostsAdapter.e0.p) itemAtPosition).f59638a);
                } else if (itemAtPosition instanceof ForumPostsAdapter.e0.l) {
                    arrayList.addAll(((ForumPostsAdapter.e0.l) itemAtPosition).f59618a);
                } else if (itemAtPosition instanceof ForumPostsAdapter.e0.b) {
                    arrayList.add(((ForumPostsAdapter.e0.b) itemAtPosition).f59548a);
                }
            }
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                com.join.android.app.common.utils.l.k((String) arrayList.get(i11));
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        } finally {
            this.isPreLoading = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processCommentDeleteSuccess(int pid) {
        try {
            if (this.forumPostsBean.getCommit() > 0) {
                ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
                forumPostsBean.setCommit(forumPostsBean.getCommit() - 1);
                refreshCommentCount();
            }
            notifyAdapter(false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void processCommentHelpSolveSuccess(int pid) {
        try {
            this.forumPostsBean.setSolve_flg(1);
            for (int i10 = 0; i10 < this.newAdapter.getItemCount(); i10++) {
                ForumCommentAdapter.z zVar = (ForumCommentAdapter.z) this.newAdapter.getItem(i10);
                if (zVar.a() instanceof ForumBean.ForumCommentBean) {
                    ForumBean.ForumCommentBean forumCommentBean = (ForumBean.ForumCommentBean) zVar.a();
                    if (forumCommentBean.getPid() == pid) {
                        forumCommentBean.setAnswer_flg(1);
                        break;
                    }
                }
            }
            notifyAdapter(false);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processCommentList(List<ForumBean.ForumCommentBean> comment_list, int page) {
        if (comment_list != null) {
            try {
                if (comment_list.size() > 0) {
                    for (int i10 = 0; i10 < comment_list.size(); i10++) {
                        try {
                            wrapCommentItem(comment_list.get(i10), false);
                        } catch (Exception e10) {
                            e10.printStackTrace();
                        }
                    }
                }
            } catch (Exception e11) {
                e11.printStackTrace();
                return;
            }
        }
        this.newAdapter.setNewData(this.listData);
        refreshCommentCount();
        stopXlistRefreshAndLoadMore();
        lodingVideo();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void processCommentReplyDirectSendSuccess(ForumBean.ForumCommentReplyBean bean) {
        for (int i10 = 0; i10 < this.newAdapter.getItemCount(); i10++) {
            try {
                ForumCommentAdapter.z zVar = (ForumCommentAdapter.z) this.newAdapter.getItem(i10);
                if (zVar.a() instanceof ForumBean.ForumCommentBean) {
                    ForumBean.ForumCommentBean forumCommentBean = (ForumBean.ForumCommentBean) zVar.a();
                    if (bean.getRrid() == 0 && this.curCid == forumCommentBean.getPid()) {
                        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                        if (reply_list == null) {
                            reply_list = new ArrayList<>();
                        }
                        ArrayList arrayList = new ArrayList();
                        arrayList.addAll(reply_list);
                        arrayList.add(bean);
                        forumCommentBean.setReply_list(arrayList);
                        break;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
        forumPostsBean.setCommit(forumPostsBean.getCommit() + 1);
        refreshCommentCount();
        com.join.mgps.Util.a3.b(this).d("评论成功，内容将在审核后显示");
        notifyAdapter(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void processCommentReplySendSuccess(ForumBean.ForumCommentReplyBean bean) {
        for (int i10 = 0; i10 < this.newAdapter.getItemCount(); i10++) {
            try {
                ForumCommentAdapter.z zVar = (ForumCommentAdapter.z) this.newAdapter.getItem(i10);
                if (zVar.a() instanceof ForumBean.ForumCommentBean) {
                    ForumBean.ForumCommentBean forumCommentBean = (ForumBean.ForumCommentBean) zVar.a();
                    if (this.curCid == forumCommentBean.getPid()) {
                        List<ForumBean.ForumCommentReplyBean> reply_list = forumCommentBean.getReply_list();
                        if (reply_list != null && reply_list.size() != 0) {
                            ArrayList arrayList = new ArrayList();
                            arrayList.addAll(reply_list);
                            for (int i11 = 0; i11 < reply_list.size(); i11++) {
                                ForumBean.ForumCommentReplyBean forumCommentReplyBean = reply_list.get(i11);
                                if (forumCommentReplyBean.getRid() == bean.getRrid()) {
                                    bean.setRuid(forumCommentReplyBean.getUid());
                                    bean.setRnickname(forumCommentReplyBean.getNickname());
                                    arrayList.add(bean);
                                    reply_list.clear();
                                    reply_list.addAll(arrayList);
                                    break;
                                }
                            }
                        }
                        ArrayList arrayList2 = new ArrayList();
                        bean.setRuid(forumCommentBean.getUid());
                        bean.setRnickname(forumCommentBean.getNickname());
                        arrayList2.add(bean);
                        forumCommentBean.setReply_list(arrayList2);
                        break;
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                return;
            }
        }
        com.join.mgps.Util.a3.b(this).d("评论成功，内容将在审核后显示");
        notifyAdapter(false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processCommentSendSuccess(ForumBean.ForumCommentBean bean) {
        try {
            notifyAdapter(false);
            com.join.mgps.Util.a3.b(this).d("评论成功，内容将在审核后显示");
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processDeleteCommentReplySuccess(int rid) {
    }

    void processMoreFuncFavoriteFailed() {
        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
        if (forumPostsBean == null) {
            return;
        }
        forumPostsBean.setIs_favorite(!forumPostsBean.is_favorite());
        refreshMoreFuncHostImg();
    }

    void processPostsGame(ForumBean.GameInfo gameInfo) {
        this.gameInfo = gameInfo;
        if (gameInfo != null) {
            try {
                DownloadTask downloadTaskG = q5.f.M().G(gameInfo.getGame_id());
                this.gameInfo.setDownloadTask(downloadTaskG);
                Map<String, DownloadTask> map = this.downloadTasksMap;
                if (map == null || downloadTaskG == null || map.containsKey(downloadTaskG.getCrc_link_type_val())) {
                    return;
                }
                this.downloadTasks.add(downloadTaskG);
                this.downloadTasksMap.put(downloadTaskG.getCrc_link_type_val(), downloadTaskG);
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
    }

    void processPostsInfo(ForumBean.ForumPostsBean posts) {
        this.forumPostsBean = posts;
        if (posts != null) {
            modifyPraiseView(posts.is_praise(), this.forumPostsBean.getPraise());
            refreshMoreFuncFavoriteImg();
        }
        if (posts != null) {
            processPostsGame(posts.getRelation_game());
        }
    }

    /* JADX WARN: Code duplicated, block: B:42:0x012c A[PHI: r9
      0x012c: PHI (r9v4 java.util.List<java.lang.String>) = (r9v3 java.util.List<java.lang.String>), (r9v10 java.util.List<java.lang.String>) binds: [B:41:0x012a, B:34:0x0119] A[DONT_GENERATE, DONT_INLINE]] */
    void processSendCommentResult(ForumRequestBean.ForumPostsCommentRequestBean requestBean, ForumResponse<ForumData.ForumPostsCommentData> response) {
        List<String> list;
        try {
            if (response == null) {
                showSendPromptDialog(1);
                clearCommentMessage();
                List<String> list2 = this.mSelectedImages;
                if (list2 != null) {
                    list2.clear();
                    deleteTempPic(requestBean.getImages());
                }
                hideExtensionBoard();
                return;
            }
            ForumData.ForumPostsCommentData data = response.getData();
            if (data.isResult()) {
                showSendPromptDialog(2);
                ForumBean.ForumCommentBean forumCommentBean = new ForumBean.ForumCommentBean();
                forumCommentBean.setPid(data.getPid());
                UserInfo userInfoT = com.join.mgps.Util.r0.T(this);
                forumCommentBean.setUid(userInfoT.getUid());
                forumCommentBean.setNickname(userInfoT.getNickname());
                forumCommentBean.setAvatar_src(userInfoT.getAvatarSrc());
                forumCommentBean.setMessage(requestBean.getMessage());
                forumCommentBean.setAdd_time(System.currentTimeMillis() / 1000);
                forumCommentBean.setPic_list(data.getPic_list());
                forumCommentBean.setRaw_pic_list(data.getRaw_pic_list());
                forumCommentBean.setFloor(data.getFloor());
                int iIntValue = 0;
                forumCommentBean.setForum_auth(this.forumPostsBean.getAuth() == 3 ? 1 : 0);
                if (com.join.mgps.Util.t2.i(userInfoT.getSecretKey())) {
                    try {
                        iIntValue = Integer.valueOf(com.join.mgps.Util.b.vl(com.join.mgps.Util.a.b(userInfoT.getSecretKey()))).intValue();
                    } catch (Exception unused) {
                    }
                    forumCommentBean.setVip_level(iIntValue);
                }
                forumCommentBean.setSvip_level(userInfoT.getSVIPLevel());
                forumCommentBean.setIs_moderator(data.is_moderator());
                forumCommentBean.setMember_honor(data.getMember_honor());
                processCommentSendSuccess(forumCommentBean);
                showRewardToast(RewardType.COMMENT_POST, data.getReward_money(), data.getReward_exp());
                processSendCommentResultRefreshCommenCount(1);
                deleteTempPic(requestBean.getImages());
            } else {
                if (data.getError_type() == 1) {
                    dismissSendPromptDialog();
                    showPrePostingHintDialog(data.getError_type());
                    clearCommentMessage();
                    List<String> list3 = this.mSelectedImages;
                    if (list3 != null) {
                        list3.clear();
                        deleteTempPic(requestBean.getImages());
                    }
                    hideExtensionBoard();
                    return;
                }
                if (TextUtils.isEmpty(data.getMsg())) {
                    showSendPromptDialog(1);
                } else {
                    dismissSendPromptDialog();
                    showToast(data.getMsg());
                }
            }
            clearCommentMessage();
            list = this.mSelectedImages;
            if (list != null) {
                list.clear();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showSendPromptDialog(1);
            clearCommentMessage();
            list = this.mSelectedImages;
            if (list != null) {
                list.clear();
            }
        } finally {
            clearCommentMessage();
            List<String> list4 = this.mSelectedImages;
            if (list4 != null) {
                list4.clear();
                deleteTempPic(requestBean.getImages());
            }
            hideExtensionBoard();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void processSendCommentResultRefreshCommenCount(int diff) {
        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
        if (forumPostsBean == null) {
            return;
        }
        forumPostsBean.setCommit(forumPostsBean.getCommit() + diff);
        notifyAdapter(false);
    }

    void refreshActive() {
        if (this.isActive) {
            this.videoContainer.setVisibility(0);
        } else {
            this.videoContainer.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshMoreFuncBestImg() {
        if (this.moreFuncBestImg == null) {
            return;
        }
        if (this.forumPostsBean.getBest() == 1) {
            this.moreFuncBestImg.setImageResource(R.drawable.more_func_best_pressed);
        } else {
            this.moreFuncBestImg.setImageResource(R.drawable.more_func_best_default);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshMoreFuncFavoriteImg() {
        if (this.btn_chat_star == null) {
            return;
        }
        if (this.forumPostsBean.is_favorite()) {
            this.btn_chat_star.setBackgroundResource(R.drawable.ic_forum_star_h);
        } else {
            this.btn_chat_star.setBackgroundResource(R.drawable.ic_forum_star_n);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void refreshMoreFuncHostImg() {
        if (this.see_lz == 0) {
            this.postFuncHost.setTextColor(-11184811);
            this.postFuncHost.setBackgroundResource(R.drawable.post_host_default);
        } else {
            this.postFuncHost.setTextColor(-1);
            this.postFuncHost.setBackgroundResource(R.drawable.post_host_pressed);
        }
    }

    void refreshMoreFuncSortImg() {
        if (this.moreFuncBestImg == null) {
            return;
        }
        if (this.comment_order.equals("asc")) {
            this.moreFuncSortImg.setImageResource(R.drawable.more_func_alphabet);
        } else {
            this.moreFuncSortImg.setImageResource(R.drawable.more_func_alphabet_selected);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void removePostTag(String tagList) {
        ForumData.HomepageRecommendLabel data;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingRemoveTags = false;
            return;
        }
        boolean z10 = true;
        if (this.doingRemoveTags) {
            return;
        }
        this.doingRemoveTags = true;
        int pid = this.forumPostsBean.getPid();
        int post_type = this.forumPostsBean.getPost_type();
        String uid = AccountUtil_.getInstance_(this).getUid();
        String token = AccountUtil_.getInstance_(this).getToken();
        try {
            try {
                if (com.join.mgps.Util.r0.c0(this, pid) != null) {
                    ForumResponse<ForumData.HomepageRecommendLabel> forumResponseM0 = this.rpcForumClient.m0(pid, post_type, tagList, uid, token);
                    if (forumResponseM0 == null || forumResponseM0.getError() != 0 || (data = forumResponseM0.getData()) == null || !data.isResult()) {
                        z10 = false;
                    }
                    if (z10) {
                        showToast("移除话题成功");
                        notifyTagRemoved(tagList);
                    } else {
                        String msg = (forumResponseM0 == null || forumResponseM0.getData() == null) ? "" : forumResponseM0.getData().getMsg();
                        if (TextUtils.isEmpty(msg)) {
                            showToast("移除话题失败");
                        } else {
                            showToast(msg);
                        }
                        List<RecommendLabelTag> list = this.selectedItems;
                        if (list != null) {
                            list.clear();
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                List<RecommendLabelTag> list2 = this.selectedItems;
                if (list2 != null) {
                    list2.clear();
                }
            }
        } finally {
            this.doingRemoveTags = false;
        }
    }

    RelativeLayout.LayoutParams resetVideoContainerParams() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.videoContainer.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.width = -1;
            layoutParams.height = -1;
            this.videoContainer.setPadding(0, 0, 0, 0);
        }
        RelativeLayout relativeLayout = this.videoLayout;
        if (relativeLayout == null) {
            return layoutParams;
        }
        FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams2 != null) {
            layoutParams2.height = -1;
        }
        this.videoContainer.setTop(0);
        return layoutParams;
    }

    void resume() {
        MyVideoView myVideoView = this.video;
        if (!myVideoView.E() || !(myVideoView != null)) {
            playVideo();
            return;
        }
        this.loadingLayout.setVisibility(8);
        this.cover.setVisibility(8);
        this.play.setVisibility(8);
        this.video.start();
        MediaController mediaController = this.mediaController;
        if (mediaController != null) {
            mediaController.setVisibility(8);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendComment() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                this.toggleSendOn = 0;
                showToast(getString(R.string.net_connect_failed));
                return;
            }
            if (!com.join.mgps.Util.r0.Y0(this)) {
                com.join.mgps.Util.r0.L0(this);
                showToast("尚未登录，请先登录！");
            } else {
                if (TextUtils.isEmpty(this.curMessage) || TextUtils.isEmpty(this.curMessage.trim())) {
                    showToast("输入内容为空请重新输入！");
                    return;
                }
                showSendPromptDialog(0);
                this.toggleSendOn = 1;
                net.bither.util.b.p().x();
            }
        } catch (Exception e10) {
            this.toggleSendOn = 0;
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void sendCommentReply() {
        try {
            try {
                if (!com.join.android.app.common.utils.m.j(this)) {
                    showToast(getString(R.string.net_connect_failed));
                } else if (!com.join.mgps.Util.r0.Y0(this)) {
                    com.join.mgps.Util.r0.L0(this);
                    showToast("尚未登录，请先登录！");
                    clearCommentMessage();
                    return;
                } else {
                    if (TextUtils.isEmpty(this.curMessage) || TextUtils.isEmpty(this.curMessage.trim())) {
                        showToast("输入内容为空请重新输入！");
                        clearCommentMessage();
                        return;
                    }
                    showSendPromptDialog(0);
                    synchronized (Integer.valueOf(this.curRid)) {
                        if (this.curRid == 0) {
                            sendCommentReplyRequest();
                        } else {
                            sendCommentReplyReplyRequest();
                        }
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                showSendPromptDialog(1);
            }
            clearCommentMessage();
        } catch (Throwable th) {
            clearCommentMessage();
            throw th;
        }
    }

    public void setAllText(String str) {
        this.headAdapter.v0(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code duplicated, block: B:20:0x0047 A[Catch: all -> 0x008d, Exception -> 0x008f, TryCatch #0 {Exception -> 0x008f, blocks: (B:8:0x0025, B:10:0x002d, B:12:0x0033, B:14:0x003b, B:20:0x0047, B:22:0x004f, B:24:0x005a, B:28:0x0064, B:23:0x0055, B:30:0x006a, B:32:0x0070, B:34:0x007d, B:36:0x0083, B:37:0x0087), top: B:48:0x0025, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:22:0x004f A[Catch: all -> 0x008d, Exception -> 0x008f, TryCatch #0 {Exception -> 0x008f, blocks: (B:8:0x0025, B:10:0x002d, B:12:0x0033, B:14:0x003b, B:20:0x0047, B:22:0x004f, B:24:0x005a, B:28:0x0064, B:23:0x0055, B:30:0x006a, B:32:0x0070, B:34:0x007d, B:36:0x0083, B:37:0x0087), top: B:48:0x0025, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:23:0x0055 A[Catch: all -> 0x008d, Exception -> 0x008f, TryCatch #0 {Exception -> 0x008f, blocks: (B:8:0x0025, B:10:0x002d, B:12:0x0033, B:14:0x003b, B:20:0x0047, B:22:0x004f, B:24:0x005a, B:28:0x0064, B:23:0x0055, B:30:0x006a, B:32:0x0070, B:34:0x007d, B:36:0x0083, B:37:0x0087), top: B:48:0x0025, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:26:0x0062  */
    /* JADX WARN: Code duplicated, block: B:27:0x0063  */
    /* JADX WARN: Code duplicated, block: B:29:0x0068  */
    /* JADX WARN: Code duplicated, block: B:33:0x007b  */
    /* JADX WARN: Code duplicated, block: B:36:0x0083 A[Catch: all -> 0x008d, Exception -> 0x008f, TryCatch #0 {Exception -> 0x008f, blocks: (B:8:0x0025, B:10:0x002d, B:12:0x0033, B:14:0x003b, B:20:0x0047, B:22:0x004f, B:24:0x005a, B:28:0x0064, B:23:0x0055, B:30:0x006a, B:32:0x0070, B:34:0x007d, B:36:0x0083, B:37:0x0087), top: B:48:0x0025, outer: #1 }] */
    /* JADX WARN: Code duplicated, block: B:37:0x0087 A[Catch: all -> 0x008d, Exception -> 0x008f, TRY_LEAVE, TryCatch #0 {Exception -> 0x008f, blocks: (B:8:0x0025, B:10:0x002d, B:12:0x0033, B:14:0x003b, B:20:0x0047, B:22:0x004f, B:24:0x005a, B:28:0x0064, B:23:0x0055, B:30:0x006a, B:32:0x0070, B:34:0x007d, B:36:0x0083, B:37:0x0087), top: B:48:0x0025, outer: #1 }] */
    @Background
    public void setFirstPost() {
        ForumData.ForumResult data;
        boolean z10;
        String msg;
        if (!com.join.android.app.common.utils.m.j(this)) {
            showToast(getString(R.string.net_connect_failed));
            this.doingSetFirstPost = false;
            return;
        }
        int i10 = 1;
        if (this.doingSetFirstPost) {
            return;
        }
        this.doingSetFirstPost = true;
        try {
            try {
                ForumResponse<ForumData.ForumResult> forumResponseD = this.rpcForumClient.D(this.forumPostsBean.getPid(), AccountUtil_.getInstance_(this).getUid(), AccountUtil_.getInstance_(this).getToken());
                if (forumResponseD != null && forumResponseD.getError() == 0) {
                    data = forumResponseD.getData();
                    if (data != null && data.isResult()) {
                        z10 = true;
                    }
                    if (z10) {
                        if (this.forumPostsBean.getFirst() != 1) {
                            showToast("帖子置顶成功");
                        } else {
                            showToast("帖子取消置顶成功");
                        }
                        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
                        if (data.isFirst()) {
                            i10 = 0;
                        }
                        forumPostsBean.setFirst(i10);
                    } else {
                        if (forumResponseD != null || forumResponseD.getData() == null) {
                            msg = "";
                        } else {
                            msg = forumResponseD.getData().getMsg();
                        }
                        if (TextUtils.isEmpty(msg)) {
                            showToast("帖子置顶失败");
                        } else {
                            showToast(msg);
                        }
                    }
                }
                data = null;
                z10 = false;
                if (z10) {
                    if (this.forumPostsBean.getFirst() != 1) {
                        showToast("帖子置顶成功");
                    } else {
                        showToast("帖子取消置顶成功");
                    }
                    ForumBean.ForumPostsBean forumPostsBean2 = this.forumPostsBean;
                    if (data.isFirst()) {
                        i10 = 0;
                    }
                    forumPostsBean2.setFirst(i10);
                } else {
                    if (forumResponseD != null) {
                        msg = "";
                    } else {
                        msg = "";
                    }
                    if (TextUtils.isEmpty(msg)) {
                        showToast(msg);
                    } else {
                        showToast("帖子置顶失败");
                    }
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        } finally {
            this.doingSetFirstPost = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setPostViewData(ForumBean.ForumPostsBean forumPostsBean, boolean z10) {
        String message;
        Object e0Var;
        Object e0Var2;
        String str = "newSpan";
        int i10 = 1;
        if ((forumPostsBean.getSubject() != null && !com.join.mgps.Util.t2.h(forumPostsBean.getSubject().trim())) || (forumPostsBean.getTag_list() != null && forumPostsBean.getTag_list().size() != 0)) {
            this.headData.add(new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.POST_SUBJECT, new ForumPostsAdapter.e0.o(forumPostsBean.getBest() > 0, forumPostsBean.getSubject(), forumPostsBean.getHelp() > 0, forumPostsBean.getHelp_money() + "", forumPostsBean.getTag_info(), forumPostsBean.getTag_list(), forumPostsBean.getFid(), forumPostsBean.getFname())));
        }
        ForumPostsAdapter.e0.i iVar = new ForumPostsAdapter.e0.i(true, forumPostsBean.getUid(), forumPostsBean.getAvatar_src(), forumPostsBean.getNickname(), forumPostsBean.getAdd_time(), forumPostsBean.getFirst() > 0, forumPostsBean.getPid(), forumPostsBean.getForum_auth() == 1, forumPostsBean.isOfficialAccount(), forumPostsBean.getSolve_flg(), forumPostsBean.getVip_level(), forumPostsBean.getSvip_level(), forumPostsBean.getCopper_title() != null ? forumPostsBean.getCopper_title().getBattleTitle() : "", forumPostsBean.getCopper_title() != null ? forumPostsBean.getCopper_title().getBattleColor() : "", forumPostsBean.is_moderator(), forumPostsBean.getMember_honor(), forumPostsBean.getFname(), forumPostsBean.getFid(), forumPostsBean.getHelp() > 0, forumPostsBean.getHelp_money() + "");
        updatePostTitleView(iVar);
        this.headData.add(new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.POST_HEADER1, iVar));
        try {
            if (com.join.mgps.Util.t2.i(forumPostsBean.getSubject())) {
                message = forumPostsBean.getSubject();
            } else {
                message = com.join.mgps.Util.t2.i(forumPostsBean.getMessage()) ? forumPostsBean.getMessage() : "";
            }
            if (!com.join.mgps.Util.t2.h(forumPostsBean.getMessage())) {
                ArrayList arrayList = new ArrayList();
                Html.ImageGetter imageGetter = null;
                if (com.join.mgps.Util.t2.h(forumPostsBean.getMessage().trim()) || !HtmlDocUtil.d(forumPostsBean.getMessage())) {
                    boolean z11 = true;
                    ForumPostsAdapter.ViewType viewType = ForumPostsAdapter.ViewType.POST_MESSAGE;
                    if (!com.join.mgps.Util.t2.h(forumPostsBean.getSubject().trim()) || forumPostsBean.getBest() <= 0) {
                        z11 = false;
                    }
                    this.headData.add(new ForumPostsAdapter.e0(viewType, new ForumPostsAdapter.e0.m(z11, new SpannableStringBuilder().append((CharSequence) forumPostsBean.getMessage()), (forumPostsBean.getSubject() != null || com.join.mgps.Util.t2.h(forumPostsBean.getSubject().trim())) ? forumPostsBean.getTag_info() : null)));
                } else {
                    boolean z12 = com.join.mgps.Util.t2.h(forumPostsBean.getSubject().trim()) && forumPostsBean.getBest() > 0;
                    boolean z13 = com.join.mgps.Util.t2.h(forumPostsBean.getSubject().trim()) && forumPostsBean.getHelp() > 0;
                    boolean z14 = forumPostsBean.getSubject() == null || (com.join.mgps.Util.t2.h(forumPostsBean.getSubject().trim()) && (forumPostsBean.getTag_list() == null || forumPostsBean.getTag_list().size() == 0));
                    List<HtmlDocUtil.PostDetail> listC = HtmlDocUtil.c(forumPostsBean.getMessage());
                    SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
                    spannableStringBuilder.clear();
                    int i11 = 0;
                    while (i11 < listC.size()) {
                        HtmlDocUtil.PostDetail postDetail = listC.get(i11);
                        int i12 = r.f51653a[postDetail.f49375a.ordinal()];
                        if (i12 == i10) {
                            str = str;
                            String strTrim = ((HtmlDocUtil.c) postDetail.a()).d().toString().trim();
                            if (!com.join.mgps.Util.t2.h(strTrim)) {
                                spannableStringBuilder.append((CharSequence) strTrim);
                                spannableStringBuilder.append((CharSequence) "\n");
                            }
                            e0Var = new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.POST_MESSAGE, new ForumPostsAdapter.e0.m(z12 && i11 == 0, ((HtmlDocUtil.c) postDetail.a()).d(), z13 && i11 == 0, forumPostsBean.getHelp_money() + "", (z14 && i11 == 0) ? forumPostsBean.getTag_info() : null));
                        } else if (i12 != 2) {
                            if (i12 == 3) {
                                HtmlDocUtil.d dVar = (HtmlDocUtil.d) postDetail.a();
                                e0Var2 = new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.POST_VIDEO, new ForumPostsAdapter.e0.p(getCdnUrl(forumPostsBean.getCdn_url(), dVar.d()), dVar.f49382d, message));
                            } else if (i12 != 4) {
                                e0Var2 = imageGetter;
                            } else {
                                String strTrim2 = ((HtmlDocUtil.e) postDetail.a()).d().toString().trim();
                                if (!com.join.mgps.Util.t2.h(strTrim2)) {
                                    spannableStringBuilder.append((CharSequence) strTrim2);
                                    spannableStringBuilder.append((CharSequence) "\n");
                                }
                                Spanned spannedFromHtml = Html.fromHtml(strTrim2.toString().replace("span", str), imageGetter, new com.join.mgps.customview.text.a(str, this));
                                str = str;
                                e0Var = new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.POST_RICH_MESSAGE, new ForumPostsAdapter.e0.n(z12 && i11 == 0, spannedFromHtml, z13 && i11 == 0, forumPostsBean.getHelp_money() + "", (z14 && i11 == 0) ? forumPostsBean.getTag_info() : null));
                            }
                            e0Var = e0Var2;
                        } else {
                            str = str;
                            HtmlDocUtil.b bVar = (HtmlDocUtil.b) postDetail.a();
                            arrayList.add(getCdnUrl(forumPostsBean.getCdn_url(), bVar.e()));
                            e0Var = new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.POST_IMAGE, new ForumPostsAdapter.e0.k(getCdnUrl(forumPostsBean.getCdn_url(), bVar.d()), arrayList.size() - 1, arrayList));
                        }
                        this.headData.add((ForumPostsAdapter.e0) e0Var);
                        i11++;
                        str = str;
                        i10 = 1;
                        imageGetter = null;
                    }
                    String string = spannableStringBuilder.toString();
                    if (!com.join.mgps.Util.t2.h(string)) {
                        setAllText(string);
                    }
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
        if (forumPostsBean.getRelation_game() != null && !TextUtils.isEmpty(forumPostsBean.getRelation_game().getGame_id())) {
            ForumPostsAdapter.ViewType viewType2 = ForumPostsAdapter.ViewType.POST_GAME;
            if (!TextUtils.isEmpty(forumPostsBean.getResource_url())) {
                viewType2 = ForumPostsAdapter.ViewType.POST_GAME_RES_LINK;
            }
            this.headData.add(new ForumPostsAdapter.e0(viewType2, new ForumPostsAdapter.e0.h(forumPostsBean.getPid() + "", forumPostsBean.getRelation_game(), forumPostsBean.getResource_url())));
        }
        if (forumPostsBean.getEmploy_tags() != null && forumPostsBean.getEmploy_tags().size() != 0) {
            this.headData.add(new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.EMPLOYEE_TAGS, new ForumPostsAdapter.e0.f(forumPostsBean.getEmploy_tags(), forumPostsBean.getFid(), forumPostsBean.getFname())));
        }
        this.headData.add(new ForumPostsAdapter.e0(ForumPostsAdapter.ViewType.POST_FOOTER1, new ForumPostsAdapter.e0.g(forumPostsBean.getPid(), forumPostsBean.getFid(), forumPostsBean.getFname(), forumPostsBean.getView(), forumPostsBean.getCommit(), forumPostsBean.getPraise(), forumPostsBean.is_praise(), z10)));
        this.headAdapter.setNewData(this.headData);
    }

    void setResult4Request() {
        ForumBean.ForumPostsBean forumPostsBean = this.forumPostsBean;
        if (forumPostsBean == null || forumPostsBean.getPid() == 0) {
            return;
        }
        Intent intent = new Intent();
        intent.putExtra(ForumPostsTagSelectActivity_.PID_EXTRA, this.forumPostsBean.getPid());
        intent.putExtra("view", this.forumPostsBean.getView());
        intent.putExtra("comment", this.forumPostsBean.getCommit());
        intent.putExtra("praise", this.forumPostsBean.getPraise());
        intent.putExtra("isPraise", this.forumPostsBean.is_praise());
        intent.putExtra("isFavorite", this.forumPostsBean.is_favorite());
        setResult(3, intent);
    }

    void setVideoContainerParams() {
        RelativeLayout relativeLayout = this.videoLayout;
        if (relativeLayout == null) {
            return;
        }
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = getVideoDefaultHeight(this);
        }
        RelativeLayout.LayoutParams layoutParams2 = (RelativeLayout.LayoutParams) this.videoContainer.getLayoutParams();
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.mg_forum_post_item_padding);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_top);
        int dimensionPixelSize3 = getResources().getDimensionPixelSize(R.dimen.mg_forum_item_video_padding_bottom);
        if (layoutParams2 != null) {
            layoutParams2.height = -2;
            this.videoContainer.setPadding(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize3);
        }
        this.videoLayout.postInvalidate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void show(ForumBean.ForumPostsBean bean) {
        if (bean == null) {
            return;
        }
        View viewFindViewById = findViewById(R.id.bottom);
        com.join.mgps.customview.f fVarZ = com.join.mgps.customview.f.z(this);
        fVarZ.m(this.iForumExtFuncListener);
        fVarZ.p(viewFindViewById, bean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showDialog() {
        com.join.mgps.Util.h0.h0(this).m(this);
    }

    void showExtensionBoard() {
        this.chat_layout_more.setVisibility(0);
        this.chat_layout_extension.setVisibility(0);
        this.chat_layout_extension_container.setVisibility(8);
        hideSystemKeyBoard(this.chat_layout_extension_container);
        this.isShowInputExtensionBoard = true;
    }

    void showExtensionContentBoard() {
        this.chat_layout_more.setVisibility(0);
        this.chat_layout_extension.setVisibility(8);
        this.chat_layout_extension_container.setVisibility(0);
        hideSystemKeyBoard(this.chat_layout_extension_container);
        this.isShowInputExtensionBoard = true;
    }

    @Override // com.BaseAppCompatActivity
    public void showKeyBoardHandler() {
        super.showKeyBoardHandler();
        if (this.curEventType == 1) {
            hideExtensionFunction(false);
        } else {
            hideExtensionFunction(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMoreLoading() {
    }

    synchronized void showPostGagDialog(final int gagUid) {
        List<ForumBean.ForumGagType> list = this.forumGagType;
        if (list != null && list.size() != 0) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(this.forumGagType);
            if (this.mPostGagDialog == null) {
                this.mPostGagDialog = new e0(this);
            }
            this.mPostGagDialog.a(gagUid + "");
            this.mPostGagDialog.b(arrayList);
            if (this.mPostGagDialog.isShowing()) {
                return;
            }
            this.mPostGagDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPrePostingHintDialog(int type) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPromptDialog(final int pid, final int rid) {
        try {
            if (this.forumDialog == null) {
                com.join.mgps.dialog.x0 x0Var = new com.join.mgps.dialog.x0(this);
                this.forumDialog = x0Var;
                x0Var.f("确定");
                this.forumDialog.d("取消");
                this.forumDialog.b(8);
                this.forumDialog.g("确定要删除该评论吗？").c(new y());
                this.forumDialog.setCancelable(true);
                this.forumDialog.setOnCancelListener(new z());
            }
            int i10 = this.curEventType;
            if (i10 == 17) {
                this.forumDialog.g("确定要删除该评论吗？");
            } else if (i10 == 18 || i10 == 20) {
                this.forumDialog.g("确定要删除该回复吗？");
            } else if (i10 == 33) {
                this.forumDialog.g("确定要举报该评论吗？");
            } else if (i10 == 34 || i10 == 36) {
                this.forumDialog.g("确定要举报该回复吗？");
            }
            this.forumDialog.e(new a(pid, rid));
            if (this.forumDialog.isShowing()) {
                return;
            }
            this.forumDialog.show();
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRewardToast(RewardType type, int money, int exp) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSendPromptDialog(int type) {
        try {
            if (this.forumLoadingDialog == null) {
                this.forumLoadingDialog = new com.join.mgps.dialog.y0(this);
            }
            this.forumLoadingDialog.c(type);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    public void showSortPop(View view) {
        g0 g0Var = this.sortPopWindow;
        if (g0Var != null && g0Var.isShowing()) {
            this.sortPopWindow.dismiss();
        }
        if (this.sortPopWindow == null) {
            this.sortPopWindow = new g0(this, -2, -2);
        }
        g0 g0Var2 = this.sortPopWindow;
        if (g0Var2 != null && g0Var2.getContentView() != null) {
            this.sortPopWindow.getContentView().measure(0, 0);
            this.sortPopWindow.setHeight(this.sortPopWindow.getContentView().getMeasuredHeight());
        }
        int i10 = -((int) getResources().getDimension(R.dimen.wdp30));
        this.sortPopWindow.showAsDropDown(view, view.getMeasuredWidth() - getResources().getDimensionPixelOffset(R.dimen.dp15), i10);
        this.sortPopWindow.getContentView().invalidate();
    }

    public void showSystemKeyBoard(View v10) {
        ((InputMethodManager) getSystemService("input_method")).showSoftInput(v10, 0);
        this.isShowKeyboard = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(CharSequence charSequence) {
        Toast.makeText(this, charSequence, 0).show();
    }

    @Override // com.join.mgps.customview.ForumStickView.e
    public void sortComment() {
        TextView textView = (TextView) findViewById(R.id.tv_sort);
        if (textView != null) {
            showSortPop(textView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void startDown(DetailResultBean detialResultBean) {
        DownloadTask downloadtaskDown;
        if (detialResultBean == null || (downloadtaskDown = detialResultBean.getDownloadtaskDown()) == null) {
            return;
        }
        downloadtaskDown.set_from(13203);
        downloadtaskDown.set_from_type(13203);
        ForumBean.GameInfo gameInfo = this.gameInfo;
        if (gameInfo != null && gameInfo.getDownloadTask() == null) {
            this.gameInfo.setDownloadTask(downloadtaskDown);
            notifyAdapter(false);
        }
        if (UtilsMy.y0(downloadtaskDown.getPay_game_amount(), downloadtaskDown.getCrc_link_type_val()) > 0) {
            UtilsMy.z4(this, downloadtaskDown.getCrc_link_type_val());
            return;
        }
        UtilsMy.A1(downloadtaskDown, detialResultBean);
        if (UtilsMy.o1(this, downloadtaskDown)) {
            return;
        }
        if (detialResultBean.getDown_status() == 5) {
            UtilsMy.l1(this, downloadtaskDown);
        } else {
            UtilsMy.U0(this, downloadtaskDown, downloadtaskDown.getTp_down_url(), downloadtaskDown.getOther_down_switch(), downloadtaskDown.getCdn_down_switch());
        }
    }

    void stop() {
        MyVideoView myVideoView = this.video;
        if (myVideoView != null) {
            myVideoView.seekTo(0);
            this.video.I();
            this.videoIndex = -1;
            this.video.G();
            this.loadingLayout.setVisibility(8);
            MediaController mediaController = this.mediaController;
            if (mediaController != null) {
                mediaController.setVisibility(8);
            }
            this.play.setVisibility(0);
            if (getResources().getConfiguration().orientation != 1) {
                toggleFullScreen();
            } else {
                this.videoContainer.setVisibility(8);
                this.isActive = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void stopXlistRefreshAndLoadMore() {
        this.rv_comment_list.stopRefresh();
        this.rv_comment_list.stopLoadMore();
        if (this.loadingPage == -1) {
            this.rv_comment_list.setNoMore();
        }
    }

    void submitForumPostsComment(final ForumRequestBean.ForumPostsCommentRequestBean requestBean) {
        try {
            if (!isLogined(this)) {
                showMessage(getString(R.string.forum_user_not_login));
                return;
            }
            if (!validAccount()) {
                showSendPromptDialog(-1);
                showDialog();
                return;
            }
            if (requestBean != null) {
                requestBean.setDevice_id("");
                ForumResponse<ForumData.ForumPostsCommentData> forumResponseZ0 = this.rpcForumClient.z0(requestBean.getParams1());
                if (forumResponseZ0 != null) {
                    int error = forumResponseZ0.getError();
                    if (error == 706) {
                        showSendPromptDialog(-1);
                        showToast(getString(R.string.tour_perfect_info_for_comment_toast));
                        showDialog();
                        return;
                    } else if (error == 701) {
                        reGetToken();
                    }
                }
                processSendCommentResult(requestBean, forumResponseZ0);
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showSendPromptDialog(1);
        }
    }

    void toggleFullScreen() {
        MyVideoView myVideoView = this.video;
        if (myVideoView != null) {
            myVideoView.setFullScreen(!this.mFullScreenFlag);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void touristLogin() {
        if (!com.join.android.app.common.utils.m.j(this) || isLogined(this)) {
            return;
        }
        try {
            TouristLoginRequestBean touristLoginRequestBean = new TouristLoginRequestBean();
            touristLoginRequestBean.setVersion(com.join.android.app.common.utils.q.n(this).A());
            touristLoginRequestBean.setDevice_id("");
            touristLoginRequestBean.setMac("");
            touristLoginRequestBean.setSource("2");
            touristLoginRequestBean.setTuid(new PrefDef_(this).touriseTUID().d().longValue());
            touristLoginRequestBean.setSign(com.join.mgps.Util.k2.g(touristLoginRequestBean));
            AccountResultMainBean<AccountTokenSuccess> accountResultMainBeanI = this.rpcAccountClient.I(touristLoginRequestBean.getParams());
            if (accountResultMainBeanI != null && accountResultMainBeanI.getError() == 0) {
                if (accountResultMainBeanI.getData().is_success()) {
                    AccountUtil_.getInstance_(this).saveAccountData(g8.a.a(accountResultMainBeanI.getData().getUser_info()), this);
                } else {
                    error(accountResultMainBeanI.getData().getError_msg());
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void updateUI(DownloadTask downloadTask, int from) {
        if (downloadTask == null) {
            if (from != 4) {
                return;
            }
            receiveUpdate();
        }
        switch (from) {
            case 1:
            case 2:
            case 7:
            case 8:
            case 9:
                receiveStart(downloadTask);
                break;
            case 3:
                receiveDelete(downloadTask);
                break;
            case 4:
                receiveUpdate();
                break;
            case 5:
                receiveSuccess(downloadTask);
                break;
            case 6:
                receiveError(downloadTask);
                break;
        }
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }

    public void videoConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        if (newConfig.orientation == 2) {
            this.rv_comment_list.setVisibility(4);
        } else {
            this.rv_comment_list.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void videoScroll(RecyclerView view, int firstVisibleItem, int visibleItemCount, int totalItemCount) {
        notifyPlayViewOffset();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void videoScrollStateChanged(RecyclerView view, int scrollState) {
        if (scrollState == 0) {
            this.helper.j(view, scrollState);
            playBackground(!isPlayPositionVisible());
        }
    }

    @Override // com.join.mgps.customview.ForumStickView.e
    public void viewPoster() throws Throwable {
        postFuncHost();
    }

    void wrapCommentItem(ForumBean.ForumCommentBean commentBean, boolean showDivider) {
        if (commentBean == null || this.forumPostsBean == null) {
            return;
        }
        UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
        boolean z10 = commentBean.getForum_auth() == 1;
        boolean zIsOfficialAccount = commentBean.isOfficialAccount();
        boolean z11 = this.forumPostsBean.getHelp() == 1;
        boolean z12 = this.forumPostsBean.getSolve_flg() == 1;
        int auth = this.forumPostsBean.getAuth();
        boolean z13 = accountData != null && accountData.getUid() == this.forumPostsBean.getUid();
        boolean z14 = accountData != null && commentBean.getUid() == accountData.getUid();
        boolean z15 = z14;
        this.listData.add(new ForumCommentAdapter.z(ForumCommentAdapter.ViewType.COMMENT_HEADER, new ForumCommentAdapter.z.a(showDivider, commentBean.getUid(), commentBean.getPid(), commentBean.getAvatar_src(), commentBean.getNickname(), commentBean.getAdd_time(), commentBean.getUid() == this.forumPostsBean.getUid(), commentBean.getFloor(), z10, zIsOfficialAccount, commentBean.getAnswer_flg(), z11 && !z12 && z13 && !z14, !z14, auth == 3 || auth == 99 || z14 || z13, commentBean.getVip_level(), commentBean.getSvip_level(), commentBean.is_moderator(), commentBean.getMember_honor())));
        this.listData.add(new ForumCommentAdapter.z(ForumCommentAdapter.ViewType.COMMENT_MESSAGE, new ForumCommentAdapter.z.c(commentBean.getPid(), commentBean.getMessage(), commentBean.getNickname(), commentBean.getUid(), !z15, auth == 3 || auth == 99 || z15)));
        for (int i10 = 0; commentBean.getPic_list() != null && i10 < commentBean.getPic_list().size(); i10++) {
            this.listData.add(new ForumCommentAdapter.z(ForumCommentAdapter.ViewType.COMMENT_IMAGE, new ForumCommentAdapter.z.b(commentBean.getPic_list().get(i10), i10, commentBean.getRaw_pic_list())));
        }
        this.listData.add(new ForumCommentAdapter.z(ForumCommentAdapter.ViewType.COMMENT_MESSAGE_REPLY, new ForumCommentAdapter.z.d(commentBean.getPid(), commentBean, auth, commentBean.getReply_list() != null && commentBean.getReply_list().size() > 0, z13)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void doForumPostReport(int cid, int rid) {
        IntentUtil.getInstance().goShareWebActivity(this, com.join.mgps.rpc.h.f72353k + "/group/posts/forum_report/index?pid=" + this.forumPostsBean.getPid() + "&cid=" + cid + "&rid=" + rid);
    }

    class g0 extends PopupWindow {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Context f51634a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private LinearLayout f51635b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private LinearLayout f51636c;

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) throws Throwable {
                ForumPostsActivity.this.postFuncSort();
                g0.this.dismiss();
            }
        }

        class b implements View.OnClickListener {
            b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) throws Throwable {
                ForumPostsActivity.this.postFuncSort();
                g0.this.dismiss();
            }
        }

        class c implements View.OnTouchListener {
            c() {
            }

            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View v10, MotionEvent event) {
                if (event.getAction() != 4) {
                    return false;
                }
                g0.this.dismiss();
                return true;
            }
        }

        public g0(Context context) {
            super(context);
            this.f51634a = context;
            a();
        }

        private void b() {
            setBackgroundDrawable(new BitmapDrawable());
            setFocusable(true);
            setTouchable(true);
            setOutsideTouchable(true);
            setTouchInterceptor(new c());
        }

        void a() {
            View viewInflate = LayoutInflater.from(this.f51634a).inflate(R.layout.pop_forum_post_commont_sort, (ViewGroup) null);
            setContentView(viewInflate);
            setWidth(-2);
            setHeight(-2);
            this.f51635b = (LinearLayout) viewInflate.findViewById(R.id.ll_early);
            this.f51636c = (LinearLayout) viewInflate.findViewById(R.id.ll_new);
            this.f51635b.setOnClickListener(new a());
            this.f51636c.setOnClickListener(new b());
            b();
        }

        public g0(Context mContext, int width, int height) {
            super(width, height);
            this.f51634a = mContext;
            a();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showPromptDialog() {
        String str;
        switch (this.dialog4Event) {
            case R.id.extFuncBest /* 2131363275 */:
                str = this.forumPostsBean.getBest() != 1 ? "确定要设为精华吗？" : "确定要取消精华吗？";
                break;
            case R.id.extFuncBestTv /* 2131363276 */:
            case R.id.extFuncCancel /* 2131363277 */:
            case R.id.extFuncFavoriteTv /* 2131363280 */:
            default:
                return;
            case R.id.extFuncDelete /* 2131363278 */:
                str = "确定要删除吗？";
                break;
            case R.id.extFuncFavorite /* 2131363279 */:
                doForumPostFavorite();
                return;
            case R.id.extFuncReply /* 2131363281 */:
                str = "确定要回复吗？";
                break;
            case R.id.extFuncReport /* 2131363282 */:
                str = "确定要设为举报吗？";
                break;
            case R.id.extFuncShare /* 2131363283 */:
                com.join.mgps.Util.r0.H1(this, this.forumPostsBean);
                return;
        }
        if (this.forumDialog4More == null) {
            this.forumDialog4More = new com.join.mgps.dialog.x0(this);
        }
        this.forumDialog4More.f("确定");
        this.forumDialog4More.d("取消");
        this.forumDialog4More.b(8);
        this.forumDialog4More.g(str).c(new i());
        this.forumDialog4More.e(new j());
        if (this.forumDialog4More.isShowing()) {
            return;
        }
        this.forumDialog4More.show();
    }
}
