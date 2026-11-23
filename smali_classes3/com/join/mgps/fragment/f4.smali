.class public Lcom/join/mgps/fragment/f4;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02ca
.end annotation


# static fields
.field private static final i1:Ljava/lang/String; = "NewArenaMainFragment"

.field private static final l1:I = 0x1010


# instance fields
.field A:Landroid/widget/TextView;

.field B:Landroid/widget/TextView;

.field private C:Lcom/join/mgps/dialog/f1;

.field private final D:Lapp/mgsim/arena/SocketListener$NotifyObserver;

.field private E:Lcom/join/mgps/socket/fight/arena/a;

.field private F:Lcom/papa91/battle/protocol/GameRoom;

.field private G:Lcom/join/mgps/dialog/d1;

.field H:Landroidx/fragment/app/FragmentManager;

.field I:Lcom/join/mgps/activity/arena/b;

.field J:Lcom/join/mgps/fragment/c;

.field K:Lcom/join/mgps/fragment/c;

.field L:Landroid/view/View;

.field M:Landroid/view/View;

.field N:Landroid/view/View;

.field O:Landroid/view/View;

.field P:Landroid/widget/TextView;

.field Q:Landroid/widget/TextView;

.field R:Landroid/widget/TextView;

.field S:Landroid/widget/TextView;

.field T:I

.field private U:Landroidx/fragment/app/FragmentManager;

.field private V:Lcom/join/mgps/dto/ResultResMainBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResultResMainBean<",
            "Lcom/join/mgps/dto/GameListBannerBean;",
            ">;"
        }
    .end annotation
.end field

.field W:I

.field private X:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Dialog;",
            ">;"
        }
    .end annotation
.end field

.field private Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field b1:Z

.field private c:Z

.field d:Lcom/join/mgps/rpc/l;

.field e:Lcom/join/mgps/rpc/l;

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f1:Z

.field g:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field m:Landroid/widget/FrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field n:Lcom/join/mgps/customview/AutoScrollViewPager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/customview/AutoScrollViewPager<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field o:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field p:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private p0:Lcom/join/mgps/adapter/f2;

.field q:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private r:Lcom/join/mgps/socket/fight/arena/b;

.field private s:Landroid/app/Activity;

.field private t:Ljava/lang/String;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/TextView;

.field w:Landroid/widget/TextView;

.field x:Landroid/widget/RelativeLayout;

.field y:Landroid/widget/TextView;

.field z:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->c:Z

    .line 6
    .line 7
    new-instance v1, Lcom/join/mgps/fragment/f4$i;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f4$i;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 10
    .line 11
    .line 12
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->D:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 13
    .line 14
    iput v0, p0, Lcom/join/mgps/fragment/f4;->T:I

    .line 15
    .line 16
    const/16 v1, 0x14

    .line 17
    .line 18
    iput v1, p0, Lcom/join/mgps/fragment/f4;->W:I

    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 26
    .line 27
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->Y:Ljava/util/List;

    .line 33
    .line 34
    new-instance v1, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->Z:Ljava/util/List;

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->b1:Z

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->f1:Z

    .line 44
    .line 45
    return-void
.end method

.method private C0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    check-cast v2, Lcom/join/mgps/dto/BannerBean;

    .line 20
    .line 21
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-object v3, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Lcom/join/mgps/dto/BannerBean;

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    new-instance v4, Lcom/join/mgps/fragment/f4$g;

    .line 38
    .line 39
    invoke-direct {v4, p0, p1}, Lcom/join/mgps/fragment/f4$g;-><init>(Lcom/join/mgps/fragment/f4;I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/g0;->R(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dialog/p0$c;)Landroid/app/Dialog;

    .line 43
    .line 44
    .line 45
    return-void
.end method

.method private D0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->G:Lcom/join/mgps/dialog/d1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dialog/d1;->a()V

    .line 6
    .line 7
    .line 8
    :cond_0
    new-instance v0, Lcom/join/mgps/dialog/d1;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/join/mgps/dialog/d1;-><init>(Landroid/app/Activity;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->G:Lcom/join/mgps/dialog/d1;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "\u52a0\u5165\u5931\u8d25\uff0c\u60a8\u4e0e"

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const-string v2, "\u623f\u95f4\u4e0d\u5728\u540c\u4e00\u6218\u533a\n\u8bf7\u8fdb\u5165\u8be5\u6e38\u620f\u623f\u95f4\u5217\u8868\uff0c\u5e76\u5207\u6362\u81f3\u3010"

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->d(Lcom/papa91/battle/protocol/BattleArea;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string p1, "\u3011\u540e\u518d\u67e5\u627e\u623f\u95f4\u53f7\u8fdb\u5165"

    .line 51
    .line 52
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    invoke-virtual {v0, p1}, Lcom/join/mgps/dialog/d1;->d(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->G:Lcom/join/mgps/dialog/d1;

    .line 63
    .line 64
    invoke-virtual {p1}, Lcom/join/mgps/dialog/d1;->e()V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method private E0()V
    .locals 5

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v2, 0x5

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "\u8bf7\u8f93\u5165\u623f\u95f4\u53f7"

    .line 8
    .line 9
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/fragment/f4$h;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/fragment/f4$h;-><init>(Lcom/join/mgps/fragment/f4;Lcom/join/mgps/customview/input/a;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-nez v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-nez v1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method private G0(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, p1, v2}, Lcom/join/mgps/Util/g0;->z(Landroid/content/Context;Ljava/lang/String;Z)Lcom/join/mgps/dialog/f1;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private I0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "requestCode"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 4
    .line 5
    const-class v2, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, ""

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 23
    .line 24
    .line 25
    move-result-wide v2

    .line 26
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const-string v2, "gameId"

    .line 34
    .line 35
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    .line 37
    .line 38
    const-string v1, "hasPlug"

    .line 39
    .line 40
    iget-boolean v2, p0, Lcom/join/mgps/fragment/f4;->f1:Z

    .line 41
    .line 42
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 43
    .line 44
    .line 45
    const-string v1, "hasRom"

    .line 46
    .line 47
    iget-boolean v2, p0, Lcom/join/mgps/fragment/f4;->b1:Z

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/socket/fight/arena/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/f4;)Lapp/mgsim/arena/SocketListener$NotifyObserver;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->D:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/f4;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f4;->C0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/f4;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f4;->j0(I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/f4;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/f4;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->Y:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/join/mgps/fragment/f4;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic T(Lcom/join/mgps/fragment/f4;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f4;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic U(Lcom/join/mgps/fragment/f4;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic V(Lcom/join/mgps/fragment/f4;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f4;->G0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W(Lcom/join/mgps/fragment/f4;)Lcom/papa91/battle/protocol/GameRoom;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic X(Lcom/join/mgps/fragment/f4;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/f4;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/f4;ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/f4;->t0(ILandroidx/fragment/app/FragmentTransaction;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/dialog/f1;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic a0(Lcom/join/mgps/fragment/f4;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/f4;->Z:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method private b0(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ctx"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method private e0(Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->b1:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->f1:Z

    .line 5
    .line 6
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v1, 0x1

    .line 15
    if-eqz p1, :cond_3

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    const/4 v3, 0x5

    .line 22
    if-ne v2, v3, :cond_3

    .line 23
    .line 24
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f4;->b1:Z

    .line 25
    .line 26
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {v2, p1}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 41
    .line 42
    new-array v3, v0, [Ljava/lang/String;

    .line 43
    .line 44
    invoke-static {v2, p1, v0, v3}, Lcom/join/android/app/common/utils/o;->t(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;Z[Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_1

    .line 49
    .line 50
    iget-object v2, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 51
    .line 52
    invoke-static {v2, p1}, Lcom/join/mgps/Util/UtilsMy;->D0(Landroid/content/Context;Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 53
    .line 54
    .line 55
    move-result p1

    .line 56
    if-eqz p1, :cond_0

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f4;->f1:Z

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->f1:Z

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/fragment/f4;->f1:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->b1:Z

    .line 69
    .line 70
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/fragment/f4;->f1:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/join/mgps/fragment/f4;->b1:Z

    .line 75
    .line 76
    if-eqz p1, :cond_4

    .line 77
    .line 78
    return v1

    .line 79
    :cond_4
    return v0
.end method

.method private j0(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    if-gez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-direct {p0}, Lcom/join/mgps/fragment/f4;->l0()Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/join/mgps/dto/BannerBean;

    .line 15
    .line 16
    invoke-virtual {v1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    new-instance v2, Lcom/join/mgps/fragment/f4$f;

    .line 21
    .line 22
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/fragment/f4$f;-><init>(Lcom/join/mgps/fragment/f4;I)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {p1, v2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->I(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Lcom/facebook/drawee/backends/pipeline/e;

    .line 34
    .line 35
    invoke-virtual {p1, v1}, Lcom/facebook/drawee/backends/pipeline/e;->f0(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->i:Landroid/widget/LinearLayout;

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private l0()Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 2

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11
    .line 12
    .line 13
    return-object v0
.end method

.method private m0(Ljava/util/List;I)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "datas",
            "position"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;I)",
            "Lcom/facebook/drawee/view/SimpleDraweeView;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/facebook/drawee/generic/RoundingParams;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/facebook/drawee/generic/RoundingParams;-><init>()V

    .line 16
    .line 17
    .line 18
    const/high16 v2, 0x41400000    # 12.0f

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/generic/RoundingParams;->t(F)Lcom/facebook/drawee/generic/RoundingParams;

    .line 21
    .line 22
    .line 23
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/join/mgps/dto/BannerBean;

    .line 28
    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    const p2, 0x7f080b0d

    .line 34
    .line 35
    .line 36
    invoke-static {v0, p2, p1, v1}, Lcom/join/android/app/common/utils/l;->f(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method

.method private t0(ILandroidx/fragment/app/FragmentTransaction;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "position",
            "transaction"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->P:Landroid/widget/TextView;

    .line 2
    .line 3
    const-string v1, "#7B95A4"

    .line 4
    .line 5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->Q:Landroid/widget/TextView;

    .line 13
    .line 14
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->R:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->S:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->P:Landroid/widget/TextView;

    .line 40
    .line 41
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->Q:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->R:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->S:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 74
    .line 75
    .line 76
    const/16 v0, 0x8

    .line 77
    .line 78
    const-string v2, "#FFC438"

    .line 79
    .line 80
    const/4 v3, 0x1

    .line 81
    const/4 v4, 0x4

    .line 82
    if-eq p1, v3, :cond_9

    .line 83
    .line 84
    const/4 v5, 0x2

    .line 85
    if-eq p1, v5, :cond_6

    .line 86
    .line 87
    const/4 v5, 0x3

    .line 88
    if-eq p1, v5, :cond_3

    .line 89
    .line 90
    if-eq p1, v4, :cond_0

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->L:Landroid/view/View;

    .line 95
    .line 96
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->M:Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->N:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 107
    .line 108
    .line 109
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->O:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->o:Landroid/view/View;

    .line 115
    .line 116
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    .line 118
    .line 119
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->m:Landroid/widget/FrameLayout;

    .line 120
    .line 121
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 122
    .line 123
    .line 124
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->J:Lcom/join/mgps/fragment/c;

    .line 125
    .line 126
    if-eqz p1, :cond_1

    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 129
    .line 130
    .line 131
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->I:Lcom/join/mgps/activity/arena/b;

    .line 132
    .line 133
    if-eqz p1, :cond_2

    .line 134
    .line 135
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 136
    .line 137
    .line 138
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->S:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 141
    .line 142
    .line 143
    move-result p2

    .line 144
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 145
    .line 146
    .line 147
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->S:Landroid/widget/TextView;

    .line 148
    .line 149
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_0

    .line 157
    .line 158
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->L:Landroid/view/View;

    .line 159
    .line 160
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 161
    .line 162
    .line 163
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->M:Landroid/view/View;

    .line 164
    .line 165
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->N:Landroid/view/View;

    .line 169
    .line 170
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->O:Landroid/view/View;

    .line 174
    .line 175
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->o:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->m:Landroid/widget/FrameLayout;

    .line 184
    .line 185
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 186
    .line 187
    .line 188
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->I:Lcom/join/mgps/activity/arena/b;

    .line 189
    .line 190
    if-eqz p1, :cond_4

    .line 191
    .line 192
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 193
    .line 194
    .line 195
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->K:Lcom/join/mgps/fragment/c;

    .line 196
    .line 197
    if-eqz p1, :cond_5

    .line 198
    .line 199
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 200
    .line 201
    .line 202
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->R:Landroid/widget/TextView;

    .line 203
    .line 204
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 205
    .line 206
    .line 207
    move-result p2

    .line 208
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 209
    .line 210
    .line 211
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->R:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 218
    .line 219
    .line 220
    goto :goto_0

    .line 221
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->L:Landroid/view/View;

    .line 222
    .line 223
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 224
    .line 225
    .line 226
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->M:Landroid/view/View;

    .line 227
    .line 228
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->N:Landroid/view/View;

    .line 232
    .line 233
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 234
    .line 235
    .line 236
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->O:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->m:Landroid/widget/FrameLayout;

    .line 242
    .line 243
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    .line 245
    .line 246
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->o:Landroid/view/View;

    .line 247
    .line 248
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->J:Lcom/join/mgps/fragment/c;

    .line 252
    .line 253
    if-eqz p1, :cond_7

    .line 254
    .line 255
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 256
    .line 257
    .line 258
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->K:Lcom/join/mgps/fragment/c;

    .line 259
    .line 260
    if-eqz p1, :cond_8

    .line 261
    .line 262
    invoke-virtual {p2, p1}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 263
    .line 264
    .line 265
    :cond_8
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->Q:Landroid/widget/TextView;

    .line 266
    .line 267
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 268
    .line 269
    .line 270
    move-result p2

    .line 271
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->Q:Landroid/widget/TextView;

    .line 275
    .line 276
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 281
    .line 282
    .line 283
    goto :goto_0

    .line 284
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->m:Landroid/widget/FrameLayout;

    .line 285
    .line 286
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->L:Landroid/view/View;

    .line 290
    .line 291
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 292
    .line 293
    .line 294
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->M:Landroid/view/View;

    .line 295
    .line 296
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 297
    .line 298
    .line 299
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->N:Landroid/view/View;

    .line 300
    .line 301
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 302
    .line 303
    .line 304
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->O:Landroid/view/View;

    .line 305
    .line 306
    invoke-virtual {p1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->P:Landroid/widget/TextView;

    .line 310
    .line 311
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 312
    .line 313
    .line 314
    move-result p2

    .line 315
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    .line 317
    .line 318
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->P:Landroid/widget/TextView;

    .line 319
    .line 320
    invoke-virtual {p1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 325
    .line 326
    .line 327
    :goto_0
    return-void
.end method

.method private u0(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uri"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :catch_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    return v1
.end method


# virtual methods
.method A0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameInfoBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->Z:Ljava/util/List;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->Z:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/join/mgps/dto/GameInfoBean;

    .line 24
    .line 25
    invoke-direct {p1}, Lcom/join/mgps/dto/GameInfoBean;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v0, "\u609f\u996d\u5168\u660e\u661f"

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setTitle(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 v0, -0x1

    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setRoom_count(I)V

    .line 35
    .line 36
    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v1, "res://"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v1, "/"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const v1, 0x7f08053e

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/GameInfoBean;->setPic_remote_vertical(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->Z:Ljava/util/List;

    .line 77
    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-interface {v0, v1, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->p0:Lcom/join/mgps/adapter/f2;

    .line 83
    .line 84
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->Z:Ljava/util/List;

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/adapter/f2;->e(Ljava/util/List;)V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 90
    .line 91
    invoke-virtual {p1, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setRefreshing(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 97
    .line 98
    .line 99
    :cond_2
    :goto_0
    return-void
.end method

.method B0(Lcom/join/mgps/dto/GameListBannerBean;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->u:Landroid/widget/TextView;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, ""

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getLately_battle()I

    .line 14
    .line 15
    .line 16
    move-result v3

    .line 17
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->v:Landroid/widget/TextView;

    .line 28
    .line 29
    new-instance v1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getArcade_battle()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->w:Landroid/widget/TextView;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getFc_battle()I

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->x:Landroid/widget/RelativeLayout;

    .line 76
    .line 77
    if-nez v0, :cond_0

    .line 78
    .line 79
    return-void

    .line 80
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    if-eqz v0, :cond_2

    .line 87
    .line 88
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getMatch_title()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_2

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->x:Landroid/widget/RelativeLayout;

    .line 99
    .line 100
    const/4 v3, 0x0

    .line 101
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 102
    .line 103
    .line 104
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->y:Landroid/widget/TextView;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getMatch_title()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v4

    .line 114
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->z:Landroid/widget/TextView;

    .line 118
    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getNick_name()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v4

    .line 127
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getJoin_number()I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    const/4 v4, 0x1

    .line 139
    if-ge v0, v4, :cond_1

    .line 140
    .line 141
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->B:Landroid/widget/TextView;

    .line 142
    .line 143
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    .line 145
    .line 146
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->A:Landroid/widget/TextView;

    .line 147
    .line 148
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 149
    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->A:Landroid/widget/TextView;

    .line 153
    .line 154
    new-instance v4, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_match()Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameListBannerBean$GameMatchBean;->getJoin_number()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    .line 179
    .line 180
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->B:Landroid/widget/TextView;

    .line 181
    .line 182
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->A:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_0

    .line 191
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->x:Landroid/widget/RelativeLayout;

    .line 192
    .line 193
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->x:Landroid/widget/RelativeLayout;

    .line 197
    .line 198
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    return-void
.end method

.method F0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 4
    .line 5
    const/4 v2, 0x4

    .line 6
    const/4 v3, 0x0

    .line 7
    const-string v4, "\u8bf7\u8f93\u5165\u623f\u95f4\u5bc6\u7801"

    .line 8
    .line 9
    invoke-direct {v0, v1, v4, v2, v3}, Lcom/join/mgps/customview/input/a;-><init>(Landroid/content/Context;Ljava/lang/String;IZ)V

    .line 10
    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/fragment/f4$j;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/fragment/f4$j;-><init>(Lcom/join/mgps/fragment/f4;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/GameRoom;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    .line 47
    .line 48
    .line 49
    :cond_0
    return-void
.end method

.method H0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method J0()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/f4;->b0(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    return v1

    .line 28
    :cond_1
    const/4 v0, 0x1

    .line 29
    return v0
.end method

.method afterViews()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/l;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->d:Lcom/join/mgps/rpc/l;

    .line 6
    .line 7
    invoke-static {}, Lcom/join/mgps/rpc/impl/k;->n0()Lcom/join/mgps/rpc/impl/l;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->e:Lcom/join/mgps/rpc/l;

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->H:Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->U:Landroidx/fragment/app/FragmentManager;

    .line 24
    .line 25
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 26
    .line 27
    const/16 v1, 0x1c

    .line 28
    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/join/mgps/fragment/f4$m;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f4$m;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catch_0
    move-exception v0

    .line 53
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 54
    .line 55
    .line 56
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->U:Landroidx/fragment/app/FragmentManager;

    .line 57
    .line 58
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    :try_start_1
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    .line 64
    .line 65
    goto :goto_1

    .line 66
    :catch_1
    move-exception v0

    .line 67
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 68
    .line 69
    .line 70
    :goto_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 71
    .line 72
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    const v1, 0x7f0d0780

    .line 77
    .line 78
    .line 79
    const/4 v2, 0x0

    .line 80
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    const v1, 0x7f0a009e

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 92
    .line 93
    const v1, 0x7f0a0de9

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->u:Landroid/widget/TextView;

    .line 103
    .line 104
    const v1, 0x7f0a0a9d

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->v:Landroid/widget/TextView;

    .line 114
    .line 115
    const v1, 0x7f0a0602

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->w:Landroid/widget/TextView;

    .line 125
    .line 126
    const v1, 0x7f0a05a9

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    check-cast v1, Landroid/widget/TextView;

    .line 134
    .line 135
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->y:Landroid/widget/TextView;

    .line 136
    .line 137
    const v1, 0x7f0a05aa

    .line 138
    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    check-cast v1, Landroid/widget/TextView;

    .line 145
    .line 146
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->z:Landroid/widget/TextView;

    .line 147
    .line 148
    const v1, 0x7f0a05ac

    .line 149
    .line 150
    .line 151
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    check-cast v1, Landroid/widget/TextView;

    .line 156
    .line 157
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->A:Landroid/widget/TextView;

    .line 158
    .line 159
    const v1, 0x7f0a05ab

    .line 160
    .line 161
    .line 162
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Landroid/widget/TextView;

    .line 167
    .line 168
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->B:Landroid/widget/TextView;

    .line 169
    .line 170
    const v1, 0x7f0a05ad

    .line 171
    .line 172
    .line 173
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->x:Landroid/widget/RelativeLayout;

    .line 180
    .line 181
    const v1, 0x7f0a0a9f

    .line 182
    .line 183
    .line 184
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->L:Landroid/view/View;

    .line 189
    .line 190
    const v1, 0x7f0a1121

    .line 191
    .line 192
    .line 193
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->M:Landroid/view/View;

    .line 198
    .line 199
    const v1, 0x7f0a076d

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 203
    .line 204
    .line 205
    move-result-object v1

    .line 206
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->N:Landroid/view/View;

    .line 207
    .line 208
    const v1, 0x7f0a0600

    .line 209
    .line 210
    .line 211
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->O:Landroid/view/View;

    .line 216
    .line 217
    const v1, 0x7f0a189d

    .line 218
    .line 219
    .line 220
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    check-cast v1, Landroid/widget/TextView;

    .line 225
    .line 226
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->P:Landroid/widget/TextView;

    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    const/4 v2, 0x1

    .line 233
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 234
    .line 235
    .line 236
    const v1, 0x7f0a18ac

    .line 237
    .line 238
    .line 239
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Landroid/widget/TextView;

    .line 244
    .line 245
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->Q:Landroid/widget/TextView;

    .line 246
    .line 247
    const v1, 0x7f0a1886

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 251
    .line 252
    .line 253
    move-result-object v1

    .line 254
    check-cast v1, Landroid/widget/TextView;

    .line 255
    .line 256
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->R:Landroid/widget/TextView;

    .line 257
    .line 258
    const v1, 0x7f0a187d

    .line 259
    .line 260
    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Landroid/widget/TextView;

    .line 266
    .line 267
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->S:Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 270
    .line 271
    .line 272
    move-result-object v1

    .line 273
    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 274
    .line 275
    .line 276
    move-result-object v1

    .line 277
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 278
    .line 279
    .line 280
    move-result-object v1

    .line 281
    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 286
    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    const/high16 v5, 0x41200000    # 10.0f

    .line 292
    .line 293
    invoke-static {v4, v5}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 294
    .line 295
    .line 296
    move-result v4

    .line 297
    sub-int v4, v1, v4

    .line 298
    .line 299
    mul-int/lit8 v1, v1, 0x70

    .line 300
    .line 301
    div-int/lit16 v1, v1, 0x15e

    .line 302
    .line 303
    invoke-direct {v3, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 307
    .line 308
    .line 309
    move-result-object v1

    .line 310
    const/high16 v4, 0x40a00000    # 5.0f

    .line 311
    .line 312
    invoke-static {v1, v4}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 313
    .line 314
    .line 315
    move-result v1

    .line 316
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 317
    .line 318
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 319
    .line 320
    .line 321
    move-result-object v1

    .line 322
    invoke-static {v1, v4}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 323
    .line 324
    .line 325
    move-result v1

    .line 326
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 327
    .line 328
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 329
    .line 330
    .line 331
    move-result-object v1

    .line 332
    invoke-static {v1, v4}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 333
    .line 334
    .line 335
    move-result v1

    .line 336
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 337
    .line 338
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->x:Landroid/widget/RelativeLayout;

    .line 339
    .line 340
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 341
    .line 342
    .line 343
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->x:Landroid/widget/RelativeLayout;

    .line 344
    .line 345
    new-instance v3, Lcom/join/mgps/fragment/f4$n;

    .line 346
    .line 347
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/f4$n;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 351
    .line 352
    .line 353
    const v1, 0x7f0a0a9e

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    new-instance v3, Lcom/join/mgps/fragment/f4$o;

    .line 361
    .line 362
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/f4$o;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 366
    .line 367
    .line 368
    const v1, 0x7f0a0f09

    .line 369
    .line 370
    .line 371
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 372
    .line 373
    .line 374
    move-result-object v1

    .line 375
    new-instance v3, Lcom/join/mgps/fragment/f4$p;

    .line 376
    .line 377
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/f4$p;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 381
    .line 382
    .line 383
    const v1, 0x7f0a0f06

    .line 384
    .line 385
    .line 386
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 387
    .line 388
    .line 389
    move-result-object v1

    .line 390
    new-instance v3, Lcom/join/mgps/fragment/f4$a;

    .line 391
    .line 392
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/f4$a;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    .line 397
    .line 398
    const v1, 0x7f0a0ef2

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v1

    .line 405
    new-instance v3, Lcom/join/mgps/fragment/f4$b;

    .line 406
    .line 407
    invoke-direct {v3, p0}, Lcom/join/mgps/fragment/f4$b;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 411
    .line 412
    .line 413
    const v1, 0x7f0a00a4

    .line 414
    .line 415
    .line 416
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    check-cast v1, Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 421
    .line 422
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->n:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 423
    .line 424
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->l:Landroid/widget/LinearLayout;

    .line 425
    .line 426
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 427
    .line 428
    .line 429
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->l:Landroid/widget/LinearLayout;

    .line 430
    .line 431
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 432
    .line 433
    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 435
    .line 436
    .line 437
    move-result-object v0

    .line 438
    invoke-static {v0}, Lcom/join/android/app/common/utils/q;->n(Landroid/content/Context;)Lcom/join/android/app/common/utils/q;

    .line 439
    .line 440
    .line 441
    move-result-object v0

    .line 442
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v0, v1}, Lcom/join/android/app/common/utils/q;->j(Landroid/app/Activity;)F

    .line 447
    .line 448
    .line 449
    move-result v0

    .line 450
    float-to-double v0, v0

    .line 451
    const-wide v3, 0x3ffe666666666666L    # 1.9

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    cmpl-double v5, v0, v3

    .line 457
    .line 458
    if-ltz v5, :cond_1

    .line 459
    .line 460
    const/4 v0, 0x5

    .line 461
    goto :goto_2

    .line 462
    :cond_1
    const/4 v0, 0x4

    .line 463
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 464
    .line 465
    new-instance v3, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 466
    .line 467
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 468
    .line 469
    .line 470
    move-result-object v4

    .line 471
    invoke-direct {v3, v4, v0}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 472
    .line 473
    .line 474
    invoke-virtual {v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 475
    .line 476
    .line 477
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 478
    .line 479
    invoke-virtual {v0, v2}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 480
    .line 481
    .line 482
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 483
    .line 484
    const/4 v1, 0x0

    .line 485
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 486
    .line 487
    .line 488
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 489
    .line 490
    new-instance v1, Lcom/join/mgps/fragment/f4$c;

    .line 491
    .line 492
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f4$c;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 496
    .line 497
    .line 498
    new-instance v0, Lcom/join/mgps/adapter/f2;

    .line 499
    .line 500
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 501
    .line 502
    .line 503
    move-result-object v1

    .line 504
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/f2;-><init>(Landroid/content/Context;Z)V

    .line 505
    .line 506
    .line 507
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->p0:Lcom/join/mgps/adapter/f2;

    .line 508
    .line 509
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 510
    .line 511
    invoke-virtual {v1, v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 512
    .line 513
    .line 514
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->p0:Lcom/join/mgps/adapter/f2;

    .line 515
    .line 516
    new-instance v1, Lcom/join/mgps/fragment/f4$d;

    .line 517
    .line 518
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f4$d;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/f2;->f(Lcom/join/mgps/adapter/f2$e;)V

    .line 522
    .line 523
    .line 524
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->o0()V

    .line 525
    .line 526
    .line 527
    return-void
.end method

.method public c0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->Y:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-lez v0, :cond_1

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->Y:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-ge v0, v1, :cond_1

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->Y:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    if-nez v1, :cond_0

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->Y:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Landroid/app/Dialog;

    .line 36
    .line 37
    invoke-virtual {v1}, Landroid/app/Dialog;->dismiss()V

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    return-void
.end method

.method d0()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const-string v0, "NewArenaMainFragment"

    .line 10
    .line 11
    const-string v1, "--- removeObserver---"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->D:Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->A(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method f0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/join/android/app/common/utils/m;->l()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->showLoding()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->x0()V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->showLodingFailed()V

    .line 23
    .line 24
    .line 25
    :goto_0
    return-void
.end method

.method g0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method h0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameRoom",
            "pwd"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getRoomId()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getElite()Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    const-string v2, "register_type_NewArenaMainFragment"

    .line 14
    .line 15
    invoke-static {v2, v1, p2, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->joinRoom(Ljava/lang/String;ILjava/lang/String;Z)Lapp/mgsim/arena/ArenaRequest;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method i0(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomNum"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v1, "register_type_NewArenaMainFragment"

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    invoke-static {v1, p1}, Lapp/mgsim/arena/ArenaRequestFactory;->searchRoomById(Ljava/lang/String;I)Lapp/mgsim/arena/ArenaRequest;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method k0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->V:Lcom/join/mgps/dto/ResultResMainBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->x0()V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->f0()V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-void
.end method

.method public n0()F
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "dimen"

    .line 6
    .line 7
    const-string v2, "android"

    .line 8
    .line 9
    const-string v3, "status_bar_height"

    .line 10
    .line 11
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-float v0, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    return v0
.end method

.method o0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
        delay = 0x1f4L
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
    new-instance v1, Lcom/join/mgps/dto/CollectionCommentRequest;

    .line 14
    .line 15
    invoke-direct {v1}, Lcom/join/mgps/dto/CollectionCommentRequest;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, ""

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/CollectionCommentRequest;->setCollection_id(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/CollectionCommentRequest;->setUid(I)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getDefalutRequestBean(Ljava/lang/Object;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v1}, Lcom/join/mgps/rpc/impl/d;->N1()Lb7/d;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-interface {v1, v0}, Lb7/d;->K1(Lcom/join/mgps/dto/CommonRequestBean;)Lretrofit2/Call;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/join/mgps/fragment/f4$e;

    .line 55
    .line 56
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f4$e;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 57
    .line 58
    .line 59
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
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
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    const/16 p3, 0x1010

    .line 5
    .line 6
    if-ne p1, p3, :cond_2

    .line 7
    .line 8
    const/4 p1, -0x1

    .line 9
    if-ne p2, p1, :cond_2

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 20
    .line 21
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/f4;->F0(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_1

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 34
    .line 35
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/f4;->F0(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    const-string p1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    .line 40
    .line 41
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f4;->G0(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 45
    .line 46
    const-string p2, ""

    .line 47
    .line 48
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/f4;->h0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    check-cast p1, Landroid/app/Activity;

    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/socket/fight/arena/b;

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/fragment/f4$k;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f4$k;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 13
    .line 14
    .line 15
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/socket/fight/arena/b;-><init>(Landroid/content/Context;Lcom/join/mgps/socket/fight/arena/b$b;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->bindService()V

    .line 21
    .line 22
    .line 23
    new-instance p1, Lcom/join/mgps/socket/fight/arena/a;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 26
    .line 27
    new-instance v1, Lcom/join/mgps/fragment/f4$l;

    .line 28
    .line 29
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/f4$l;-><init>(Lcom/join/mgps/fragment/f4;)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/socket/fight/arena/a;-><init>(Landroid/app/Activity;Lcom/join/mgps/socket/fight/arena/a$y;)V

    .line 33
    .line 34
    .line 35
    iput-object p1, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 36
    .line 37
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->c:Z

    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NewArenaMainFragment"

    .line 5
    .line 6
    const-string v1, "--onDestroy--"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 20
    .line 21
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    return-void

    .line 26
    :cond_1
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->g()V

    .line 35
    .line 36
    .line 37
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->stopService()V

    .line 40
    .line 41
    .line 42
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 43
    .line 44
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    const-string v0, "NewArenaMainFragment"

    .line 2
    .line 3
    const-string v1, "--onDestroyView--"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/join/mgps/fragment/f4;->c:Z

    .line 10
    .line 11
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 2
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
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    const-string v1, "tbl:"

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->c0()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NewArenaMainFragment"

    .line 5
    .line 6
    const-string v1, "--onPause--"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->g0()V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 2
    .line 3
    .line 4
    const-string v0, "NewArenaMainFragment"

    .line 5
    .line 6
    const-string v1, "--onResume--"

    .line 7
    .line 8
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/join/mgps/fragment/f4;->T:I

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->k0()V

    .line 19
    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->n:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/AutoScrollViewPager;->n()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method p0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/fragment/f4;->c:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->V:Lcom/join/mgps/dto/ResultResMainBean;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->showLodingFailed()V

    .line 11
    .line 12
    .line 13
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->s0()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method q0(Lapp/mgsim/arena/ArenaResponse;)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "response"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget v0, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 17
    .line 18
    const/4 v1, 0x7

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x5

    .line 21
    const-string v4, "\u91cd\u8bd5"

    .line 22
    .line 23
    const-string v5, "\u53d6\u6d88"

    .line 24
    .line 25
    const/16 v6, 0x100

    .line 26
    .line 27
    const/4 v7, 0x6

    .line 28
    const/4 v8, 0x4

    .line 29
    const/4 v9, 0x3

    .line 30
    const/4 v10, 0x2

    .line 31
    const/4 v11, 0x1

    .line 32
    const/4 v12, 0x0

    .line 33
    const-string v13, "dialog_error_hint"

    .line 34
    .line 35
    if-eq v0, v1, :cond_7

    .line 36
    .line 37
    const/16 v1, 0x8

    .line 38
    .line 39
    if-eq v0, v1, :cond_6

    .line 40
    .line 41
    const/16 v1, 0x9

    .line 42
    .line 43
    const-string v2, "\u786e\u5b9a"

    .line 44
    .line 45
    const/16 v3, 0x101

    .line 46
    .line 47
    if-eq v0, v1, :cond_5

    .line 48
    .line 49
    const/16 v1, 0xd

    .line 50
    .line 51
    if-eq v0, v1, :cond_4

    .line 52
    .line 53
    const/16 v1, 0x3e9

    .line 54
    .line 55
    if-eq v0, v1, :cond_3

    .line 56
    .line 57
    const/16 v1, 0x10

    .line 58
    .line 59
    if-eq v0, v1, :cond_2

    .line 60
    .line 61
    const/16 v1, 0x11

    .line 62
    .line 63
    if-eq v0, v1, :cond_1

    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->g(Lapp/mgsim/arena/ArenaResponse;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    goto/16 :goto_0

    .line 79
    .line 80
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 81
    .line 82
    new-array v1, v8, [Ljava/lang/Object;

    .line 83
    .line 84
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    aput-object v2, v1, v12

    .line 89
    .line 90
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 91
    .line 92
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    aput-object p1, v1, v11

    .line 97
    .line 98
    const-string p1, "\u8be5\u623f\u95f4\u4e3a\u6bd4\u8d5b\u4e13\u7528\u623f\u95f4,\u975e\u53c2\u8d5b\u9009\u624b\u65e0\u6cd5\u52a0\u5165"

    .line 99
    .line 100
    aput-object p1, v1, v10

    .line 101
    .line 102
    const-string p1, "\u6211\u77e5\u9053\u4e86"

    .line 103
    .line 104
    aput-object p1, v1, v9

    .line 105
    .line 106
    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 112
    .line 113
    new-array v1, v8, [Ljava/lang/Object;

    .line 114
    .line 115
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    aput-object v3, v1, v12

    .line 120
    .line 121
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 122
    .line 123
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    aput-object p1, v1, v11

    .line 128
    .line 129
    const-string p1, "\u65e0\u6cd5\u52a0\u5165\uff0c\u4f60\u88ab\u7981\u6b62\u52a0\u5165\u8be5\u623f\u95f4"

    .line 130
    .line 131
    aput-object p1, v1, v10

    .line 132
    .line 133
    aput-object v2, v1, v9

    .line 134
    .line 135
    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    goto/16 :goto_0

    .line 139
    .line 140
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 141
    .line 142
    new-array v1, v8, [Ljava/lang/Object;

    .line 143
    .line 144
    const/16 v3, 0x102

    .line 145
    .line 146
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 147
    .line 148
    .line 149
    move-result-object v3

    .line 150
    aput-object v3, v1, v12

    .line 151
    .line 152
    iget v3, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 153
    .line 154
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 155
    .line 156
    .line 157
    move-result-object v3

    .line 158
    aput-object v3, v1, v11

    .line 159
    .line 160
    iget-object p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 161
    .line 162
    aput-object p1, v1, v10

    .line 163
    .line 164
    aput-object v2, v1, v9

    .line 165
    .line 166
    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    .line 168
    .line 169
    goto/16 :goto_0

    .line 170
    .line 171
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 172
    .line 173
    new-array v1, v8, [Ljava/lang/Object;

    .line 174
    .line 175
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 176
    .line 177
    .line 178
    move-result-object v3

    .line 179
    aput-object v3, v1, v12

    .line 180
    .line 181
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 182
    .line 183
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    aput-object p1, v1, v11

    .line 188
    .line 189
    const-string p1, "\u94dc\u677f\u4e0d\u8db3\uff0c\u65e0\u6cd5\u52a0\u5165\u623f\u95f4"

    .line 190
    .line 191
    aput-object p1, v1, v10

    .line 192
    .line 193
    aput-object v2, v1, v9

    .line 194
    .line 195
    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    .line 197
    .line 198
    goto :goto_0

    .line 199
    :cond_5
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 200
    .line 201
    new-array v1, v8, [Ljava/lang/Object;

    .line 202
    .line 203
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v3

    .line 207
    aput-object v3, v1, v12

    .line 208
    .line 209
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 210
    .line 211
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 212
    .line 213
    .line 214
    move-result-object p1

    .line 215
    aput-object p1, v1, v11

    .line 216
    .line 217
    const-string p1, "\u623f\u95f4\u5df2\u6ee1\uff0c\u65e0\u6cd5\u52a0\u5165!"

    .line 218
    .line 219
    aput-object p1, v1, v10

    .line 220
    .line 221
    aput-object v2, v1, v9

    .line 222
    .line 223
    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 224
    .line 225
    .line 226
    goto :goto_0

    .line 227
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 228
    .line 229
    new-array v1, v7, [Ljava/lang/Object;

    .line 230
    .line 231
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    .line 233
    .line 234
    move-result-object v6

    .line 235
    aput-object v6, v1, v12

    .line 236
    .line 237
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 238
    .line 239
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    aput-object p1, v1, v11

    .line 244
    .line 245
    const-string p1, "\u623f\u95f4\u53f7\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 246
    .line 247
    aput-object p1, v1, v10

    .line 248
    .line 249
    aput-object v5, v1, v9

    .line 250
    .line 251
    aput-object v4, v1, v8

    .line 252
    .line 253
    aput-object v2, v1, v3

    .line 254
    .line 255
    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    .line 257
    .line 258
    goto :goto_0

    .line 259
    :cond_7
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->E:Lcom/join/mgps/socket/fight/arena/a;

    .line 260
    .line 261
    new-array v1, v7, [Ljava/lang/Object;

    .line 262
    .line 263
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 264
    .line 265
    .line 266
    move-result-object v6

    .line 267
    aput-object v6, v1, v12

    .line 268
    .line 269
    iget p1, p1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 270
    .line 271
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 272
    .line 273
    .line 274
    move-result-object p1

    .line 275
    aput-object p1, v1, v11

    .line 276
    .line 277
    const-string p1, "\u5bc6\u7801\u8f93\u5165\u9519\u8bef\uff0c\u8bf7\u91cd\u8bd5"

    .line 278
    .line 279
    aput-object p1, v1, v10

    .line 280
    .line 281
    aput-object v5, v1, v9

    .line 282
    .line 283
    aput-object v4, v1, v8

    .line 284
    .line 285
    aput-object v2, v1, v3

    .line 286
    .line 287
    invoke-virtual {v0, v13, v1}, Lcom/join/mgps/socket/fight/arena/a;->D(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    .line 289
    .line 290
    :goto_0
    return-void
.end method

.method r0(Lcom/papa91/battle/protocol/GameRoom;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->C:Lcom/join/mgps/dialog/f1;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iput-object p1, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getAllowPeripheralJoin()Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    const-string v0, "\u7981\u6b62\u5916\u8bbe\u7528\u6237\u52a0\u5165!"

    .line 39
    .line 40
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    sget-object v1, Lcom/papa91/battle/protocol/BattleArea;->ALL:Lcom/papa91/battle/protocol/BattleArea;

    .line 59
    .line 60
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eq v0, v1, :cond_2

    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->F:Lcom/papa91/battle/protocol/GameRoom;

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/GameRoom;->getBattleArea()Lcom/papa91/battle/protocol/BattleArea;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 77
    .line 78
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->n()Lcom/papa91/battle/protocol/BattleArea;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/BattleArea;->getNumber()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-eq v0, v1, :cond_2

    .line 91
    .line 92
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f4;->D0(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    .line 98
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    .line 100
    .line 101
    const-string v1, ""

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getGameId()J

    .line 107
    .line 108
    .line 109
    move-result-wide v2

    .line 110
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/f4;->e0(Ljava/lang/String;)Z

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    if-nez v0, :cond_3

    .line 122
    .line 123
    const/16 p1, 0x1010

    .line 124
    .line 125
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/f4;->I0(I)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/GameRoom;->getHasJoinPassword()Z

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    if-eqz v0, :cond_4

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/f4;->F0(Lcom/papa91/battle/protocol/GameRoom;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/fragment/f4;->h0(Lcom/papa91/battle/protocol/GameRoom;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    :goto_0
    return-void
.end method

.method relodingimag()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const-string v0, "NewArenaMain"

    .line 2
    .line 3
    const-string v1, "relodingimag"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->k0()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method s0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v1, 0x8

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->h:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget v0, p0, Lcom/join/mgps/fragment/f4;->T:I

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->o:Landroid/view/View;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->g:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->h:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v1, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->o:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->h:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->g:Landroid/widget/LinearLayout;

    .line 10
    .line 11
    const/16 v2, 0x8

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->o:Landroid/view/View;

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 26
    .line 27
    if-eqz v0, :cond_3

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setRefreshing(Z)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->j:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 35
    .line 36
    .line 37
    :cond_3
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
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
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
    :cond_0
    return-void
.end method

.method v0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->p:Landroid/view/View;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v3, Lcom/join/mgps/rpc/h;->x:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v3, "/lobby_active/index/"

    .line 27
    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->goShareWebActivity(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    return-void
.end method

.method public w0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->V:Lcom/join/mgps/dto/ResultResMainBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->V:Lcom/join/mgps/dto/ResultResMainBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean;->getBanner_list()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f4;->z0(Ljava/util/List;)V

    .line 24
    .line 25
    .line 26
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    return-void

    .line 31
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->k0()V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method x0()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->q:Lcom/join/mgps/Util/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->q:Lcom/join/mgps/Util/b;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/f4;->e:Lcom/join/mgps/rpc/l;

    .line 22
    .line 23
    invoke-interface {v2, v1, v0}, Lcom/join/mgps/rpc/l;->a0(ILjava/lang/String;)Lcom/join/mgps/dto/ResultArenaBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getError()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    if-eqz v1, :cond_1

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 46
    .line 47
    invoke-virtual {v1}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabled()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    new-instance v1, Lapp/mgsim/arena/ArenaResponse;

    .line 54
    .line 55
    invoke-direct {v1}, Lapp/mgsim/arena/ArenaResponse;-><init>()V

    .line 56
    .line 57
    .line 58
    const/16 v2, 0x3e9

    .line 59
    .line 60
    iput v2, v1, Lapp/mgsim/arena/ArenaResponse;->errorType:I

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 67
    .line 68
    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getDisabledMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iput-object v0, v1, Lapp/mgsim/arena/ArenaResponse;->errorInfo:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/f4;->q0(Lapp/mgsim/arena/ArenaResponse;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->showLodingFailed()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultArenaBean;->getData()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lapp/mgsim/arena/ArenaLobbyServer;

    .line 86
    .line 87
    invoke-virtual {v0}, Lapp/mgsim/arena/ArenaLobbyServer;->getStartGameCopper()I

    .line 88
    .line 89
    .line 90
    move-result v0

    .line 91
    iput v0, p0, Lcom/join/mgps/fragment/f4;->W:I

    .line 92
    .line 93
    if-nez v0, :cond_1

    .line 94
    .line 95
    const/16 v0, 0x14

    .line 96
    .line 97
    iput v0, p0, Lcom/join/mgps/fragment/f4;->W:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v0

    .line 101
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->d:Lcom/join/mgps/rpc/l;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/l;->L(Ljava/lang/String;)Lcom/join/mgps/dto/ResultResMainBean;

    .line 119
    .line 120
    .line 121
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 122
    goto :goto_1

    .line 123
    :catch_1
    move-exception v0

    .line 124
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->p0()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 128
    .line 129
    .line 130
    const/4 v0, 0x0

    .line 131
    :goto_1
    iget-boolean v1, p0, Lcom/join/mgps/fragment/f4;->c:Z

    .line 132
    .line 133
    if-nez v1, :cond_3

    .line 134
    .line 135
    if-eqz v0, :cond_3

    .line 136
    .line 137
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    if-eqz v1, :cond_3

    .line 142
    .line 143
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getError()I

    .line 144
    .line 145
    .line 146
    move-result v1

    .line 147
    if-lez v1, :cond_2

    .line 148
    .line 149
    goto :goto_2

    .line 150
    :cond_2
    iput-object v0, p0, Lcom/join/mgps/fragment/f4;->V:Lcom/join/mgps/dto/ResultResMainBean;

    .line 151
    .line 152
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    .line 157
    .line 158
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean;->getBanner_list()Ljava/util/List;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f4;->z0(Ljava/util/List;)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->V:Lcom/join/mgps/dto/ResultResMainBean;

    .line 166
    .line 167
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    .line 172
    .line 173
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f4;->B0(Lcom/join/mgps/dto/GameListBannerBean;)V

    .line 174
    .line 175
    .line 176
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->V:Lcom/join/mgps/dto/ResultResMainBean;

    .line 177
    .line 178
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultResMainBean;->getData()Ljava/lang/Object;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    check-cast v0, Lcom/join/mgps/dto/GameListBannerBean;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameListBannerBean;->getGame_list()Ljava/util/List;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f4;->A0(Ljava/util/List;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->s0()V

    .line 192
    .line 193
    .line 194
    :cond_3
    :goto_2
    return-void
.end method

.method y0()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->s:Landroid/app/Activity;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f4;->showToast(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->J0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/f4;->H0()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4;->r:Lcom/join/mgps/socket/fight/arena/b;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    const-string v0, "\u6b63\u5728\u8fde\u63a5\u670d\u52a1\u5668\uff0c\u8bf7\u7a0d\u540e..."

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/f4;->showToast(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_2
    invoke-direct {p0}, Lcom/join/mgps/fragment/f4;->E0()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method z0(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p1, :cond_5

    .line 4
    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 13
    .line 14
    if-nez v1, :cond_1

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 22
    .line 23
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->n:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 34
    .line 35
    if-nez p1, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->Y:Ljava/util/List;

    .line 42
    .line 43
    if-nez p1, :cond_3

    .line 44
    .line 45
    return-void

    .line 46
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->i:Landroid/widget/LinearLayout;

    .line 50
    .line 51
    if-eqz p1, :cond_4

    .line 52
    .line 53
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 54
    .line 55
    .line 56
    :cond_4
    return-void

    .line 57
    :cond_5
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->X:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-gez p1, :cond_7

    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/fragment/f4;->n:Lcom/join/mgps/customview/AutoScrollViewPager;

    .line 66
    .line 67
    if-nez p1, :cond_6

    .line 68
    .line 69
    return-void

    .line 70
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    :cond_7
    return-void
.end method
