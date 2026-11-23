package com.join.mgps.activity.posting;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Bundle;
import android.text.Editable;
import android.text.Html;
import android.text.Selection;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.PopupWindow;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.BaseFragmentActivity;
import com.bykv.vk.component.ttvideo.player.C;
import com.czhj.sdk.common.Constants;
import com.github.snowdream.android.app.downloader.DownloadTask;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentDateBean;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.Util.a3;
import com.join.mgps.Util.g1;
import com.join.mgps.Util.h0;
import com.join.mgps.Util.h1;
import com.join.mgps.Util.o3;
import com.join.mgps.Util.r0;
import com.join.mgps.Util.t2;
import com.join.mgps.activity.ForumPostsTagSelectActivity_;
import com.join.mgps.activity.GameSearchFavoriteActivity_;
import com.join.mgps.activity.LocalGameActivity_;
import com.join.mgps.activity.SearchLabelActivity_;
import com.join.mgps.activity.ShareWebActivity_;
import com.join.mgps.activity.login.LoginSplashActivity_;
import com.join.mgps.customview.CustomEdittext;
import com.join.mgps.customview.i0;
import com.join.mgps.dialog.f1;
import com.join.mgps.dialog.y1;
import com.join.mgps.dialog.z1;
import com.join.mgps.dto.CollectionBeanSub;
import com.join.mgps.dto.GameTagBean;
import com.join.mgps.dto.GroupInfoBean;
import com.join.mgps.dto.GroupListBean;
import com.join.mgps.dto.LabelBean;
import com.join.mgps.dto.Response;
import com.join.mgps.dto.ResultResMainBean;
import com.wufan.user.service.protobuf.UserInfo;
import io.reactivex.functions.Consumer;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Bean;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.core.io.FileSystemResource;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes9.dex */
@EActivity(R.layout.activity_posting)
public class PostingActivity extends BaseFragmentActivity {
    public static final int ACTIVITY_RESULT_POSTING = 17476;
    public static final int FROM_TYPE_MAIN_LABEL = 100;
    static final int MAX_POSTS_IMAGE = 9;
    static final boolean MAX_POSTS_IMAGE_WITH_ADD = false;
    private static final int REQUEST_SEARCH_LABEL = 4369;
    public static final int TYPE_POSTING_COMMON = 1;
    public static final int TYPE_POSTING_GAME_RES = 6;
    public static final int TYPE_POSTING_HELP = 3;
    public static final int TYPE_POSTING_RAIDERS = 2;
    public static final int TYPE_POSTING_REC_GAME = 4;

    @Bean
    com.join.mgps.Util.b accountUtil;

    @ViewById
    ImageView back_image;

    @ViewById
    Button btnSubmit;

    @ViewById
    Button btn_selectedCoins;

    @ViewById
    Button btn_selectedGames;

    @Extra
    int fid;

    @ViewById
    FrameLayout fl_insert_label;

    @ViewById
    FrameLayout fl_posting_type_container;

    @Extra
    int fromType;

    @Extra
    ArrayList<GameTagBean> gameTag;

    @Extra
    String game_id;

    @ViewById
    ImageView iv_posting_location;

    @ViewById
    ImageView iv_posting_select;

    @Extra
    String label;

    @ViewById
    LinearLayout ll_bottom;

    @ViewById
    LinearLayout ll_help_posting;

    @ViewById
    RelativeLayout ll_posting_rec_game;

    @ViewById
    LinearLayout ll_top_center;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;
    com.join.mgps.rpc.i mFormRequestServer;
    i0 mGroupPop;
    private Dialog mLoginDialog;
    n mPicsAdapter;
    private y1 mSelectCoinsDialog;
    private z1 mSelectGameDialog;
    private CollectionBeanSub mSelectedGame;
    private DownloadTask mSelectedGameInfo;
    private GroupInfoBean mSelectedGroupInfo;
    private f1 mShowLoadingDialog;

    @Extra
    String postingGroup;

    @ViewById
    EditText posts_content;

    @ViewById
    HListView posts_pic_hlist;

    @ViewById
    View posts_res_line;

    @ViewById
    CustomEdittext posts_res_link;

    @ViewById
    CustomEdittext posts_title;

    @ViewById
    RelativeLayout rl_main;

    @Extra
    String tag_id;

    @Extra
    String tag_name;

    @ViewById
    TextView tv_coins;

    @ViewById
    TextView tv_posting_group;

    @ViewById
    TextView tv_rec_game;

    @Extra
    int postingType = 3;
    private int mSelectedCoins = -1;
    List<String> mUploadImages = new ArrayList();
    int toggleSendOn = 0;
    boolean isGetPostingAuthority = false;
    boolean isFirstInitPostingGroup = true;
    private net.bither.util.b.e mCompressListener = new c();
    private List<LabelBean> mSelectedLabelLists = Collections.synchronizedList(new ArrayList());
    private final m mPostingCallback = new a();
    List<String> mSelectedImages = new ArrayList();

    class a implements m {
        a() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void a(int value) {
            if (value > PostingActivity.this.accountUtil.getAccountData().getPapaMoney()) {
                a3.b(PostingActivity.this).d("当前铜板数不足!");
                return;
            }
            PostingActivity.this.mSelectedCoins = value;
            PostingActivity.this.tv_coins.setText(Html.fromHtml("悬赏铜板数：<font color=#000000>" + value + "</font>"));
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void b(int type) {
            if (type == 4355) {
                PostingActivity.this.goShareActivity(com.join.mgps.rpc.h.f72385t);
            } else if (type != 4356) {
                PostingActivity.this.finish();
            } else {
                PostingActivity.this.goShareActivity(com.join.mgps.rpc.h.f72382s);
            }
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void c(int type) {
            switch (type) {
                case 4352:
                    PostingActivity.this.startActivityForResult(new Intent(PostingActivity.this, (Class<?>) LocalGameActivity_.class), 4352);
                    break;
                case 4353:
                    Intent intent = new Intent(PostingActivity.this, (Class<?>) GameSearchFavoriteActivity_.class);
                    intent.putExtra("type", 2);
                    PostingActivity.this.startActivityForResult(intent, 4353);
                    break;
                case 4354:
                    Intent intent2 = new Intent(PostingActivity.this, (Class<?>) GameSearchFavoriteActivity_.class);
                    intent2.putExtra("type", 1);
                    PostingActivity.this.startActivityForResult(intent2, 4354);
                    break;
            }
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void d(int type) {
            PostingActivity.this.finish();
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.m
        public void e(GroupInfoBean groupInfoBean) {
            PostingActivity.this.mSelectedGroupInfo = groupInfoBean;
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.updatePostingGroup(postingActivity.mSelectedGroupInfo.getName(), false);
        }
    }

    class b implements n.c {
        b() {
        }

        @Override // com.join.mgps.activity.posting.PostingActivity.n.c
        public void a(int position, String path) {
            PostingActivity.this.mSelectedImages.remove(position);
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.mPicsAdapter.d(postingActivity.mSelectedImages);
            PostingActivity.this.mPicsAdapter.notifyDataSetChanged();
            net.bither.util.b.p().j(PostingActivity.this.getApplicationContext(), path, false);
            if (PostingActivity.this.mSelectedImages.size() > 0) {
                PostingActivity.this.posts_pic_hlist.setVisibility(0);
            } else {
                PostingActivity.this.posts_pic_hlist.setVisibility(8);
            }
        }
    }

    class c implements net.bither.util.b.e {
        c() {
        }

        private void b(List<String> list) {
            PostingActivity postingActivity = PostingActivity.this;
            if (postingActivity.toggleSendOn == 1) {
                postingActivity.toggleSendOn = 2;
                if (list != null && list.size() != 0) {
                    PostingActivity.this.mUploadImages.clear();
                    PostingActivity.this.mUploadImages.addAll(list);
                }
                PostingActivity.this.doSubmit();
            }
        }

        @Override // net.bither.util.b.e
        public void a(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState) {
            List<String> list;
            int iIntValue;
            if (!allFinished.booleanValue() || (list = PostingActivity.this.mSelectedImages) == null || list.size() == 0) {
                b(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < PostingActivity.this.mSelectedImages.size(); i10++) {
                String str = PostingActivity.this.mSelectedImages.get(i10);
                try {
                    iIntValue = 0;
                    for (String str2 : compressState.keySet()) {
                        try {
                            if (str.contains(new File(str2).getName())) {
                                str = str2;
                                iIntValue = 1;
                            }
                        } catch (Exception e10) {
                            e = e10;
                            e.printStackTrace();
                        }
                    }
                } catch (Exception e11) {
                    e = e11;
                    iIntValue = 0;
                }
                if (iIntValue == 0) {
                    try {
                        iIntValue = compressState.get(str).intValue();
                    } catch (Exception e12) {
                        e12.printStackTrace();
                    }
                }
                String str3 = compressMap.get(str);
                if (iIntValue == 1) {
                    arrayList.add(str3);
                }
            }
            b(arrayList);
        }
    }

    class d implements CustomEdittext.a {
        d() {
        }

        @Override // com.join.mgps.customview.CustomEdittext.a
        public void a(int selStart, int selEnd) {
            int nearestPosition = PostingActivity.this.getNearestPosition(selStart);
            h1.e("onSelectionChanged", "selStart=" + selStart, "selEnd=" + selEnd, "pos=" + nearestPosition);
            if (nearestPosition == selStart) {
                return;
            }
            PostingActivity.this.posts_title.setSelection(nearestPosition);
        }
    }

    class e implements TextWatcher {
        e() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable s10) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence s10, int start, int count, int after) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence s10, int start, int before, int count) {
            if (PostingActivity.this.posts_content.getText().toString().trim().equals("") || PostingActivity.this.posts_content.getText().toString().trim().length() == 0) {
                PostingActivity.this.updateSubmitBtnBg(false);
            } else {
                PostingActivity.this.updateSubmitBtnBg(true);
            }
        }
    }

    class f implements View.OnKeyListener {
        f() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View v10, int keyCode, KeyEvent event) {
            if (keyCode != 67) {
                return false;
            }
            PostingActivity postingActivity = PostingActivity.this;
            return postingActivity.fromType == 100 && postingActivity.posts_title.getText().toString().trim().length() == PostingActivity.this.label.length() + 2;
        }
    }

    class g implements View.OnClickListener {
        g() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (PostingActivity.this.mSelectCoinsDialog != null) {
                PostingActivity.this.mSelectCoinsDialog.d();
            }
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.mSelectCoinsDialog = new y1(postingActivity, postingActivity.mPostingCallback);
            PostingActivity.this.mSelectCoinsDialog.g("" + PostingActivity.this.accountUtil.getAccountData().getPapaMoney(), PostingActivity.this.mSelectedCoins);
            PostingActivity.this.mSelectCoinsDialog.h();
        }
    }

    class h implements View.OnClickListener {
        h() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (PostingActivity.this.mSelectGameDialog != null) {
                PostingActivity.this.mSelectGameDialog.b();
            }
            PostingActivity postingActivity = PostingActivity.this;
            postingActivity.mSelectGameDialog = new z1(postingActivity, postingActivity.mPostingCallback);
            PostingActivity.this.mSelectGameDialog.d();
        }
    }

    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (TextUtils.isEmpty(PostingActivity.this.postingGroup)) {
                PostingActivity.this.tv_posting_group.setText("选择小组");
                PostingActivity.this.getGroupInfoLists(false);
            }
        }
    }

    class j implements PopupWindow.OnDismissListener {
        j() {
        }

        @Override // android.widget.PopupWindow.OnDismissListener
        public void onDismiss() {
            PostingActivity.this.iv_posting_select.setImageResource(R.drawable.posting_load);
        }
    }

    class k implements Consumer<com.tbruyelle.rxpermissions2.b> {
        k() {
        }

        @Override // io.reactivex.functions.Consumer
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void accept(com.tbruyelle.rxpermissions2.b permission) throws Exception {
            if (permission.f83019b) {
                if (PostingActivity.this.checkPermiss(com.kuaishou.weapon.p0.g.f74786j)) {
                    PostingActivity.this.selectPic();
                }
            } else {
                if (permission.f83020c) {
                    return;
                }
                h0.h0(PostingActivity.this).Z(PostingActivity.this, permission);
            }
        }
    }

    public class l implements TextWatcher {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        List<Integer> f57854b = new ArrayList();

        public l() {
        }

        List<String> a() {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < PostingActivity.this.mSelectedLabelLists.size(); i10++) {
                arrayList.add(((LabelBean) PostingActivity.this.mSelectedLabelLists.get(i10)).getTag_name());
            }
            return arrayList;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            b(editable);
        }

        void b(Editable editable) {
            if (this.f57854b.size() < 2) {
                return;
            }
            char c10 = 0;
            int iIntValue = this.f57854b.get(0).intValue();
            int iIntValue2 = this.f57854b.get(1).intValue();
            ArrayList arrayList = new ArrayList();
            if (PostingActivity.this.mSelectedLabelLists != null) {
                arrayList.addAll(PostingActivity.this.mSelectedLabelLists);
            }
            int i10 = 0;
            for (int i11 = 0; i11 < arrayList.size(); i11++) {
                LabelBean labelBean = (LabelBean) arrayList.get(i11);
                String tag_name = labelBean.getTag_name();
                int length = tag_name.length();
                if (iIntValue == i10 && iIntValue2 == (i10 + length) - 1) {
                    editable.delete(iIntValue, iIntValue2);
                    if (PostingActivity.this.canDeleteTag(tag_name)) {
                        PostingActivity.this.mSelectedLabelLists.remove(labelBean);
                    } else {
                        editable.insert(iIntValue, PostingActivity.this.getEnvolopeTag(tag_name));
                    }
                    c10 = 1;
                    break;
                }
                i10 += length;
            }
            if (c10 > 0) {
                PostingActivity.this.updatePostEditText();
                Selection.setSelection(editable, iIntValue);
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int start, int count, int after) {
            h1.e("beforeTextChanged", "charSequence=" + ((Object) charSequence), "start=" + start, "count=" + count, "after=" + after);
            this.f57854b.clear();
            int i10 = after - count;
            if (i10 == -1) {
                try {
                    int iAbs = Math.abs(i10);
                    String string = charSequence.toString();
                    String strSubstring = string.substring(start, iAbs + start);
                    int tagLength = PostingActivity.this.getTagLength();
                    if (!strSubstring.equals("#") || start >= tagLength) {
                        return;
                    }
                    this.f57854b.add(Integer.valueOf(string.substring(0, start).lastIndexOf("#")));
                    this.f57854b.add(Integer.valueOf(start));
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int start, int before, int count) {
            h1.e("onTextChanged", "charSequence=" + ((Object) charSequence), "start=" + start, "before=" + before, "count=" + count);
            Editable text = PostingActivity.this.posts_title.getText();
            int length = text.length();
            int tagLength = PostingActivity.this.getTagLength();
            if (!TextUtils.isEmpty(charSequence.toString()) && start < tagLength && count > 0) {
                int i10 = count + start;
                String string = charSequence.subSequence(start, i10).toString();
                if ((string.length() != length || start != 0) && !TextUtils.isEmpty(string) && !a().contains(string) && text.toString().length() >= tagLength) {
                    text.delete(start, i10);
                    text.insert(Math.min(tagLength, text.toString().length()), string);
                }
            }
            if (length - tagLength > 20) {
                PostingActivity.this.updatePostEditText();
                PostingActivity.this.showToast("最大输入标题字数不能超过20个字!");
            }
        }
    }

    public interface m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final int f57856a = 4352;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final int f57857b = 4353;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final int f57858c = 4354;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final int f57859d = 4355;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f57860e = 4356;

        void a(int value);

        void b(int type);

        void c(int type);

        void d(int type);

        void e(GroupInfoBean groupInfoBean);
    }

    static class n extends BaseAdapter {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f57861b = new ArrayList();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Context f57862c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private c f57863d;

        class a implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f57864b;

            a(final int val$position) {
                this.f57864b = val$position;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (n.this.f57863d != null) {
                    c cVar = n.this.f57863d;
                    int i10 = this.f57864b;
                    cVar.a(i10, (String) n.this.getItem(i10));
                }
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f57866b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String[] f57867c;

            b(final int val$pos, final String[] val$rawUrls) {
                this.f57866b = val$pos;
                this.f57867c = val$rawUrls;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                r0.G0(n.this.f57862c, this.f57866b, this.f57867c);
            }
        }

        public interface c {
            void a(int position, String path);
        }

        class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ImageView f57869a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ImageView f57870b;

            d() {
            }
        }

        public n(Context context) {
            this.f57862c = context;
        }

        private ImageLoader c() {
            return ImageLoader.r(3, ImageLoader.Type.LIFO);
        }

        private void e(View parent, View view) {
            float f10 = this.f57862c.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = parent.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_padding);
            int i10 = dimensionPixelSize * 2;
            int dimensionPixelSize2 = ((this.f57862c.getResources().getDisplayMetrics().widthPixels - i10) - (parent.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_divider_width) * 3)) / 4;
            view.setLayoutParams(new AbsHListView.LayoutParams(dimensionPixelSize2, dimensionPixelSize2));
            int i11 = dimensionPixelSize2 + i10;
            parent.setLayoutParams(new LinearLayout.LayoutParams(-1, i11));
            parent.setMinimumHeight(i11);
        }

        public void d(List<String> arg) {
            if (this.f57861b == null) {
                this.f57861b = new ArrayList();
            }
            this.f57861b.clear();
            this.f57861b.addAll(arg);
        }

        public void f(c l10) {
            this.f57863d = l10;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f57861b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            List<String> list = this.f57861b;
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
                    convertView = LayoutInflater.from(this.f57862c).inflate(R.layout.forum_post_pic_item, (ViewGroup) null);
                    dVar = new d();
                    dVar.f57869a = (ImageView) convertView.findViewById(R.id.image);
                    dVar.f57870b = (ImageView) convertView.findViewById(R.id.image_delete);
                    convertView.setTag(dVar);
                }
                dVar.f57869a.setOnClickListener(null);
                dVar.f57870b.setVisibility(0);
                e(parent, convertView);
                if (this.f57861b.get(position).contains("content://")) {
                    dVar.f57869a.setImageURI(Uri.parse(this.f57861b.get(position)));
                } else {
                    c().v(this.f57861b.get(position), dVar.f57869a);
                }
                dVar.f57870b.setOnClickListener(new a(position));
                ArrayList arrayList = new ArrayList();
                arrayList.clear();
                arrayList.addAll(this.f57861b);
                int size = arrayList.size() < 9 ? arrayList.size() : 9;
                String[] strArr = new String[size];
                arrayList.toArray(strArr);
                for (int i10 = 0; i10 < size; i10++) {
                    strArr[i10] = "file://" + strArr[i10];
                }
                dVar.f57869a.setOnClickListener(new b(position, strArr));
            } catch (Exception e10) {
                e10.printStackTrace();
            }
            return convertView;
        }
    }

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    private void deleteTempPic() {
        List<String> list = this.mUploadImages;
        if (list == null || list.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < list.size(); i10++) {
            try {
                File file = new File(list.get(i10));
                if (file.getParentFile().exists()) {
                    net.bither.util.b.k(file.getParentFile());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        net.bither.util.b.p().f94541c = new Hashtable<>();
        net.bither.util.b.p().f94540b = new Hashtable<>();
    }

    private LinkedMultiValueMap<String, Object> generatePostParams() {
        LinkedMultiValueMap<String, Object> linkedMultiValueMap = new LinkedMultiValueMap<>();
        linkedMultiValueMap.add("uid", this.accountUtil.getUid());
        linkedMultiValueMap.add(Constants.TOKEN, this.accountUtil.getToken());
        linkedMultiValueMap.add("fid", getFid() + "");
        linkedMultiValueMap.add("rsid", ((int) Math.random()) + "");
        linkedMultiValueMap.add("subject", getSubject());
        linkedMultiValueMap.add(ForumPostsTagSelectActivity_.POST_TYPE_EXTRA, getPostingType() + "");
        linkedMultiValueMap.add("game_id", getGameId());
        linkedMultiValueMap.add("comment_game_id", t2.g(this.game_id));
        linkedMultiValueMap.add("help_money", this.mSelectedCoins + "");
        linkedMultiValueMap.add("tag_ids", getTagIds());
        linkedMultiValueMap.add("message", this.posts_content.getText().toString());
        for (int i10 = 0; i10 < this.mUploadImages.size(); i10++) {
            if (this.mUploadImages.get(i10).contains("content://")) {
                linkedMultiValueMap.add("img_" + (i10 + 1), o3.p(Uri.parse(this.mUploadImages.get(i10)), this).getAbsolutePath());
            } else {
                linkedMultiValueMap.add("img_" + (i10 + 1), new FileSystemResource(this.mUploadImages.get(i10)));
            }
        }
        if (this.postingType == 6) {
            linkedMultiValueMap.add("resource_url", this.posts_res_link.getText().toString());
        }
        return linkedMultiValueMap;
    }

    private List<String> getImagesFromAlbum(Intent intent) {
        return (intent == null || intent.getExtras() == null) ? new ArrayList() : (List) intent.getExtras().get(MyAlbumActivity.KEY_SELECTED_IMAGES);
    }

    private String getSubject() {
        String string = this.posts_title.getText().toString();
        if (TextUtils.isEmpty(string)) {
            return "";
        }
        String strTrim = string.trim();
        List<LabelBean> list = this.mSelectedLabelLists;
        if (list != null && list.size() > 0) {
            for (LabelBean labelBean : this.mSelectedLabelLists) {
                if (strTrim.contains(labelBean.getTag_name())) {
                    strTrim = strTrim.replace(labelBean.getTag_name(), "");
                }
            }
        }
        g1.b("PostingActivity", "Subject:" + strTrim);
        return strTrim;
    }

    private void initHListView() {
        n nVar = new n(this);
        this.mPicsAdapter = nVar;
        nVar.d(this.mSelectedImages);
        this.mPicsAdapter.f(new b());
        this.posts_pic_hlist.setAdapter((ListAdapter) this.mPicsAdapter);
    }

    private boolean isLogined(Context context) {
        UserInfo userInfoAccountBean = accountBean(context);
        return userInfoAccountBean != null && t2.i(userInfoAccountBean.getToken());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectPic() {
        Intent intent = new Intent(this, (Class<?>) MyAlbumActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(MyAlbumActivity.KEY_SELECTED_IMAGES, (Serializable) this.mSelectedImages);
        intent.putExtras(bundle);
        startActivityForResult(intent, 256);
    }

    private void showLoadingDialog(String title) {
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var != null && f1Var.isShowing()) {
            this.mShowLoadingDialog.dismiss();
        }
        f1 f1VarZ = h0.h0(this).z(this, title, false);
        this.mShowLoadingDialog = f1VarZ;
        f1VarZ.b();
    }

    @AfterViews
    void afterViews() {
        this.mFormRequestServer = com.join.mgps.rpc.impl.g.A0();
        this.posts_pic_hlist.setVisibility(8);
        this.fl_insert_label.setVisibility(8);
        this.posts_title.setOnSelectionChanged(new d());
        updateSubmitBtnBg(false);
        this.posts_content.addTextChangedListener(new e());
        if (this.fromType == 100) {
            LabelBean labelBean = new LabelBean();
            labelBean.setTag_id(Integer.parseInt(this.tag_id));
            labelBean.setTag_name(this.label);
            updateLabels(labelBean);
        }
        this.posts_title.setOnKeyListener(new f());
        this.posts_title.addTextChangedListener(new l());
        this.fl_posting_type_container.setVisibility(0);
        if (this.postingType == 3) {
            this.ll_help_posting.setVisibility(0);
            this.ll_posting_rec_game.setVisibility(8);
            this.btn_selectedCoins.setOnClickListener(new g());
        } else {
            this.ll_help_posting.setVisibility(8);
            this.ll_posting_rec_game.setVisibility(0);
            this.btn_selectedGames.setOnClickListener(new h());
        }
        this.tv_posting_group.setOnClickListener(new i());
        initHListView();
        updatePostingGroup(this.postingGroup, true);
        int i10 = this.postingType;
        if (i10 == 1 || i10 == 2) {
            this.fl_posting_type_container.setVisibility(8);
        }
        if (!(TextUtils.isEmpty(this.tag_id) && TextUtils.isEmpty(this.tag_name)) && this.postingType == 6) {
            this.posts_res_line.setVisibility(0);
            this.posts_res_link.setVisibility(0);
            this.fl_posting_type_container.setVisibility(8);
        }
    }

    @Click
    void back_image() {
        h0.h0(this).D(this);
    }

    @Click
    void btnSubmit() {
        try {
            if (!isLogined(this)) {
                showToast(getString(R.string.forum_user_not_login));
                return;
            }
            UserInfo accountData = AccountUtil_.getInstance_(this).getAccountData();
            if (!t2.h(accountData.getNickname()) && (!accountData.getAccount().equals(accountData.getNickname()) || !accountData.getAccount().startsWith("pa"))) {
                if (!validAccount()) {
                    showDialog();
                    return;
                }
                if (getFid() <= 0) {
                    showToast("请选择小组");
                    return;
                }
                if (TextUtils.isEmpty(this.posts_content.getText().toString())) {
                    showToast("请输入帖子内容");
                    return;
                }
                if (this.postingType == 6 && TextUtils.isEmpty(this.posts_res_link.getText().toString())) {
                    showToast("请输入资源链接地址");
                    return;
                }
                int i10 = this.postingType;
                if (i10 == 3 && this.mSelectedCoins < 0) {
                    showToast("请选择悬赏铜板数");
                    return;
                }
                if (i10 == 4 && TextUtils.isEmpty(getGameId())) {
                    showToast("请选择推荐游戏");
                    return;
                }
                if (!com.join.android.app.common.utils.m.j(this)) {
                    this.toggleSendOn = 0;
                    showToast(getString(R.string.net_connect_failed));
                    return;
                } else {
                    showLoadingDialog("正在发帖， 请稍等...");
                    this.toggleSendOn = 1;
                    net.bither.util.b.p().x();
                    return;
                }
            }
            IntentUtil.getInstance().goChangeNickname(this);
        } catch (Exception e10) {
            this.toggleSendOn = 0;
            e10.printStackTrace();
        }
    }

    boolean canDeleteTag(String tag) {
        List<LabelBean> list;
        if (this.fromType == 100 && (list = this.mSelectedLabelLists) != null && list.size() > 0) {
            LabelBean labelBean = this.mSelectedLabelLists.get(0);
            if (!TextUtils.isEmpty(labelBean.getTag_name()) && !TextUtils.isEmpty(tag) && tag.equals(labelBean.getTag_name())) {
                return false;
            }
        }
        return true;
    }

    void clearImageMemoryLruCache() {
        if (this.mSelectedImages.size() <= 0) {
            return;
        }
        System.gc();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void doSubmit() {
        try {
            ResultResMainBean<Response> resultResMainBeanX0 = this.mFormRequestServer.x0(generatePostParams());
            if (resultResMainBeanX0 == null) {
                showToast("发帖失败");
                hideLoadingDialog();
            } else if (resultResMainBeanX0.getData().isResult()) {
                showToast("发帖成功,将在审核后显示");
                deleteTempPic();
                hideLoadingDialog();
                goTargetActivity();
            } else {
                showToast(resultResMainBeanX0.getData().getMsg());
                hideLoadingDialog();
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showToast("发帖失败");
            hideLoadingDialog();
        }
    }

    @Click
    void fl_insert_label() {
        if (this.mSelectedLabelLists.size() >= 3) {
            showToast("最多只能选择3个话题");
            return;
        }
        Intent intent = new Intent(this, (Class<?>) SearchLabelActivity_.class);
        intent.putExtra("postingLabelType", this.postingType);
        startActivityForResult(intent, REQUEST_SEARCH_LABEL);
    }

    @Click
    void fl_insert_pic() {
        try {
            new com.tbruyelle.rxpermissions2.c(this).r(com.kuaishou.weapon.p0.g.f74786j).subscribe(new k());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    Spanned getEnvolopeTag(String name) {
        return Html.fromHtml("<font color=#3CA4FD>" + name + "</font>");
    }

    int getFid() {
        int i10 = this.fid;
        if (i10 > 0) {
            return i10;
        }
        GroupInfoBean groupInfoBean = this.mSelectedGroupInfo;
        if (groupInfoBean != null) {
            return groupInfoBean.getFid();
        }
        return 0;
    }

    String getGameId() {
        DownloadTask downloadTask = this.mSelectedGameInfo;
        if (downloadTask != null) {
            return downloadTask.getCrc_link_type_val();
        }
        CollectionBeanSub collectionBeanSub = this.mSelectedGame;
        return collectionBeanSub != null ? collectionBeanSub.getGame_id() : "";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getGroupInfoLists(boolean isFirstInit) {
        try {
            ResultResMainBean<GroupListBean> resultResMainBeanT = this.mFormRequestServer.T(this.accountUtil.getUid(), this.accountUtil.getAccountData().getToken(), this.tag_id, this.tag_name);
            if (resultResMainBeanT != null && resultResMainBeanT.getData() != null) {
                if (isFirstInit) {
                    initPostingGroup(resultResMainBeanT.getData());
                    return;
                } else {
                    showPopGroup(resultResMainBeanT.getData());
                    return;
                }
            }
            showToast("网络异常，请检查网络！");
        } catch (Exception unused) {
            showToast("网络异常，请检查网络！");
        }
    }

    String getHintText() {
        StringBuilder sb2 = new StringBuilder();
        int i10 = this.postingType;
        if (i10 == 1) {
            sb2.append("需要等级 首领\n");
            sb2.append("-请发表对别人有意义的内容\n");
        } else if (i10 == 2) {
            sb2.append("需要等级 巡山将\n");
            sb2.append("-请发表对别人有意义的内容\n");
        } else if (i10 == 3) {
            sb2.append("需要等级 无\n");
            sb2.append("-请清晰说明求助的问题\n");
        } else if (i10 == 4) {
            sb2.append("需要等级 山大王\n");
            sb2.append("-请在推荐的游戏里附上详细的理由\n");
        }
        sb2.append("-你可以插入话题，给帖子一个归属\n");
        sb2.append("-你也可以给帖子配上图片方便别人理解\n");
        return sb2.toString();
    }

    int getNearestPosition(int selectPos) {
        if (selectPos >= getTagLength()) {
            return selectPos;
        }
        String string = this.posts_title.getText().toString();
        Iterator<LabelBean> it2 = this.mSelectedLabelLists.iterator();
        int length = 0;
        while (it2.hasNext()) {
            String tag_name = it2.next().getTag_name();
            if (!TextUtils.isEmpty(tag_name) && string.contains(tag_name) && selectPos <= (length = length + tag_name.length())) {
                return Math.abs(selectPos - (length - tag_name.length())) < Math.abs(length - selectPos) ? length - tag_name.length() : length;
            }
        }
        return selectPos;
    }

    String getPostTitle() {
        String strSubstring = this.posts_title.getText().toString().substring(getTagLength());
        return (TextUtils.isEmpty(strSubstring) || strSubstring.length() <= 20) ? strSubstring : strSubstring.substring(0, 20);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getPostingAuthority() {
        if (this.isGetPostingAuthority) {
            return;
        }
        if (!com.join.android.app.common.utils.m.j(this)) {
            showFailed();
            return;
        }
        if (!isLogined(this)) {
            showToast(getString(R.string.forum_user_not_login));
            return;
        }
        if (!validAccount()) {
            showDialog();
            return;
        }
        if (TextUtils.isEmpty(this.postingGroup) && this.isFirstInitPostingGroup) {
            getGroupInfoLists(true);
        }
        getPostingHint();
        try {
            showLoading();
            if (this.mFormRequestServer.s(this.accountUtil.getUid(), this.accountUtil.getToken(), this.postingType).getError() == 0) {
                this.isGetPostingAuthority = true;
                hideLoading();
            } else {
                showFailed();
            }
        } catch (Exception e10) {
            printLog("getPostingAuthority Exception: " + e10.getMessage());
            showFailed();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void getPostingHint() {
        try {
            ResultResMainBean<String> resultResMainBeanE = this.mFormRequestServer.E(this.postingType);
            if (resultResMainBeanE != null && resultResMainBeanE.getData() != null) {
                setPostingHint(resultResMainBeanE.getData());
            }
        } catch (Exception unused) {
        }
    }

    int getPostingType() {
        int i10 = this.postingType;
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2) {
            return 2;
        }
        if (i10 == 3) {
            return 3;
        }
        if (i10 == 4) {
            return 4;
        }
        return i10 == 6 ? 6 : 1;
    }

    String getTagIds() {
        StringBuilder sb2 = new StringBuilder();
        if (this.mSelectedLabelLists.size() <= 0) {
            return sb2.length() > 0 ? sb2.deleteCharAt(sb2.length() - 1).toString() : "";
        }
        Iterator<LabelBean> it2 = this.mSelectedLabelLists.iterator();
        while (it2.hasNext()) {
            sb2.append(it2.next().getTag_id() + ",");
        }
        return sb2.deleteCharAt(sb2.length() - 1).toString();
    }

    int getTagLength() {
        String string = this.posts_title.getText().toString();
        int length = 0;
        if (!TextUtils.isEmpty(string)) {
            Iterator<LabelBean> it2 = this.mSelectedLabelLists.iterator();
            while (it2.hasNext()) {
                String tag_name = it2.next().getTag_name();
                if (!TextUtils.isEmpty(tag_name) && string.contains(tag_name)) {
                    length += tag_name.length();
                }
            }
        }
        return length;
    }

    void goShareActivity(String url) {
        IntentDateBean intentDateBean = new IntentDateBean();
        intentDateBean.setLink_type(4);
        intentDateBean.setLink_type_val(url);
        ShareWebActivity_.intent(this).b(intentDateBean).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void goTargetActivity() {
        Intent intent = new Intent();
        intent.putExtra(PostingActivity_.POSTING_TYPE_EXTRA, this.postingType);
        setResult(-1, intent);
        finish();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoading() {
        this.rl_main.setVisibility(0);
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void hideLoadingDialog() {
        f1 f1Var = this.mShowLoadingDialog;
        if (f1Var == null || !f1Var.isShowing()) {
            return;
        }
        this.mShowLoadingDialog.dismiss();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void initPostingGroup(GroupListBean listBean) {
        this.isFirstInitPostingGroup = false;
        GroupInfoBean groupInfoBean = listBean.getRecommendForum().get(0);
        this.mSelectedGroupInfo = groupInfoBean;
        updatePostingGroup(groupInfoBean.getName(), false);
    }

    void insertPostTag(String tag) {
        this.posts_title.getEditableText().insert(getTagLength(), Html.fromHtml("<font color=#3CA4FD>" + tag + "</font>"));
    }

    boolean isActivityFinish() {
        return isFinishing() || isDestroyed();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, android.app.Activity
    protected void onActivityResult(int requestCode, int resultCode, Intent data) {
        super.onActivityResult(requestCode, resultCode, data);
        if (requestCode == 256) {
            if (this.mSelectedImages == null) {
                this.mSelectedImages = new ArrayList();
            }
            this.mSelectedImages.clear();
            this.mSelectedImages.addAll(getImagesFromAlbum(data));
            if (this.mSelectedImages.size() > 0) {
                this.posts_pic_hlist.setVisibility(0);
            } else {
                this.posts_pic_hlist.setVisibility(8);
            }
            this.mPicsAdapter.d(this.mSelectedImages);
            this.mPicsAdapter.notifyDataSetChanged();
        }
        if (resultCode == -1) {
            if (requestCode == REQUEST_SEARCH_LABEL) {
                updateLabels((LabelBean) data.getSerializableExtra(PostingActivity_.LABEL_EXTRA));
                return;
            }
            switch (requestCode) {
                case 4352:
                    this.mSelectedGameInfo = (DownloadTask) data.getSerializableExtra("gameInfo");
                    this.tv_rec_game.setText(Html.fromHtml("推荐游戏：<font color=#000000>" + this.mSelectedGameInfo.getShowName() + "</font>"));
                    break;
                case 4353:
                case 4354:
                    this.mSelectedGame = (CollectionBeanSub) data.getSerializableExtra("gameInfo");
                    this.tv_rec_game.setText(Html.fromHtml("推荐游戏：<font color=#000000>" + this.mSelectedGame.getGame_name() + "</font>"));
                    break;
            }
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        net.bither.util.b.p().y(this.mCompressListener);
        net.bither.util.b.p().f94541c = new Hashtable<>();
        net.bither.util.b.p().f94540b = new Hashtable<>();
        clearImageMemoryLruCache();
        List<String> list = this.mUploadImages;
        if (list != null) {
            list.clear();
        }
        super.onDestroy();
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        net.bither.util.b.p().e(this.mCompressListener);
        getPostingAuthority();
    }

    void printLog(String info) {
        g1.b("PostingActivity", info);
    }

    @Click
    void relodingimag() {
        getPostingAuthority();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void setPostingHint(String value) {
        String[] strArrSplit;
        if (TextUtils.isEmpty(value) || (strArrSplit = value.split("#")) == null || strArrSplit.length <= 0) {
            return;
        }
        StringBuilder sb2 = new StringBuilder();
        for (String str : strArrSplit) {
            sb2.append(str);
            sb2.append("\n");
        }
        try {
            this.posts_content.setHint(sb2.deleteCharAt(sb2.length() - 1).toString());
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    @UiThread
    public void showDialog() {
        ((LoginSplashActivity_.IntentBuilder_) LoginSplashActivity_.intent(this).flags(C.ENCODING_PCM_MU_LAW)).start();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showFailed() {
        this.rl_main.setVisibility(8);
        this.loding_layout.setVisibility(8);
        this.loding_faile.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showLoading() {
        this.rl_main.setVisibility(8);
        this.loding_layout.setVisibility(0);
        this.loding_faile.setVisibility(8);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPopGroup(GroupListBean listBean) {
        i0 i0Var = this.mGroupPop;
        if (i0Var != null) {
            i0Var.dismiss();
        }
        i0 i0Var2 = new i0(this, this.mPostingCallback);
        this.mGroupPop = i0Var2;
        i0Var2.setOnDismissListener(new j());
        this.iv_posting_select.setImageResource(R.drawable.posting_pull);
        this.mGroupPop.a(listBean.getRecommendForum(), listBean.getFollowForum(), this.mSelectedGroupInfo);
        this.mGroupPop.showAsDropDown(this.ll_top_center);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showPrePostingHintDialog(int type) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String info) {
        if (isActivityFinish()) {
            return;
        }
        a3.b(this).d(info);
    }

    void updateLabels(LabelBean labelBean) {
        Iterator<LabelBean> it2 = this.mSelectedLabelLists.iterator();
        while (it2.hasNext()) {
            if (it2.next().getTag_id() == labelBean.getTag_id()) {
                return;
            }
        }
        String str = "#" + labelBean.getTag_name() + "#";
        labelBean.setTag_name(str);
        this.mSelectedLabelLists.add(labelBean);
        insertPostTag(str);
    }

    void updatePostEditText() {
        updatePostTag();
    }

    void updatePostTag() {
        int selectionStart = this.posts_title.getSelectionStart();
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String postTitle = getPostTitle();
        Iterator<LabelBean> it2 = this.mSelectedLabelLists.iterator();
        while (it2.hasNext()) {
            spannableStringBuilder.append((CharSequence) Html.fromHtml("<font color=#3CA4FD>" + it2.next().getTag_name() + "</font>"));
        }
        spannableStringBuilder.append((CharSequence) postTitle);
        this.posts_title.setText(spannableStringBuilder);
        try {
            if (selectionStart > this.posts_title.getText().toString().length()) {
                selectionStart = this.posts_title.getText().toString().length();
            }
            Selection.setSelection(this.posts_title.getEditableText(), selectionStart);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    void updatePostingGroup(String groupInfo, boolean controlSelected) {
        if (TextUtils.isEmpty(groupInfo)) {
            if (controlSelected) {
                this.iv_posting_select.setVisibility(0);
            }
            this.tv_posting_group.setTextColor(Color.parseColor("#3CA4FD"));
            this.tv_posting_group.setText("选择小组");
            this.iv_posting_location.setImageResource(R.drawable.posting_location_blue);
            return;
        }
        if (controlSelected) {
            this.iv_posting_select.setVisibility(8);
        }
        this.iv_posting_location.setImageResource(R.drawable.posting_location);
        this.tv_posting_group.setTextColor(Color.parseColor("#262626"));
        this.tv_posting_group.setText(groupInfo);
    }

    void updateSubmitBtnBg(boolean focus) {
        if (focus) {
            this.btnSubmit.setEnabled(true);
            this.btnSubmit.setTextColor(Color.parseColor("#F47500"));
            this.btnSubmit.setBackgroundResource(R.drawable.posting_publish_selected);
        } else {
            this.btnSubmit.setEnabled(false);
            this.btnSubmit.setTextColor(Color.parseColor("#A8A8A8"));
            this.btnSubmit.setBackgroundResource(R.drawable.posting_publish_normal);
        }
    }

    boolean validAccount() {
        if (accountBean(this) == null) {
            return false;
        }
        return !AccountUtil_.getInstance_(this).isTourist();
    }
}
