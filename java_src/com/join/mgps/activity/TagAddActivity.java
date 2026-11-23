package com.join.mgps.activity;

import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.graphics.Typeface;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.core.widget.NestedScrollView;
import com.BaseFragmentActivity;
import com.join.android.app.mgsim.wufun.R;
import com.join.mgps.Util.AccountUtil_;
import com.join.mgps.Util.IntentUtil;
import com.join.mgps.Util.UtilsMy;
import com.join.mgps.customview.FlowLayout;
import com.join.mgps.dto.GameTagsBean;
import com.join.mgps.dto.ListUserCustomGameTagBean;
import com.join.mgps.dto.RequestAddUserCustomGameTag;
import com.join.mgps.dto.RequestDeleteUserCustomGameTag;
import com.join.mgps.dto.RequestDeleteUserCustomTag;
import com.join.mgps.dto.RequestListUserCustomGameTagArgs;
import com.join.mgps.dto.RequestModel;
import com.join.mgps.dto.RequestSearchUserCustomGameTag;
import com.join.mgps.dto.ResponseModel;
import com.papa91.arc.adapter.SimpleBaseAdapter;
import com.papa91.arc.interfaces.IOnItemClickListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.androidannotations.annotations.AfterViews;
import org.androidannotations.annotations.Background;
import org.androidannotations.annotations.Click;
import org.androidannotations.annotations.EActivity;
import org.androidannotations.annotations.Extra;
import org.androidannotations.annotations.Receiver;
import org.androidannotations.annotations.UiThread;
import org.androidannotations.annotations.ViewById;
import org.androidannotations.annotations.res.StringRes;

/* JADX INFO: loaded from: classes4.dex */
@EActivity(R.layout.activity_tag_add)
public class TagAddActivity extends BaseFragmentActivity {
    SimpleBaseAdapter<String> autoSearchAdapter;

    @ViewById
    ImageView back_image;

    @ViewById
    EditText et_tag;

    @ViewById
    FlowLayout fl_tag_all;

    @ViewById
    FlowLayout fl_tag_my;

    @Extra
    String gameId;

    @ViewById
    LinearLayout loding_faile;

    @ViewById
    LinearLayout loding_layout;

    @ViewById
    ListView lv_auto_search;

    @StringRes(resName = "connect_server_excption")
    String netConnectExcption;

    @StringRes(resName = "net_excption")
    String netExcption;

    @ViewById
    NestedScrollView nsv_view;
    com.join.mgps.rpc.impl.i rpcGameClient;
    ListUserCustomGameTagBean tagList;

    @Extra
    String title;

    @ViewById
    TextView title_textview;

    @ViewById
    TextView tv_tag_add;
    String searchKey = "";
    Handler mHandler = new Handler();
    boolean isLogin = false;
    com.join.mgps.dialog.f1 dialog = null;
    TextWatcher tagSearchWatcher = new d();
    Runnable searchRunner = new e();
    AlertDialog.Builder dialogConfirm = null;

    class a implements DialogInterface.OnClickListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
        }
    }

    class b extends SimpleBaseAdapter<String> {
        b() {
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public void convert(int position, View convertView, ViewGroup parent, boolean isNew) {
            ((TextView) convertView.findViewById(R.id.tv_tag_text)).setText(getItem(position));
        }

        @Override // com.papa91.arc.adapter.SimpleBaseAdapter
        public int getLayoutId() {
            return R.layout.item_user_tag_auto_search;
        }
    }

    class c implements IOnItemClickListener {
        c() {
        }

        @Override // com.papa91.arc.interfaces.IOnItemClickListener
        public void onItemClick(int position) {
            TagAddActivity tagAddActivity = TagAddActivity.this;
            tagAddActivity.et_tag.removeTextChangedListener(tagAddActivity.tagSearchWatcher);
            String item = TagAddActivity.this.autoSearchAdapter.getItem(position);
            TagAddActivity.this.et_tag.setText(item);
            TagAddActivity.this.et_tag.setSelection(item.length());
            TagAddActivity.this.autoSearchAdapter.clear();
            TagAddActivity tagAddActivity2 = TagAddActivity.this;
            tagAddActivity2.et_tag.addTextChangedListener(tagAddActivity2.tagSearchWatcher);
            TagAddActivity.this.setListViewHeightBasedOnChildren();
        }
    }

    class d implements TextWatcher {
        d() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            com.join.mgps.Util.h1.e("afterTextChanged", "keyword=" + TagAddActivity.this.et_tag.getText().toString());
            if (editable.length() <= 0) {
                SimpleBaseAdapter<String> simpleBaseAdapter = TagAddActivity.this.autoSearchAdapter;
                if (simpleBaseAdapter != null) {
                    simpleBaseAdapter.clear();
                    return;
                }
                return;
            }
            TagAddActivity tagAddActivity = TagAddActivity.this;
            tagAddActivity.mHandler.removeCallbacks(tagAddActivity.searchRunner);
            TagAddActivity tagAddActivity2 = TagAddActivity.this;
            tagAddActivity2.mHandler.postDelayed(tagAddActivity2.searchRunner, 500L);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            com.join.mgps.Util.h1.e("beforeTextChanged", "keyword=" + TagAddActivity.this.et_tag.getText().toString());
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i10, int i11, int i12) {
            com.join.mgps.Util.h1.e("onTextChanged", "keyword=" + TagAddActivity.this.et_tag.getText().toString());
        }
    }

    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (TagAddActivity.this.isFinishing()) {
                return;
            }
            String string = TagAddActivity.this.et_tag.getText().toString();
            if (string.length() > 0) {
                TagAddActivity.this.getAutoSearchList(string);
                return;
            }
            SimpleBaseAdapter<String> simpleBaseAdapter = TagAddActivity.this.autoSearchAdapter;
            if (simpleBaseAdapter != null) {
                simpleBaseAdapter.clear();
            }
        }
    }

    class f implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameTagsBean f56158b;

        f(final GameTagsBean val$gameTag) {
            this.f56158b = val$gameTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            TagAddActivity.this.addUserCustomGameTag(this.f56158b.getName());
        }
    }

    class g implements View.OnLongClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameTagsBean f56160b;

        g(final GameTagsBean val$gameTag) {
            this.f56160b = val$gameTag;
        }

        @Override // android.view.View.OnLongClickListener
        public boolean onLongClick(View v10) {
            TagAddActivity.this.showConfirmDialog(this.f56160b);
            return true;
        }
    }

    class h implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameTagsBean f56162b;

        h(final GameTagsBean val$gameTag) {
            this.f56162b = val$gameTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            TagAddActivity.this.deleteUserCustomGameTag(this.f56162b);
        }
    }

    class i implements View.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f56164b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ GameTagsBean f56165c;

        i(final boolean val$isUserTag, final GameTagsBean val$gameTag) {
            this.f56164b = val$isUserTag;
            this.f56165c = val$gameTag;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View v10) {
            if (this.f56164b) {
                return;
            }
            if (this.f56165c.getTagType().intValue() == 2 || this.f56165c.getTagType().intValue() == 3) {
                TagGameListActivity_.intent(TagAddActivity.this).b(2).d(this.f56165c.getName()).e(Integer.parseInt(this.f56165c.getId())).f(this.f56165c.getTagType() + "").start();
            }
        }
    }

    class j implements DialogInterface.OnClickListener {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ GameTagsBean f56167b;

        j(final GameTagsBean val$gameTag) {
            this.f56167b = val$gameTag;
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialog, int which) {
            dialog.dismiss();
            TagAddActivity.this.deleteUserCustomTag(this.f56167b);
        }
    }

    private void createAndAddTag(GameTagsBean gameTag, FlowLayout fl_tag_view, boolean isUserTag) {
        View viewInflate = View.inflate(this, R.layout.item_tag_view, null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
        TextView textView = (TextView) viewInflate.findViewById(R.id.tv_title);
        ImageView imageView = (ImageView) viewInflate.findViewById(R.id.iv_icon);
        LinearLayout linearLayout = (LinearLayout) viewInflate.findViewById(R.id.ll_root);
        imageView.setVisibility(0);
        if (isUserTag) {
            if (!gameTag.isShowDelete() && gameTag.getVoteFlag().intValue() == 0) {
                linearLayout.setBackgroundResource(R.drawable.shape_f7f7f7_r_6);
                textView.setTextColor(Color.parseColor("#555555"));
                imageView.setVisibility(0);
                imageView.setImageResource(R.drawable.ic_add_blue);
                imageView.setOnClickListener(new f(gameTag));
            } else {
                linearLayout.setBackgroundResource(R.drawable.shape_eef0f3_r_6);
                textView.setTextColor(Color.parseColor("#A4B5C7"));
                imageView.setVisibility(8);
            }
            viewInflate.setOnLongClickListener(new g(gameTag));
        } else if (gameTag.getTagType().intValue() == 2 || gameTag.getTagType().intValue() == 3) {
            imageView.setImageResource(R.drawable.ic_arrow_right_black);
        } else {
            imageView.setVisibility(0);
            imageView.setImageResource(R.drawable.ic_delete_red);
            imageView.setOnClickListener(new h(gameTag));
        }
        textView.setText(gameTag.getName());
        viewInflate.setOnClickListener(new i(isUserTag, gameTag));
        fl_tag_view.addView(viewInflate, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setListViewHeightBasedOnChildren() {
        ListAdapter adapter = this.lv_auto_search.getAdapter();
        if (adapter == null) {
            return;
        }
        int count = adapter.getCount();
        int measuredHeight = 0;
        for (int i10 = 0; i10 < count; i10++) {
            View view = adapter.getView(i10, null, this.lv_auto_search);
            view.measure(0, 0);
            measuredHeight += view.getMeasuredHeight();
        }
        ViewGroup.LayoutParams layoutParams = this.lv_auto_search.getLayoutParams();
        layoutParams.height = measuredHeight + (this.lv_auto_search.getDividerHeight() * (adapter.getCount() - 1));
        this.lv_auto_search.setLayoutParams(layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showConfirmDialog(GameTagsBean gameTag) {
        AlertDialog.Builder builder = new AlertDialog.Builder(this, R.style.AlertDialogCustom);
        this.dialogConfirm = builder;
        builder.setMessage("是否要删除\"" + gameTag.getName() + "\"标签");
        this.dialogConfirm.setPositiveButton("仍要删除", new j(gameTag));
        this.dialogConfirm.setNegativeButton("取消", new a());
        this.dialogConfirm.show();
    }

    @Receiver(actions = {p5.a.B})
    void accountChange(Intent intent) {
        getListData();
    }

    @Background
    void addUserCustomGameTag(String tag) {
        hideKeyboard();
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                com.join.mgps.Util.a3.b(this).d("网络连接异常，请检查网络连接");
                return;
            }
            try {
                showLodingDialog();
                RequestModel requestModel = new RequestModel(this);
                RequestAddUserCustomGameTag requestAddUserCustomGameTag = new RequestAddUserCustomGameTag();
                requestAddUserCustomGameTag.setTagName(tag);
                requestAddUserCustomGameTag.setGameId(this.gameId);
                requestAddUserCustomGameTag.setUid(AccountUtil_.getInstance_(this).getUid());
                requestModel.setArgs(requestAddUserCustomGameTag);
                ResponseModel<ListUserCustomGameTagBean> responseModelN0 = this.rpcGameClient.n0(requestModel.makeSign());
                if (responseModelN0 != null && responseModelN0.getCode() == 200) {
                    com.join.mgps.Util.a3.b(this).d("标签添加成功");
                    clearEtTag();
                    getListData();
                } else if (responseModelN0 == null || !com.join.mgps.Util.t2.i(responseModelN0.getMessage())) {
                    com.join.mgps.Util.a3.b(this).d("添加失败，请重试");
                } else {
                    com.join.mgps.Util.a3.b(this).d(responseModelN0.getMessage());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                com.join.mgps.Util.a3.b(this).d("标签添加失败");
            }
        } finally {
            dismissLodingDialog();
        }
    }

    @AfterViews
    void afterViews() {
        this.dialog = com.join.mgps.Util.h0.h0(this).x(this);
        this.title_textview.setText(this.title);
        this.title_textview.setTypeface(Typeface.defaultFromStyle(1));
        this.rpcGameClient = com.join.mgps.rpc.impl.i.P0();
        this.fl_tag_all.setHorizontalDivider((int) getResources().getDimension(R.dimen.wdp20));
        this.fl_tag_all.setVerticalDivider((int) getResources().getDimension(R.dimen.wdp28));
        this.fl_tag_my.setHorizontalDivider((int) getResources().getDimension(R.dimen.wdp20));
        this.fl_tag_my.setVerticalDivider((int) getResources().getDimension(R.dimen.wdp28));
        this.isLogin = IntentUtil.getInstance().isLogined(this);
        showLoding();
        getListData();
        this.et_tag.addTextChangedListener(this.tagSearchWatcher);
        if (this.autoSearchAdapter == null) {
            b bVar = new b();
            this.autoSearchAdapter = bVar;
            this.lv_auto_search.setAdapter((ListAdapter) bVar);
            setListViewHeightBasedOnChildren();
            this.autoSearchAdapter.setItemClickListener(new c());
        }
    }

    @Click
    void back_image() {
        finish();
    }

    @UiThread
    void clearEtTag() {
        this.et_tag.setText("");
    }

    @Background
    void deleteUserCustomGameTag(GameTagsBean tag) {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                com.join.mgps.Util.a3.b(this).d("网络连接异常，请检查网络连接");
                return;
            }
            try {
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this);
                RequestDeleteUserCustomGameTag requestDeleteUserCustomGameTag = new RequestDeleteUserCustomGameTag();
                requestDeleteUserCustomGameTag.setTagId(tag.getId());
                requestDeleteUserCustomGameTag.setGameId(this.gameId);
                requestDeleteUserCustomGameTag.setUid(AccountUtil_.getInstance_(this).getUid());
                requestModel.setArgs(requestDeleteUserCustomGameTag);
                showLodingDialog();
                ResponseModel responseModelM = this.rpcGameClient.M(requestModel.makeSign());
                if (responseModelM != null && responseModelM.getCode() == 200) {
                    getListData();
                    com.join.mgps.Util.a3.b(this).d("自定义游戏标签删除成功");
                } else if (responseModelM == null || !com.join.mgps.Util.t2.i(responseModelM.getMessage())) {
                    com.join.mgps.Util.a3.b(this).d("自定义游戏标签删除失败");
                } else {
                    com.join.mgps.Util.a3.b(this).d(responseModelM.getMessage());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                com.join.mgps.Util.a3.b(this).d("自定义游戏标签删除失败");
            }
        } finally {
            dismissLodingDialog();
        }
    }

    @Background
    void deleteUserCustomTag(GameTagsBean tag) {
        try {
            if (!com.join.android.app.common.utils.m.j(this)) {
                com.join.mgps.Util.a3.b(this).d("网络连接异常，请检查网络连接");
                return;
            }
            try {
                RequestModel requestModel = new RequestModel();
                requestModel.setDefault(this);
                RequestDeleteUserCustomTag requestDeleteUserCustomTag = new RequestDeleteUserCustomTag();
                requestDeleteUserCustomTag.setTagId(tag.getId());
                requestDeleteUserCustomTag.setGameId(this.gameId);
                requestDeleteUserCustomTag.setUid(AccountUtil_.getInstance_(this).getUid());
                requestModel.setArgs(requestDeleteUserCustomTag);
                showLodingDialog();
                ResponseModel responseModelQ = this.rpcGameClient.q(requestModel.makeSign());
                if (responseModelQ != null && responseModelQ.getCode() == 200) {
                    getListData();
                    com.join.mgps.Util.a3.b(this).d("常用标签删除成功");
                } else if (responseModelQ == null || !com.join.mgps.Util.t2.i(responseModelQ.getMessage())) {
                    com.join.mgps.Util.a3.b(this).d("常用标签删除失败");
                } else {
                    com.join.mgps.Util.a3.b(this).d(responseModelQ.getMessage());
                }
            } catch (Exception e10) {
                e10.printStackTrace();
                com.join.mgps.Util.a3.b(this).d("常用标签删除失败");
            }
        } finally {
            dismissLodingDialog();
        }
    }

    @UiThread
    void dismissLodingDialog() {
        this.dialog.dismiss();
    }

    @Override // android.app.Activity
    public void finish() {
        super.finish();
        this.mHandler.removeCallbacks(this.searchRunner);
    }

    @Background
    void getAutoSearchList(String keyword) {
        if (!com.join.android.app.common.utils.m.j(this)) {
            com.join.mgps.Util.a3.b(this).d(this.netExcption);
            return;
        }
        ArrayList arrayList = new ArrayList();
        try {
            try {
                RequestModel requestModel = new RequestModel(this);
                RequestSearchUserCustomGameTag requestSearchUserCustomGameTag = new RequestSearchUserCustomGameTag();
                requestSearchUserCustomGameTag.setSearchWord(keyword);
                requestSearchUserCustomGameTag.setGameId(this.gameId);
                requestSearchUserCustomGameTag.setUid(AccountUtil_.getInstance_(this).getUid());
                requestModel.setArgs(requestSearchUserCustomGameTag);
                updateSearchUi(this.rpcGameClient.j0(requestModel.makeSign()).getData());
            } catch (Exception e10) {
                e10.printStackTrace();
                com.join.mgps.Util.a3.b(this).d(this.netConnectExcption);
                updateSearchUi(arrayList);
            }
        } catch (Throwable th) {
            updateSearchUi(arrayList);
            throw th;
        }
    }

    @Background
    void getListData() {
        if (!com.join.android.app.common.utils.m.j(this)) {
            showLodingFailed();
            return;
        }
        try {
            RequestModel requestModel = new RequestModel(this);
            RequestListUserCustomGameTagArgs requestListUserCustomGameTagArgs = new RequestListUserCustomGameTagArgs();
            requestListUserCustomGameTagArgs.setUid(AccountUtil_.getInstance_(this).getUid());
            requestListUserCustomGameTagArgs.setGameId(this.gameId);
            requestModel.setArgs(requestListUserCustomGameTagArgs);
            ResponseModel<ListUserCustomGameTagBean> responseModelX0 = this.rpcGameClient.x0(requestModel.makeSign());
            if (responseModelX0 == null || responseModelX0.getData() == null) {
                showLodingFailed();
            } else {
                hideLoding();
                showMain(responseModelX0.getData());
            }
        } catch (Exception e10) {
            e10.printStackTrace();
            showLodingFailed();
        }
    }

    void hideKeyboard() {
        r7.a.b(this.et_tag);
        ((InputMethodManager) getSystemService("input_method")).hideSoftInputFromWindow(getCurrentFocus().getWindowToken(), 2);
    }

    @UiThread
    void hideLoding() {
        try {
            this.loding_layout.setVisibility(8);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click({R.id.ll_add_tag})
    void onCLickAddUserCustomGameTag() {
        if (com.join.mgps.Util.t2.h(this.et_tag.getText().toString())) {
            com.join.mgps.Util.a3.b(this).d("请输入游戏新标签！");
            return;
        }
        if (IntentUtil.getInstance().goLogin(this)) {
            com.join.mgps.Util.a3.b(this).d("您还未登录请先登录帐号！");
            return;
        }
        SimpleBaseAdapter<String> simpleBaseAdapter = this.autoSearchAdapter;
        if (simpleBaseAdapter != null) {
            simpleBaseAdapter.clear();
        }
        setListViewHeightBasedOnChildren();
        addUserCustomGameTag(this.et_tag.getText().toString());
    }

    @Override // com.BaseFragmentActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.isLogin || !IntentUtil.getInstance().isLogined(this)) {
            return;
        }
        getListData();
    }

    @Click
    void relodingimag() {
        showLoding();
        getListData();
    }

    @Click
    void setNetwork() {
        UtilsMy.N3(this);
    }

    @UiThread
    void showLoding() {
        try {
            this.loding_layout.setVisibility(0);
            this.loding_faile.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showLodingDialog() {
        this.dialog.b();
    }

    @UiThread
    void showLodingFailed() {
        try {
            this.loding_faile.setVisibility(0);
            this.loding_layout.setVisibility(8);
            this.nsv_view.setVisibility(8);
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @UiThread
    void showMain(ListUserCustomGameTagBean subList) {
        try {
            this.tagList = subList;
            if (subList == null) {
                return;
            }
            this.fl_tag_my.removeAllViews();
            this.fl_tag_all.removeAllViews();
            this.nsv_view.setVisibility(0);
            if (subList.getGameTags() != null) {
                for (GameTagsBean gameTagsBean : subList.getGameTags()) {
                    if (!TextUtils.equals(gameTagsBean.getId(), "7") || gameTagsBean.getVoteFlag().intValue() != 0) {
                        createAndAddTag(gameTagsBean, this.fl_tag_all, false);
                    }
                }
            }
            if (subList.getPersonalTags() != null) {
                Iterator<GameTagsBean> it2 = subList.getPersonalTags().iterator();
                while (it2.hasNext()) {
                    createAndAddTag(it2.next(), this.fl_tag_my, true);
                }
            }
        } catch (Exception e10) {
            e10.printStackTrace();
        }
    }

    @Click({R.id.tv_report})
    void tagReport() {
        if (IntentUtil.getInstance().goLogin(this)) {
            com.join.mgps.Util.a3.b(this).d("您还未登录请先登录帐号！");
        } else {
            TagReportActivity_.intent(this).b(this.tagList).a(this.gameId).start();
        }
    }

    @UiThread
    void updateSearchUi(List<String> searchAutoDataBeans) {
        this.autoSearchAdapter.setDatas(searchAutoDataBeans);
        setListViewHeightBasedOnChildren();
        this.autoSearchAdapter.notifyDataSetChanged();
    }
}
