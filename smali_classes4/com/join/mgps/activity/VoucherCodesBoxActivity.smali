.class public Lcom/join/mgps/activity/VoucherCodesBoxActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00b9
.end annotation


# static fields
.field private static final TITLES:[Ljava/lang/String;


# instance fields
.field Uid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private fragPagerAdapter:Landroidx/fragment/app/FragmentPagerAdapter;

.field private fragments:[Landroidx/fragment/app/Fragment;

.field index:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textTopRight:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field title_textview:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "\u6e38\u620f\u793c\u5305"

    .line 2
    .line 3
    const-string v1, "\u4ee3\u91d1\u5238"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->TITLES:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    new-array v0, v0, [Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 8
    .line 9
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/VoucherCodesBoxActivity;I)Landroidx/fragment/app/Fragment;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->newInstance(I)Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->TITLES:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method private newInstance(I)Landroidx/fragment/app/Fragment;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    aget-object v0, v0, p1

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    if-eqz p1, :cond_2

    .line 9
    .line 10
    const/4 v1, 0x1

    .line 11
    if-eq p1, v1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    new-instance v0, Lcom/join/mgps/fragment/f6;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/join/mgps/fragment/f6;-><init>()V

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_2
    new-instance v0, Lcom/join/mgps/fragment/p;

    .line 21
    .line 22
    invoke-direct {v0}, Lcom/join/mgps/fragment/p;-><init>()V

    .line 23
    .line 24
    .line 25
    new-instance v1, Landroid/os/Bundle;

    .line 26
    .line 27
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 28
    .line 29
    .line 30
    const-string v2, "uid"

    .line 31
    .line 32
    iget v3, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->Uid:I

    .line 33
    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 38
    .line 39
    .line 40
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 41
    .line 42
    aput-object v0, v1, p1

    .line 43
    .line 44
    return-object v0
.end method


# virtual methods
.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->title_textview:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "\u6e38\u620f\u793c\u5305/\u4ee3\u91d1\u5238"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->textTopRight:Landroid/widget/TextView;

    .line 9
    .line 10
    const-string v1, "\u4f7f\u7528\u8bf4\u660e"

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->textTopRight:Landroid/widget/TextView;

    .line 16
    .line 17
    const/16 v1, 0x8

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    new-instance v0, Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;

    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/VoucherCodesBoxActivity$b;-><init>(Lcom/join/mgps/activity/VoucherCodesBoxActivity;Landroidx/fragment/app/FragmentManager;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->fragPagerAdapter:Landroidx/fragment/app/FragmentPagerAdapter;

    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 47
    .line 48
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/TabPageIndicator;->setViewPager(Landroidx/viewpager/widget/ViewPager;I)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->pageIndicator:Lcom/join/mgps/customview/TabPageIndicator;

    .line 53
    .line 54
    new-instance v1, Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/VoucherCodesBoxActivity$a;-><init>(Lcom/join/mgps/activity/VoucherCodesBoxActivity;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/TabPageIndicator;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 60
    .line 61
    .line 62
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 63
    .line 64
    iget v1, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->index:I

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method back_image()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method textTopRight()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/VoucherCodesBoxActivity;->fragments:[Landroidx/fragment/app/Fragment;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    aget-object v0, v0, v1

    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    check-cast v0, Lcom/join/mgps/fragment/f6;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/fragment/e6;->a0()Lcom/join/mgps/dto/AccountVoucherAd;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    new-instance v1, Lcom/join/mgps/Util/IntentDateBean;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x4

    .line 25
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/join/mgps/fragment/e6;->a0()Lcom/join/mgps/dto/AccountVoucherAd;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountVoucherAd;->getLink()Lcom/join/mgps/dto/AccountVoucherAdBean;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountVoucherAdBean;->getLink_type_val()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/fragment/e6;->a0()Lcom/join/mgps/dto/AccountVoucherAd;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Lcom/join/mgps/dto/AccountVoucherAd;->getTitle()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentDateBean;->setObject(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {v0, p0, v1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 59
    .line 60
    .line 61
    :cond_1
    return-void
.end method
