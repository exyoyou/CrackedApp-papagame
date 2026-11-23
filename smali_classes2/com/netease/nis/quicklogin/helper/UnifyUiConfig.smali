.class public Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;
    }
.end annotation


# static fields
.field public static final CHECKBOX_CHECKED:I = 0x1

.field public static final CHECKBOX_UNCHECKED:I = 0x0

.field public static final CLICK_CHECKBOX:I = 0x2

.field public static final CLICK_LOGIN_BUTTON:I = 0x4

.field public static final CLICK_PRIVACY:I = 0x1

.field public static final CLICK_TOP_LEFT_BACK_BUTTON:I = 0x3

.field public static final POSITION_IN_BODY:I = 0x0

.field public static final POSITION_IN_ROOT:I = 0x2

.field public static final POSITION_IN_TITLE_BAR:I = 0x1


# instance fields
.field private final activityEnterAnimation:Ljava/lang/String;

.field private final activityExitAnimation:Ljava/lang/String;

.field private final activityLifecycleCallbacks:Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

.field private final activityResultCallbacks:Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

.field private final backPressedAvailable:Z

.field private final backgroundGif:Ljava/lang/String;

.field private final backgroundGifDrawable:Landroid/graphics/drawable/Drawable;

.field private final backgroundImage:Ljava/lang/String;

.field private final backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final backgroundShadow:Landroid/view/View;

.field private final backgroundVideo:Ljava/lang/String;

.field private final backgroundVideoImage:Ljava/lang/String;

.field private final backgroundVideoImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final checkBoxGravity:I

.field private final checkedImageDrawable:Landroid/graphics/drawable/Drawable;

.field private final checkedImageName:Ljava/lang/String;

.field private final clickEventListener:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

.field private cmAuthThemeConfig:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

.field private final cmProtocolNavTitle:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private final ctProtocolNavTitle:Ljava/lang/String;

.field private final cuProtocolNavTitle:Ljava/lang/String;

.field private final customProtocol2NavTitle:Ljava/lang/String;

.field private final customProtocol3NavTitle:Ljava/lang/String;

.field private final customProtocolNavTitle:Ljava/lang/String;

.field private final customViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;",
            ">;"
        }
    .end annotation
.end field

.field private final dialogHeight:I

.field private final dialogWidth:I

.field private final dialogX:I

.field private final dialogY:I

.field private final isBottomDialog:Z

.field private final isDialogMode:Z

.field private final isHideBackIcon:Z

.field private final isHideLogo:Z

.field private final isHideNav:Z

.field private final isHidePrivacyCheckBox:Z

.field private final isHidePrivacySmh:Z

.field private final isLandscape:Z

.field private final isNavTitleBold:Z

.field private final isPrivacyTextGravityCenter:Z

.field private final isProtocolDialogMode:Z

.field private final isStatusBarDarkColor:Z

.field private final loadingView:Landroid/view/ViewGroup;

.field private final loadingVisible:Z

.field private final loginBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

.field private final loginBtnBackgroundRes:Ljava/lang/String;

.field private final loginBtnBottomYOffset:I

.field private final loginBtnHeight:I

.field private final loginBtnText:Ljava/lang/String;

.field private final loginBtnTextColor:I

.field private final loginBtnTextDpSize:I

.field private final loginBtnTextSize:I

.field private final loginBtnTopYOffset:I

.field private final loginBtnWidth:I

.field private final loginBtnXOffset:I

.field private final loginListener:Lcom/netease/nis/quicklogin/listener/LoginListener;

.field private final logoBottomYOffset:I

.field private final logoHeight:I

.field private final logoIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final logoIconName:Ljava/lang/String;

.field private final logoTopYOffset:I

.field private final logoWidth:I

.field private final logoXOffset:I

.field private final maskNumberBackgroundRes:Ljava/lang/String;

.field private final maskNumberBottomYOffset:I

.field private final maskNumberColor:I

.field private final maskNumberDpSize:I

.field private final maskNumberListener:Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

.field private final maskNumberSize:I

.field private final maskNumberTf:Landroid/graphics/Typeface;

.field private final maskNumberTopYOffset:I

.field private final maskNumberXOffset:I

.field private final navBackIcon:Ljava/lang/String;

.field private final navBackIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final navBackIconGravity:I

.field private final navBackIconHeight:I

.field private final navBackIconMargin:I

.field private final navBackIconWidth:I

.field private final navBackgroundColor:I

.field private final navHeight:I

.field private final navTitle:Ljava/lang/String;

.field private final navTitleColor:I

.field private final navTitleDpSize:I

.field private final navTitleDrawable:Landroid/graphics/drawable/Drawable;

.field private final navTitleDrawablePadding:I

.field private final navTitleSize:I

.field private final privacyBottomYOffset:I

.field private final privacyCheckBoxHeight:I

.field private final privacyCheckBoxWidth:I

.field private final privacyDialogAuto:Z

.field private final privacyDialogText:Ljava/lang/String;

.field private final privacyDialogTextSize:F

.field private final privacyDpSize:I

.field private final privacyLineSpacingAdd:F

.field private final privacyLineSpacingMul:F

.field private final privacyMarginLeft:I

.field private final privacyMarginRight:I

.field private final privacyProtocolColor:I

.field private final privacySize:I

.field private final privacyState:Z

.field private final privacyTextColor:I

.field private final privacyTextEnd:Ljava/lang/String;

.field private final privacyTextLayoutGravity:I

.field private final privacyTextMarginLeft:I

.field private final privacyTextStart:Ljava/lang/String;

.field private final privacyTextStartSize:F

.field private final privacyTopYOffset:I

.field private final protocol2Link:Ljava/lang/String;

.field private final protocol2Text:Ljava/lang/String;

.field private final protocol3Link:Ljava/lang/String;

.field private final protocol3Text:Ljava/lang/String;

.field private final protocolBackgroundImage:Ljava/lang/String;

.field private final protocolConnect:Ljava/lang/String;

.field private final protocolLink:Ljava/lang/String;

.field private final protocolNavBackIcon:Ljava/lang/String;

.field private final protocolNavBackIconDrawable:Landroid/graphics/drawable/Drawable;

.field private final protocolNavBackIconHeight:I

.field private final protocolNavBackIconMargin:I

.field private final protocolNavBackIconWidth:I

.field private final protocolNavColor:I

.field private final protocolNavHeight:I

.field private final protocolNavTitle:Ljava/lang/String;

.field private final protocolNavTitleColor:I

.field private final protocolNavTitleDpSize:I

.field private final protocolNavTitleSize:I

.field private final protocolText:Ljava/lang/String;

.field private final sloganBottomYOffset:I

.field private final sloganColor:I

.field private final sloganDpSize:I

.field private final sloganSize:I

.field private final sloganTopYOffset:I

.field private final sloganXOffset:I

.field private final statusBarColor:I

.field private final unCheckedImageName:Ljava/lang/String;

.field private final unCheckedImageNameDrawable:Landroid/graphics/drawable/Drawable;

.field private final userProtocolConnect:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;Landroid/content/Context;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->statusBarColor:I

    .line 4
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isStatusBarDarkColor:Z

    .line 5
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->T(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIcon:Ljava/lang/String;

    .line 6
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 7
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconWidth:I

    .line 8
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconHeight:I

    .line 9
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconGravity:I

    .line 10
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->W0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconMargin:I

    .line 11
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideBackIcon:Z

    .line 12
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackgroundColor:I

    .line 13
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitle:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navHeight:I

    .line 15
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleColor:I

    .line 16
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->J(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleSize:I

    .line 17
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->N(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleDpSize:I

    .line 18
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->O(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideNav:Z

    .line 19
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->P(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isNavTitleBold:Z

    .line 20
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Q(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleDrawable:Landroid/graphics/drawable/Drawable;

    .line 21
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->R(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleDrawablePadding:I

    .line 22
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->S(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoIconName:Ljava/lang/String;

    .line 23
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->U(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 24
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->V(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoWidth:I

    .line 25
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->W(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoHeight:I

    .line 26
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->X(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoTopYOffset:I

    .line 27
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Y(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoBottomYOffset:I

    .line 28
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Z(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoXOffset:I

    .line 29
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideLogo:Z

    .line 30
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberColor:I

    .line 31
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberSize:I

    .line 32
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberTf:Landroid/graphics/Typeface;

    .line 33
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberDpSize:I

    .line 34
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberTopYOffset:I

    .line 35
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberBottomYOffset:I

    .line 36
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberXOffset:I

    .line 37
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberBackgroundRes:Ljava/lang/String;

    .line 38
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganSize:I

    .line 39
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganDpSize:I

    .line 40
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganColor:I

    .line 41
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganTopYOffset:I

    .line 42
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganBottomYOffset:I

    .line 43
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganXOffset:I

    .line 44
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnText:Ljava/lang/String;

    .line 45
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextSize:I

    .line 46
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextDpSize:I

    .line 47
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextColor:I

    .line 48
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnWidth:I

    .line 49
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnHeight:I

    .line 50
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnBackgroundRes:Ljava/lang/String;

    .line 51
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 52
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTopYOffset:I

    .line 53
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnBottomYOffset:I

    .line 54
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->C0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnXOffset:I

    .line 55
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->D0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextColor:I

    .line 56
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->E0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyProtocolColor:I

    .line 57
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->F0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacySize:I

    .line 58
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->G0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDpSize:I

    .line 59
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->H0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTopYOffset:I

    .line 60
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->I0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyBottomYOffset:I

    .line 61
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->J0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextMarginLeft:I

    .line 62
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->K0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyMarginLeft:I

    .line 63
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->M0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyMarginRight:I

    .line 64
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->N0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyState:Z

    .line 65
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->O0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacySmh:Z

    .line 66
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->P0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacyCheckBox:Z

    .line 67
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Q0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyTextGravityCenter:Z

    .line 68
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->R0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextLayoutGravity:I

    .line 69
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->S0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->checkBoxGravity:I

    .line 70
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->T0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyCheckBoxWidth:I

    .line 71
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->U0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyCheckBoxHeight:I

    .line 72
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->V0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->checkedImageName:Ljava/lang/String;

    .line 73
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->X0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->checkedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Y0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->unCheckedImageName:Ljava/lang/String;

    .line 75
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->Z0(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->unCheckedImageNameDrawable:Landroid/graphics/drawable/Drawable;

    .line 76
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->a1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDialogText:Ljava/lang/String;

    .line 77
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->b1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDialogAuto:Z

    .line 78
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->c1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDialogTextSize:F

    .line 79
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextStart:Ljava/lang/String;

    .line 80
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyLineSpacingAdd:F

    .line 81
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyLineSpacingMul:F

    .line 82
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)F

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextStartSize:F

    .line 83
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolText:Ljava/lang/String;

    .line 84
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolLink:Ljava/lang/String;

    .line 85
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolConnect:Ljava/lang/String;

    .line 86
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->userProtocolConnect:Ljava/lang/String;

    .line 87
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol2Text:Ljava/lang/String;

    .line 88
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->n1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol2Link:Ljava/lang/String;

    .line 89
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol3Text:Ljava/lang/String;

    .line 90
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol3Link:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextEnd:Ljava/lang/String;

    .line 92
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customViewHolders:Ljava/util/ArrayList;

    .line 93
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundImage:Ljava/lang/String;

    .line 94
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolBackgroundImage:Ljava/lang/String;

    .line 95
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 96
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundGif:Ljava/lang/String;

    .line 97
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundGifDrawable:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->y1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundVideo:Ljava/lang/String;

    .line 99
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundVideoImage:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundVideoImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityEnterAnimation:Ljava/lang/String;

    .line 102
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->C1(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityExitAnimation:Ljava/lang/String;

    .line 103
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->d(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitle:Ljava/lang/String;

    .line 104
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->e(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->cmProtocolNavTitle:Ljava/lang/String;

    .line 105
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->f(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->ctProtocolNavTitle:Ljava/lang/String;

    .line 106
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->g(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->cuProtocolNavTitle:Ljava/lang/String;

    .line 107
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->h(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customProtocolNavTitle:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->i(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customProtocol2NavTitle:Ljava/lang/String;

    .line 109
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->j(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customProtocol3NavTitle:Ljava/lang/String;

    .line 110
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->k(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIcon:Ljava/lang/String;

    .line 111
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->l(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 112
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->m(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconMargin:I

    .line 113
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->o(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavColor:I

    .line 114
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->p(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavHeight:I

    .line 115
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->q(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitleColor:I

    .line 116
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->r(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitleSize:I

    .line 117
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->s(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitleDpSize:I

    .line 118
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->t(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconWidth:I

    .line 119
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->u(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconHeight:I

    .line 120
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->v(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isDialogMode:Z

    .line 121
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->w(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogWidth:I

    .line 122
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->x(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogHeight:I

    .line 123
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->z(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogX:I

    .line 124
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->A(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)I

    move-result v0

    iput v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogY:I

    .line 125
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->B(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isBottomDialog:Z

    .line 126
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->C(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isProtocolDialogMode:Z

    .line 127
    iget-boolean v0, p1, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->isLandscape:Z

    iput-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isLandscape:Z

    .line 128
    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->context:Landroid/content/Context;

    .line 129
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->D(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberListener:Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    .line 130
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->E(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/LoginListener;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginListener:Lcom/netease/nis/quicklogin/listener/LoginListener;

    .line 131
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->F(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->clickEventListener:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    .line 132
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->G(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundShadow:Landroid/view/View;

    .line 133
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->H(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityLifecycleCallbacks:Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 134
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->I(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    move-result-object p2

    iput-object p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityResultCallbacks:Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    .line 135
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->K(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backPressedAvailable:Z

    .line 136
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->L(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loadingVisible:Z

    .line 137
    invoke-static {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;->M(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loadingView:Landroid/view/ViewGroup;

    .line 138
    :try_start_0
    invoke-direct {p0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->createCmAuthUiBuilder()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 139
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/basesdk/Logger;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic constructor <init>(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;Landroid/content/Context;Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;-><init>(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$Builder;Landroid/content/Context;)V

    return-void
.end method

.method private createCmAuthUiBuilder()V
    .locals 7

    .line 1
    new-instance v0, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navHeight:I

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->context:Landroid/content/Context;

    .line 11
    .line 12
    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/i;->c(Landroid/content/Context;)I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    :cond_0
    iget v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberSize:I

    .line 17
    .line 18
    const/4 v3, 0x0

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0, v2, v3}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setNumberSize(IZ)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberColor:I

    .line 25
    .line 26
    if-eqz v2, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setNumberColor(I)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 29
    .line 30
    .line 31
    :cond_2
    iget v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberTopYOffset:I

    .line 32
    .line 33
    if-eqz v2, :cond_3

    .line 34
    .line 35
    add-int/2addr v2, v1

    .line 36
    invoke-virtual {v0, v2}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setNumFieldOffsetY(I)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 37
    .line 38
    .line 39
    :cond_3
    iget v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberBottomYOffset:I

    .line 40
    .line 41
    if-eqz v2, :cond_4

    .line 42
    .line 43
    invoke-virtual {v0, v2}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setNumFieldOffsetY_B(I)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 44
    .line 45
    .line 46
    :cond_4
    iget v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnWidth:I

    .line 47
    .line 48
    iget v4, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnHeight:I

    .line 49
    .line 50
    invoke-virtual {v0, v2, v4}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setLogBtn(II)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v3, v3}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setLogBtnMargin(II)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget-object v4, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnText:Ljava/lang/String;

    .line 59
    .line 60
    iget v5, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextColor:I

    .line 61
    .line 62
    iget v6, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextSize:I

    .line 63
    .line 64
    invoke-virtual {v2, v4, v5, v6, v3}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setLogBtnText(Ljava/lang/String;IIZ)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 65
    .line 66
    .line 67
    iget v2, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTopYOffset:I

    .line 68
    .line 69
    if-eqz v2, :cond_5

    .line 70
    .line 71
    add-int/2addr v2, v1

    .line 72
    invoke-virtual {v0, v2}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setLogBtnOffsetY(I)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 73
    .line 74
    .line 75
    :cond_5
    iget v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnBottomYOffset:I

    .line 76
    .line 77
    if-eqz v1, :cond_6

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setLogBtnOffsetY_B(I)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 80
    .line 81
    .line 82
    :cond_6
    new-instance v1, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$a;

    .line 83
    .line 84
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig$a;-><init>(Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setLogBtnClickListener(Lcom/cmic/gen/sdk/view/GenLoginClickListener;)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 88
    .line 89
    .line 90
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityEnterAnimation:Ljava/lang/String;

    .line 91
    .line 92
    invoke-virtual {v0, v1, v1}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setAuthPageActIn(Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 93
    .line 94
    .line 95
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityExitAnimation:Ljava/lang/String;

    .line 96
    .line 97
    invoke-virtual {v0, v1, v1}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setAuthPageActOut(Ljava/lang/String;Ljava/lang/String;)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 98
    .line 99
    .line 100
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->context:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    const-string v2, "yd_activity_quick_login_cm"

    .line 107
    .line 108
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->d(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-nez v1, :cond_7

    .line 113
    .line 114
    sget v1, Lcom/netease/nis/quicklogin/R$layout;->yd_activity_quick_login_cm:I

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->context:Landroid/content/Context;

    .line 118
    .line 119
    invoke-static {v1}, Lcom/netease/nis/quicklogin/utils/h;->a(Landroid/content/Context;)Lcom/netease/nis/quicklogin/utils/h;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v1, v2}, Lcom/netease/nis/quicklogin/utils/h;->d(Ljava/lang/String;)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    :goto_0
    invoke-virtual {v0, v1}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->setAuthLayoutResID(I)Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->build()Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    iput-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->cmAuthThemeConfig:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 135
    .line 136
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->context:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->getInstance(Landroid/content/Context;)Lcom/cmic/gen/sdk/auth/GenAuthnHelper;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v1, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->cmAuthThemeConfig:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 143
    .line 144
    invoke-virtual {v0, v1}, Lcom/cmic/gen/sdk/auth/GenAuthnHelper;->setAuthThemeConfig(Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;)V

    .line 145
    .line 146
    .line 147
    return-void
.end method


# virtual methods
.method public getActivityEnterAnimation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityEnterAnimation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActivityExitAnimation()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityExitAnimation:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActivityLifecycleCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityLifecycleCallbacks:Lcom/netease/nis/quicklogin/listener/ActivityLifecycleCallbacks;

    .line 2
    .line 3
    return-object v0
.end method

.method public getActivityResultCallbacks()Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->activityResultCallbacks:Lcom/netease/nis/quicklogin/listener/ActivityResultCallbacks;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackPressedAvailable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backPressedAvailable:Z

    .line 2
    .line 3
    return v0
.end method

.method public getBackgroundGif()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundGif:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundGifDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundGifDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundImage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundShadow()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundShadow:Landroid/view/View;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundVideo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundVideo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundVideoImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundVideoImage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getBackgroundVideoImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->backgroundVideoImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheckBoxGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->checkBoxGravity:I

    .line 2
    .line 3
    return v0
.end method

.method public getCheckedImageDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->checkedImageDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCheckedImageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->checkedImageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getClickEventListener()Lcom/netease/nis/quicklogin/listener/ClickEventListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->clickEventListener:Lcom/netease/nis/quicklogin/listener/ClickEventListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCmAuthThemeConfig()Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->cmAuthThemeConfig:Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/cmic/gen/sdk/view/GenAuthThemeConfig$Builder;->build()Lcom/cmic/gen/sdk/view/GenAuthThemeConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    return-object v0
.end method

.method public getCmProtocolNavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->cmProtocolNavTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCtProtocolNavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->ctProtocolNavTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCuProtocolNavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->cuProtocolNavTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomProtocol2NavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customProtocol2NavTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomProtocol3NavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customProtocol3NavTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomProtocolNavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customProtocolNavTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCustomViewHolders()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/netease/nis/quicklogin/utils/LoginUiHelper$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->customViewHolders:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDialogHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getDialogWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getDialogX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogX:I

    .line 2
    .line 3
    return v0
.end method

.method public getDialogY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->dialogY:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoadingView()Landroid/view/ViewGroup;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loadingView:Landroid/view/ViewGroup;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoadingVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loadingVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnBackgroundDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnBackgroundDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoginBtnBackgroundRes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnBackgroundRes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoginBtnBottomYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnBottomYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLoginBtnTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnTextDpSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextDpSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnTextSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTextSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnTopYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnTopYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginBtnXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginBtnXOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getLoginListener()Lcom/netease/nis/quicklogin/listener/LoginListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->loginListener:Lcom/netease/nis/quicklogin/listener/LoginListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogoBottomYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoBottomYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogoHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogoIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogoIconName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoIconName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getLogoTopYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoTopYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogoWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getLogoXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->logoXOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskNumberBackgroundRes()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberBackgroundRes:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaskNumberBottomYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberBottomYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskNumberColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskNumberDpSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberDpSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskNumberListener()Lcom/netease/nis/quicklogin/listener/MaskNumberListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberListener:Lcom/netease/nis/quicklogin/listener/MaskNumberListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaskNumberSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskNumberTopYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberTopYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaskNumberTypeface()Landroid/graphics/Typeface;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberTf:Landroid/graphics/Typeface;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaskNumberXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->maskNumberXOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavBackIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNavBackIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNavBackIconGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconGravity:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavBackIconHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavBackIconMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavBackIconWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackIconWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navBackgroundColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNavTitleColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavTitleDpSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleDpSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavTitleDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getNavTitleDrawablePadding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleDrawablePadding:I

    .line 2
    .line 3
    return v0
.end method

.method public getNavTitleSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->navTitleSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyBottomYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyBottomYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyCheckBoxHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyCheckBoxHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyCheckBoxWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyCheckBoxWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyDialogAuto()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDialogAuto:Z

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyDialogText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDialogText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyDialogTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDialogTextSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyDpSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyDpSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyLineSpacingAdd()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyLineSpacingAdd:F

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyLineSpacingMul()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyLineSpacingMul:F

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyMarginLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyMarginLeft:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyMarginRight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyMarginRight:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyProtocolColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyProtocolColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacySize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacySize:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyTextEnd()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextEnd:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyTextLayoutGravity()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextLayoutGravity:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyTextMarginLeft()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextMarginLeft:I

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyTextStart()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextStart:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getPrivacyTextStartSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTextStartSize:F

    .line 2
    .line 3
    return v0
.end method

.method public getPrivacyTopYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyTopYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocol2Link()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol2Link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocol2Text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol2Text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocol3Link()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol3Link:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocol3Text()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocol3Text:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolBackgroundImage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolBackgroundImage:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolConnect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolConnect:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolLink()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolLink:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolNavBackIcon()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIcon:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolNavBackIconDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolNavBackIconHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolNavBackIconMargin()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconMargin:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolNavBackIconWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavBackIconWidth:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolNavColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolNavHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolNavTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitle:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getProtocolNavTitleColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitleColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolNavTitleDpSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitleDpSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolNavTitleSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolNavTitleSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getProtocolText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->protocolText:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSloganBottomYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganBottomYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getSloganColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getSloganDpSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganDpSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getSloganSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganSize:I

    .line 2
    .line 3
    return v0
.end method

.method public getSloganTopYOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganTopYOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getSloganXOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->sloganXOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getStatusBarColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->statusBarColor:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnCheckedImageName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->unCheckedImageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnCheckedImageNameDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->unCheckedImageNameDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUserProtocolConnect()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->userProtocolConnect:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public isBottomDialog()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isBottomDialog:Z

    .line 2
    .line 3
    return v0
.end method

.method public isDialogMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isDialogMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHideBackIcon()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideBackIcon:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHideLogo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideLogo:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHideNav()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHideNav:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHidePrivacyCheckBox()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacyCheckBox:Z

    .line 2
    .line 3
    return v0
.end method

.method public isHidePrivacySmh()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isHidePrivacySmh:Z

    .line 2
    .line 3
    return v0
.end method

.method public isLandscape()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isLandscape:Z

    .line 2
    .line 3
    return v0
.end method

.method public isNavTitleBold()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isNavTitleBold:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPrivacyState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->privacyState:Z

    .line 2
    .line 3
    return v0
.end method

.method public isPrivacyTextGravityCenter()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isPrivacyTextGravityCenter:Z

    .line 2
    .line 3
    return v0
.end method

.method public isProtocolDialogMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isProtocolDialogMode:Z

    .line 2
    .line 3
    return v0
.end method

.method public isStatusBarDarkColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->isStatusBarDarkColor:Z

    .line 2
    .line 3
    return v0
.end method
