.class public Lcom/join/mgps/activity/label/MainLabelActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/label/MainLabelActivity$h;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0077
.end annotation


# static fields
.field public static final TYPE_FROM_GAME_DETAIL:I = 0x1

.field public static final TYPE_FROM_GROUP:I = 0x2


# instance fields
.field accountUtil:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field adapter:Lcom/join/mgps/adapter/h0;

.field btnFocus:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field btnSendPosts:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field currentFragment:Lcom/join/mgps/fragment/b0;

.field private currentOrder:Ljava/lang/String;

.field fid:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field fragmentManager:Landroidx/fragment/app/FragmentManager;

.field fromType:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isAttention:Z

.field iv_close_send_posting:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_label_administrator_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field iv_order:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field keepJoinState:I

.field labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

.field lastState:Z

.field ll_label_property:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field ll_multi_type_posts:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field mLabelLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MainLabelBean$TagType;",
            ">;"
        }
    .end annotation
.end field

.field private mLastSelectedPos:I

.field mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

.field private mainLabelBean:Lcom/join/mgps/dto/MainLabelBean;

.field postingGroup:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field rlOrderBy:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_main:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rl_title:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcForumClient:Lcom/join/mgps/rpc/i;

.field scrollableLayout:Lru/noties/scrollable/ScrollableLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout6;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tag_id:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field tag_name:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field tv_label_administrator_nickname:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_label_name_head:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tv_posts_counts:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->isAttention:Z

    .line 6
    .line 7
    const-string v1, "hot"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->currentOrder:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->lastState:Z

    .line 19
    .line 20
    return-void
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/label/MainLabelActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLastSelectedPos:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/label/MainLabelActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLastSelectedPos:I

    .line 2
    .line 3
    return p1
.end method

.method private getData()V
    .locals 1

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->showLoading1()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->getMainLabelInfo()V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->showFailed()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method private items(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "types"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/MainLabelBean$TagType;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v0, :cond_0

    .line 12
    .line 13
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Lcom/join/mgps/dto/MainLabelBean$TagType;

    .line 18
    .line 19
    invoke-virtual {v3}, Lcom/join/mgps/dto/MainLabelBean$TagType;->getType_name()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    new-instance v4, Lcom/join/mgps/adapter/h0$a;

    .line 24
    .line 25
    invoke-direct {p0, v2}, Lcom/join/mgps/activity/label/MainLabelActivity;->newInstance(I)Landroidx/fragment/app/Fragment;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-direct {v4, v3, v5}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 30
    .line 31
    .line 32
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method public static synthetic j(Lcom/join/mgps/dto/MainLabelBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->lambda$updateMainUi$0(Lcom/join/mgps/dto/MainLabelBean;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$updateMainUi$0(Lcom/join/mgps/dto/MainLabelBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/CommentSelfListActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/dto/MainLabelBean;->getManager_info()Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    invoke-virtual {p1, p0}, Lcom/join/mgps/activity/CommentSelfListActivity_$p;->a(I)Lcom/join/mgps/activity/CommentSelfListActivity_$p;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-virtual {p0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private newInstance(I)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

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
    new-instance v0, Landroid/os/Bundle;

    .line 9
    .line 10
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "tag_id"

    .line 14
    .line 15
    iget v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_id:I

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 18
    .line 19
    .line 20
    const-string v1, "tag_name"

    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_name:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    const-string v1, "position"

    .line 28
    .line 29
    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 30
    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, ""

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->fid:I

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    const-string v2, "fid"

    .line 52
    .line 53
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/join/mgps/dto/MainLabelBean$TagType;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/MainLabelBean$TagType;->getType_id()I

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    const-string v2, "type"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 71
    .line 72
    .line 73
    new-instance v1, Lcom/join/mgps/fragment/LabelFragment_;

    .line 74
    .line 75
    invoke-direct {v1}, Lcom/join/mgps/fragment/LabelFragment_;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

    .line 82
    .line 83
    aput-object v1, v0, p1

    .line 84
    .line 85
    return-object v1
.end method


# virtual methods
.method afterViews()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/g;->A0()Lcom/join/mgps/rpc/impl/g;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 6
    .line 7
    iget v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->fid:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    if-gtz v0, :cond_0

    .line 11
    .line 12
    iput v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->fromType:I

    .line 13
    .line 14
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 21
    .line 22
    new-instance v2, Lcom/join/mgps/activity/label/MainLabelActivity$a;

    .line 23
    .line 24
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$a;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/MainLabelHeaderView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 31
    .line 32
    iget v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->fromType:I

    .line 33
    .line 34
    const/4 v3, 0x2

    .line 35
    const/4 v4, 0x0

    .line 36
    if-ne v2, v3, :cond_1

    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const/4 v1, 0x0

    .line 40
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->postingGroup:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/MainLabelHeaderView;->setFilterVisibility(ZLjava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 46
    .line 47
    const v1, 0x3db851ec    # 0.09f

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0, v1}, Lru/noties/scrollable/ScrollableLayout;->setFriction(F)V

    .line 51
    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 54
    .line 55
    invoke-virtual {v0, v4}, Lru/noties/scrollable/ScrollableLayout;->setAutoMaxScroll(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 59
    .line 60
    new-instance v1, Lcom/join/mgps/activity/label/MainLabelActivity$b;

    .line 61
    .line 62
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$b;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/ForumBaseHeaderView;->setmOnMeasureHeight(Lcom/join/mgps/customview/ForumBaseHeaderView$a;)V

    .line 66
    .line 67
    .line 68
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->getData()V

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method attention(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v3, ""

    .line 21
    .line 22
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget v3, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_id:I

    .line 26
    .line 27
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_name:Ljava/lang/String;

    .line 35
    .line 36
    invoke-interface {v0, v1, v2, p1, v3}, Lcom/join/mgps/rpc/i;->H(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_2

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    if-ne p1, v0, :cond_0

    .line 48
    .line 49
    const-string v1, "\u5173\u6ce8\u6210\u529f!"

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    const-string v1, "\u53d6\u6d88\u5173\u6ce8\u6210\u529f!"

    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/label/MainLabelActivity;->showToast(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    if-ne p1, v0, :cond_1

    .line 58
    .line 59
    goto :goto_1

    .line 60
    :cond_1
    const/4 v0, 0x0

    .line 61
    :goto_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->updateAttention(Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/dto/EmptyMessage;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/EmptyMessage;->getMsg()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->showToast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    .line 77
    .line 78
    goto :goto_2

    .line 79
    :catch_0
    const-string p1, "\u7f51\u7edc\u5f02\u5e38\uff01"

    .line 80
    .line 81
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->showToast(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_3
    const-string p1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff01"

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->showToast(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    :goto_2
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

.method btnFocus()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->showDialog()V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->isAttention:Z

    .line 16
    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->attention(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->attention(I)V

    .line 26
    .line 27
    .line 28
    :goto_0
    return-void
.end method

.method btnSendPosts()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const v0, 0x7f120142

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->showToast(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mainLabelBean:Lcom/join/mgps/dto/MainLabelBean;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    return-void

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-gtz v0, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mainLabelBean:Lcom/join/mgps/dto/MainLabelBean;

    .line 37
    .line 38
    const-string v1, ""

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/dto/MainLabelBean;->getForum_name()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    goto :goto_0

    .line 47
    :cond_3
    move-object v0, v1

    .line 48
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->postingGroup:Ljava/lang/String;

    .line 49
    .line 50
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->postingGroup:Ljava/lang/String;

    .line 57
    .line 58
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/activity/posting/PostingActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    iget-object v3, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mainLabelBean:Lcom/join/mgps/dto/MainLabelBean;

    .line 63
    .line 64
    invoke-virtual {v3}, Lcom/join/mgps/dto/MainLabelBean;->getTag_name()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->e(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 69
    .line 70
    .line 71
    move-result-object v2

    .line 72
    const/16 v3, 0x64

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->b(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    iget v4, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_id:I

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->h(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    iget-object v4, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_name:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {v2, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->i(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->getType()I

    .line 121
    .line 122
    .line 123
    move-result v2

    .line 124
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->g(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->f(Ljava/lang/String;)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->fid:I

    .line 133
    .line 134
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->a(I)Lcom/join/mgps/activity/posting/PostingActivity_$v;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    const/16 v1, 0x4444

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/posting/PostingActivity_$v;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 141
    .line 142
    .line 143
    return-void
.end method

.method changeState(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->lastState:Z

    .line 2
    .line 3
    if-eq v0, p1, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tv_label_name_head:Landroid/widget/TextView;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const/16 v2, 0x8

    .line 9
    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/16 v3, 0x8

    .line 15
    .line 16
    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->btnFocus:Landroid/widget/TextView;

    .line 20
    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    const/16 v3, 0x8

    .line 26
    .line 27
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->ll_label_property:Landroid/widget/LinearLayout;

    .line 31
    .line 32
    if-eqz p1, :cond_2

    .line 33
    .line 34
    const/16 v1, 0x8

    .line 35
    .line 36
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    iput-boolean p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->lastState:Z

    .line 40
    .line 41
    :cond_3
    return-void
.end method

.method getCurrentFragment()Lcom/join/mgps/fragment/v1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->currentFragment:Lcom/join/mgps/fragment/b0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/join/mgps/fragment/b0;->a()Lcom/join/mgps/fragment/v1;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return-object v0
.end method

.method public getCurrentItem()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    return v0
.end method

.method getMainLabelInfo()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->rpcForumClient:Lcom/join/mgps/rpc/i;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->accountUtil:Lcom/join/mgps/Util/b;

    .line 4
    .line 5
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_id:I

    .line 10
    .line 11
    iget v3, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->fid:I

    .line 12
    .line 13
    iget-object v4, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_name:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/join/mgps/rpc/i;->S(Ljava/lang/String;IILjava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/dto/MainLabelBean;

    .line 30
    .line 31
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->updateMainUi(Lcom/join/mgps/dto/MainLabelBean;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->hideLoading()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->showFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    new-instance v1, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v2, "getMainLabelInfo Exception:"

    .line 49
    .line 50
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    const-string v1, "MainLabel"

    .line 65
    .line 66
    invoke-static {v1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->showFailed()V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method getType()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-gt v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/MainLabelBean$TagType;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/MainLabelBean$TagType;->getType_id()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    return v0

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/join/mgps/dto/MainLabelBean$TagType;

    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/join/mgps/dto/MainLabelBean$TagType;->getType_id()I

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    return v0
.end method

.method hideLoading()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method initTab(Lcom/join/mgps/dto/MainLabelBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mainLabelBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getTag_type()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLabelLists:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    new-array v1, v0, [Lcom/join/mgps/fragment/LabelFragment_;

    .line 22
    .line 23
    iput-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/adapter/h0;

    .line 26
    .line 27
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-direct {v1, v2}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 35
    .line 36
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->items(Ljava/util/List;)Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {v1, p1}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 44
    .line 45
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 46
    .line 47
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 51
    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 62
    .line 63
    new-instance v1, Lcom/join/mgps/activity/label/MainLabelActivity$c;

    .line 64
    .line 65
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$c;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v1}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 69
    .line 70
    .line 71
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 72
    .line 73
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 79
    .line 80
    new-instance v1, Lcom/join/mgps/activity/label/MainLabelActivity$d;

    .line 81
    .line 82
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$d;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 86
    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 89
    .line 90
    invoke-virtual {p1}, Lcom/join/mgps/customview/SlidingTabLayout1;->g()V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 96
    .line 97
    .line 98
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 99
    .line 100
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 101
    .line 102
    invoke-virtual {p1, v1}, Lru/noties/scrollable/ScrollableLayout;->setDraggableView(Landroid/view/View;)V

    .line 103
    .line 104
    .line 105
    const/4 p1, 0x1

    .line 106
    if-gt v0, p1, :cond_0

    .line 107
    .line 108
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->ll_multi_type_posts:Landroid/widget/RelativeLayout;

    .line 109
    .line 110
    const/16 v0, 0x8

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 113
    .line 114
    .line 115
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->ll_multi_type_posts:Landroid/widget/RelativeLayout;

    .line 118
    .line 119
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 120
    .line 121
    .line 122
    goto :goto_0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->ll_multi_type_posts:Landroid/widget/RelativeLayout;

    .line 124
    .line 125
    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 127
    .line 128
    .line 129
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 132
    .line 133
    .line 134
    move-result v0

    .line 135
    const/4 v2, 0x4

    .line 136
    if-gt v0, v2, :cond_1

    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 139
    .line 140
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 141
    .line 142
    .line 143
    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tabsLayout:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 145
    .line 146
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/SlidingTabLayout1;->setShouldExpand(Z)V

    .line 147
    .line 148
    .line 149
    :goto_0
    new-instance p1, Lcom/join/mgps/fragment/c0;

    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 152
    .line 153
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 154
    .line 155
    .line 156
    move-result-object v1

    .line 157
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/fragment/c0;-><init>(Landroidx/viewpager/widget/ViewPager;Landroidx/fragment/app/FragmentManager;)V

    .line 158
    .line 159
    .line 160
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->currentFragment:Lcom/join/mgps/fragment/b0;

    .line 161
    .line 162
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 163
    .line 164
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity$e;

    .line 165
    .line 166
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$e;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->setCanScrollVerticallyDelegate(Lru/noties/scrollable/b;)V

    .line 170
    .line 171
    .line 172
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 173
    .line 174
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity$f;

    .line 175
    .line 176
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$f;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->setOnFlingOverListener(Lru/noties/scrollable/j;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->scrollableLayout:Lru/noties/scrollable/ScrollableLayout;

    .line 188
    .line 189
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity$g;

    .line 190
    .line 191
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/label/MainLabelActivity$g;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Lru/noties/scrollable/ScrollableLayout;->w(Lru/noties/scrollable/k;)V

    .line 195
    .line 196
    .line 197
    return-void
.end method

.method isActivityFinish()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/BaseAppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x4444

    .line 5
    .line 6
    if-ne p1, p3, :cond_1

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_1

    .line 10
    .line 11
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

    .line 18
    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    array-length p2, p1

    .line 22
    if-lez p2, :cond_0

    .line 23
    .line 24
    const-string p2, "new"

    .line 25
    .line 26
    iput-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->currentOrder:Ljava/lang/String;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 29
    .line 30
    invoke-virtual {p2}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    aget-object p1, p1, p2

    .line 35
    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->currentOrder:Ljava/lang/String;

    .line 37
    .line 38
    const/4 p3, 0x1

    .line 39
    invoke-virtual {p1, p2, p3}, Lcom/join/mgps/fragment/y3;->g0(Ljava/lang/String;Z)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->getData()V

    .line 44
    .line 45
    .line 46
    :cond_1
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/adapter/h0;->getCount()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLastSelectedPos:I

    .line 10
    .line 11
    if-lt v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/fragment/y3;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->onBackPressedMy()Z

    .line 24
    .line 25
    .line 26
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    return-void

    .line 30
    :catch_0
    move-exception v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 32
    .line 33
    .line 34
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 35
    .line 36
    .line 37
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public onFocusClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->btnFocus()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method playVideoDelay()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x190L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    iget v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mLastSelectedPos:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/fragment/y3;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/fragment/y3;->Q()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method relodingimag()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->getData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method rlOrderBy()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->iv_order:Landroid/widget/ImageView;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/label/MainLabelActivity;->showSort(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method setNetwork()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method showDialog()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->m(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLoading1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->rl_main:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :goto_0
    return-void
.end method

.method public showSort(Landroid/view/View;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 21
    .line 22
    const/4 v1, -0x2

    .line 23
    invoke-direct {v0, p0, p0, v1, v1}, Lcom/join/mgps/activity/label/MainLabelActivity$h;-><init>(Lcom/join/mgps/activity/label/MainLabelActivity;Landroid/content/Context;II)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {v0, v1, v1}, Landroid/view/View;->measure(II)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 59
    .line 60
    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 61
    .line 62
    .line 63
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    const v3, 0x7f070393

    .line 72
    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    sub-int/2addr v0, v2

    .line 79
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 80
    .line 81
    invoke-virtual {v2, p1, v0, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->currentOrder:Ljava/lang/String;

    .line 87
    .line 88
    invoke-static {p1, v0}, Lcom/join/mgps/activity/label/MainLabelActivity$h;->b(Lcom/join/mgps/activity/label/MainLabelActivity$h;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mSortPopWindow:Lcom/join/mgps/activity/label/MainLabelActivity$h;

    .line 92
    .line 93
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 98
    .line 99
    .line 100
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/label/MainLabelActivity;->isActivityFinish()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method sortLabelListByOrder(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "order"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->currentOrder:Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->labelFragmentList:[Lcom/join/mgps/fragment/LabelFragment_;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    aget-object v0, v0, v1

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/fragment/y3;->g0(Ljava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method updateAttention(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAttention"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->btnFocus:Landroid/widget/TextView;

    .line 4
    .line 5
    const-string v1, "\u5df2\u5173\u6ce8"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MainLabelHeaderView;->d(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->btnFocus:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v1, "\u5173\u6ce8"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MainLabelHeaderView;->d(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->isAttention:Z

    .line 33
    .line 34
    iget v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->keepJoinState:I

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    const/4 v2, 0x1

    .line 38
    if-ne v0, v2, :cond_2

    .line 39
    .line 40
    const/4 v0, 0x1

    .line 41
    goto :goto_1

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_1
    if-eq v0, p1, :cond_3

    .line 44
    .line 45
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-virtual {p1, v2}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 50
    .line 51
    .line 52
    goto :goto_2

    .line 53
    :cond_3
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 58
    .line 59
    .line 60
    :goto_2
    return-void
.end method

.method updateMainUi(Lcom/join/mgps/dto/MainLabelBean;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mainLabelBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->A()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mainLabelBean:Lcom/join/mgps/dto/MainLabelBean;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getIs_follow()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getIs_follow()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {v0, v1}, Lcom/join/mgps/pref/h;->o0(Z)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getIs_follow()I

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    iput v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->keepJoinState:I

    .line 39
    .line 40
    :goto_0
    iput-object p1, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mainLabelBean:Lcom/join/mgps/dto/MainLabelBean;

    .line 41
    .line 42
    iget v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_id:I

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getTag_id()I

    .line 47
    .line 48
    .line 49
    move-result v0

    .line 50
    iput v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tag_id:I

    .line 51
    .line 52
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tv_posts_counts:Landroid/widget/TextView;

    .line 53
    .line 54
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getPosts()I

    .line 60
    .line 61
    .line 62
    move-result v3

    .line 63
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, "\u5e16\u5b50"

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->iv_label_administrator_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getManager_info()Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-virtual {v2}, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->getAvatar_src()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    const v3, 0x7f070ce6

    .line 93
    .line 94
    .line 95
    const v4, 0x7f070ce4

    .line 96
    .line 97
    .line 98
    const v5, 0x7f060503

    .line 99
    .line 100
    .line 101
    invoke-static {p0, v5, v3, v4}, Lcom/join/android/app/common/utils/l;->D(Landroid/content/Context;III)Lcom/facebook/drawee/generic/RoundingParams;

    .line 102
    .line 103
    .line 104
    move-result-object v3

    .line 105
    invoke-static {v0, v2, v3}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tv_label_administrator_nickname:Landroid/widget/TextView;

    .line 109
    .line 110
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getManager_info()Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v2}, Lcom/join/mgps/dto/MainLabelBean$ManagerInfo;->getNickname()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/join/mgps/activity/label/a;

    .line 122
    .line 123
    invoke-direct {v0, p1}, Lcom/join/mgps/activity/label/a;-><init>(Lcom/join/mgps/dto/MainLabelBean;)V

    .line 124
    .line 125
    .line 126
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->iv_label_administrator_avatar:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 127
    .line 128
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tv_label_administrator_nickname:Landroid/widget/TextView;

    .line 132
    .line 133
    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->mScrollableHeader:Lcom/join/mgps/customview/MainLabelHeaderView;

    .line 137
    .line 138
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/MainLabelHeaderView;->setViewData(Lcom/join/mgps/dto/MainLabelBean;)V

    .line 139
    .line 140
    .line 141
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->tv_label_name_head:Landroid/widget/TextView;

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    const-string v3, "#"

    .line 149
    .line 150
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getTag_name()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->is_allow()Z

    .line 171
    .line 172
    .line 173
    move-result v0

    .line 174
    const/4 v2, 0x0

    .line 175
    if-eqz v0, :cond_2

    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->btnSendPosts:Landroid/widget/Button;

    .line 178
    .line 179
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 180
    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/label/MainLabelActivity;->btnSendPosts:Landroid/widget/Button;

    .line 184
    .line 185
    const/16 v3, 0x8

    .line 186
    .line 187
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    :goto_1
    invoke-virtual {p1}, Lcom/join/mgps/dto/MainLabelBean;->getIs_follow()I

    .line 191
    .line 192
    .line 193
    move-result v0

    .line 194
    if-ne v0, v1, :cond_3

    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_3
    const/4 v1, 0x0

    .line 198
    :goto_2
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/label/MainLabelActivity;->updateAttention(Z)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/label/MainLabelActivity;->initTab(Lcom/join/mgps/dto/MainLabelBean;)V

    .line 202
    .line 203
    .line 204
    return-void
.end method
