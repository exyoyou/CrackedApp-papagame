package com.join.mgps.activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.style.ForegroundColorSpan;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.SimpleAdapter;
import android.widget.TextView;
import android.widget.Toast;
import com.BaseActivity;
import com.haima.hmcp.Constants;
import com.join.android.app.common.utils.JsonMapper;
import com.join.android.app.component.album.MyAlbumActivity;
import com.join.android.app.component.album.lib.ImageLoader;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.dto.ForumBean;
import com.join.mgps.dto.ForumData;
import com.join.mgps.dto.ForumRequestBean;
import com.join.mgps.dto.ForumResponse;
import com.sigmob.sdk.base.mta.PointType;
import com.wufan.user.service.protobuf.UserInfo;
import it.sephiroth.android.library.widget.AbsHListView;
import it.sephiroth.android.library.widget.HListView;
import java.io.File;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.springframework.util.LinkedMultiValueMap;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.share_posts_activity)
public class SharePostsActivity extends BaseActivity {
    public static final String FORUM_ID = "forum_id";
    public static final String KEY_FROM_CLASS = "key_from_class";
    public static final String KEY_FROM_POSTS_SUBMIT_REQUEST = "key_from_posts_submit_request";
    public static final int MAX_POSTS_IMAGE = 9;
    private static String VALUE_FROM_CLASS = "value_from_class";

    @ViewById
    TextView footer_tip;
    com.join.mgps.dialog.x0 forumDialog;
    private com.join.mgps.dialog.y0 forumLoadingDialog;
    ForumRequestBean.ForumPostsSubmitRequestBean forumPostsSubmitRequestBean;

    @ViewById
    LinearLayout helpContainer;

    @ViewById
    GridView helpGrid;

    @ViewById
    TextView layout_title;
    private SimpleAdapter mHelpMoneyAdapter;
    i mPicsAdapter;
    List<String> mSelectedImages;

    @ViewById
    TextView myRemainHelpMoney;

    @ViewById
    TextView posts_content;

    @ViewById
    HListView posts_pic_hlist;

    @ViewById
    TextView posts_title;

    @ViewById
    Button release;
    com.join.mgps.rpc.i rpcForumClient;
    public final String TAG = getClass().getSimpleName();
    int fid = -1;
    int rsid = (int) Math.random();
    int toggleSendOn = 0;
    private com.join.mgps.Util.r0.j mForumObserver = new a();
    private net.bither.util.b.e mCompressListener = new b();
    private String[] mHelpMoneies = {"0", "5", "10", PointType.DOWNLOAD_TRACKING, "50", "60", "80", Constants.ERRORCODE_SDK_PREFIX};
    private int mLastItem = -1;
    com.join.mgps.customview.t mDialog = null;

    class a extends com.join.mgps.Util.r0.j {
        a() {
        }

        @Override // com.join.mgps.Util.r0.j, com.join.mgps.Util.r0.i
        public void d(int statusCode) {
            super.d(statusCode);
            SharePostsActivity.this.showSendPromptDialog(1);
        }

        @Override // com.join.mgps.Util.r0.j, com.join.mgps.Util.r0.i
        public void e(ForumData.ForumPostsSubmitData data) {
            super.e(data);
            SharePostsActivity.this.showSendPromptDialog(2);
        }
    }

    class b implements net.bither.util.b.e {
        b() {
        }

        private void b(List<String> list) {
            SharePostsActivity sharePostsActivity = SharePostsActivity.this;
            if (sharePostsActivity.toggleSendOn == 1) {
                sharePostsActivity.toggleSendOn = 2;
                if (list != null && list.size() != 0) {
                    SharePostsActivity.this.forumPostsSubmitRequestBean.setImages(list);
                }
                SharePostsActivity.this.forumPostsSubmit();
            }
        }

        @Override // net.bither.util.b.e
        public void a(Boolean allFinished, Map<String, String> compressMap, Map<String, Integer> compressState) {
            List<String> list;
            if (!allFinished.booleanValue() || (list = SharePostsActivity.this.mSelectedImages) == null || list.size() == 0) {
                b(null);
                return;
            }
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < SharePostsActivity.this.mSelectedImages.size(); i10++) {
                String str = SharePostsActivity.this.mSelectedImages.get(i10);
                int iIntValue = compressState.get(str).intValue();
                String str2 = compressMap.get(str);
                if (iIntValue == 1) {
                    arrayList.add(str2);
                }
            }
            b(arrayList);
        }
    }

    class c implements DialogInterface.OnCancelListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnCancelListener
        public void onCancel(DialogInterface dialog) {
            SharePostsActivity.this.toggleSendOn = 0;
        }
    }

    class d implements i.d {
        d() {
        }

        @Override // com.join.mgps.activity.SharePostsActivity.i.d
        public void a(int position, String path) {
            SharePostsActivity.this.mSelectedImages.remove(position);
            SharePostsActivity sharePostsActivity = SharePostsActivity.this;
            sharePostsActivity.mPicsAdapter.d(sharePostsActivity.mSelectedImages);
            SharePostsActivity.this.mPicsAdapter.notifyDataSetChanged();
            net.bither.util.b.p().j(SharePostsActivity.this.getApplicationContext(), path, false);
        }

        @Override // com.join.mgps.activity.SharePostsActivity.i.d
        public void b() {
            SharePostsActivity.this.goMyAlbumActivity4PickPic();
        }
    }

    class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SharePostsActivity.this.finish();
        }
    }

    class f implements View.OnClickListener {
        f() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            SharePostsActivity.this.forumDialog.dismiss();
        }
    }

    class g implements AdapterView.OnItemClickListener {
        g() {
        }

        @Override // android.widget.AdapterView.OnItemClickListener
        public void onItemClick(AdapterView<?> parent, View view, int position, long id2) {
            if (SharePostsActivity.this.mLastItem != position) {
                if (AccountUtil_.getInstance_(view.getContext()).getAccountData().getPapaMoney() < Integer.parseInt(SharePostsActivity.this.mHelpMoneies[position])) {
                    SharePostsActivity.this.showToast(view.getContext().getString(R.string.share_posts_nomore_help_money));
                    return;
                }
                if (SharePostsActivity.this.mLastItem >= 0) {
                    SharePostsActivity sharePostsActivity = SharePostsActivity.this;
                    sharePostsActivity.changeRadioImg(sharePostsActivity.mHelpMoneyAdapter, SharePostsActivity.this.mLastItem, false);
                }
                SharePostsActivity.this.mLastItem = position;
                SharePostsActivity sharePostsActivity2 = SharePostsActivity.this;
                sharePostsActivity2.changeRadioImg(sharePostsActivity2.mHelpMoneyAdapter, position, true);
            }
        }
    }

    private class h implements InputFilter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f55776a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f55777b = "[\\u4e00-\\u9fa5]";

        public h(int max_en) {
            this.f55776a = max_en;
        }

        private int a(String str) {
            Matcher matcher = Pattern.compile(this.f55777b).matcher(str);
            int i10 = 0;
            while (matcher.find()) {
                for (int i11 = 0; i11 <= matcher.groupCount(); i11++) {
                    i10++;
                }
            }
            return i10;
        }

        @Override // android.text.InputFilter
        public CharSequence filter(CharSequence source, int start, int end, Spanned dest, int dstart, int dend) {
            if (dest.toString().length() + a(dest.toString()) + source.toString().length() + a(source.toString()) <= this.f55776a) {
                return source;
            }
            Toast.makeText(SharePostsActivity.this, "最多可以填写20个字", 0).show();
            return "";
        }
    }

    static class i extends BaseAdapter {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final String f55779f = "add_image";

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Context f55781c;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private d f55783e;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f55782d = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<String> f55780b = new ArrayList();

        class a implements View.OnClickListener {
            a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                i iVar = i.this;
                if (iVar.f55782d) {
                    return;
                }
                iVar.f55782d = true;
                if (iVar.f55783e != null) {
                    i.this.f55783e.b();
                }
            }
        }

        class b implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f55785b;

            b(final int val$position) {
                this.f55785b = val$position;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                if (i.this.f55783e != null) {
                    d dVar = i.this.f55783e;
                    int i10 = this.f55785b;
                    dVar.a(i10, (String) i.this.getItem(i10));
                }
            }
        }

        class c implements View.OnClickListener {

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ int f55787b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ String[] f55788c;

            c(final int val$pos, final String[] val$rawUrls) {
                this.f55787b = val$pos;
                this.f55788c = val$rawUrls;
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View v10) {
                com.join.mgps.Util.r0.G0(i.this.f55781c, this.f55787b, this.f55788c);
            }
        }

        public interface d {
            void a(int position, String path);

            void b();
        }

        class e {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            ImageView f55790a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            ImageView f55791b;

            e() {
            }
        }

        public i(Context context) {
            this.f55781c = context;
        }

        private ImageLoader c() {
            return ImageLoader.r(3, ImageLoader.Type.LIFO);
        }

        private void f(View parent, View view) {
            float f10 = this.f55781c.getResources().getDisplayMetrics().density;
            int dimensionPixelSize = parent.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_padding);
            int i10 = dimensionPixelSize * 2;
            int dimensionPixelSize2 = ((this.f55781c.getResources().getDisplayMetrics().widthPixels - i10) - (parent.getContext().getResources().getDimensionPixelSize(R.dimen.share_posts_a_hlistview_divider_width) * 3)) / 4;
            view.setLayoutParams(new AbsHListView.LayoutParams(dimensionPixelSize2, dimensionPixelSize2));
            int i11 = dimensionPixelSize2 + i10;
            parent.setLayoutParams(new LinearLayout.LayoutParams(-1, i11));
            parent.setMinimumHeight(i11);
        }

        public void d(List<String> arg) {
            if (this.f55780b == null) {
                this.f55780b = new ArrayList();
            }
            this.f55780b.clear();
            this.f55780b.addAll(arg);
            if (arg.size() < 9) {
                this.f55780b.add(f55779f);
            }
        }

        public void e(boolean isStartPickPic) {
            this.f55782d = isStartPickPic;
        }

        public void g(d l10) {
            this.f55783e = l10;
        }

        @Override // android.widget.Adapter
        public int getCount() {
            List<String> list = this.f55780b;
            if (list == null) {
                return 0;
            }
            return list.size();
        }

        @Override // android.widget.Adapter
        public Object getItem(int position) {
            List<String> list = this.f55780b;
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
            e eVar;
            try {
                if (convertView != null) {
                    eVar = (e) convertView.getTag();
                } else {
                    convertView = LayoutInflater.from(this.f55781c).inflate(R.layout.forum_post_pic_item, (ViewGroup) null);
                    eVar = new e();
                    eVar.f55790a = (ImageView) convertView.findViewById(R.id.image);
                    eVar.f55791b = (ImageView) convertView.findViewById(R.id.image_delete);
                    convertView.setTag(eVar);
                }
                eVar.f55790a.setOnClickListener(null);
                eVar.f55791b.setVisibility(0);
                f(parent, convertView);
                if (position == getCount() - 1 && this.f55780b.get(position).equals(f55779f)) {
                    eVar.f55791b.setVisibility(8);
                    eVar.f55790a.setImageResource(R.drawable.pic_add);
                    eVar.f55790a.setOnClickListener(new a());
                } else {
                    c().v(this.f55780b.get(position), eVar.f55790a);
                    eVar.f55791b.setOnClickListener(new b(position));
                    ArrayList arrayList = new ArrayList();
                    arrayList.clear();
                    arrayList.addAll(this.f55780b);
                    int size = 9;
                    if (arrayList.size() < 9) {
                        size = arrayList.size() - 1;
                        arrayList.remove(size);
                    }
                    String[] strArr = new String[size];
                    arrayList.toArray(strArr);
                    for (int i10 = 0; i10 < size; i10++) {
                        strArr[i10] = "file://" + strArr[i10];
                    }
                    eVar.f55790a.setOnClickListener(new c(position, strArr));
                }
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

    private UserInfo accountBean(Context ctx) {
        return AccountUtil_.getInstance_(ctx).getAccountData();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void changeRadioImg(SimpleAdapter adapter, int selectedItem, boolean on) {
        HashMap map = (HashMap) adapter.getItem(selectedItem);
        if (on) {
            map.put("itemRadioImg", Integer.valueOf(R.drawable.shape_forum_help_money_selected));
        } else {
            map.put("itemRadioImg", Integer.valueOf(R.drawable.shape_forum_help_money_default));
        }
        adapter.notifyDataSetChanged();
        setHelpMoney(selectedItem);
    }

    private void checkUserLogin() {
        if (com.join.mgps.Util.r0.Y0(this)) {
            return;
        }
        com.join.mgps.Util.r0.L0(this);
    }

    private void deleteTempPic() {
        List<String> images = this.forumPostsSubmitRequestBean.getImages();
        if (images == null || images.size() == 0) {
            return;
        }
        for (int i10 = 0; i10 < images.size(); i10++) {
            try {
                File file = new File(images.get(i10));
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

    private void dialogDismiss() {
        com.join.mgps.customview.t tVar = this.mDialog;
        if (tVar == null || !tVar.isShowing()) {
            return;
        }
        this.mDialog.dismiss();
    }

    private List<String> getImagesFromAlbum(Intent intent) {
        return (intent == null || intent.getExtras() == null) ? new ArrayList() : (List) intent.getExtras().get(MyAlbumActivity.KEY_SELECTED_IMAGES);
    }

    private SimpleAdapter getRadioButtonAdapter(int radioImage, String[] radioNameArray) {
        ArrayList arrayList = new ArrayList();
        for (String str : radioNameArray) {
            HashMap map = new HashMap();
            map.put("itemRadioImg", Integer.valueOf(radioImage));
            map.put("itemRadioText", str);
            arrayList.add(map);
        }
        return new SimpleAdapter(this, arrayList, R.layout.mg_forum_share_posts_a_item_help_money, new String[]{"itemRadioImg", "itemRadioText"}, new int[]{R.id.itemRadioImg, R.id.itemRadioText});
    }

    private void initHListView() {
        this.mSelectedImages = new ArrayList();
        i iVar = new i(this);
        this.mPicsAdapter = iVar;
        iVar.d(this.mSelectedImages);
        this.mPicsAdapter.g(new d());
        this.posts_pic_hlist.setAdapter((ListAdapter) this.mPicsAdapter);
    }

    private void initViews() {
        this.layout_title.setText("发帖");
        this.release.setVisibility(0);
        com.join.mgps.dialog.y0 y0Var = new com.join.mgps.dialog.y0(this);
        this.forumLoadingDialog = y0Var;
        y0Var.setCancelable(true);
        this.forumLoadingDialog.setOnCancelListener(new c());
        com.join.mgps.Util.s0.I1(this).b(this.mForumObserver);
        SpannableString spannableString = new SpannableString("每次最多可以分享9张图");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor("#808080")), 8, 9, 33);
        this.footer_tip.setText(spannableString);
        this.posts_title.setFilters(new InputFilter[]{new h(40)});
        initHListView();
        initHelpView();
    }

    private boolean isEmptyPosts() {
        return this.posts_content.getText().toString().equals("");
    }

    private boolean preparePostsInfo() {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                showToast(getString(R.string.net_connect_failed));
                return false;
            }
            String strP0 = com.join.mgps.Util.r0.p0(this);
            if (com.join.mgps.Util.t2.h(strP0)) {
                com.join.mgps.Util.r0.L0(this);
                return false;
            }
            if (this.forumPostsSubmitRequestBean == null) {
                this.forumPostsSubmitRequestBean = new ForumRequestBean.ForumPostsSubmitRequestBean();
            }
            this.forumPostsSubmitRequestBean.setFid(this.fid);
            this.forumPostsSubmitRequestBean.setUid(com.join.mgps.Util.r0.o0(this));
            this.forumPostsSubmitRequestBean.setToken(strP0);
            this.forumPostsSubmitRequestBean.setRsid(this.rsid);
            this.forumPostsSubmitRequestBean.setSubject(this.posts_title.getText().toString());
            this.forumPostsSubmitRequestBean.setMessage(this.posts_content.getText().toString());
            this.forumPostsSubmitRequestBean.setImages(this.mSelectedImages);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private void setTextSpan(TextView view, String s10, String spanStr, String color) {
        SpannableString spannableString = new SpannableString(s10);
        int iIndexOf = s10.indexOf(spanStr + "");
        spannableString.setSpan(new ForegroundColorSpan(Color.parseColor(color)), iIndexOf, (spanStr + "").length() + iIndexOf, 33);
        view.setText(spannableString);
    }

    private void showPromptDialog() {
        if (this.forumDialog == null) {
            com.join.mgps.dialog.x0 x0Var = new com.join.mgps.dialog.x0(this);
            this.forumDialog = x0Var;
            x0Var.b(8);
            this.forumDialog.f("放弃发布");
            this.forumDialog.d("继续编辑");
            this.forumDialog.g("你要放弃发布吗？").c(new f()).e(new e());
        }
        if (this.forumDialog.isShowing()) {
            return;
        }
        this.forumDialog.show();
    }

    @AfterViews
    void afterViews() {
        this.rpcForumClient = com.join.mgps.rpc.impl.g.A0();
        String str = (String) getIntent().getSerializableExtra(KEY_FROM_POSTS_SUBMIT_REQUEST);
        VALUE_FROM_CLASS = getIntent().getStringExtra(KEY_FROM_CLASS);
        if (com.join.mgps.Util.t2.h(str)) {
            finish();
            return;
        }
        ForumRequestBean.ForumPostsSubmitRequestBean forumPostsSubmitRequestBean = (ForumRequestBean.ForumPostsSubmitRequestBean) JsonMapper.getInstance().fromJson(str, ForumRequestBean.ForumPostsSubmitRequestBean.class);
        this.forumPostsSubmitRequestBean = forumPostsSubmitRequestBean;
        if (forumPostsSubmitRequestBean == null) {
            this.fid = -1;
            finish();
            return;
        }
        this.fid = forumPostsSubmitRequestBean.getFid();
        if (this.forumPostsSubmitRequestBean == null) {
            this.forumPostsSubmitRequestBean = new ForumRequestBean.ForumPostsSubmitRequestBean();
        }
        initViews();
        checkUserLogin();
    }

    @Click
    void back_image() {
        List<String> list;
        if (com.join.mgps.Util.t2.i(this.posts_title.getText().toString()) || com.join.mgps.Util.t2.i(this.posts_content.getText().toString()) || ((list = this.mSelectedImages) != null && list.size() > 1)) {
            showPromptDialog();
        } else {
            finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Background
    public void forumPostsSubmit() {
        try {
            if (IntentUtil.getInstance().goLoginInteractive(this)) {
                showSendPromptDialog(-1);
                return;
            }
            this.forumPostsSubmitRequestBean.setDevice_id("");
            LinkedMultiValueMap<String, Object> params = this.forumPostsSubmitRequestBean.getParams();
            com.join.mgps.Util.h1.e("release-->images send to server - start request..");
            ForumResponse<ForumData.ForumPostsSubmitData> forumResponseY0 = this.rpcForumClient.y0(params);
            com.join.mgps.Util.h1.e("release-->images send to server - response received.");
            if (forumResponseY0 == null) {
                showToast("发帖失败");
                showSendPromptDialog(1);
                return;
            }
            if (forumResponseY0.getError() == 706) {
                showToast("发帖失败");
                showSendPromptDialog(-1);
                IntentUtil.getInstance().goLoginInteractive(this);
                return;
            }
            if (forumResponseY0.getError() == 403) {
                showToast(forumResponseY0.getError_message());
                showSendPromptDialog(-1);
                return;
            }
            if (forumResponseY0.getError() == 404) {
                showToast(forumResponseY0.getError_message());
                showSendPromptDialog(-1);
                IntentUtil.getInstance().goVip(this);
                return;
            }
            ForumData.ForumPostsSubmitData data = forumResponseY0.getData();
            if (data == null || !data.isResult()) {
                com.join.mgps.Util.h1.e("release-->images send to server - failed");
                showToast("发帖失败");
                showSendPromptDialog(1);
                com.join.mgps.Util.r0.l(this, forumResponseY0.getError());
                return;
            }
            com.join.mgps.Util.h1.e("release-->images send to server - success");
            if (data.getReward_money() > 0) {
                showRewardToast(data.getReward_money(), data.getReward_exp());
            } else {
                showToast("发帖成功");
            }
            deleteTempPic();
            com.join.mgps.Util.s0.I1(this).e1(data);
        } catch (Exception e10) {
            com.join.mgps.Util.h1.e("release-->images send to server - try/catch exception");
            showSendPromptDialog(1);
            e10.printStackTrace();
        }
    }

    public void goMyAlbumActivity4PickPic() {
        Intent intent = new Intent(this, (Class<?>) MyAlbumActivity.class);
        Bundle bundle = new Bundle();
        bundle.putSerializable(MyAlbumActivity.KEY_SELECTED_IMAGES, (Serializable) this.mSelectedImages);
        intent.putExtras(bundle);
        startActivityForResult(intent, 256);
    }

    void initHelpView() {
        ForumRequestBean.ForumPostsSubmitRequestBean forumPostsSubmitRequestBean = this.forumPostsSubmitRequestBean;
        if (forumPostsSubmitRequestBean == null || forumPostsSubmitRequestBean.getHelp() != 1) {
            this.footer_tip.setVisibility(0);
            this.helpContainer.setVisibility(8);
            return;
        }
        this.footer_tip.setVisibility(8);
        this.helpContainer.setVisibility(0);
        if (com.join.mgps.Util.r0.Y0(this)) {
            long papaMoney = AccountUtil_.getInstance_(this).getAccountData().getPapaMoney();
            String string = getString(R.string.share_posts_myremain_help_money, Long.valueOf(papaMoney));
            setTextSpan(this.myRemainHelpMoney, string, papaMoney + "", "#f47500");
        }
        SimpleAdapter radioButtonAdapter = getRadioButtonAdapter(R.drawable.shape_forum_help_money_default, this.mHelpMoneies);
        this.mHelpMoneyAdapter = radioButtonAdapter;
        this.helpGrid.setAdapter((ListAdapter) radioButtonAdapter);
        this.helpGrid.setOnItemClickListener(new g());
        this.mLastItem = 1;
        changeRadioImg(this.mHelpMoneyAdapter, 1, true);
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
            this.mPicsAdapter.d(this.mSelectedImages);
            this.mPicsAdapter.notifyDataSetChanged();
            this.mPicsAdapter.e(false);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        back_image();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onDestroy() {
        com.join.mgps.dialog.x0 x0Var = this.forumDialog;
        if (x0Var != null) {
            if (x0Var.isShowing()) {
                this.forumDialog.dismiss();
            }
            this.forumDialog = null;
        }
        com.join.mgps.dialog.y0 y0Var = this.forumLoadingDialog;
        if (y0Var != null && y0Var.isShowing()) {
            this.forumLoadingDialog.dismiss();
        }
        this.forumLoadingDialog = null;
        com.join.mgps.Util.s0.I1(this).j1(this.mForumObserver);
        if (this.mSelectedImages != null) {
            for (int i10 = 0; i10 < this.mSelectedImages.size(); i10++) {
                try {
                    net.bither.util.b.p().j(getApplicationContext(), this.mSelectedImages.get(i10), false);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.mSelectedImages.clear();
            this.mSelectedImages = null;
        }
        net.bither.util.b.p().y(this.mCompressListener);
        super.onDestroy();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onPause() {
        super.onPause();
    }

    @Override // com.BaseActivity, com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        net.bither.util.b.p().e(this.mCompressListener);
    }

    @Click
    void release() {
        com.join.mgps.Util.h1.e("release-->release button pressed.");
        if (isEmptyPosts()) {
            Toast.makeText(this, "帖子内容不能为空", 0).show();
            return;
        }
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                this.toggleSendOn = 0;
                com.join.mgps.Util.h1.e("release-->network connect failed.");
                showToast(getString(R.string.net_connect_failed));
            } else if (preparePostsInfo()) {
                showSendPromptDialog(0);
                this.toggleSendOn = 1;
                net.bither.util.b.p().x();
            }
        } catch (Exception e10) {
            this.toggleSendOn = 0;
            com.join.mgps.Util.h1.e("release-->try/catch exception.");
            e10.printStackTrace();
            showSendPromptDialog(1);
        }
        com.join.mgps.Util.h1.e("release-->release method finished.");
    }

    void setHelpMoney(int item) {
        this.forumPostsSubmitRequestBean.setHelp_money(Integer.parseInt(this.mHelpMoneies[item]));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showMessage(String message) {
        com.join.mgps.Util.a3.b(this).d(message);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showRewardToast(int money, int exp) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showSendPromptDialog(int type) {
        if (this.forumLoadingDialog == null) {
            this.forumLoadingDialog = new com.join.mgps.dialog.y0(this);
        }
        this.forumLoadingDialog.c(type);
        if (type != 2) {
            return;
        }
        ForumBean forumBean = new ForumBean();
        forumBean.setFid(this.forumPostsSubmitRequestBean.getFid());
        com.join.mgps.Util.r0.r0(this, forumBean);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @UiThread
    public void showToast(String msg) {
        com.join.mgps.Util.a3.b(this).d(msg);
    }
}
