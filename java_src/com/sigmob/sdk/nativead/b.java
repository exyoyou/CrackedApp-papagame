package com.sigmob.sdk.nativead;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.Base64;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.EditText;
import android.widget.TextView;
import com.czhj.sdk.common.ThreadPool.ThreadPoolFactory;
import com.czhj.sdk.common.network.Networking;
import com.czhj.sdk.common.network.SigmobRequestQueue;
import com.czhj.sdk.common.utils.Dips;
import com.czhj.sdk.common.utils.ResourceUtil;
import com.czhj.sdk.logger.SigmobLog;
import com.czhj.volley.NetworkResponse;
import com.czhj.volley.VolleyError;
import com.sigmob.sdk.base.common.aj;
import com.sigmob.sdk.base.models.BaseAdUnit;
import com.sigmob.sdk.base.models.rtb.BidResponse;
import com.sigmob.sdk.base.mta.PointCategory;
import com.sigmob.sdk.base.mta.PointEntitySigmob;
import com.sigmob.windad.WindAds;
import com.sigmob.windad.natives.WindNativeAdData;
import java.lang.ref.SoftReference;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes3.dex */
public class b extends Dialog implements DialogInterface.OnDismissListener, DialogInterface.OnShowListener, View.OnClickListener, v {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f81386a = "DisLikeDialog";

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SoftReference<Context> f81387b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f81388c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final BaseAdUnit f81389d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private WindNativeAdData.DislikeInteractionCallback f81390e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<String> f81391f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private TextView f81392g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private TextView f81393h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private TextView f81394i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private TextView f81395j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private EditText f81396k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private q f81397l;

    /* JADX INFO: renamed from: com.sigmob.sdk.nativead.b$1, reason: invalid class name */
    class AnonymousClass1 implements com.sigmob.sdk.base.network.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Context f81398a;

        AnonymousClass1(final Context val$context) {
            this.f81398a = val$context;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(Context context) {
            aj.a(context, "反馈上报成功", 0).show();
        }

        @Override // com.czhj.volley.Response.ErrorListener
        public void onErrorResponse(final VolleyError error) {
            Handler handler = WindAds.sharedAds().getHandler();
            final Context context = this.f81398a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.nativead.m0
                @Override // java.lang.Runnable
                public final void run() {
                    b.AnonymousClass1.a(error, context);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void a(VolleyError volleyError, Context context) {
            NetworkResponse networkResponse;
            aj.a(context, "反馈上报失败，错误码: " + ((volleyError == null || (networkResponse = volleyError.networkResponse) == null) ? 0 : networkResponse.statusCode), 1).show();
        }

        @Override // com.sigmob.sdk.base.network.d.a
        public void a(JSONObject response) {
            Handler handler = WindAds.sharedAds().getHandler();
            final Context context = this.f81398a;
            handler.post(new Runnable() { // from class: com.sigmob.sdk.nativead.l0
                @Override // java.lang.Runnable
                public final void run() {
                    b.AnonymousClass1.a(context);
                }
            });
        }
    }

    public b(Context context, BaseAdUnit adUnit) {
        super(context, com.sigmob.sdk.base.k.e());
        this.f81391f = new ArrayList();
        this.f81387b = new SoftReference<>(context);
        this.f81388c = context.getApplicationContext();
        this.f81389d = adUnit;
        c();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v10) {
        int i10;
        String string;
        String str = "";
        if (v10.equals(this.f81393h)) {
            String str2 = (String) this.f81393h.getText();
            a("dislike", PointCategory.ABNORMAL_SHOW, "", "");
            str = str2;
            i10 = 1;
        } else {
            if (v10.equals(this.f81394i)) {
                string = (String) this.f81394i.getText();
                a("dislike", PointCategory.CANNOT_CLOSE, "", "");
                i10 = 2;
            } else if (v10.equals(this.f81392g)) {
                string = (String) this.f81392g.getText();
                a("dislike", PointCategory.NOINTEREST_CLICK, "", "");
                i10 = 3;
            } else {
                i10 = 0;
                if (v10.equals(this.f81395j) && com.sigmob.sdk.base.utils.w.b(this.f81396k)) {
                    string = this.f81396k.getText().toString();
                    if (TextUtils.isEmpty(string)) {
                        aj.a(com.sigmob.sdk.b.e(), "请输入反馈文字", 0).show();
                        return;
                    } else {
                        a("dislike", PointCategory.ADVICE, "", Base64.encodeToString(string.getBytes(), 0));
                        i10 = 5;
                    }
                }
            }
            str = string;
        }
        d();
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f81390e;
        if (dislikeInteractionCallback == null || i10 == 0) {
            return;
        }
        dislikeInteractionCallback.onSelected(i10, str, true);
        dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(ResourceUtil.getLayoutId(this.f81388c, "sig_dislike_layout"));
        View viewFindViewById = findViewById(ResourceUtil.getId(this.f81388c, "sig_dislike_sv"));
        ViewGroup viewGroup = (ViewGroup) findViewById(ResourceUtil.getId(this.f81388c, "sig_dislike_ll"));
        viewGroup.setLongClickable(true);
        viewGroup.setOnLongClickListener(new View.OnLongClickListener() { // from class: com.sigmob.sdk.nativead.g0
            @Override // android.view.View.OnLongClickListener
            public final boolean onLongClick(View view) {
                return this.f81420b.b(view);
            }
        });
        this.f81393h = (TextView) findViewById(ResourceUtil.getId(this.f81388c, "sig_not_show_tv"));
        this.f81394i = (TextView) findViewById(ResourceUtil.getId(this.f81388c, "sig_not_close_tv"));
        this.f81392g = (TextView) findViewById(ResourceUtil.getId(this.f81388c, "sig_dislike_tv"));
        this.f81395j = (TextView) findViewById(ResourceUtil.getId(this.f81388c, "sig_commit_sl"));
        this.f81396k = (EditText) findViewById(ResourceUtil.getId(this.f81388c, "sig_suggest_et"));
        viewFindViewById.setOnClickListener(new View.OnClickListener() { // from class: com.sigmob.sdk.nativead.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f81421b.a(view);
            }
        });
        this.f81392g.setOnClickListener(this);
        this.f81393h.setOnClickListener(this);
        this.f81394i.setOnClickListener(this);
        this.f81395j.setOnClickListener(this);
        this.f81396k.addTextChangedListener(new TextWatcher() { // from class: com.sigmob.sdk.nativead.b.2
            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable edit) {
                if (TextUtils.isEmpty(edit.toString()) && com.sigmob.sdk.base.utils.w.b(b.this.f81395j)) {
                    b.this.f81395j.setTextColor(Color.parseColor("#C2C2C2"));
                }
            }

            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence text, int start, int count, int after) {
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence text, int start, int before, int count) {
                if (b.this.f81395j == null) {
                    return;
                }
                b.this.f81395j.setTextColor(Color.parseColor("#FE7E03"));
            }
        });
        q qVar = new q(this.f81388c);
        this.f81397l = qVar;
        qVar.setList(this.f81391f);
        this.f81397l.setOnItemClickListener(new q.e() { // from class: com.sigmob.sdk.nativead.i0
            @Override // com.sigmob.sdk.nativead.q.e
            public final void onItemClick(int i10, String str) {
                this.f81425a.a(i10, str);
            }
        });
        ((ViewGroup) findViewById(ResourceUtil.getId(this.f81388c, "sig_flow_sl"))).addView(this.f81397l, new ViewGroup.LayoutParams(-1, -2));
        setOnShowListener(this);
        setOnDismissListener(this);
        setCanceledOnTouchOutside(true);
        setCancelable(true);
        e();
    }

    @Override // android.content.DialogInterface.OnDismissListener
    public void onDismiss(DialogInterface dialog) {
        SigmobLog.i("DisLikeDialog#onDismiss");
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f81390e;
        if (dislikeInteractionCallback == null) {
            return;
        }
        dislikeInteractionCallback.onCancel();
    }

    @Override // android.content.DialogInterface.OnShowListener
    public void onShow(DialogInterface dialog) {
        SigmobLog.i("DisLikeDialog#onShow");
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f81390e;
        if (dislikeInteractionCallback != null) {
            dislikeInteractionCallback.onShow();
        }
        q qVar = this.f81397l;
        if (qVar != null) {
            qVar.b();
        }
    }

    private void c() {
        this.f81391f.clear();
        this.f81391f.add("违法违规");
        this.f81391f.add("疑似抄袭");
        this.f81391f.add("虚假欺诈");
        this.f81391f.add("低俗色情");
        this.f81391f.add("诱导点击");
    }

    private void d() {
        final Context contextE = com.sigmob.sdk.b.e();
        BaseAdUnit baseAdUnit = this.f81389d;
        if (baseAdUnit == null) {
            aj.a(contextE, "感谢反馈", 0).show();
            return;
        }
        baseAdUnit.dislikeReport();
        if (!com.sigmob.sdk.base.o.a().g()) {
            aj.a(contextE, "感谢反馈", 0).show();
            return;
        }
        final BidResponse bidResponseA = com.sigmob.sdk.base.common.h.a(this.f81389d.getRequestId());
        if (bidResponseA == null) {
            return;
        }
        ThreadPoolFactory.BackgroundThreadPool.getInstance().submit(new Runnable() { // from class: com.sigmob.sdk.nativead.j0
            @Override // java.lang.Runnable
            public final void run() {
                this.f81430b.a(bidResponseA, contextE);
            }
        });
    }

    private void e() {
        int i10;
        Window window = getWindow();
        Context context = getContext();
        if (window == null) {
            return;
        }
        window.setGravity(17);
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        int i11 = context.getResources().getDisplayMetrics().widthPixels;
        int i12 = context.getResources().getDisplayMetrics().heightPixels;
        int iDipsToIntPixels = Dips.dipsToIntPixels(0.0f, context);
        int i13 = -1;
        if (i12 > i11) {
            i13 = i11 - iDipsToIntPixels;
            i10 = -1;
        } else {
            i10 = i12 - iDipsToIntPixels;
        }
        attributes.width = i13;
        attributes.height = i10;
        window.setAttributes(attributes);
        int iG = com.sigmob.sdk.base.k.g();
        if (iG <= 0) {
            return;
        }
        window.setWindowAnimations(iG);
    }

    public void b() {
        TextView textView = this.f81392g;
        if (textView != null) {
            textView.setOnClickListener(null);
            this.f81392g = null;
        }
        TextView textView2 = this.f81393h;
        if (textView2 != null) {
            textView2.setOnClickListener(null);
            this.f81393h = null;
        }
        TextView textView3 = this.f81394i;
        if (textView3 != null) {
            textView3.setOnClickListener(null);
            this.f81394i = null;
        }
        TextView textView4 = this.f81395j;
        if (textView4 != null) {
            textView4.setOnClickListener(null);
            this.f81395j = null;
        }
        if (this.f81390e != null) {
            this.f81390e = null;
        }
        setOnShowListener(null);
        setOnDismissListener(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean b(View view) {
        Context context;
        BaseAdUnit baseAdUnit = this.f81389d;
        if (baseAdUnit == null) {
            return false;
        }
        String str = "广告请求 ID\n" + baseAdUnit.getRequestId();
        SoftReference<Context> softReference = this.f81387b;
        if (softReference != null && (context = softReference.get()) != null && (context instanceof Activity)) {
            Activity activity = (Activity) context;
            if (!activity.isFinishing() && !activity.isDestroyed()) {
                new c(activity, str).show();
                return true;
            }
        }
        return false;
    }

    @Override // com.sigmob.sdk.nativead.v
    public void a() {
        BaseAdUnit baseAdUnit = this.f81389d;
        if (baseAdUnit == null || (baseAdUnit.isDislikeReported() && this.f81389d.getAd_type() != 5)) {
            aj.a(getContext(), "已提交反馈", 0).show();
        } else {
            show();
            a("dislike", "click", "", "");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(int i10, String str) {
        d();
        a("dislike", PointCategory.REPORT, String.valueOf(i10), "");
        WindNativeAdData.DislikeInteractionCallback dislikeInteractionCallback = this.f81390e;
        if (dislikeInteractionCallback == null) {
            return;
        }
        dislikeInteractionCallback.onSelected(4, str, true);
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        dismiss();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(BidResponse bidResponse, Context context) {
        com.sigmob.sdk.base.network.d dVar = new com.sigmob.sdk.base.network.d(com.sigmob.sdk.base.o.a().u(), bidResponse, new AnonymousClass1(context));
        SigmobRequestQueue sigRequestQueue = Networking.getSigRequestQueue();
        if (sigRequestQueue == null) {
            return;
        }
        sigRequestQueue.add(dVar);
    }

    @Override // com.sigmob.sdk.nativead.v
    public void a(WindNativeAdData.DislikeInteractionCallback callback) {
        this.f81390e = callback;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(String str, String str2, Object obj) {
        if (obj instanceof PointEntitySigmob) {
            PointEntitySigmob pointEntitySigmob = (PointEntitySigmob) obj;
            pointEntitySigmob.setAdtype(String.valueOf(this.f81389d.getAd_type()));
            pointEntitySigmob.setLoad_id(this.f81389d.getLoad_id());
            pointEntitySigmob.setRequest_id(this.f81389d.getRequestId());
            pointEntitySigmob.setReason(str);
            pointEntitySigmob.setContent(str2);
            pointEntitySigmob.setVid(this.f81389d.getVid());
        }
    }

    private void a(String cate, String sub_category, final String reason, final String content) {
        com.sigmob.sdk.base.common.ad.a(cate, sub_category, this.f81389d, new com.sigmob.sdk.base.common.ad.a() { // from class: com.sigmob.sdk.nativead.k0
            @Override // com.sigmob.sdk.base.common.ad.a
            public final void onAddExtra(Object obj) {
                this.f81433a.a(reason, content, obj);
            }
        });
    }
}
