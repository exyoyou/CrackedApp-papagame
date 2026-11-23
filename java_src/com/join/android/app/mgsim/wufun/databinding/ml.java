package com.join.android.app.mgsim.wufun.databinding;

import android.support.v4.media.session.PlaybackStateCompat;
import android.util.SparseIntArray;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.Group;
import androidx.core.widget.NestedScrollView;
import androidx.databinding.DataBindingComponent;
import androidx.databinding.ViewDataBinding;
import androidx.databinding.adapters.TextViewBindingAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.recyclerview.widget.RecyclerView;
import com.facebook.drawee.view.SimpleDraweeView;
import com.join.android.app.mgsim.wufun.R;
import com.join.kotlin.base.widget.recycleview.XQuickRecyclerView;
import com.join.kotlin.bindingadapter.SimpleDrawableViewKt;
import com.join.kotlin.discount.model.bean.CommentStatisticDataBean;
import com.join.kotlin.discount.model.bean.CommonComponentBean;
import com.join.kotlin.discount.model.bean.GameDetailBasicInfoBean;
import com.join.kotlin.discount.model.bean.GameDetailBean;
import com.join.kotlin.discount.model.bean.GameDetailBookingInfoBean;
import com.join.kotlin.discount.model.bean.GameServerInfoBean;
import com.join.kotlin.discount.proxy.GameDetailFragmentClickProxy;
import com.join.kotlin.discount.viewmodel.GameDetailFragmentViewModel;
import com.join.mgps.customview.MarqueeTextView;
import com.join.mgps.customview.NestedScrollableHost;
import com.join.mgps.dto.CommonGameInfoBean;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class ml extends ll implements com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a {

    /* JADX INFO: renamed from: j2, reason: collision with root package name */
    @Nullable
    private static final ViewDataBinding.IncludedLayouts f41938j2 = null;

    /* JADX INFO: renamed from: k2, reason: collision with root package name */
    @Nullable
    private static final SparseIntArray f41939k2;

    @Nullable
    private final View.OnClickListener L1;

    @NonNull
    private final ConstraintLayout O;

    @NonNull
    private final TextView P;

    @NonNull
    private final TextView Q;

    @NonNull
    private final TextView R;

    @Nullable
    private final View.OnClickListener R1;

    @NonNull
    private final LinearLayout S;

    @NonNull
    private final TextView T;

    @NonNull
    private final TextView U;

    @NonNull
    private final Group V;

    @Nullable
    private final View.OnClickListener V1;

    @NonNull
    private final LinearLayout W;

    @NonNull
    private final TextView X;

    @NonNull
    private final LinearLayout Y;

    @NonNull
    private final TextView Z;

    /* JADX INFO: renamed from: a2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41940a2;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    @NonNull
    private final TextView f41941b1;

    /* JADX INFO: renamed from: b2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41942b2;

    /* JADX INFO: renamed from: c2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41943c2;

    /* JADX INFO: renamed from: d2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41944d2;

    /* JADX INFO: renamed from: e2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41945e2;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    @NonNull
    private final TextView f41946f1;

    /* JADX INFO: renamed from: f2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41947f2;

    /* JADX INFO: renamed from: g2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41948g2;

    /* JADX INFO: renamed from: h2, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41949h2;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    @NonNull
    private final ProgressBar f41950i1;

    /* JADX INFO: renamed from: i2, reason: collision with root package name */
    private long f41951i2;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    @NonNull
    private final TextView f41952l1;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    @NonNull
    private final LinearLayout f41953p0;

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    @NonNull
    private final TextView f41954p1;

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    @NonNull
    private final TextView f41955q1;

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    @NonNull
    private final ConstraintLayout f41956r1;

    /* JADX INFO: renamed from: v1, reason: collision with root package name */
    @Nullable
    private final View.OnClickListener f41957v1;

    static {
        SparseIntArray sparseIntArray = new SparseIntArray();
        f41939k2 = sparseIntArray;
        sparseIntArray.put(R.id.topMask, 39);
        sparseIntArray.put(R.id.nes, 40);
        sparseIntArray.put(R.id.cl_container, 41);
        sparseIntArray.put(R.id.bannerView, 42);
        sparseIntArray.put(R.id.banner, 43);
        sparseIntArray.put(R.id.gradientTop, 44);
        sparseIntArray.put(R.id.gradientBottom, 45);
        sparseIntArray.put(R.id.bottomMask, 46);
        sparseIntArray.put(R.id.llIndicator, 47);
        sparseIntArray.put(R.id.flWelfare, 48);
        sparseIntArray.put(R.id.titleNotice, 49);
        sparseIntArray.put(R.id.dividerLine, 50);
        sparseIntArray.put(R.id.releaseTitle, 51);
        sparseIntArray.put(R.id.cardRelease, 52);
        sparseIntArray.put(R.id.rvReleaseWelfare, 53);
        sparseIntArray.put(R.id.llExpand, 54);
        sparseIntArray.put(R.id.commentTitle, 55);
        sparseIntArray.put(R.id.cardComment, 56);
    }

    public ml(@Nullable DataBindingComponent bindingComponent, @NonNull View root) {
        this(bindingComponent, root, ViewDataBinding.mapBindings(bindingComponent, root, 57, f41938j2, f41939k2));
    }

    private boolean A(MutableLiveData<Integer> VmProgress, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 128;
        }
        return true;
    }

    private boolean B(MutableLiveData<Boolean> VmShowAvgDuration, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 256;
        }
        return true;
    }

    private boolean C(MutableLiveData<Boolean> VmShowAvgScore, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 16;
        }
        return true;
    }

    private boolean D(MutableLiveData<Boolean> VmShowComment, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 4;
        }
        return true;
    }

    private boolean E(MutableLiveData<Boolean> VmShowGameInfo, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 32;
        }
        return true;
    }

    private boolean w(MutableLiveData<String> VmBtnText, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 64;
        }
        return true;
    }

    private boolean x(MutableLiveData<CommentStatisticDataBean> VmCommentStatistic, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 8;
        }
        return true;
    }

    private boolean y(MutableLiveData<GameDetailBean> VmGameInfo, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 2;
        }
        return true;
    }

    private boolean z(MutableLiveData<String> VmGoodRate, int fieldId) {
        if (fieldId != 0) {
            return false;
        }
        synchronized (this) {
            this.f41951i2 |= 1;
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.generated.callback.a.InterfaceC0649a
    public final void a(int sourceId, View callbackArg_0) {
        switch (sourceId) {
            case 1:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy = this.N;
                if (gameDetailFragmentClickProxy != null) {
                    gameDetailFragmentClickProxy.goCoupon();
                }
                break;
            case 2:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy2 = this.N;
                if (gameDetailFragmentClickProxy2 != null) {
                    gameDetailFragmentClickProxy2.goGift();
                }
                break;
            case 3:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy3 = this.N;
                if (gameDetailFragmentClickProxy3 != null) {
                    gameDetailFragmentClickProxy3.goEvent();
                }
                break;
            case 4:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy4 = this.N;
                if (gameDetailFragmentClickProxy4 != null) {
                    gameDetailFragmentClickProxy4.goServer();
                }
                break;
            case 5:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy5 = this.N;
                if (gameDetailFragmentClickProxy5 != null) {
                    gameDetailFragmentClickProxy5.onAdClick();
                }
                break;
            case 6:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy6 = this.N;
                if (gameDetailFragmentClickProxy6 != null) {
                    gameDetailFragmentClickProxy6.expandReleaseWelfare();
                }
                break;
            case 7:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy7 = this.N;
                if (gameDetailFragmentClickProxy7 != null) {
                    gameDetailFragmentClickProxy7.clickGoodRate();
                }
                break;
            case 8:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy8 = this.N;
                if (gameDetailFragmentClickProxy8 != null) {
                    gameDetailFragmentClickProxy8.showCommentStatistic(1);
                }
                break;
            case 9:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy9 = this.N;
                if (gameDetailFragmentClickProxy9 != null) {
                    gameDetailFragmentClickProxy9.showCommentStatistic(0);
                }
                break;
            case 10:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy10 = this.N;
                if (gameDetailFragmentClickProxy10 != null) {
                    gameDetailFragmentClickProxy10.goComment();
                }
                break;
            case 11:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy11 = this.N;
                if (gameDetailFragmentClickProxy11 != null) {
                    gameDetailFragmentClickProxy11.clickGameInfoTitle();
                }
                break;
            case 12:
                GameDetailFragmentClickProxy gameDetailFragmentClickProxy12 = this.N;
                if (gameDetailFragmentClickProxy12 != null) {
                    gameDetailFragmentClickProxy12.downBtnClick();
                }
                break;
        }
    }

    /* JADX WARN: Code duplicated, block: B:166:0x02f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:167:0x02fb  */
    /* JADX WARN: Code duplicated, block: B:168:0x0300  */
    /* JADX WARN: Code duplicated, block: B:171:0x0307  */
    /* JADX WARN: Code duplicated, block: B:172:0x030e  */
    /* JADX WARN: Code duplicated, block: B:174:0x0311  */
    /* JADX WARN: Code duplicated, block: B:175:0x031c  */
    /* JADX WARN: Code duplicated, block: B:177:0x0345  */
    /* JADX WARN: Code duplicated, block: B:180:0x0352 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:181:0x0354  */
    /* JADX WARN: Code duplicated, block: B:182:0x035b  */
    /* JADX WARN: Code duplicated, block: B:185:0x0364  */
    /* JADX WARN: Code duplicated, block: B:186:0x036b  */
    /* JADX WARN: Code duplicated, block: B:189:0x0372 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:190:0x0374  */
    /* JADX WARN: Code duplicated, block: B:191:0x0378  */
    /* JADX WARN: Code duplicated, block: B:195:0x0380  */
    /* JADX WARN: Code duplicated, block: B:196:0x0383  */
    /* JADX WARN: Code duplicated, block: B:200:0x0390 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:201:0x0392  */
    /* JADX WARN: Code duplicated, block: B:202:0x0399  */
    /* JADX WARN: Code duplicated, block: B:205:0x03a2  */
    /* JADX WARN: Code duplicated, block: B:206:0x03a9  */
    /* JADX WARN: Code duplicated, block: B:209:0x03b0 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:210:0x03b2  */
    /* JADX WARN: Code duplicated, block: B:211:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:214:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:215:0x03db  */
    /* JADX WARN: Code duplicated, block: B:217:0x03df  */
    /* JADX WARN: Code duplicated, block: B:218:0x03e1  */
    /* JADX WARN: Code duplicated, block: B:220:0x03e5  */
    /* JADX WARN: Code duplicated, block: B:221:0x03e8  */
    /* JADX WARN: Code duplicated, block: B:222:0x03ea  */
    /* JADX WARN: Code duplicated, block: B:225:0x03f9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:226:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:227:0x0408  */
    /* JADX WARN: Code duplicated, block: B:230:0x0413  */
    /* JADX WARN: Code duplicated, block: B:231:0x041a  */
    /* JADX WARN: Code duplicated, block: B:235:0x0429 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:236:0x042b  */
    /* JADX WARN: Code duplicated, block: B:237:0x0432  */
    /* JADX WARN: Code duplicated, block: B:240:0x043b  */
    /* JADX WARN: Code duplicated, block: B:241:0x0442  */
    /* JADX WARN: Code duplicated, block: B:243:0x0448  */
    /* JADX WARN: Code duplicated, block: B:246:0x0455 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:247:0x0457  */
    /* JADX WARN: Code duplicated, block: B:248:0x045e  */
    /* JADX WARN: Code duplicated, block: B:251:0x0468  */
    /* JADX WARN: Code duplicated, block: B:252:0x046f  */
    /* JADX WARN: Code duplicated, block: B:255:0x0476 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:256:0x0478  */
    /* JADX WARN: Code duplicated, block: B:257:0x047c  */
    /* JADX WARN: Code duplicated, block: B:260:0x0483  */
    /* JADX WARN: Code duplicated, block: B:262:0x04c5  */
    @Override // androidx.databinding.ViewDataBinding
    protected void executeBindings() {
        long j10;
        String str;
        String game_icon;
        int colorFromResource;
        CommonComponentBean commonComponentBean;
        String str2;
        String str3;
        int i10;
        String game_name;
        int i11;
        int i12;
        int i13;
        String strTagStr;
        int i14;
        String value;
        int i15;
        String string;
        int i16;
        String str4;
        GameDetailBean value2;
        String big_pic;
        String string2;
        int i17;
        int i18;
        int i19;
        boolean zShowSubTitle;
        boolean zServerInfoAvailable;
        String str5;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        int i25;
        String tagName;
        String title;
        String title2;
        String str6;
        String str7;
        String times;
        String server_name;
        String str8;
        int i26;
        CommonComponentBean coupon_info;
        String strActiveNoticeCountStr;
        long j11;
        long j12;
        int iSafeUnbox;
        long j13;
        MutableLiveData<Boolean> showAvgDuration;
        Boolean value3;
        boolean zSafeUnbox;
        long j14;
        MutableLiveData<Integer> progress;
        Integer value4;
        MutableLiveData<String> btnText;
        MutableLiveData<Boolean> showGameInfo;
        Boolean value5;
        boolean zSafeUnbox2;
        long j15;
        long j16;
        MutableLiveData<Boolean> showAvgScore;
        Boolean value6;
        boolean zSafeUnbox3;
        long j17;
        MutableLiveData<CommentStatisticDataBean> commentStatistic;
        CommentStatisticDataBean value7;
        String avg_duration;
        String avg_score;
        List<CommonGameInfoBean> list;
        CommonComponentBean commonComponentBean2;
        GameDetailBasicInfoBean basic_info;
        GameDetailBookingInfoBean booking_info;
        boolean zShowSimilarGames;
        boolean zShowNoticeCount;
        boolean zShowBenefits;
        boolean zShowDiscount;
        List<String> list2;
        boolean z10;
        boolean zShowGiftSubTitle;
        String strSubTitleWithDefault;
        Integer num;
        long j18;
        long j19;
        long j20;
        long j21;
        synchronized (this) {
            j10 = this.f41951i2;
            this.f41951i2 = 0L;
        }
        GameDetailFragmentViewModel gameDetailFragmentViewModel = this.M;
        if ((3071 & j10) != 0) {
            if ((j10 & 2561) != 0) {
                MutableLiveData<String> goodRate = gameDetailFragmentViewModel != null ? gameDetailFragmentViewModel.getGoodRate() : null;
                updateLiveDataRegistration(0, goodRate);
                str8 = (goodRate != null ? goodRate.getValue() : null) + "好评";
            } else {
                str8 = null;
            }
            long j22 = j10 & 2562;
            if (j22 != 0) {
                MutableLiveData<GameDetailBean> gameInfo = gameDetailFragmentViewModel != null ? gameDetailFragmentViewModel.getGameInfo() : null;
                updateLiveDataRegistration(1, gameInfo);
                value2 = gameInfo != null ? gameInfo.getValue() : null;
                if (value2 != null) {
                    zServerInfoAvailable = value2.serverInfoAvailable();
                    basic_info = value2.getBasic_info();
                    List<CommonGameInfoBean> ad2 = value2.getAd();
                    CommonComponentBean gift_info = value2.getGift_info();
                    coupon_info = value2.getCoupon_info();
                    booking_info = value2.getBooking_info();
                    game_icon = value2.getGame_icon();
                    zShowSimilarGames = value2.showSimilarGames();
                    game_name = value2.getGame_name();
                    zShowNoticeCount = value2.showNoticeCount();
                    strActiveNoticeCountStr = value2.activeNoticeCountStr();
                    tagName = value2.getTagName();
                    zShowBenefits = value2.showBenefits();
                    zShowDiscount = value2.showDiscount();
                    list = ad2;
                    commonComponentBean2 = gift_info;
                } else {
                    list = null;
                    commonComponentBean2 = null;
                    zServerInfoAvailable = false;
                    basic_info = null;
                    coupon_info = null;
                    booking_info = null;
                    game_icon = null;
                    zShowSimilarGames = false;
                    game_name = null;
                    zShowNoticeCount = false;
                    strActiveNoticeCountStr = null;
                    tagName = null;
                    zShowBenefits = false;
                    zShowDiscount = false;
                }
                if (j22 != 0) {
                    if (zServerInfoAvailable) {
                        j20 = j10 | 8192 | 2147483648L;
                        j21 = 562949953421312L;
                    } else {
                        j20 = j10 | 4096 | 1073741824;
                        j21 = 281474976710656L;
                    }
                    j10 = j20 | j21;
                }
                if ((j10 & 2562) != 0) {
                    j10 |= zShowSimilarGames ? 32768L : 16384L;
                }
                if ((j10 & 2562) != 0) {
                    j10 |= zShowNoticeCount ? PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE : 1048576L;
                }
                if ((j10 & 2562) != 0) {
                    j10 |= zShowBenefits ? 549755813888L : 274877906944L;
                }
                if ((j10 & 2562) != 0) {
                    j10 |= zShowDiscount ? 137438953472L : 68719476736L;
                }
                i10 = zServerInfoAvailable ? 0 : 8;
                i18 = zShowSimilarGames ? 0 : 8;
                i12 = zShowNoticeCount ? 0 : 8;
                i20 = zShowBenefits ? 0 : 8;
                i11 = zShowDiscount ? 0 : 8;
                if (basic_info != null) {
                    String strSizeText = basic_info.sizeText();
                    boolean zShowSpTag = basic_info.showSpTag();
                    List<String> sp_tag_name = basic_info.getSp_tag_name();
                    strTagStr = basic_info.tagStr();
                    str5 = strSizeText;
                    list2 = sp_tag_name;
                    z10 = zShowSpTag;
                } else {
                    list2 = null;
                    str5 = null;
                    strTagStr = null;
                    z10 = false;
                }
                if ((j10 & 2562) != 0) {
                    j10 |= z10 ? 140737488355328L : 70368744177664L;
                }
                CommonGameInfoBean commonGameInfoBean = list != null ? (CommonGameInfoBean) ViewDataBinding.getFromList(list, 0) : null;
                if (commonComponentBean2 != null) {
                    title = commonComponentBean2.getTitle();
                    strSubTitleWithDefault = commonComponentBean2.subTitleWithDefault("0");
                    zShowGiftSubTitle = commonComponentBean2.showGiftSubTitle();
                } else {
                    zShowGiftSubTitle = false;
                    strSubTitleWithDefault = null;
                    title = null;
                }
                if ((j10 & 2562) != 0) {
                    j10 |= zShowGiftSubTitle ? 134217728L : 67108864L;
                }
                if (coupon_info != null) {
                    zShowSubTitle = coupon_info.showSubTitle();
                    Integer num2 = coupon_info.getNum();
                    title2 = coupon_info.getTitle();
                    num = num2;
                } else {
                    num = null;
                    zShowSubTitle = false;
                    title2 = null;
                }
                if ((j10 & 2562) != 0) {
                    if (zShowSubTitle) {
                        j18 = j10 | PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED | 34359738368L;
                        j19 = 35184372088832L;
                    } else {
                        j18 = j10 | 262144 | 17179869184L;
                        j19 = 17592186044416L;
                    }
                    j10 = j18 | j19;
                }
                Integer game_status = booking_info != null ? booking_info.getGame_status() : null;
                i13 = z10 ? 0 : 8;
                String str9 = "可领" + strSubTitleWithDefault;
                i14 = zShowGiftSubTitle ? 0 : 8;
                colorFromResource = ViewDataBinding.getColorFromResource(this.P, zShowSubTitle ? R.color.discount_color_ff4949 : R.color.discount_color_999999);
                i17 = zShowSubTitle ? 0 : 8;
                StringBuilder sb2 = new StringBuilder();
                str3 = str9;
                sb2.append("可领");
                sb2.append(num);
                string2 = sb2.toString();
                int iSafeUnbox2 = ViewDataBinding.safeUnbox(game_status);
                str = list2 != null ? (String) ViewDataBinding.getFromList(list2, 0) : null;
                big_pic = commonGameInfoBean != null ? commonGameInfoBean.getBig_pic() : null;
                boolean z11 = iSafeUnbox2 == 1;
                if ((j10 & 2562) != 0) {
                    j10 |= z11 ? 8796093022208L : 4398046511104L;
                }
                i26 = z11 ? 0 : 8;
            } else {
                string2 = null;
                i14 = 0;
                i26 = 0;
                str = null;
                value2 = null;
                big_pic = null;
                colorFromResource = 0;
                str5 = null;
                i17 = 0;
                zShowSubTitle = false;
                i10 = 0;
                zServerInfoAvailable = false;
                strTagStr = null;
                coupon_info = null;
                game_icon = null;
                i18 = 0;
                game_name = null;
                i12 = 0;
                strActiveNoticeCountStr = null;
                tagName = null;
                i20 = 0;
                i11 = 0;
                i13 = 0;
                title = null;
                title2 = null;
                str3 = null;
            }
            long j23 = j10 & 2564;
            if (j23 != 0) {
                MutableLiveData<Boolean> showComment = gameDetailFragmentViewModel != null ? gameDetailFragmentViewModel.getShowComment() : null;
                updateLiveDataRegistration(2, showComment);
                boolean zSafeUnbox4 = ViewDataBinding.safeUnbox(showComment != null ? showComment.getValue() : null);
                if (j23 != 0) {
                    j10 |= zSafeUnbox4 ? 33554432L : 16777216L;
                }
                if (!zSafeUnbox4) {
                    i21 = 8;
                }
                if ((j10 & 2568) != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        commentStatistic = gameDetailFragmentViewModel.getCommentStatistic();
                    } else {
                        commentStatistic = null;
                    }
                    updateLiveDataRegistration(3, commentStatistic);
                    if (commentStatistic != null) {
                        value7 = commentStatistic.getValue();
                    } else {
                        value7 = null;
                    }
                    if (value7 != null) {
                        avg_score = value7.getAvg_score();
                        avg_duration = value7.getAvg_duration();
                    } else {
                        avg_duration = null;
                        avg_score = null;
                    }
                    String str10 = avg_score + "分";
                    StringBuilder sb3 = new StringBuilder();
                    str6 = str10;
                    sb3.append("平均时长:");
                    sb3.append(avg_duration);
                    string = sb3.toString();
                } else {
                    i21 = i21;
                    string = null;
                    str6 = null;
                }
                j11 = j10 & 2576;
                if (j11 != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        showAvgScore = gameDetailFragmentViewModel.getShowAvgScore();
                    } else {
                        showAvgScore = null;
                    }
                    updateLiveDataRegistration(4, showAvgScore);
                    if (showAvgScore != null) {
                        value6 = showAvgScore.getValue();
                    } else {
                        value6 = null;
                    }
                    zSafeUnbox3 = ViewDataBinding.safeUnbox(value6);
                    if (j11 != 0) {
                        if (zSafeUnbox3) {
                            j17 = 8388608;
                        } else {
                            j17 = 4194304;
                        }
                        j10 |= j17;
                    }
                    if (zSafeUnbox3) {
                        i16 = 8;
                    }
                    j12 = j10 & 2592;
                    if (j12 != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            showGameInfo = gameDetailFragmentViewModel.getShowGameInfo();
                        } else {
                            showGameInfo = null;
                        }
                        updateLiveDataRegistration(5, showGameInfo);
                        if (showGameInfo != null) {
                            value5 = showGameInfo.getValue();
                        } else {
                            value5 = null;
                        }
                        zSafeUnbox2 = ViewDataBinding.safeUnbox(value5);
                        if (j12 != 0) {
                            if (zSafeUnbox2) {
                                j15 = j10 | 536870912 | 8589934592L;
                                j16 = 2199023255552L;
                            } else {
                                j15 = j10 | 268435456 | 4294967296L;
                                j16 = 1099511627776L;
                            }
                            j10 = j15 | j16;
                        }
                        if (zSafeUnbox2) {
                            i23 = 0;
                        } else {
                            i23 = 8;
                        }
                        if (zSafeUnbox2) {
                            i25 = 0;
                        } else {
                            i25 = 90;
                        }
                        if (zSafeUnbox2) {
                            i24 = 8;
                        } else {
                            i24 = 0;
                        }
                    } else {
                        i16 = i16;
                        i24 = 0;
                        i23 = 0;
                        i25 = 0;
                    }
                    if ((j10 & 2624) != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            btnText = gameDetailFragmentViewModel.getBtnText();
                        } else {
                            btnText = null;
                        }
                        updateLiveDataRegistration(6, btnText);
                        value = btnText != null ? btnText.getValue() : null;
                        if ((j10 & 2688) != 0) {
                            if (gameDetailFragmentViewModel != null) {
                                progress = gameDetailFragmentViewModel.getProgress();
                            } else {
                                progress = null;
                            }
                            updateLiveDataRegistration(7, progress);
                            if (progress != null) {
                                value4 = progress.getValue();
                            } else {
                                value4 = null;
                            }
                            iSafeUnbox = ViewDataBinding.safeUnbox(value4);
                        } else {
                            value = value;
                            iSafeUnbox = 0;
                        }
                        j13 = j10 & 2816;
                        if (j13 != 0) {
                            if (gameDetailFragmentViewModel != null) {
                                showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                            } else {
                                showAvgDuration = null;
                            }
                            updateLiveDataRegistration(8, showAvgDuration);
                            if (showAvgDuration != null) {
                                value3 = showAvgDuration.getValue();
                            } else {
                                value3 = null;
                            }
                            zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                            if (j13 != 0) {
                                if (zSafeUnbox) {
                                    j14 = 131072;
                                } else {
                                    j14 = 65536;
                                }
                                j10 |= j14;
                            }
                            i22 = iSafeUnbox;
                            i15 = zSafeUnbox ? 0 : 8;
                        } else {
                            i22 = iSafeUnbox;
                            i15 = 0;
                        }
                        CommonComponentBean commonComponentBean3 = coupon_info;
                        str4 = str8;
                        commonComponentBean = commonComponentBean3;
                        String str11 = strActiveNoticeCountStr;
                        i19 = i26;
                        str2 = str11;
                    } else {
                        i24 = i24;
                        i23 = i23;
                    }
                    if ((j10 & 2688) != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            progress = gameDetailFragmentViewModel.getProgress();
                        } else {
                            progress = null;
                        }
                        updateLiveDataRegistration(7, progress);
                        if (progress != null) {
                            value4 = progress.getValue();
                        } else {
                            value4 = null;
                        }
                        iSafeUnbox = ViewDataBinding.safeUnbox(value4);
                    } else {
                        value = value;
                        iSafeUnbox = 0;
                    }
                    j13 = j10 & 2816;
                    if (j13 != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                        } else {
                            showAvgDuration = null;
                        }
                        updateLiveDataRegistration(8, showAvgDuration);
                        if (showAvgDuration != null) {
                            value3 = showAvgDuration.getValue();
                        } else {
                            value3 = null;
                        }
                        zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                        if (j13 != 0) {
                            if (zSafeUnbox) {
                                j14 = 131072;
                            } else {
                                j14 = 65536;
                            }
                            j10 |= j14;
                        }
                        i22 = iSafeUnbox;
                        i15 = zSafeUnbox ? 0 : 8;
                    } else {
                        i22 = iSafeUnbox;
                        i15 = 0;
                    }
                    CommonComponentBean commonComponentBean4 = coupon_info;
                    str4 = str8;
                    commonComponentBean = commonComponentBean4;
                    String str12 = strActiveNoticeCountStr;
                    i19 = i26;
                    str2 = str12;
                } else {
                    string = string;
                }
                i16 = 0;
                j12 = j10 & 2592;
                if (j12 != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        showGameInfo = gameDetailFragmentViewModel.getShowGameInfo();
                    } else {
                        showGameInfo = null;
                    }
                    updateLiveDataRegistration(5, showGameInfo);
                    if (showGameInfo != null) {
                        value5 = showGameInfo.getValue();
                    } else {
                        value5 = null;
                    }
                    zSafeUnbox2 = ViewDataBinding.safeUnbox(value5);
                    if (j12 != 0) {
                        if (zSafeUnbox2) {
                            j15 = j10 | 536870912 | 8589934592L;
                            j16 = 2199023255552L;
                        } else {
                            j15 = j10 | 268435456 | 4294967296L;
                            j16 = 1099511627776L;
                        }
                        j10 = j15 | j16;
                    }
                    if (zSafeUnbox2) {
                        i23 = 0;
                    } else {
                        i23 = 8;
                    }
                    if (zSafeUnbox2) {
                        i25 = 0;
                    } else {
                        i25 = 90;
                    }
                    if (zSafeUnbox2) {
                        i24 = 8;
                    } else {
                        i24 = 0;
                    }
                } else {
                    i16 = i16;
                    i24 = 0;
                    i23 = 0;
                    i25 = 0;
                }
                if ((j10 & 2624) != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        btnText = gameDetailFragmentViewModel.getBtnText();
                    } else {
                        btnText = null;
                    }
                    updateLiveDataRegistration(6, btnText);
                    if (btnText != null) {
                    }
                    if ((j10 & 2688) != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            progress = gameDetailFragmentViewModel.getProgress();
                        } else {
                            progress = null;
                        }
                        updateLiveDataRegistration(7, progress);
                        if (progress != null) {
                            value4 = progress.getValue();
                        } else {
                            value4 = null;
                        }
                        iSafeUnbox = ViewDataBinding.safeUnbox(value4);
                    } else {
                        value = value;
                        iSafeUnbox = 0;
                    }
                    j13 = j10 & 2816;
                    if (j13 != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                        } else {
                            showAvgDuration = null;
                        }
                        updateLiveDataRegistration(8, showAvgDuration);
                        if (showAvgDuration != null) {
                            value3 = showAvgDuration.getValue();
                        } else {
                            value3 = null;
                        }
                        zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                        if (j13 != 0) {
                            if (zSafeUnbox) {
                                j14 = 131072;
                            } else {
                                j14 = 65536;
                            }
                            j10 |= j14;
                        }
                        i22 = iSafeUnbox;
                        i15 = zSafeUnbox ? 0 : 8;
                    } else {
                        i22 = iSafeUnbox;
                        i15 = 0;
                    }
                    CommonComponentBean commonComponentBean5 = coupon_info;
                    str4 = str8;
                    commonComponentBean = commonComponentBean5;
                    String str13 = strActiveNoticeCountStr;
                    i19 = i26;
                    str2 = str13;
                } else {
                    i24 = i24;
                    i23 = i23;
                }
                if ((j10 & 2688) != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        progress = gameDetailFragmentViewModel.getProgress();
                    } else {
                        progress = null;
                    }
                    updateLiveDataRegistration(7, progress);
                    if (progress != null) {
                        value4 = progress.getValue();
                    } else {
                        value4 = null;
                    }
                    iSafeUnbox = ViewDataBinding.safeUnbox(value4);
                } else {
                    value = value;
                    iSafeUnbox = 0;
                }
                j13 = j10 & 2816;
                if (j13 != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                    } else {
                        showAvgDuration = null;
                    }
                    updateLiveDataRegistration(8, showAvgDuration);
                    if (showAvgDuration != null) {
                        value3 = showAvgDuration.getValue();
                    } else {
                        value3 = null;
                    }
                    zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                    if (j13 != 0) {
                        if (zSafeUnbox) {
                            j14 = 131072;
                        } else {
                            j14 = 65536;
                        }
                        j10 |= j14;
                    }
                    i22 = iSafeUnbox;
                    i15 = zSafeUnbox ? 0 : 8;
                } else {
                    i22 = iSafeUnbox;
                    i15 = 0;
                }
                CommonComponentBean commonComponentBean6 = coupon_info;
                str4 = str8;
                commonComponentBean = commonComponentBean6;
                String str14 = strActiveNoticeCountStr;
                i19 = i26;
                str2 = str14;
            } else {
                string2 = string2;
                i14 = i14;
            }
            i21 = 0;
            if ((j10 & 2568) != 0) {
                if (gameDetailFragmentViewModel != null) {
                    commentStatistic = gameDetailFragmentViewModel.getCommentStatistic();
                } else {
                    commentStatistic = null;
                }
                updateLiveDataRegistration(3, commentStatistic);
                if (commentStatistic != null) {
                    value7 = commentStatistic.getValue();
                } else {
                    value7 = null;
                }
                if (value7 != null) {
                    avg_score = value7.getAvg_score();
                    avg_duration = value7.getAvg_duration();
                } else {
                    avg_duration = null;
                    avg_score = null;
                }
                String str15 = avg_score + "分";
                StringBuilder sb4 = new StringBuilder();
                str6 = str15;
                sb4.append("平均时长:");
                sb4.append(avg_duration);
                string = sb4.toString();
            } else {
                i21 = i21;
                string = null;
                str6 = null;
            }
            j11 = j10 & 2576;
            if (j11 != 0) {
                if (gameDetailFragmentViewModel != null) {
                    showAvgScore = gameDetailFragmentViewModel.getShowAvgScore();
                } else {
                    showAvgScore = null;
                }
                updateLiveDataRegistration(4, showAvgScore);
                if (showAvgScore != null) {
                    value6 = showAvgScore.getValue();
                } else {
                    value6 = null;
                }
                zSafeUnbox3 = ViewDataBinding.safeUnbox(value6);
                if (j11 != 0) {
                    if (zSafeUnbox3) {
                        j17 = 8388608;
                    } else {
                        j17 = 4194304;
                    }
                    j10 |= j17;
                }
                if (zSafeUnbox3) {
                    i16 = 8;
                }
                j12 = j10 & 2592;
                if (j12 != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        showGameInfo = gameDetailFragmentViewModel.getShowGameInfo();
                    } else {
                        showGameInfo = null;
                    }
                    updateLiveDataRegistration(5, showGameInfo);
                    if (showGameInfo != null) {
                        value5 = showGameInfo.getValue();
                    } else {
                        value5 = null;
                    }
                    zSafeUnbox2 = ViewDataBinding.safeUnbox(value5);
                    if (j12 != 0) {
                        if (zSafeUnbox2) {
                            j15 = j10 | 536870912 | 8589934592L;
                            j16 = 2199023255552L;
                        } else {
                            j15 = j10 | 268435456 | 4294967296L;
                            j16 = 1099511627776L;
                        }
                        j10 = j15 | j16;
                    }
                    if (zSafeUnbox2) {
                        i23 = 0;
                    } else {
                        i23 = 8;
                    }
                    if (zSafeUnbox2) {
                        i25 = 0;
                    } else {
                        i25 = 90;
                    }
                    if (zSafeUnbox2) {
                        i24 = 8;
                    } else {
                        i24 = 0;
                    }
                } else {
                    i16 = i16;
                    i24 = 0;
                    i23 = 0;
                    i25 = 0;
                }
                if ((j10 & 2624) != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        btnText = gameDetailFragmentViewModel.getBtnText();
                    } else {
                        btnText = null;
                    }
                    updateLiveDataRegistration(6, btnText);
                    if (btnText != null) {
                    }
                    if ((j10 & 2688) != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            progress = gameDetailFragmentViewModel.getProgress();
                        } else {
                            progress = null;
                        }
                        updateLiveDataRegistration(7, progress);
                        if (progress != null) {
                            value4 = progress.getValue();
                        } else {
                            value4 = null;
                        }
                        iSafeUnbox = ViewDataBinding.safeUnbox(value4);
                    } else {
                        value = value;
                        iSafeUnbox = 0;
                    }
                    j13 = j10 & 2816;
                    if (j13 != 0) {
                        if (gameDetailFragmentViewModel != null) {
                            showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                        } else {
                            showAvgDuration = null;
                        }
                        updateLiveDataRegistration(8, showAvgDuration);
                        if (showAvgDuration != null) {
                            value3 = showAvgDuration.getValue();
                        } else {
                            value3 = null;
                        }
                        zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                        if (j13 != 0) {
                            if (zSafeUnbox) {
                                j14 = 131072;
                            } else {
                                j14 = 65536;
                            }
                            j10 |= j14;
                        }
                        i22 = iSafeUnbox;
                        i15 = zSafeUnbox ? 0 : 8;
                    } else {
                        i22 = iSafeUnbox;
                        i15 = 0;
                    }
                    CommonComponentBean commonComponentBean7 = coupon_info;
                    str4 = str8;
                    commonComponentBean = commonComponentBean7;
                    String str16 = strActiveNoticeCountStr;
                    i19 = i26;
                    str2 = str16;
                } else {
                    i24 = i24;
                    i23 = i23;
                }
                if ((j10 & 2688) != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        progress = gameDetailFragmentViewModel.getProgress();
                    } else {
                        progress = null;
                    }
                    updateLiveDataRegistration(7, progress);
                    if (progress != null) {
                        value4 = progress.getValue();
                    } else {
                        value4 = null;
                    }
                    iSafeUnbox = ViewDataBinding.safeUnbox(value4);
                } else {
                    value = value;
                    iSafeUnbox = 0;
                }
                j13 = j10 & 2816;
                if (j13 != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                    } else {
                        showAvgDuration = null;
                    }
                    updateLiveDataRegistration(8, showAvgDuration);
                    if (showAvgDuration != null) {
                        value3 = showAvgDuration.getValue();
                    } else {
                        value3 = null;
                    }
                    zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                    if (j13 != 0) {
                        if (zSafeUnbox) {
                            j14 = 131072;
                        } else {
                            j14 = 65536;
                        }
                        j10 |= j14;
                    }
                    i22 = iSafeUnbox;
                    i15 = zSafeUnbox ? 0 : 8;
                } else {
                    i22 = iSafeUnbox;
                    i15 = 0;
                }
                CommonComponentBean commonComponentBean8 = coupon_info;
                str4 = str8;
                commonComponentBean = commonComponentBean8;
                String str17 = strActiveNoticeCountStr;
                i19 = i26;
                str2 = str17;
            } else {
                string = string;
            }
            i16 = 0;
            j12 = j10 & 2592;
            if (j12 != 0) {
                if (gameDetailFragmentViewModel != null) {
                    showGameInfo = gameDetailFragmentViewModel.getShowGameInfo();
                } else {
                    showGameInfo = null;
                }
                updateLiveDataRegistration(5, showGameInfo);
                if (showGameInfo != null) {
                    value5 = showGameInfo.getValue();
                } else {
                    value5 = null;
                }
                zSafeUnbox2 = ViewDataBinding.safeUnbox(value5);
                if (j12 != 0) {
                    if (zSafeUnbox2) {
                        j15 = j10 | 536870912 | 8589934592L;
                        j16 = 2199023255552L;
                    } else {
                        j15 = j10 | 268435456 | 4294967296L;
                        j16 = 1099511627776L;
                    }
                    j10 = j15 | j16;
                }
                if (zSafeUnbox2) {
                    i23 = 0;
                } else {
                    i23 = 8;
                }
                if (zSafeUnbox2) {
                    i25 = 0;
                } else {
                    i25 = 90;
                }
                if (zSafeUnbox2) {
                    i24 = 8;
                } else {
                    i24 = 0;
                }
            } else {
                i16 = i16;
                i24 = 0;
                i23 = 0;
                i25 = 0;
            }
            if ((j10 & 2624) != 0) {
                if (gameDetailFragmentViewModel != null) {
                    btnText = gameDetailFragmentViewModel.getBtnText();
                } else {
                    btnText = null;
                }
                updateLiveDataRegistration(6, btnText);
                if (btnText != null) {
                }
                if ((j10 & 2688) != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        progress = gameDetailFragmentViewModel.getProgress();
                    } else {
                        progress = null;
                    }
                    updateLiveDataRegistration(7, progress);
                    if (progress != null) {
                        value4 = progress.getValue();
                    } else {
                        value4 = null;
                    }
                    iSafeUnbox = ViewDataBinding.safeUnbox(value4);
                } else {
                    value = value;
                    iSafeUnbox = 0;
                }
                j13 = j10 & 2816;
                if (j13 != 0) {
                    if (gameDetailFragmentViewModel != null) {
                        showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                    } else {
                        showAvgDuration = null;
                    }
                    updateLiveDataRegistration(8, showAvgDuration);
                    if (showAvgDuration != null) {
                        value3 = showAvgDuration.getValue();
                    } else {
                        value3 = null;
                    }
                    zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                    if (j13 != 0) {
                        if (zSafeUnbox) {
                            j14 = 131072;
                        } else {
                            j14 = 65536;
                        }
                        j10 |= j14;
                    }
                    i22 = iSafeUnbox;
                    i15 = zSafeUnbox ? 0 : 8;
                } else {
                    i22 = iSafeUnbox;
                    i15 = 0;
                }
                CommonComponentBean commonComponentBean9 = coupon_info;
                str4 = str8;
                commonComponentBean = commonComponentBean9;
                String str18 = strActiveNoticeCountStr;
                i19 = i26;
                str2 = str18;
            } else {
                i24 = i24;
                i23 = i23;
            }
            if ((j10 & 2688) != 0) {
                if (gameDetailFragmentViewModel != null) {
                    progress = gameDetailFragmentViewModel.getProgress();
                } else {
                    progress = null;
                }
                updateLiveDataRegistration(7, progress);
                if (progress != null) {
                    value4 = progress.getValue();
                } else {
                    value4 = null;
                }
                iSafeUnbox = ViewDataBinding.safeUnbox(value4);
            } else {
                value = value;
                iSafeUnbox = 0;
            }
            j13 = j10 & 2816;
            if (j13 != 0) {
                if (gameDetailFragmentViewModel != null) {
                    showAvgDuration = gameDetailFragmentViewModel.getShowAvgDuration();
                } else {
                    showAvgDuration = null;
                }
                updateLiveDataRegistration(8, showAvgDuration);
                if (showAvgDuration != null) {
                    value3 = showAvgDuration.getValue();
                } else {
                    value3 = null;
                }
                zSafeUnbox = ViewDataBinding.safeUnbox(value3);
                if (j13 != 0) {
                    if (zSafeUnbox) {
                        j14 = 131072;
                    } else {
                        j14 = 65536;
                    }
                    j10 |= j14;
                }
                i22 = iSafeUnbox;
                i15 = zSafeUnbox ? 0 : 8;
            } else {
                i22 = iSafeUnbox;
                i15 = 0;
            }
            CommonComponentBean commonComponentBean10 = coupon_info;
            str4 = str8;
            commonComponentBean = commonComponentBean10;
            String str19 = strActiveNoticeCountStr;
            i19 = i26;
            str2 = str19;
        } else {
            str = null;
            game_icon = null;
            colorFromResource = 0;
            commonComponentBean = null;
            str2 = null;
            str3 = null;
            i10 = 0;
            game_name = null;
            i11 = 0;
            i12 = 0;
            i13 = 0;
            strTagStr = null;
            i14 = 0;
            value = null;
            i15 = 0;
            string = null;
            i16 = 0;
            str4 = null;
            value2 = null;
            big_pic = null;
            string2 = null;
            i17 = 0;
            i18 = 0;
            i19 = 0;
            zShowSubTitle = false;
            zServerInfoAvailable = false;
            str5 = null;
            i20 = 0;
            i21 = 0;
            i22 = 0;
            i23 = 0;
            i24 = 0;
            i25 = 0;
            tagName = null;
            title = null;
            title2 = null;
            str6 = null;
        }
        if ((j10 & PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE_ENABLED) != 0) {
            str7 = "总价值" + (commonComponentBean != null ? commonComponentBean.subTitleWithDefault("¥0") : null);
        } else {
            str7 = null;
        }
        if ((j10 & 2147491840L) != 0) {
            GameServerInfoBean game_server_info = value2 != null ? value2.getGame_server_info() : null;
            server_name = ((j10 & 8192) == 0 || game_server_info == null) ? null : game_server_info.getServer_name();
            times = ((j10 & 2147483648L) == 0 || game_server_info == null) ? null : game_server_info.getTimes();
        } else {
            times = null;
            server_name = null;
        }
        long j24 = j10 & 2562;
        if (j24 != 0) {
            if (!zServerInfoAvailable) {
                server_name = "以游戏内为准";
            }
            if (!zShowSubTitle) {
                str7 = "敬请期待";
            }
            if (!zServerInfoAvailable) {
                times = "动态开服";
            }
        } else {
            str7 = null;
            times = null;
            server_name = null;
        }
        long j25 = j10;
        if (j24 != 0) {
            this.f41365d.setVisibility(i11);
            TextViewBindingAdapter.setText(this.f41377p, str);
            this.f41377p.setVisibility(i13);
            SimpleDrawableViewKt.loadUrl(this.f41378q, game_icon, null, 0);
            TextViewBindingAdapter.setText(this.f41380s, game_name);
            TextViewBindingAdapter.setText(this.f41381t, strTagStr);
            TextViewBindingAdapter.setText(this.P, str7);
            this.P.setTextColor(colorFromResource);
            this.Q.setVisibility(i14);
            TextViewBindingAdapter.setText(this.Q, str3);
            this.R.setVisibility(i12);
            TextViewBindingAdapter.setText(this.R, str2);
            this.S.setVisibility(i10);
            TextViewBindingAdapter.setText(this.T, times);
            TextViewBindingAdapter.setText(this.U, server_name);
            this.V.setVisibility(i20);
            TextViewBindingAdapter.setText(this.f41954p1, str5);
            TextViewBindingAdapter.setText(this.f41955q1, tagName);
            this.f41955q1.setVisibility(i11);
            this.f41956r1.setVisibility(i19);
            int i27 = i18;
            this.D.setVisibility(i27);
            this.E.setVisibility(i27);
            this.G.setVisibility(i17);
            TextViewBindingAdapter.setText(this.G, string2);
            SimpleDrawableViewKt.loadUrl(this.H, big_pic, null, 0);
            TextViewBindingAdapter.setText(this.I, title2);
            TextViewBindingAdapter.setText(this.J, title);
        }
        if ((j25 & 2048) != 0) {
            this.f41370i.setOnClickListener(this.f41948g2);
            this.f41371j.setOnClickListener(this.f41942b2);
            this.f41372k.setOnClickListener(this.f41947f2);
            this.f41375n.setOnClickListener(this.f41945e2);
            this.f41379r.setOnClickListener(this.L1);
            this.S.setOnClickListener(this.f41949h2);
            this.W.setOnClickListener(this.f41944d2);
            this.X.setOnClickListener(this.V1);
            this.Y.setOnClickListener(this.R1);
            this.f41953p0.setOnClickListener(this.f41940a2);
            this.f41946f1.setOnClickListener(this.f41957v1);
            this.H.setOnClickListener(this.f41943c2);
        }
        if ((j25 & 2561) != 0) {
            TextViewBindingAdapter.setText(this.X, str4);
        }
        if ((j25 & 2576) != 0) {
            this.Y.setVisibility(i16);
        }
        if ((j25 & 2568) != 0) {
            TextViewBindingAdapter.setText(this.Z, str6);
            TextViewBindingAdapter.setText(this.f41941b1, string);
        }
        if ((j25 & 2816) != 0) {
            this.f41953p0.setVisibility(i15);
        }
        if ((j25 & 2564) != 0) {
            int i28 = i21;
            this.f41946f1.setVisibility(i28);
            this.A.setVisibility(i28);
        }
        if ((j25 & 2688) != 0) {
            this.f41950i1.setProgress(i22);
        }
        if ((j25 & 2624) != 0) {
            TextViewBindingAdapter.setText(this.f41952l1, value);
        }
        if ((j25 & 2592) != 0) {
            this.B.setVisibility(i23);
            this.F.setVisibility(i24);
            if (ViewDataBinding.getBuildSdkInt() >= 11) {
                this.F.setRotation(i25);
            }
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean hasPendingBindings() {
        synchronized (this) {
            return this.f41951i2 != 0;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public void invalidateAll() {
        synchronized (this) {
            this.f41951i2 = 2048L;
        }
        requestRebind();
    }

    @Override // androidx.databinding.ViewDataBinding
    protected boolean onFieldChange(int localFieldId, Object object, int fieldId) {
        switch (localFieldId) {
            case 0:
                return z((MutableLiveData) object, fieldId);
            case 1:
                return y((MutableLiveData) object, fieldId);
            case 2:
                return D((MutableLiveData) object, fieldId);
            case 3:
                return x((MutableLiveData) object, fieldId);
            case 4:
                return C((MutableLiveData) object, fieldId);
            case 5:
                return E((MutableLiveData) object, fieldId);
            case 6:
                return w((MutableLiveData) object, fieldId);
            case 7:
                return A((MutableLiveData) object, fieldId);
            case 8:
                return B((MutableLiveData) object, fieldId);
            default:
                return false;
        }
    }

    @Override // androidx.databinding.ViewDataBinding
    public boolean setVariable(int variableId, @Nullable Object variable) {
        if (54 == variableId) {
            u((GameDetailFragmentViewModel) variable);
        } else {
            if (8 != variableId) {
                return false;
            }
            t((GameDetailFragmentClickProxy) variable);
        }
        return true;
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ll
    public void t(@Nullable GameDetailFragmentClickProxy Click) {
        this.N = Click;
        synchronized (this) {
            this.f41951i2 |= 1024;
        }
        notifyPropertyChanged(8);
        super.requestRebind();
    }

    @Override // com.join.android.app.mgsim.wufun.databinding.ll
    public void u(@Nullable GameDetailFragmentViewModel Vm) {
        this.M = Vm;
        synchronized (this) {
            this.f41951i2 |= 512;
        }
        notifyPropertyChanged(54);
        super.requestRebind();
    }

    private ml(DataBindingComponent bindingComponent, View root, Object[] bindings) {
        super(bindingComponent, root, 9, (RecyclerView) bindings[43], (NestedScrollableHost) bindings[42], (ImageView) bindings[6], (View) bindings[46], (FrameLayout) bindings[56], (FrameLayout) bindings[52], (ConstraintLayout) bindings[41], (ConstraintLayout) bindings[9], (ConstraintLayout) bindings[13], (ConstraintLayout) bindings[16], (TextView) bindings[55], (View) bindings[50], (LinearLayout) bindings[36], (FrameLayout) bindings[48], (TextView) bindings[5], (SimpleDraweeView) bindings[1], (TextView) bindings[31], (MarqueeTextView) bindings[2], (TextView) bindings[3], (View) bindings[45], (View) bindings[44], (LinearLayout) bindings[54], (LinearLayout) bindings[47], (NestedScrollView) bindings[40], (TextView) bindings[51], (RecyclerView) bindings[29], (RecyclerView) bindings[33], (RecyclerView) bindings[53], (XQuickRecyclerView) bindings[35], (TextView) bindings[34], (ImageView) bindings[32], (TextView) bindings[12], (SimpleDraweeView) bindings[22], (TextView) bindings[10], (TextView) bindings[14], (TextView) bindings[49], (View) bindings[39]);
        this.f41951i2 = -1L;
        this.f41365d.setTag(null);
        this.f41370i.setTag(null);
        this.f41371j.setTag(null);
        this.f41372k.setTag(null);
        this.f41375n.setTag(null);
        this.f41377p.setTag(null);
        this.f41378q.setTag(null);
        this.f41379r.setTag(null);
        this.f41380s.setTag(null);
        this.f41381t.setTag(null);
        ConstraintLayout constraintLayout = (ConstraintLayout) bindings[0];
        this.O = constraintLayout;
        constraintLayout.setTag(null);
        TextView textView = (TextView) bindings[11];
        this.P = textView;
        textView.setTag(null);
        TextView textView2 = (TextView) bindings[15];
        this.Q = textView2;
        textView2.setTag(null);
        TextView textView3 = (TextView) bindings[17];
        this.R = textView3;
        textView3.setTag(null);
        LinearLayout linearLayout = (LinearLayout) bindings[18];
        this.S = linearLayout;
        linearLayout.setTag(null);
        TextView textView4 = (TextView) bindings[19];
        this.T = textView4;
        textView4.setTag(null);
        TextView textView5 = (TextView) bindings[20];
        this.U = textView5;
        textView5.setTag(null);
        Group group = (Group) bindings[21];
        this.V = group;
        group.setTag(null);
        LinearLayout linearLayout2 = (LinearLayout) bindings[23];
        this.W = linearLayout2;
        linearLayout2.setTag(null);
        TextView textView6 = (TextView) bindings[24];
        this.X = textView6;
        textView6.setTag(null);
        LinearLayout linearLayout3 = (LinearLayout) bindings[25];
        this.Y = linearLayout3;
        linearLayout3.setTag(null);
        TextView textView7 = (TextView) bindings[26];
        this.Z = textView7;
        textView7.setTag(null);
        LinearLayout linearLayout4 = (LinearLayout) bindings[27];
        this.f41953p0 = linearLayout4;
        linearLayout4.setTag(null);
        TextView textView8 = (TextView) bindings[28];
        this.f41941b1 = textView8;
        textView8.setTag(null);
        TextView textView9 = (TextView) bindings[30];
        this.f41946f1 = textView9;
        textView9.setTag(null);
        ProgressBar progressBar = (ProgressBar) bindings[37];
        this.f41950i1 = progressBar;
        progressBar.setTag(null);
        TextView textView10 = (TextView) bindings[38];
        this.f41952l1 = textView10;
        textView10.setTag(null);
        TextView textView11 = (TextView) bindings[4];
        this.f41954p1 = textView11;
        textView11.setTag(null);
        TextView textView12 = (TextView) bindings[7];
        this.f41955q1 = textView12;
        textView12.setTag(null);
        ConstraintLayout constraintLayout2 = (ConstraintLayout) bindings[8];
        this.f41956r1 = constraintLayout2;
        constraintLayout2.setTag(null);
        this.A.setTag(null);
        this.B.setTag(null);
        this.D.setTag(null);
        this.E.setTag(null);
        this.F.setTag(null);
        this.G.setTag(null);
        this.H.setTag(null);
        this.I.setTag(null);
        this.J.setTag(null);
        setRootTag(root);
        this.f41957v1 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 10);
        this.L1 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 11);
        this.R1 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 8);
        this.V1 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 7);
        this.f41940a2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 9);
        this.f41942b2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 2);
        this.f41943c2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 5);
        this.f41944d2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 6);
        this.f41945e2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 12);
        this.f41947f2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 3);
        this.f41948g2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 1);
        this.f41949h2 = new com.join.android.app.mgsim.wufun.generated.callback.a(this, 4);
        invalidateAll();
    }
}
