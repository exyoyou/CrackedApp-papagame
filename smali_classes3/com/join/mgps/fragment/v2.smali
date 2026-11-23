.class public Lcom/join/mgps/fragment/v2;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02a0
.end annotation


# instance fields
.field A:Landroid/app/Dialog;

.field B:Landroid/content/ClipboardManager;

.field C:Landroid/view/View;

.field D:Landroid/widget/ImageView;

.field E:Landroid/widget/ImageView;

.field F:Landroid/widget/TextView;

.field c:Lcom/facebook/drawee/view/SimpleDraweeView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

.field p:Lcom/wufan/friend/chat/c;

.field q:Lcom/wufan/user/service/protobuf/UserInfo;

.field private r:Lcom/join/mgps/adapter/v0;

.field s:Lcom/join/mgps/rpc/j;

.field t:Ljava/lang/String;

.field u:Ljava/lang/String;

.field v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field w:Ljava/lang/String;

.field private x:Lcom/join/mgps/dto/FriendAccountInfo;

.field private y:I

.field z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->p:Lcom/wufan/friend/chat/c;

    .line 9
    .line 10
    const-string v0, ""

    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->v:Ljava/util/List;

    .line 20
    .line 21
    const/4 v0, 0x1

    .line 22
    iput v0, p0, Lcom/join/mgps/fragment/v2;->y:I

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/join/mgps/fragment/v2;->z:Z

    .line 26
    .line 27
    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 29
    .line 30
    return-void
.end method

.method private synthetic A0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->e0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic B0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic C0(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->Q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static synthetic D0(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public static synthetic O(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/fragment/v2;->D0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->B0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic Q(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->v0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic R(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->A0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic S(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->x0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic U(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->w0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic V(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->y0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic W(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->C0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic X(Lcom/join/mgps/fragment/v2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/v2;->z0()V

    return-void
.end method

.method public static synthetic Y(Lcom/join/mgps/fragment/v2;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/v2;->u0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/v2;)Lcom/join/mgps/adapter/v0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 2
    .line 3
    return-object p0
.end method

.method private f0()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/v2;->z:Z

    .line 3
    .line 4
    return-void
.end method

.method private h0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "clipboard"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->B:Landroid/content/ClipboardManager;

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method private i0()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->m(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method private j0(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packagename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    new-instance v0, Landroid/content/Intent;

    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    const-string v3, "android.intent.action.MAIN"

    .line 18
    .line 19
    invoke-direct {v0, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 20
    .line 21
    .line 22
    const-string v2, "android.intent.category.LAUNCHER"

    .line 23
    .line 24
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .line 53
    .line 54
    if-eqz p1, :cond_0

    .line 55
    .line 56
    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 57
    .line 58
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 59
    .line 60
    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 61
    .line 62
    new-instance v1, Landroid/content/Intent;

    .line 63
    .line 64
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const/high16 v3, 0x10000000

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    .line 74
    .line 75
    new-instance v2, Landroid/content/ComponentName;

    .line 76
    .line 77
    invoke-direct {v2, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 81
    .line 82
    .line 83
    invoke-virtual {p0, v1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 84
    .line 85
    .line 86
    :cond_0
    return-void
.end method

.method private synthetic u0(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private synthetic v0(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->U0(I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic w0(Landroid/view/View;)V
    .locals 0

    .line 1
    const/4 p1, 0x2

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->U0(I)V

    .line 3
    .line 4
    .line 5
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method private synthetic x0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->S0(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/c;->U(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private synthetic y0(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->S0(I)V

    .line 3
    .line 4
    .line 5
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/wufan/friend/chat/c;->U(I)V

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method private synthetic z0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->l:Landroid/view/View;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method E0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    .line 14
    .line 15
    const/4 v1, 0x2

    .line 16
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity;->go(I)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method F0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 54
    .line 55
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 66
    .line 67
    .line 68
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->K()V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method public G0(Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collection_id",
            "gameInfoBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->v:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->v:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->q0()V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method H0(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allFrdNotification"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->getFriendCount()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/v0;->E(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/util/ArrayList;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->getOnlineFriendsList()Ljava/util/List;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    if-eqz v2, :cond_1

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    check-cast v2, Lcom/wufan/friend/chat/protocol/Friend;

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/v2;->k0(Lcom/wufan/friend/chat/protocol/Friend;)Lcom/join/mgps/dto/FriendBean;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    const/4 v3, 0x0

    .line 43
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllFriendNotification;->getOfflineFriendsList()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    check-cast v1, Lcom/wufan/friend/chat/protocol/Friend;

    .line 78
    .line 79
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/v2;->k0(Lcom/wufan/friend/chat/protocol/Friend;)Lcom/join/mgps/dto/FriendBean;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x1

    .line 84
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 85
    .line 86
    .line 87
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 101
    .line 102
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 110
    .line 111
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 112
    .line 113
    .line 114
    return-void
.end method

.method I0(Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allFriendNotification"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 5
    .line 6
    if-eqz v0, :cond_4

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->getFriendCount()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/v0;->E(I)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AllOnlineFriendNotification;->getFriendsList()Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    if-eqz v1, :cond_2

    .line 33
    .line 34
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/wufan/friend/chat/protocol/Friend;

    .line 39
    .line 40
    new-instance v2, Lcom/join/mgps/dto/FriendBean;

    .line 41
    .line 42
    invoke-direct {v2}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getNickname()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAvatar()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 72
    .line 73
    .line 74
    move-result v3

    .line 75
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getLevel()I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getVip()Z

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    .line 105
    .line 106
    .line 107
    move-result v3

    .line 108
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    if-eqz v3, :cond_1

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    .line 127
    .line 128
    .line 129
    move-result-wide v4

    .line 130
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v4, ""

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 146
    .line 147
    .line 148
    move-result-object v3

    .line 149
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 157
    .line 158
    .line 159
    move-result-object v3

    .line 160
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    .line 161
    .line 162
    .line 163
    move-result-wide v3

    .line 164
    long-to-int v4, v3

    .line 165
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 166
    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 169
    .line 170
    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    .line 173
    .line 174
    .line 175
    move-result v3

    .line 176
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 177
    .line 178
    .line 179
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 188
    .line 189
    .line 190
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 196
    .line 197
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 202
    .line 203
    .line 204
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 205
    .line 206
    .line 207
    move-result p1

    .line 208
    if-eqz p1, :cond_3

    .line 209
    .line 210
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 211
    .line 212
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 217
    .line 218
    .line 219
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 220
    .line 221
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 222
    .line 223
    .line 224
    :cond_4
    return-void
.end method

.method J0(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_4

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_1

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 16
    .line 17
    if-eqz v1, :cond_4

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    check-cast v2, Lcom/join/mgps/dto/FriendBean;

    .line 38
    .line 39
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    if-ne v3, v4, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, ""

    .line 54
    .line 55
    if-eqz v0, :cond_2

    .line 56
    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    .line 93
    .line 94
    .line 95
    move-result-wide v3

    .line 96
    long-to-int v4, v3

    .line 97
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    .line 102
    .line 103
    .line 104
    move-result v3

    .line 105
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    .line 110
    .line 111
    .line 112
    move-result p1

    .line 113
    goto :goto_0

    .line 114
    :cond_2
    const/4 v4, 0x0

    .line 115
    move-object v0, v1

    .line 116
    const/4 p1, 0x0

    .line 117
    const/4 v3, 0x0

    .line 118
    :goto_0
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, p1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 131
    .line 132
    .line 133
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 134
    .line 135
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 136
    .line 137
    .line 138
    :cond_4
    :goto_1
    return-void
.end method

.method K0(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_8

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 33
    .line 34
    .line 35
    move-result v3

    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v3, ""

    .line 40
    .line 41
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 55
    .line 56
    if-eqz v0, :cond_1

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getState()Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendAccountInfo;->setOnLineStatus(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 70
    .line 71
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "ONLINE"

    .line 76
    .line 77
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    xor-int/lit8 p1, p1, 0x1

    .line 82
    .line 83
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->S0(I)V

    .line 84
    .line 85
    .line 86
    :cond_1
    return-void

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 88
    .line 89
    if-eqz v1, :cond_8

    .line 90
    .line 91
    invoke-virtual {v1}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v2

    .line 109
    check-cast v2, Lcom/join/mgps/dto/FriendBean;

    .line 110
    .line 111
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 112
    .line 113
    .line 114
    move-result v4

    .line 115
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 116
    .line 117
    .line 118
    move-result v5

    .line 119
    if-ne v4, v5, :cond_3

    .line 120
    .line 121
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getNickname()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAvatar()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getLevel()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    if-eqz v1, :cond_4

    .line 161
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    .line 172
    .line 173
    .line 174
    move-result-wide v4

    .line 175
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v1

    .line 196
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 200
    .line 201
    .line 202
    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    .line 204
    .line 205
    .line 206
    move-result-wide v4

    .line 207
    long-to-int v1, v4

    .line 208
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    .line 216
    .line 217
    .line 218
    move-result v1

    .line 219
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    .line 227
    .line 228
    .line 229
    move-result v1

    .line 230
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 231
    .line 232
    .line 233
    goto :goto_0

    .line 234
    :cond_4
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 238
    .line 239
    .line 240
    const/4 v1, 0x0

    .line 241
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 245
    .line 246
    .line 247
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 248
    .line 249
    .line 250
    :goto_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getStateValue()I

    .line 251
    .line 252
    .line 253
    move-result v1

    .line 254
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_1

    .line 258
    :cond_5
    const/4 v2, 0x0

    .line 259
    :goto_1
    if-nez v2, :cond_7

    .line 260
    .line 261
    new-instance v1, Lcom/join/mgps/dto/FriendBean;

    .line 262
    .line 263
    invoke-direct {v1}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 264
    .line 265
    .line 266
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getStateValue()I

    .line 267
    .line 268
    .line 269
    move-result v2

    .line 270
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getNickname()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v2

    .line 277
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAvatar()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 288
    .line 289
    .line 290
    move-result v2

    .line 291
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 292
    .line 293
    .line 294
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getLevel()I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 309
    .line 310
    .line 311
    move-result-object v0

    .line 312
    if-eqz v0, :cond_6

    .line 313
    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    .line 315
    .line 316
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    .line 324
    .line 325
    .line 326
    move-result-wide v4

    .line 327
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    .line 332
    .line 333
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    move-result-object v0

    .line 337
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 352
    .line 353
    .line 354
    move-result-object v0

    .line 355
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    .line 356
    .line 357
    .line 358
    move-result-wide v2

    .line 359
    long-to-int v0, v2

    .line 360
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 364
    .line 365
    .line 366
    move-result-object v0

    .line 367
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    .line 368
    .line 369
    .line 370
    move-result v0

    .line 371
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 375
    .line 376
    .line 377
    move-result-object p1

    .line 378
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    .line 379
    .line 380
    .line 381
    move-result p1

    .line 382
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 383
    .line 384
    .line 385
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 386
    .line 387
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 388
    .line 389
    .line 390
    move-result-object p1

    .line 391
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    .line 393
    .line 394
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 395
    .line 396
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->n()I

    .line 397
    .line 398
    .line 399
    move-result v0

    .line 400
    add-int/lit8 v0, v0, 0x1

    .line 401
    .line 402
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/v0;->E(I)V

    .line 403
    .line 404
    .line 405
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 406
    .line 407
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->K()V

    .line 408
    .line 409
    .line 410
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 411
    .line 412
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 413
    .line 414
    .line 415
    :cond_8
    :goto_2
    return-void
.end method

.method L0(Lcom/wufan/friend/chat/protocol/RecommendPlayerData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerData;->getRecommendPlayerList()Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/wufan/friend/chat/protocol/RecommendPlayer;

    .line 28
    .line 29
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/v2;->m0(Lcom/wufan/friend/chat/protocol/RecommendPlayer;)Lcom/join/mgps/dto/FriendBean;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 35
    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->updateUi(Ljava/util/List;)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    instance-of p1, p1, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 49
    .line 50
    if-eqz p1, :cond_2

    .line 51
    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/join/mgps/activity/GameMainActivity4_;

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/GameMainActivity4;->setOnlinePlayersCount(I)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method

.method M0()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const v1, 0x7f0d07e2

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Landroid/app/Activity;

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->a(Landroid/app/Activity;Landroid/view/View;)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const/4 v2, 0x1

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->e(Z)Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow$f;->b()Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iput-object v1, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 41
    .line 42
    const v1, 0x7f0a11a0

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    new-instance v2, Lcom/join/mgps/fragment/l2;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/join/mgps/fragment/l2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f0a1150

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    new-instance v1, Lcom/join/mgps/fragment/m2;

    .line 65
    .line 66
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/m2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 73
    .line 74
    new-instance v1, Lcom/join/mgps/fragment/n2;

    .line 75
    .line 76
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/n2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 80
    .line 81
    .line 82
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 83
    .line 84
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    const v2, 0x7f0713e4

    .line 89
    .line 90
    .line 91
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 96
    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 99
    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    const v2, 0x7f071335

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 112
    .line 113
    .line 114
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->l:Landroid/view/View;

    .line 115
    .line 116
    const/high16 v1, 0x43340000    # 180.0f

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 122
    .line 123
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isFocusable()Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    invoke-direct {p0}, Lcom/join/mgps/fragment/v2;->f0()V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 131
    .line 132
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 133
    .line 134
    const/4 v3, 0x2

    .line 135
    const/4 v4, 0x0

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    const v6, 0x7f0715d7

    .line 141
    .line 142
    .line 143
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 144
    .line 145
    .line 146
    move-result v5

    .line 147
    const/4 v6, 0x0

    .line 148
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;->C(Landroid/view/View;IIII)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->d0(Z)V

    .line 152
    .line 153
    .line 154
    return-void
.end method

.method N0()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->M0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method O0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u9080\u8bf7\u4f60\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "\u7545\u73a9\u6d77\u91cf\u514d\u8d39\u7ecf\u5178\u6e38\u620f\uff0c\u4f53\u9a8c\u8d85\u723d\u8054\u673a\uff01"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "https://tuis.5fun.com/?aid=7Fp12l"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x2

    .line 26
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/w;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "0"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lcom/papa/sim/statistic/Event;->InviteFriends:Lcom/papa/sim/statistic/Event;

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public P0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method Q0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/activity/FriendActivity;->onAddFriend()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method R0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "number"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-ge p1, v1, :cond_1

    .line 8
    .line 9
    const/4 p1, 0x4

    .line 10
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    const/16 v3, 0x64

    .line 19
    .line 20
    const/4 v4, 0x0

    .line 21
    if-ge p1, v3, :cond_2

    .line 22
    .line 23
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 24
    .line 25
    .line 26
    const v3, 0x7f080da4

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v1, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 37
    .line 38
    .line 39
    const v3, 0x7f080ccb

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 43
    .line 44
    .line 45
    const/4 v3, 0x2

    .line 46
    invoke-virtual {v0, v1, v2, v3, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 50
    .line 51
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string p1, ""

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    .line 68
    .line 69
    return-void
.end method

.method S0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    if-nez p1, :cond_1

    .line 8
    .line 9
    const-string p1, "\u5728\u7ebf"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 20
    .line 21
    const-string v0, "#FF16DB16"

    .line 22
    .line 23
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v2, 0x0

    .line 32
    const-string v3, "#FFC4C4C4"

    .line 33
    .line 34
    if-ne p1, v1, :cond_2

    .line 35
    .line 36
    const-string p1, "\u52ff\u6270"

    .line 37
    .line 38
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 51
    .line 52
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string p1, "\u79bb\u7ebf"

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    .line 60
    .line 61
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 73
    .line 74
    .line 75
    :goto_0
    return-void
.end method

.method T0(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/16 v0, 0x1706

    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method U0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "to"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->m(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x2

    .line 26
    const-string v2, "\u9080\u8bf7\u4f60\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    .line 27
    .line 28
    const-string v3, "https://tuis.5fun.com/?aid=7Fp12l"

    .line 29
    .line 30
    if-ne p1, v1, :cond_0

    .line 31
    .line 32
    new-instance p1, Lcom/join/mgps/dto/ShareBean;

    .line 33
    .line 34
    invoke-direct {p1}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/ShareBean;->setQqUrl(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 47
    .line 48
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v1, "0"

    .line 52
    .line 53
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    if-nez p1, :cond_1

    .line 58
    .line 59
    new-instance p1, Lcom/join/mgps/dto/ShareBean;

    .line 60
    .line 61
    invoke-direct {p1}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v2}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v3}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    const/4 v1, 0x1

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-static {p1, v2, v0, v1, v2}, Lcom/join/mgps/Util/w;->q(Landroid/content/Context;ILjava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    new-instance p1, Lcom/papa/sim/statistic/Ext;

    .line 83
    .line 84
    invoke-direct {p1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v1, "1"

    .line 88
    .line 89
    invoke-virtual {p1, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 93
    .line 94
    .line 95
    move-result-object v1

    .line 96
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    sget-object v2, Lcom/papa/sim/statistic/Event;->pasteInviteCode:Lcom/papa/sim/statistic/Event;

    .line 101
    .line 102
    invoke-virtual {v1, v2, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 103
    .line 104
    .line 105
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/v2;->h0(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    const-string p1, "\u5df2\u590d\u5236\u5230\u7c98\u8d34\u677f"

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->toast(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    return-void
.end method

.method V0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "com.tencent.mobileqq"

    .line 6
    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/v2;->g0(Landroid/content/Context;Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->W0(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const-string v1, "\u672c\u673a\u672a\u5b89\u88c5QQ\u5e94\u7528"

    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 25
    .line 26
    .line 27
    :goto_0
    return-void
.end method

.method W0(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "android.intent.action.SEND"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    const-string v1, "android.intent.extra.TEXT"

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/fragment/v2;->i0()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 18
    .line 19
    .line 20
    const-string v1, "text/plain"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    :try_start_0
    const-string v1, "com.tencent.mobileqq"

    .line 26
    .line 27
    const-string v2, "com.tencent.mobileqq.activity.JumpActivity"

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string v1, "\u9009\u62e9\u5206\u4eab\u9014\u5f84"

    .line 33
    .line 34
    invoke-static {v0, v1}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    if-nez v1, :cond_0

    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method X0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_9

    .line 15
    .line 16
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Lcom/join/mgps/Util/IntentUtil;->isTourist(Landroid/content/Context;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_9

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->e:Landroid/widget/TextView;

    .line 31
    .line 32
    const/16 v2, 0x8

    .line 33
    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/TextView;

    .line 40
    .line 41
    if-eqz v0, :cond_1

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->l:Landroid/view/View;

    .line 54
    .line 55
    if-eqz v0, :cond_3

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 58
    .line 59
    .line 60
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/TextView;

    .line 61
    .line 62
    if-eqz v0, :cond_4

    .line 63
    .line 64
    iget-object v3, p0, Lcom/join/mgps/fragment/v2;->q:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/wufan/user/service/protobuf/UserInfo;->getNickname()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    .line 72
    .line 73
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 74
    .line 75
    if-eqz v0, :cond_6

    .line 76
    .line 77
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->q:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/join/mgps/Util/b;->piv(Lcom/wufan/user/service/protobuf/UserInfo;)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-eqz v0, :cond_5

    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 92
    .line 93
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    if-eqz v0, :cond_7

    .line 99
    .line 100
    new-instance v1, Lcom/join/mgps/fragment/o2;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/o2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    .line 107
    .line 108
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->i:Landroid/view/View;

    .line 109
    .line 110
    if-eqz v0, :cond_8

    .line 111
    .line 112
    new-instance v1, Lcom/join/mgps/fragment/p2;

    .line 113
    .line 114
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/p2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    .line 119
    .line 120
    :cond_8
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->k:Landroid/view/View;

    .line 121
    .line 122
    if-eqz v0, :cond_12

    .line 123
    .line 124
    new-instance v1, Lcom/join/mgps/fragment/q2;

    .line 125
    .line 126
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/q2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 130
    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_9
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->e:Landroid/widget/TextView;

    .line 134
    .line 135
    if-eqz v0, :cond_a

    .line 136
    .line 137
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 138
    .line 139
    .line 140
    :cond_a
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/TextView;

    .line 141
    .line 142
    const/4 v1, 0x4

    .line 143
    if-eqz v0, :cond_b

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 146
    .line 147
    .line 148
    :cond_b
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->f:Landroid/widget/TextView;

    .line 149
    .line 150
    if-eqz v0, :cond_c

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 153
    .line 154
    .line 155
    :cond_c
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->l:Landroid/view/View;

    .line 156
    .line 157
    if-eqz v0, :cond_d

    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :cond_d
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 163
    .line 164
    if-eqz v0, :cond_e

    .line 165
    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :cond_e
    new-instance v0, Lcom/join/mgps/fragment/r2;

    .line 170
    .line 171
    invoke-direct {v0}, Lcom/join/mgps/fragment/r2;-><init>()V

    .line 172
    .line 173
    .line 174
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->e:Landroid/widget/TextView;

    .line 175
    .line 176
    if-eqz v1, :cond_f

    .line 177
    .line 178
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    .line 180
    .line 181
    :cond_f
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 182
    .line 183
    if-eqz v1, :cond_10

    .line 184
    .line 185
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    .line 187
    .line 188
    :cond_10
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->i:Landroid/view/View;

    .line 189
    .line 190
    if-eqz v1, :cond_11

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    .line 194
    .line 195
    :cond_11
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->k:Landroid/view/View;

    .line 196
    .line 197
    if-eqz v1, :cond_12

    .line 198
    .line 199
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 200
    .line 201
    .line 202
    :cond_12
    :goto_1
    return-void
.end method

.method Y0(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friendChangeState"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v0, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getStateValue()I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->S0(I)V

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 71
    .line 72
    .line 73
    move-result v3

    .line 74
    if-eq v2, v3, :cond_2

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_2
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;->getStateValue()I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 82
    .line 83
    .line 84
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 85
    .line 86
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 87
    .line 88
    .line 89
    :cond_3
    :goto_1
    return-void
.end method

.method Z0(Lcom/join/mgps/dto/FriendAccountInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->S(Lcom/join/mgps/dto/FriendAccountInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getAvatar()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getNickname()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const-string v0, "OFFLINE"

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x2

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const-string v0, "ONLINE"

    .line 57
    .line 58
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_4

    .line 69
    .line 70
    :cond_3
    const/4 v0, 0x0

    .line 71
    goto :goto_0

    .line 72
    :cond_4
    const-string v0, "INVISIBLE"

    .line 73
    .line 74
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    const/4 v0, 0x1

    .line 87
    :goto_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v2, v0}, Lcom/wufan/friend/chat/c;->W(I)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->S0(I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 98
    .line 99
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    .line 100
    .line 101
    .line 102
    move-result v0

    .line 103
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 104
    .line 105
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    add-int/2addr v0, v2

    .line 110
    const/16 v2, 0x8

    .line 111
    .line 112
    if-lez v0, :cond_6

    .line 113
    .line 114
    iget-object v3, p0, Lcom/join/mgps/fragment/v2;->g:Landroid/widget/TextView;

    .line 115
    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 119
    .line 120
    .line 121
    :cond_5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->R0(I)V

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->g:Landroid/widget/TextView;

    .line 126
    .line 127
    if-eqz v0, :cond_7

    .line 128
    .line 129
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 133
    .line 134
    if-eqz v0, :cond_9

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendAccountInfo;->isVip()Z

    .line 137
    .line 138
    .line 139
    move-result p1

    .line 140
    if-eqz p1, :cond_8

    .line 141
    .line 142
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 143
    .line 144
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 151
    .line 152
    .line 153
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->X0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_3

    .line 157
    :catch_0
    move-exception p1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 159
    .line 160
    .line 161
    :goto_3
    return-void
.end method

.method a0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ruid"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Lcom/join/mgps/dto/FriendReqBean;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/join/mgps/dto/FriendReqBean;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendReqBean;->setUid(I)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/FriendReqBean;->setToken(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRuid(I)V

    .line 33
    .line 34
    .line 35
    const-string p1, "\u563f\uff0c\u4ea4\u4e2a\u670b\u53cb\uff0c\u5c11\u5e74~(*^\u25bd^*)"

    .line 36
    .line 37
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/FriendReqBean;->setRequestInfo(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->s:Lcom/join/mgps/rpc/j;

    .line 41
    .line 42
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/j;->i(Lcom/join/mgps/dto/FriendReqBean;)Lcom/join/mgps/dto/ResponseModel;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    if-eqz p1, :cond_1

    .line 47
    .line 48
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_0

    .line 53
    .line 54
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 55
    .line 56
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->b0(Ljava/lang/Boolean;)V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 70
    .line 71
    .line 72
    :cond_1
    :goto_0
    return-void
.end method

.method a1()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->S(Lcom/join/mgps/dto/FriendAccountInfo;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getAvatar()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->d:Landroid/widget/TextView;

    .line 27
    .line 28
    if-eqz v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 31
    .line 32
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getNickname()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    :cond_1
    const-string v0, "ONLINE"

    .line 40
    .line 41
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 42
    .line 43
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getOnLineStatus()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    const/4 v1, 0x0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    const/4 v0, 0x0

    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v0, 0x1

    .line 57
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->S0(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 67
    .line 68
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    add-int/2addr v0, v2

    .line 73
    const/16 v2, 0x8

    .line 74
    .line 75
    if-lez v0, :cond_4

    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/fragment/v2;->g:Landroid/widget/TextView;

    .line 78
    .line 79
    if-eqz v3, :cond_3

    .line 80
    .line 81
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    :cond_3
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->R0(I)V

    .line 85
    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->g:Landroid/widget/TextView;

    .line 89
    .line 90
    if-eqz v0, :cond_5

    .line 91
    .line 92
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    :cond_5
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 96
    .line 97
    if-eqz v0, :cond_7

    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->isVip()Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_6

    .line 106
    .line 107
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_2

    .line 113
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->h:Landroid/view/View;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->X0()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 119
    .line 120
    .line 121
    goto :goto_3

    .line 122
    :catch_0
    move-exception v0

    .line 123
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 124
    .line 125
    .line 126
    :goto_3
    return-void
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->p()Lcom/join/mgps/rpc/impl/h;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/join/mgps/fragment/v2;->s:Lcom/join/mgps/rpc/j;

    .line 10
    .line 11
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    instance-of v2, v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 34
    .line 35
    if-eqz v2, :cond_0

    .line 36
    .line 37
    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator;

    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 41
    .line 42
    .line 43
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/v0;

    .line 44
    .line 45
    invoke-direct {v1, v0}, Lcom/join/mgps/adapter/v0;-><init>(Landroid/content/Context;)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->m:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 53
    .line 54
    .line 55
    instance-of v1, v0, Lcom/join/mgps/activity/FriendActivity;

    .line 56
    .line 57
    if-eqz v1, :cond_1

    .line 58
    .line 59
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 60
    .line 61
    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Lcom/join/mgps/adapter/v0;->J(Lcom/join/mgps/adapter/v0$e;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 67
    .line 68
    new-instance v1, Lcom/join/mgps/fragment/v2$a;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/v2$a;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->c0()V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->n:Landroid/widget/ImageView;

    .line 80
    .line 81
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 82
    .line 83
    .line 84
    move-result v0

    .line 85
    if-nez v0, :cond_2

    .line 86
    .line 87
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    sget-object v1, Lcom/papa/sim/statistic/Event;->expBattleHallShare:Lcom/papa/sim/statistic/Event;

    .line 96
    .line 97
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 100
    .line 101
    .line 102
    sget-object v3, Lcom/papa/sim/statistic/EventP$FirstModel;->findTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 121
    .line 122
    .line 123
    :cond_2
    return-void
.end method

.method b0(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "f"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const-string p1, "\u5df2\u53d1\u9001\u7533\u8bf7"

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->toast(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method b1()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ShareBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ShareBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\u9080\u8bf7\u4f60\u4e00\u8d77\u8054\u673a\u5bf9\u6218"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setTitle(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v1, "\u7545\u73a9\u6d77\u91cf\u514d\u8d39\u7ecf\u5178\u6e38\u620f\uff0c\u4f53\u9a8c\u8d85\u723d\u8054\u673a\uff01"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setText(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "https://tuis.5fun.com/?aid=7Fp12l"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ShareBean;->setWechatShareUrl(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    const/4 v2, 0x0

    .line 26
    invoke-static {v1, v2, v0}, Lcom/join/mgps/Util/w;->p(Landroid/content/Context;ILcom/join/mgps/dto/ShareBean;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v1, "1"

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v1}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    sget-object v2, Lcom/papa/sim/statistic/Event;->InviteFriends:Lcom/papa/sim/statistic/Event;

    .line 48
    .line 49
    invoke-virtual {v1, v2, v0}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Receiver;
        actions = {
            "com.join.android.app.mgsim.wufun.broadcast.action_login_success"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->q:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getAvatarSrc()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-static {v1, v0}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->X0()V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->p0()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->q0()V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->o0()V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method d0(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tempFocusable"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->s0(Landroid/view/View;)V

    .line 8
    .line 9
    .line 10
    iput-boolean p1, p0, Lcom/join/mgps/fragment/v2;->z:Z

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->o:Lcom/join/mgps/customview/smartpopupwindow/SmartPopupWindow;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->update()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method e0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/FriendActivity;->onFriendClick(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public g0(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "packageName"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p2, :cond_1

    .line 3
    .line 4
    const-string v1, ""

    .line 5
    .line 6
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const/16 v1, 0x2000

    .line 18
    .line 19
    invoke-virtual {p1, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    const/4 p1, 0x1

    .line 23
    return p1

    .line 24
    :catch_0
    :cond_1
    :goto_0
    return v0
.end method

.method k0(Lcom/wufan/friend/chat/protocol/Friend;)Lcom/join/mgps/dto/FriendBean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friend"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getNickname()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAvatar()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getLevel()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getVip()Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getAccount()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    if-eqz v1, :cond_0

    .line 77
    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    .line 88
    .line 89
    .line 90
    move-result-wide v2

    .line 91
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    const-string v2, ""

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    .line 122
    .line 123
    .line 124
    move-result-wide v1

    .line 125
    long-to-int v2, v1

    .line 126
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Friend;->getState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    .line 145
    .line 146
    .line 147
    move-result p1

    .line 148
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 149
    .line 150
    .line 151
    :cond_0
    return-object v0
.end method

.method l0(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/join/mgps/dto/FriendBean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getNickname()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAvatar()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getLevel()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getVip()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->getOnlineState()Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    .line 75
    .line 76
    .line 77
    move-result-wide v2

    .line 78
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v2, ""

    .line 82
    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    .line 101
    .line 102
    .line 103
    move-result-wide v1

    .line 104
    long-to-int v2, v1

    .line 105
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 120
    .line 121
    .line 122
    :cond_0
    return-object v0
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method m0(Lcom/wufan/friend/chat/protocol/RecommendPlayer;)Lcom/join/mgps/dto/FriendBean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "friend"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRecommend(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayer;->getNickname()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayer;->getAvatar()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayer;->getAccountId()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayer;->getLevel()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayer;->getBanned()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 43
    .line 44
    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayer;->getGameId()J

    .line 51
    .line 52
    .line 53
    move-result-wide v2

    .line 54
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    const-string v2, ""

    .line 58
    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayer;->getGameName()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    return-object v0
.end method

.method n0(Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;)Lcom/join/mgps/dto/FriendBean;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "notification"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/dto/FriendBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/FriendBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRecommend(Z)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getNickname()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setNickName(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAvatar()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setAvatar(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setUid(I)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getLevel()I

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setLevel(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getVip()Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setVip(Z)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getState()Lcom/wufan/friend/chat/protocol/OnlineState;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    if-eqz p1, :cond_0

    .line 72
    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    .line 79
    .line 80
    .line 81
    move-result-wide v2

    .line 82
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v2, ""

    .line 86
    .line 87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    .line 105
    .line 106
    .line 107
    move-result-wide v1

    .line 108
    long-to-int v2, v1

    .line 109
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    .line 113
    .line 114
    .line 115
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    .line 120
    .line 121
    .line 122
    move-result p1

    .line 123
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    .line 124
    .line 125
    .line 126
    :cond_0
    return-object v0
.end method

.method o0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xc8L
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->s:Lcom/join/mgps/rpc/j;

    .line 14
    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v3, ""

    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-interface {v1, v2, v0}, Lcom/join/mgps/rpc/j;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/join/mgps/dto/ResponseModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_0

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_0

    .line 57
    .line 58
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    check-cast v0, Lcom/join/mgps/dto/FriendAccountInfo;

    .line 63
    .line 64
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->Z0(Lcom/join/mgps/dto/FriendAccountInfo;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lorg/greenrobot/eventbus/c;->f()Lorg/greenrobot/eventbus/c;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1, p0}, Lorg/greenrobot/eventbus/c;->o(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    invoke-virtual {p1, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_1

    .line 26
    .line 27
    const-string v0, "gameId"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->t:Ljava/lang/String;

    .line 34
    .line 35
    const-string v0, "gameSeries"

    .line 36
    .line 37
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 42
    .line 43
    const-string v0, "type"

    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 50
    .line 51
    :cond_1
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/join/mgps/fragment/e;->onDestroy()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onFriendEvent(Lcom/join/mgps/event/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/event/w;->a()I

    move-result p1

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    .line 2
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public onFriendEvent(Lcom/wufan/friend/chat/protocol/Response;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getServiceValue()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 4
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getPathValue()I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getLoginData()Lcom/wufan/friend/chat/protocol/LoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/LoginData;->getSucceed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/v2;->S0(I)V

    .line 9
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/wufan/friend/chat/c;->T(Z)V

    .line 10
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/wufan/friend/chat/c;->U(I)V

    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->p:Lcom/wufan/friend/chat/c;

    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->t()V

    .line 12
    iput v2, p0, Lcom/join/mgps/fragment/v2;->y:I

    goto :goto_0

    .line 13
    :cond_1
    iget v0, p0, Lcom/join/mgps/fragment/v2;->y:I

    if-lez v0, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->o0()V

    .line 15
    iget v0, p0, Lcom/join/mgps/fragment/v2;->y:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/join/mgps/fragment/v2;->y:I

    .line 16
    :cond_2
    :goto_0
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/join/mgps/Util/IntentUtil;->isLogined(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->q0()V

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getPathValue()I

    move-result v0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_4

    .line 19
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 21
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 22
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->Y0(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)V

    .line 23
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getServiceValue()I

    move-result v0

    const/4 v3, 0x4

    const/16 v4, 0xc

    const/16 v5, 0xb

    if-ne v0, v3, :cond_6

    .line 24
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getPathValue()I

    move-result v0

    if-eq v0, v5, :cond_5

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getPathValue()I

    move-result v0

    if-ne v0, v4, :cond_6

    .line 25
    :cond_5
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getRecommendPlayerData()Lcom/wufan/friend/chat/protocol/RecommendPlayerData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->L0(Lcom/wufan/friend/chat/protocol/RecommendPlayerData;)V

    .line 26
    :cond_6
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    if-nez v0, :cond_7

    goto/16 :goto_9

    .line 27
    :cond_7
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getData()Lcom/wufan/friend/chat/protocol/ResponseData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/ResponseData;->getNotification()Lcom/wufan/friend/chat/protocol/NotificationData;

    move-result-object v0

    .line 28
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v3

    const/4 v6, 0x3

    if-ne v3, v6, :cond_8

    .line 29
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendPlayState()Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->J0(Lcom/wufan/friend/chat/protocol/FriendChangePlayStateNotification;)V

    goto/16 :goto_9

    .line 30
    :cond_8
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v3

    const/4 v6, 0x2

    if-ne v3, v6, :cond_9

    .line 31
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendChangeState()Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->K0(Lcom/wufan/friend/chat/protocol/FriendChangeStateNotification;)V

    goto/16 :goto_9

    .line 32
    :cond_9
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v3

    if-ne v3, v5, :cond_a

    .line 33
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 34
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getAllFrdNotification()Lcom/wufan/friend/chat/protocol/AllFriendNotification;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->H0(Lcom/wufan/friend/chat/protocol/AllFriendNotification;)V

    goto/16 :goto_9

    .line 35
    :cond_a
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v3

    const/4 v5, 0x7

    if-ne v3, v5, :cond_f

    .line 36
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 37
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    if-eqz p1, :cond_1d

    .line 38
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getCount()I

    move-result p1

    .line 39
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getTypeValue()I

    move-result v3

    if-nez v3, :cond_c

    .line 40
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_b

    goto :goto_2

    :cond_b
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getRequestFriendCount()I

    move-result v1

    add-int/2addr v1, p1

    :goto_2
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendAccountInfo;->setRequestFriendCount(I)V

    goto :goto_4

    .line 41
    :cond_c
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriAddReqNotification()Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/FriendAddReqNotification;->getTypeValue()I

    move-result v0

    if-ne v0, v2, :cond_e

    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    move-result v2

    add-int/2addr v2, p1

    if-gez v2, :cond_d

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendAccountInfo;->getLikedCount()I

    move-result v1

    add-int/2addr v1, p1

    :goto_3
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendAccountInfo;->setLikedCount(I)V

    .line 43
    :cond_e
    :goto_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->a1()V

    goto/16 :goto_9

    .line 44
    :cond_f
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v1

    const/16 v3, 0x9

    if-ne v1, v3, :cond_10

    .line 45
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 46
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendAddSuccessNotification()Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;->getOnlineState()Lcom/wufan/friend/chat/protocol/OnlineState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/OnlineState;->getNumber()I

    move-result v0

    if-nez v0, :cond_1d

    .line 48
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->l0(Lcom/wufan/friend/chat/protocol/FriendAddSuccessNotification;)Lcom/join/mgps/dto/FriendBean;

    move-result-object p1

    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->n()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/v0;->E(I)V

    .line 50
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->K()V

    .line 52
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto/16 :goto_9

    .line 53
    :cond_10
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v1

    if-ne v1, v4, :cond_15

    .line 54
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object p1

    if-eqz p1, :cond_1d

    .line 55
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getRecommendPlayerStateChange()Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 58
    :cond_11
    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_14

    .line 59
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/join/mgps/dto/FriendBean;

    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getFriend()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    move-result v4

    if-ne v3, v4, :cond_11

    .line 61
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    move-result-object v3

    if-eqz v3, :cond_13

    .line 62
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_12

    goto :goto_6

    .line 63
    :cond_12
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/RecommendPlayerStateChangeNotification;->getPlayState()Lcom/wufan/friend/chat/protocol/PlayState;

    move-result-object v3

    .line 64
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setGameId(Ljava/lang/String;)V

    .line 65
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getGameName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setGameName(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getLobbyRoomId()J

    move-result-wide v4

    long-to-int v5, v4

    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/FriendBean;->setRoomId(I)V

    .line 67
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getRoomType()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/FriendBean;->setRoomType(I)V

    .line 68
    invoke-virtual {v3}, Lcom/wufan/friend/chat/protocol/PlayState;->getPlayTypeValue()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendBean;->setPlayType(I)V

    goto :goto_5

    .line 69
    :cond_13
    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_5

    .line 70
    :cond_14
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->F0()V

    .line 71
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1d

    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->q0()V

    goto/16 :goto_9

    .line 72
    :cond_15
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_18

    .line 73
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    move-result-object p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    if-eqz p1, :cond_1d

    .line 74
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getFriendDeleteSuccess()Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;

    move-result-object p1

    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 77
    :cond_16
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 78
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 79
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/FriendDeleteSuccessNotification;->getFriendId()I

    move-result v2

    if-ne v1, v2, :cond_16

    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_7

    .line 81
    :cond_17
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_9

    .line 82
    :cond_18
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/Response;->getNotificationTypeValue()I

    move-result p1

    const/16 v1, 0xe

    if-ne p1, v1, :cond_1d

    .line 83
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    move-result-object p1

    if-eqz p1, :cond_1d

    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->getAccountInfo()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object p1

    if-nez p1, :cond_19

    goto :goto_9

    .line 84
    :cond_19
    invoke-virtual {v0}, Lcom/wufan/friend/chat/protocol/NotificationData;->getPlayerBanned()Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/PlayerBannedNotification;->getAccountInfo()Lcom/wufan/friend/chat/protocol/AccountInfo;

    move-result-object p1

    .line 85
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    if-eqz v0, :cond_1c

    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    move-result-object v0

    .line 87
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 88
    :cond_1a
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 89
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->getUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    move-result v3

    if-ne v2, v3, :cond_1a

    .line 91
    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setBanned(Z)V

    goto :goto_8

    .line 92
    :cond_1b
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 93
    :cond_1c
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Lcom/join/mgps/dto/FriendAccountInfo;->getAccountId()I

    move-result v0

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getAccountId()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 94
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->x:Lcom/join/mgps/dto/FriendAccountInfo;

    invoke-virtual {p1}, Lcom/wufan/friend/chat/protocol/AccountInfo;->getBanned()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/FriendAccountInfo;->setBanned(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->a1()V

    nop

    :cond_1d
    :goto_9
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method p0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0x64L
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->p:Lcom/wufan/friend/chat/c;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->F()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->p:Lcom/wufan/friend/chat/c;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->q:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->q:Lcom/wufan/user/service/protobuf/UserInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    invoke-virtual {v0, v1, v2}, Lcom/wufan/friend/chat/c;->L(ILjava/lang/String;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->p:Lcom/wufan/friend/chat/c;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/wufan/friend/chat/c;->t()V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method q0()V
    .locals 8
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xc8L
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 7
    const-string v1, "BATTLE_ROOM_LIST"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    instance-of v0, v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameSeries()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 46
    .line 47
    :cond_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lq5/f;->u()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    new-instance v6, Ljava/util/ArrayList;

    .line 56
    .line 57
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    if-eqz v2, :cond_1

    .line 69
    .line 70
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    check-cast v2, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 75
    .line 76
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 89
    .line 90
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    const/4 v2, 0x0

    .line 95
    if-nez v0, :cond_5

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 98
    .line 99
    const-string v3, "BATTLE_HOME_PAGE"

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v0

    .line 114
    if-eqz v0, :cond_3

    .line 115
    .line 116
    const/4 v0, 0x1

    .line 117
    const/4 v7, 0x1

    .line 118
    goto :goto_2

    .line 119
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 120
    .line 121
    const-string v1, "BATTLE_ROOM"

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 124
    .line 125
    .line 126
    move-result v0

    .line 127
    if-eqz v0, :cond_4

    .line 128
    .line 129
    const/4 v0, 0x2

    .line 130
    const/4 v7, 0x2

    .line 131
    goto :goto_2

    .line 132
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 133
    .line 134
    const-string v1, "GAME_HOME_PAGE"

    .line 135
    .line 136
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 137
    .line 138
    .line 139
    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 140
    if-eqz v0, :cond_5

    .line 141
    .line 142
    const/4 v0, 0x3

    .line 143
    const/4 v7, 0x3

    .line 144
    goto :goto_2

    .line 145
    :cond_5
    :goto_1
    const/4 v7, 0x0

    .line 146
    :goto_2
    const-wide/16 v0, 0x0

    .line 147
    .line 148
    :try_start_2
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->t:Ljava/lang/String;

    .line 149
    .line 150
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v2

    .line 154
    if-nez v2, :cond_6

    .line 155
    .line 156
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->t:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 159
    .line 160
    .line 161
    move-result-wide v0
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 162
    goto :goto_3

    .line 163
    :catch_0
    move-exception v2

    .line 164
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    :cond_6
    :goto_3
    move-wide v3, v0

    .line 168
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->p:Lcom/wufan/friend/chat/c;

    .line 169
    .line 170
    iget-object v5, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 171
    .line 172
    invoke-virtual/range {v2 .. v7}, Lcom/wufan/friend/chat/c;->y(JLjava/lang/String;Ljava/util/List;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 173
    .line 174
    .line 175
    goto :goto_4

    .line 176
    :catch_1
    move-exception v0

    .line 177
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    :goto_4
    return-void
.end method

.method r0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Background;
        delay = 0xc8L
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 22
    .line 23
    const-string v2, "BATTLE_ROOM_LIST"

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_2

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    instance-of v1, v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 36
    .line 37
    if-eqz v1, :cond_2

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 40
    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v1

    .line 45
    if-eqz v1, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameSeries()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iput-object v1, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 58
    .line 59
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameSeriesGames()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    if-eqz v1, :cond_1

    .line 70
    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 76
    .line 77
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameSeriesGames()Ljava/util/List;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-lez v1, :cond_1

    .line 86
    .line 87
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->v:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->v:Ljava/util/List;

    .line 93
    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    check-cast v2, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 99
    .line 100
    invoke-virtual {v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameSeriesGames()Ljava/util/List;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 105
    .line 106
    .line 107
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    if-eqz v1, :cond_2

    .line 114
    .line 115
    return-void

    .line 116
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .line 120
    .line 121
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->v:Ljava/util/List;

    .line 122
    .line 123
    if-eqz v2, :cond_4

    .line 124
    .line 125
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    if-lez v2, :cond_4

    .line 130
    .line 131
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->v:Ljava/util/List;

    .line 132
    .line 133
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    .line 139
    .line 140
    move-result v3

    .line 141
    if-eqz v3, :cond_4

    .line 142
    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    check-cast v3, Lcom/join/mgps/dto/GameInfoBean;

    .line 148
    .line 149
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameInfoBean;->getGame_id()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v3

    .line 157
    invoke-virtual {v4, v3}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 158
    .line 159
    .line 160
    move-result-object v3

    .line 161
    if-eqz v3, :cond_3

    .line 162
    .line 163
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_4
    new-instance v2, Lcom/join/mgps/dto/FriendRecommendRequest;

    .line 172
    .line 173
    invoke-direct {v2}, Lcom/join/mgps/dto/FriendRecommendRequest;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 177
    .line 178
    .line 179
    move-result v3

    .line 180
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/FriendRecommendRequest;->setUid(I)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setToken(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    const/4 v0, 0x1

    .line 191
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setPage(I)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->t:Ljava/lang/String;

    .line 195
    .line 196
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setGameId(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->u:Ljava/lang/String;

    .line 200
    .line 201
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setGameSeries(Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->w:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/FriendRecommendRequest;->setLocationPageType(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/FriendRecommendRequest;->setLocalDownloadGameIds(Ljava/util/List;)V

    .line 210
    .line 211
    .line 212
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->s:Lcom/join/mgps/rpc/j;

    .line 213
    .line 214
    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/j;->a(Lcom/join/mgps/dto/FriendRecommendRequest;)Lcom/join/mgps/dto/ResponseModel;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    if-eqz v0, :cond_6

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 221
    .line 222
    .line 223
    move-result v1

    .line 224
    if-nez v1, :cond_5

    .line 225
    .line 226
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    if-eqz v1, :cond_5

    .line 231
    .line 232
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v0

    .line 236
    check-cast v0, Ljava/util/List;

    .line 237
    .line 238
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->updateUi(Ljava/util/List;)V

    .line 239
    .line 240
    .line 241
    goto :goto_1

    .line 242
    :cond_5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 243
    .line 244
    .line 245
    move-result-object v0

    .line 246
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/v2;->toast(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    .line 248
    .line 249
    goto :goto_1

    .line 250
    :catch_0
    move-exception v0

    .line 251
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 252
    .line 253
    .line 254
    :cond_6
    :goto_1
    return-void
.end method

.method s0(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/v2;->T0(Landroid/view/View;)V

    .line 2
    .line 3
    .line 4
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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method t0()V
    .locals 5
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 17
    .line 18
    if-nez v1, :cond_4

    .line 19
    .line 20
    new-instance v1, Landroid/app/Dialog;

    .line 21
    .line 22
    const v2, 0x7f130584

    .line 23
    .line 24
    .line 25
    invoke-direct {v1, v0, v2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 29
    .line 30
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 31
    .line 32
    const/16 v3, 0x1c

    .line 33
    .line 34
    if-lt v2, v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const/4 v2, 0x1

    .line 45
    invoke-static {v1, v2}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    const v2, 0x7f0d05e4

    .line 62
    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const v2, 0x7f0a0a22

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iput-object v2, p0, Lcom/join/mgps/fragment/v2;->C:Landroid/view/View;

    .line 77
    .line 78
    const v2, 0x7f0a02dd

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    check-cast v2, Landroid/widget/ImageView;

    .line 86
    .line 87
    iput-object v2, p0, Lcom/join/mgps/fragment/v2;->D:Landroid/widget/ImageView;

    .line 88
    .line 89
    const v2, 0x7f0a02de

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Landroid/widget/ImageView;

    .line 97
    .line 98
    iput-object v2, p0, Lcom/join/mgps/fragment/v2;->E:Landroid/widget/ImageView;

    .line 99
    .line 100
    const v2, 0x7f0a1a77

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    check-cast v2, Landroid/widget/TextView;

    .line 108
    .line 109
    iput-object v2, p0, Lcom/join/mgps/fragment/v2;->F:Landroid/widget/TextView;

    .line 110
    .line 111
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 112
    .line 113
    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const v2, 0x7f071512

    .line 121
    .line 122
    .line 123
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 124
    .line 125
    .line 126
    move-result v1

    .line 127
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    const v2, 0x7f07144f

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v2, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 139
    .line 140
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 141
    .line 142
    .line 143
    move-result-object v2

    .line 144
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    const/4 v4, -0x1

    .line 149
    if-nez v1, :cond_2

    .line 150
    .line 151
    const/4 v1, -0x1

    .line 152
    :cond_2
    iput v1, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 153
    .line 154
    if-nez v0, :cond_3

    .line 155
    .line 156
    const/4 v0, -0x1

    .line 157
    :cond_3
    iput v0, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 158
    .line 159
    const/16 v0, 0x11

    .line 160
    .line 161
    invoke-virtual {v2, v0}, Landroid/view/Window;->setGravity(I)V

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->C:Landroid/view/View;

    .line 165
    .line 166
    new-instance v1, Lcom/join/mgps/fragment/s2;

    .line 167
    .line 168
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickBattleHallShare:Lcom/papa/sim/statistic/Event;

    .line 183
    .line 184
    new-instance v2, Lcom/join/mgps/dto/ExtBean;

    .line 185
    .line 186
    invoke-direct {v2}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 187
    .line 188
    .line 189
    sget-object v3, Lcom/papa/sim/statistic/EventP$FirstModel;->findTab:Lcom/papa/sim/statistic/EventP$FirstModel;

    .line 190
    .line 191
    invoke-virtual {v3}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 196
    .line 197
    .line 198
    move-result-object v2

    .line 199
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 208
    .line 209
    .line 210
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->D:Landroid/widget/ImageView;

    .line 211
    .line 212
    new-instance v1, Lcom/join/mgps/fragment/t2;

    .line 213
    .line 214
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/t2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->E:Landroid/widget/ImageView;

    .line 221
    .line 222
    new-instance v1, Lcom/join/mgps/fragment/u2;

    .line 223
    .line 224
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/u2;-><init>(Lcom/join/mgps/fragment/v2;)V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    .line 229
    .line 230
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->F:Landroid/widget/TextView;

    .line 231
    .line 232
    invoke-direct {p0}, Lcom/join/mgps/fragment/v2;->i0()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-nez v0, :cond_5

    .line 246
    .line 247
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->A:Landroid/app/Dialog;

    .line 248
    .line 249
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 250
    .line 251
    .line 252
    :cond_5
    return-void
.end method

.method toast(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method updateUi(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_5

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    goto :goto_2

    .line 15
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-eqz v1, :cond_2

    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setState(I)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x1

    .line 36
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/FriendBean;->setRecommend(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/join/mgps/dto/FriendBean;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/mgps/dto/FriendBean;->isRecommend()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_3

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 91
    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/adapter/v0;->o()Ljava/util/List;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->K()V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 105
    .line 106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_5
    :goto_2
    iget-object p1, p0, Lcom/join/mgps/fragment/v2;->r:Lcom/join/mgps/adapter/v0;

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/adapter/v0;->p()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p0}, Lcom/join/mgps/fragment/v2;->F0()V

    .line 120
    .line 121
    .line 122
    return-void
.end method
