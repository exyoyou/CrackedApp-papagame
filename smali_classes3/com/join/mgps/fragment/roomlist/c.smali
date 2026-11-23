.class public Lcom/join/mgps/fragment/roomlist/c;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/fragment/roomlist/c$n;,
        Lcom/join/mgps/fragment/roomlist/c$m;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02e3
.end annotation


# static fields
.field private static final N:I = 0x3e8

.field private static O:Ljava/lang/reflect/Field; = null

.field private static P:Ljava/lang/reflect/Method; = null

.field private static final Q:I = 0x3f4

.field private static final R:I = 0x3f5

.field public static final S:I = 0x3f6

.field public static final T:I = 0x3f7

.field private static final U:Ljava/lang/String; = "StandardEliteRoomFragment"


# instance fields
.field A:Ljava/lang/String;

.field private B:I

.field public C:I

.field private D:Ljava/lang/String;

.field private E:Lcom/join/mgps/fragment/roomlist/c$m;

.field private F:Landroid/app/Dialog;

.field private final G:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private final I:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private final J:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private K:Lcom/join/mgps/fragment/roomlist/c$n;

.field L:Z

.field M:Z

.field c:Lcom/join/mgps/Util/b;
    .annotation build Lorg/androidannotations/annotations/Bean;
    .end annotation
.end field

.field private d:Z

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation
.end field

.field h:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

.field private l:Lcom/join/mgps/adapter/g2;

.field private m:Landroidx/recyclerview/widget/GridLayoutManager;

.field n:F

.field o:Z

.field p:J

.field q:Landroid/os/Handler;

.field r:Ljava/lang/Runnable;

.field private s:Lcom/join/mgps/dialog/j;

.field t:J

.field u:J

.field v:Lcom/join/mgps/dialog/f;

.field private w:Lcom/papa91/battle/protocol/SimpleRoom;

.field x:Lcom/join/mgps/customview/h0$e;

.field y:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;"
        }
    .end annotation
.end field

.field z:Lapp/mgsim/arena/AreaInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    :try_start_0
    const-class v0, Landroid/widget/AbsListView;

    .line 2
    .line 3
    const-string v1, "mFlingRunnable"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/join/mgps/fragment/roomlist/c;->O:Ljava/lang/reflect/Field;

    .line 10
    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    .line 13
    .line 14
    .line 15
    sget-object v0, Lcom/join/mgps/fragment/roomlist/c;->O:Ljava/lang/reflect/Field;

    .line 16
    .line 17
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v2, "endFling"

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    new-array v3, v3, [Ljava/lang/Class;

    .line 25
    .line 26
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lcom/join/mgps/fragment/roomlist/c;->P:Ljava/lang/reflect/Method;

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    const/4 v0, 0x0

    .line 37
    sput-object v0, Lcom/join/mgps/fragment/roomlist/c;->P:Ljava/lang/reflect/Method;

    .line 38
    .line 39
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 17
    .line 18
    new-instance v1, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v1}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->g:Ljava/util/List;

    .line 39
    .line 40
    const/4 v1, 0x0

    .line 41
    iput v1, p0, Lcom/join/mgps/fragment/roomlist/c;->n:F

    .line 42
    .line 43
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->o:Z

    .line 44
    .line 45
    const-wide/16 v1, 0x3e8

    .line 46
    .line 47
    iput-wide v1, p0, Lcom/join/mgps/fragment/roomlist/c;->p:J

    .line 48
    .line 49
    new-instance v1, Landroid/os/Handler;

    .line 50
    .line 51
    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->q:Landroid/os/Handler;

    .line 55
    .line 56
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$d;

    .line 57
    .line 58
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$d;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 59
    .line 60
    .line 61
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->r:Ljava/lang/Runnable;

    .line 62
    .line 63
    const-wide/16 v1, 0x0

    .line 64
    .line 65
    iput-wide v1, p0, Lcom/join/mgps/fragment/roomlist/c;->t:J

    .line 66
    .line 67
    iput-wide v1, p0, Lcom/join/mgps/fragment/roomlist/c;->u:J

    .line 68
    .line 69
    const/4 v1, 0x3

    .line 70
    iput v1, p0, Lcom/join/mgps/fragment/roomlist/c;->B:I

    .line 71
    .line 72
    const/4 v1, 0x1

    .line 73
    iput v1, p0, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 74
    .line 75
    const-string v1, ""

    .line 76
    .line 77
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 78
    .line 79
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$k;

    .line 80
    .line 81
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$k;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->E:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 85
    .line 86
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$l;

    .line 87
    .line 88
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$l;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 89
    .line 90
    .line 91
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->G:Ljava/util/Comparator;

    .line 92
    .line 93
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$a;

    .line 94
    .line 95
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$a;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 96
    .line 97
    .line 98
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->H:Ljava/util/Comparator;

    .line 99
    .line 100
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$b;

    .line 101
    .line 102
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$b;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 103
    .line 104
    .line 105
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->I:Ljava/util/Comparator;

    .line 106
    .line 107
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$c;

    .line 108
    .line 109
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$c;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 110
    .line 111
    .line 112
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->J:Ljava/util/Comparator;

    .line 113
    .line 114
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->L:Z

    .line 115
    .line 116
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->M:Z

    .line 117
    .line 118
    return-void
.end method

.method private A0()V
    .locals 1

    .line 1
    const/4 v0, 0x3

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/roomlist/c;->B:I

    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 6
    .line 7
    const-string v0, ""

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method private H0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->n0()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->F:Landroid/app/Dialog;

    .line 17
    .line 18
    const-string v1, "\u6b63\u5728\u5237\u65b0\u6570\u636e\uff0c\u8bf7\u7a0d\u7b49..."

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->F:Landroid/app/Dialog;

    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->F:Landroid/app/Dialog;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->F:Landroid/app/Dialog;

    .line 35
    .line 36
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method private K0()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget v1, p0, Lcom/join/mgps/fragment/roomlist/c;->B:I

    .line 5
    .line 6
    const/4 v2, 0x3

    .line 7
    if-eq v1, v2, :cond_3

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    if-eq v1, v2, :cond_2

    .line 11
    .line 12
    const/4 v2, 0x5

    .line 13
    if-eq v1, v2, :cond_1

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->J:Ljava/util/Comparator;

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->I:Ljava/util/Comparator;

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 36
    .line 37
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->H:Ljava/util/Comparator;

    .line 38
    .line 39
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->G:Ljava/util/Comparator;

    .line 46
    .line 47
    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 48
    .line 49
    .line 50
    :goto_0
    monitor-exit v0

    .line 51
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw v1
.end method

.method static synthetic M(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/roomlist/c;->g:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic O(Lcom/join/mgps/fragment/roomlist/c;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/roomlist/c;->i0(ZLjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static O0(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/mgps/fragment/roomlist/c;->P:Ljava/lang/reflect/Method;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Lcom/join/mgps/fragment/roomlist/c;->O:Ljava/lang/reflect/Field;

    .line 6
    .line 7
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const/4 v1, 0x0

    .line 12
    new-array v1, v1, [Ljava/lang/Object;

    .line 13
    .line 14
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    .line 16
    .line 17
    :catch_0
    :cond_0
    return-void
.end method

.method static synthetic P(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/fragment/roomlist/c$n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Q(Lcom/join/mgps/fragment/roomlist/c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic R(Lcom/join/mgps/fragment/roomlist/c;)Lcom/join/mgps/adapter/g2;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/roomlist/c;->l:Lcom/join/mgps/adapter/g2;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic S(Lcom/join/mgps/fragment/roomlist/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic T(Lcom/join/mgps/fragment/roomlist/c;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->s0(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic U(Lcom/join/mgps/fragment/roomlist/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->H0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private U0()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 14
    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-eqz v2, :cond_1

    .line 27
    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    check-cast v2, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 33
    .line 34
    iget v3, p0, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 35
    .line 36
    const/4 v4, 0x2

    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    iget-object v3, v2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 40
    .line 41
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/roomlist/c;->W0(Lcom/papa91/battle/protocol/SimpleRoom;)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-nez v3, :cond_0

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 51
    .line 52
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    monitor-exit v0

    .line 57
    const/4 v0, 0x0

    .line 58
    return v0

    .line 59
    :catchall_0
    move-exception v1

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 61
    throw v1
.end method

.method static synthetic V(Lcom/join/mgps/fragment/roomlist/c;)Z
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->U0()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic W(Lcom/join/mgps/fragment/roomlist/c;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/roomlist/c;->B:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic X(Lcom/join/mgps/fragment/roomlist/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->K0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y(Lcom/join/mgps/fragment/roomlist/c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic Z(Lcom/join/mgps/fragment/roomlist/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method private a0(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;
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

.method private f0(Ljava/util/List;Z)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "newDatas",
            "isAdd"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;Z)",
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-eqz v1, :cond_3

    .line 17
    .line 18
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    check-cast v1, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 23
    .line 24
    invoke-static {v1}, Lapp/mgsim/arena/SimpleWrapperRoom;->cloneSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    if-eqz p2, :cond_2

    .line 30
    .line 31
    iget-object v4, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    if-eqz v5, :cond_2

    .line 42
    .line 43
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v5

    .line 47
    check-cast v5, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 48
    .line 49
    iget-object v5, v5, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 50
    .line 51
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-ne v5, v6, :cond_1

    .line 60
    .line 61
    const/4 v3, 0x1

    .line 62
    :cond_2
    if-nez v3, :cond_0

    .line 63
    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_3
    return-object v0
.end method

.method private i0(ZLjava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shouldClearData",
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    .line 26
    :cond_1
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 27
    .line 28
    .line 29
    move-result-wide p1

    .line 30
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    if-eqz v2, :cond_3

    .line 41
    .line 42
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 47
    .line 48
    iget-object v3, v2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 49
    .line 50
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 51
    .line 52
    .line 53
    move-result-wide v3

    .line 54
    cmp-long v5, v3, p1

    .line 55
    .line 56
    if-eqz v5, :cond_2

    .line 57
    .line 58
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 59
    .line 60
    .line 61
    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catch_0
    :cond_3
    :try_start_2
    monitor-exit v0

    .line 68
    return-void

    .line 69
    :catchall_0
    move-exception p1

    .line 70
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 71
    throw p1
.end method

.method private p0(Ljava/lang/String;)Z
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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

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

.method private s0(Ljava/lang/String;)Z
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
    :try_start_0
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lt6/p;->o()Lt6/p;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v1, v2}, Lt6/p;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const/4 v3, 0x1

    .line 26
    invoke-static {v2, p1, v0, v1, v3}, Lcom/join/mgps/Util/UtilsMy;->b2(Landroid/content/Context;Ljava/lang/String;Lcom/github/snowdream/android/app/downloader/DownloadTask;Lcom/join/mgps/db/tables/EMUApkTable;Z)Z

    .line 27
    .line 28
    .line 29
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    return p1

    .line 31
    :catch_0
    const/4 p1, 0x0

    .line 32
    return p1
.end method

.method private stopTimer()V
    .locals 0

    return-void
.end method

.method private y0(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lists"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/4 v3, 0x0

    .line 14
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    if-ge v3, v4, :cond_3

    .line 19
    .line 20
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v4

    .line 24
    check-cast v4, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 25
    .line 26
    iget-object v4, v4, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 27
    .line 28
    const/4 v5, 0x0

    .line 29
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 30
    .line 31
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-ge v5, v6, :cond_2

    .line 36
    .line 37
    iget-object v6, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v6

    .line 43
    check-cast v6, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 44
    .line 45
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    iget-object v8, v6, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 50
    .line 51
    invoke-virtual {v8}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 52
    .line 53
    .line 54
    move-result v8

    .line 55
    if-ne v7, v8, :cond_1

    .line 56
    .line 57
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 68
    .line 69
    invoke-interface {p1, v1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 70
    .line 71
    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 74
    :catchall_0
    move-exception p1

    .line 75
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    throw p1
.end method


# virtual methods
.method public B0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rooms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public C0(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rooms"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public D0(Lcom/join/mgps/fragment/roomlist/c$n;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 2
    .line 3
    return-void
.end method

.method E0()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->v:Lcom/join/mgps/dialog/f;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f;->b()V

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 20
    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v3}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const/4 v4, 0x0

    .line 40
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    check-cast v3, Lcom/join/mgps/dto/GameConfig;

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/roomlist/c;->r0(Ljava/lang/String;)Z

    .line 58
    .line 59
    .line 60
    move-result v1

    .line 61
    if-eqz v1, :cond_2

    .line 62
    .line 63
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    check-cast v0, Lcom/join/mgps/dto/GameConfig;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-virtual {v1, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 113
    .line 114
    .line 115
    move-result-object v1

    .line 116
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-static {v2}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-virtual {v2, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    const/4 v1, 0x2

    .line 133
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 138
    .line 139
    .line 140
    return-void

    .line 141
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 142
    .line 143
    .line 144
    move-result-object v1

    .line 145
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v1

    .line 153
    const/4 v2, 0x1

    .line 154
    if-ne v1, v2, :cond_4

    .line 155
    .line 156
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 157
    .line 158
    .line 159
    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    check-cast v1, Lcom/join/mgps/dto/GameConfig;

    .line 169
    .line 170
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/lang/String;)Z

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    if-eqz v1, :cond_3

    .line 179
    .line 180
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 181
    .line 182
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    check-cast v0, Lcom/join/mgps/dto/GameConfig;

    .line 195
    .line 196
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-boolean v2, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 201
    .line 202
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->createRoom(Ljava/lang/String;Z)V

    .line 203
    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    check-cast v0, Lcom/join/mgps/dto/GameConfig;

    .line 219
    .line 220
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v0

    .line 224
    const/16 v1, 0x3f5

    .line 225
    .line 226
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->M0(Ljava/lang/String;I)V

    .line 227
    .line 228
    .line 229
    :goto_0
    return-void

    .line 230
    :cond_4
    new-instance v1, Lcom/join/mgps/dialog/f;

    .line 231
    .line 232
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 233
    .line 234
    .line 235
    move-result-object v2

    .line 236
    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c;->E:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 237
    .line 238
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/dialog/f;-><init>(Landroid/app/Activity;Lcom/join/mgps/fragment/roomlist/c$m;)V

    .line 239
    .line 240
    .line 241
    iput-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->v:Lcom/join/mgps/dialog/f;

    .line 242
    .line 243
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 244
    .line 245
    .line 246
    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    iget-boolean v2, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 252
    .line 253
    invoke-virtual {v1, v0, v2}, Lcom/join/mgps/dialog/f;->d(Ljava/util/List;Z)V

    .line 254
    .line 255
    .line 256
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->v:Lcom/join/mgps/dialog/f;

    .line 257
    .line 258
    invoke-virtual {v0}, Lcom/join/mgps/dialog/f;->e()V

    .line 259
    .line 260
    .line 261
    return-void
.end method

.method F0(Lcom/papa91/battle/protocol/SimpleRoom;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "simpleRoom"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

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
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$j;

    .line 13
    .line 14
    invoke-direct {v1, p0, v0, p1}, Lcom/join/mgps/fragment/roomlist/c$j;-><init>(Lcom/join/mgps/fragment/roomlist/c;Lcom/join/mgps/customview/input/a;Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/input/a;->g(Lcom/join/mgps/customview/input/InputNumView$d;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->h()V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public G0(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-ge v1, v2, :cond_2

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 19
    .line 20
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 25
    .line 26
    iget-object v3, v2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 27
    .line 28
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    if-ne v3, p1, :cond_1

    .line 33
    .line 34
    iget-object p1, v2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->F0(Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_1
    monitor-exit v0

    .line 44
    return-void

    .line 45
    :catchall_0
    move-exception p1

    .line 46
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 47
    throw p1
.end method

.method public I0()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/IntentUtil;->goLoginBattle(Landroid/content/Context;)Z

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public J0(Lcom/join/mgps/customview/h0$e;Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;I)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "callbackServer",
            "areas",
            "currentArea",
            "recomendNumber"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/customview/h0$e;",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lapp/mgsim/arena/AreaInfo;",
            ">;",
            "Lapp/mgsim/arena/AreaInfo;",
            "I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->x:Lcom/join/mgps/customview/h0$e;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/fragment/roomlist/c;->y:Ljava/util/concurrent/ConcurrentHashMap;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/join/mgps/fragment/roomlist/c;->z:Lapp/mgsim/arena/AreaInfo;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->s:Lcom/join/mgps/dialog/j;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual {v1}, Lcom/join/mgps/dialog/j;->a()V

    .line 15
    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 30
    .line 31
    new-instance v9, Lcom/join/mgps/dialog/j;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 34
    .line 35
    iget-object v4, p0, Lcom/join/mgps/fragment/roomlist/c;->E:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 36
    .line 37
    move-object v2, v9

    .line 38
    move-object v5, p1

    .line 39
    move-object v6, p2

    .line 40
    move-object v7, p3

    .line 41
    move v8, p4

    .line 42
    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/dialog/j;-><init>(Landroid/app/Activity;Lcom/join/mgps/fragment/roomlist/c$m;Lcom/join/mgps/customview/h0$e;Ljava/util/concurrent/ConcurrentHashMap;Lapp/mgsim/arena/AreaInfo;I)V

    .line 43
    .line 44
    .line 45
    iput-object v9, p0, Lcom/join/mgps/fragment/roomlist/c;->s:Lcom/join/mgps/dialog/j;

    .line 46
    .line 47
    iget p1, p0, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 48
    .line 49
    invoke-virtual {v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    invoke-virtual {p2}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    iget-object p3, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 58
    .line 59
    iget p4, p0, Lcom/join/mgps/fragment/roomlist/c;->B:I

    .line 60
    .line 61
    invoke-virtual {v9, p1, p2, p3, p4}, Lcom/join/mgps/dialog/j;->d(ILjava/util/List;Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->s:Lcom/join/mgps/dialog/j;

    .line 65
    .line 66
    invoke-virtual {p1}, Lcom/join/mgps/dialog/j;->f()V

    .line 67
    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :catchall_0
    move-exception p1

    .line 72
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    throw p1
.end method

.method L0()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->q:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->r:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public M0(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "gameId",
            "requestCode"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 4
    .line 5
    const-class v2, Lcom/join/mgps/activity/arena/NewArenaDownloadActivity_;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 8
    .line 9
    .line 10
    const-string v1, "gameId"

    .line 11
    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string p1, "hasPlug"

    .line 16
    .line 17
    iget-boolean v1, p0, Lcom/join/mgps/fragment/roomlist/c;->M:Z

    .line 18
    .line 19
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    const-string p1, "hasRom"

    .line 23
    .line 24
    iget-boolean v1, p0, Lcom/join/mgps/fragment/roomlist/c;->L:Z

    .line 25
    .line 26
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0, p2}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public N0()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

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
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/roomlist/c;->showToast(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->V0()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->I0()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Lcom/join/mgps/activity/arena/GameRoomListActivity;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->getGameConfigData()Lcom/join/mgps/dto/ArenaGameRoomListConfig;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/ArenaGameRoomListConfig;->getGame_list()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    const/4 v1, 0x0

    .line 40
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/join/mgps/dto/GameConfig;

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameConfig;->getGame_id()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Ljava/lang/StringBuilder;

    .line 51
    .line 52
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 53
    .line 54
    .line 55
    const-string v2, ""

    .line 56
    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/roomlist/c;->r0(Ljava/lang/String;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    .line 73
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    invoke-virtual {v1, v0}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v1, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    invoke-static {v2}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    invoke-virtual {v2, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    invoke-virtual {v1, v0}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    const/4 v1, 0x2

    .line 125
    invoke-virtual {v0, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 130
    .line 131
    .line 132
    return-void

    .line 133
    :cond_2
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/lang/String;)Z

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-eqz v1, :cond_3

    .line 138
    .line 139
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 140
    .line 141
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 142
    .line 143
    .line 144
    move-result-wide v2

    .line 145
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fastJoinRoom(J)V

    .line 146
    .line 147
    .line 148
    goto :goto_0

    .line 149
    :cond_3
    const/16 v1, 0x3f6

    .line 150
    .line 151
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/fragment/roomlist/c;->M0(Ljava/lang/String;I)V

    .line 152
    .line 153
    .line 154
    :goto_0
    return-void
.end method

.method P0()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->o:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->q:Landroid/os/Handler;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->r:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public Q0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public R0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/fragment/roomlist/c;->O0(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public S0(Ljava/util/ArrayList;)V
    .locals 9
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
            "Ljava/util/ArrayList<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    if-eqz v0, :cond_5

    .line 4
    .line 5
    if-eqz p1, :cond_5

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-gtz v0, :cond_0

    .line 12
    .line 13
    goto :goto_3

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 15
    .line 16
    monitor-enter v0

    .line 17
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    .line 19
    .line 20
    new-instance v1, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 23
    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    const/4 v3, 0x0

    .line 27
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    if-ge v3, v4, :cond_3

    .line 32
    .line 33
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    check-cast v4, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 38
    .line 39
    const/4 v5, 0x0

    .line 40
    :goto_1
    iget-object v6, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 41
    .line 42
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-ge v5, v6, :cond_2

    .line 47
    .line 48
    iget-object v6, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 49
    .line 50
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    check-cast v6, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 55
    .line 56
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 57
    .line 58
    .line 59
    move-result v7

    .line 60
    iget-object v8, v6, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 61
    .line 62
    invoke-virtual {v8}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    if-ne v7, v8, :cond_1

    .line 67
    .line 68
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-lez p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/roomlist/c;->m0(Ljava/util/ArrayList;)V

    .line 85
    .line 86
    .line 87
    :cond_4
    monitor-exit v0

    .line 88
    return-void

    .line 89
    :catchall_0
    move-exception p1

    .line 90
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    throw p1

    .line 92
    :cond_5
    :goto_3
    return-void
.end method

.method public T0(Ljava/util/ArrayList;)V
    .locals 18
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
            "Ljava/util/ArrayList<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 6
    .line 7
    if-eqz v2, :cond_18

    .line 8
    .line 9
    if-eqz v0, :cond_18

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-gtz v2, :cond_0

    .line 16
    .line 17
    goto/16 :goto_e

    .line 18
    .line 19
    :cond_0
    iget-object v2, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 20
    .line 21
    monitor-enter v2

    .line 22
    :try_start_0
    iget-object v3, v1, Lcom/join/mgps/fragment/roomlist/c;->g:Ljava/util/List;

    .line 23
    .line 24
    const/4 v5, 0x1

    .line 25
    if-eqz v3, :cond_2

    .line 26
    .line 27
    iget-object v3, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/4 v3, 0x0

    .line 37
    goto :goto_1

    .line 38
    :cond_2
    :goto_0
    const/4 v3, 0x1

    .line 39
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    new-instance v8, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v9, "---updateListData---- start Time :"

    .line 49
    .line 50
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v8

    .line 60
    invoke-virtual {v1, v8}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    new-instance v8, Ljava/util/ArrayList;

    .line 64
    .line 65
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .line 67
    .line 68
    new-instance v9, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    .line 74
    .line 75
    .line 76
    move-result v10

    .line 77
    const/4 v11, 0x0

    .line 78
    :goto_2
    if-ge v11, v10, :cond_6

    .line 79
    .line 80
    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v12

    .line 84
    check-cast v12, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 85
    .line 86
    const/4 v13, 0x0

    .line 87
    :goto_3
    iget-object v14, v1, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v14

    .line 93
    if-ge v13, v14, :cond_4

    .line 94
    .line 95
    invoke-virtual {v12}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 96
    .line 97
    .line 98
    move-result v14

    .line 99
    iget-object v15, v1, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 100
    .line 101
    invoke-interface {v15, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v15

    .line 105
    check-cast v15, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 106
    .line 107
    iget-object v15, v15, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 108
    .line 109
    invoke-virtual {v15}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 110
    .line 111
    .line 112
    move-result v15

    .line 113
    if-ne v14, v15, :cond_3

    .line 114
    .line 115
    invoke-static {v12}, Lapp/mgsim/arena/SimpleWrapperRoom;->cloneSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 116
    .line 117
    .line 118
    move-result-object v13

    .line 119
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    const/4 v13, 0x1

    .line 123
    goto :goto_4

    .line 124
    :cond_3
    add-int/lit8 v13, v13, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :cond_4
    const/4 v13, 0x0

    .line 128
    :goto_4
    if-nez v13, :cond_5

    .line 129
    .line 130
    invoke-static {v12}, Lapp/mgsim/arena/SimpleWrapperRoom;->cloneSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 131
    .line 132
    .line 133
    move-result-object v12

    .line 134
    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_5
    add-int/lit8 v11, v11, 0x1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_6
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 141
    .line 142
    .line 143
    move-result v11

    .line 144
    if-lez v11, :cond_9

    .line 145
    .line 146
    const/4 v13, 0x0

    .line 147
    :goto_5
    if-ge v13, v11, :cond_9

    .line 148
    .line 149
    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v14

    .line 153
    check-cast v14, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 154
    .line 155
    iget-object v15, v1, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 156
    .line 157
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v15

    .line 161
    const/16 v16, -0x1

    .line 162
    .line 163
    :goto_6
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    .line 164
    .line 165
    .line 166
    move-result v17

    .line 167
    if-eqz v17, :cond_8

    .line 168
    .line 169
    add-int/lit8 v12, v16, 0x1

    .line 170
    .line 171
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v16

    .line 175
    move-object/from16 v4, v16

    .line 176
    .line 177
    check-cast v4, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 178
    .line 179
    iget-object v5, v14, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 180
    .line 181
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 182
    .line 183
    .line 184
    move-result v5

    .line 185
    iget-object v4, v4, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 186
    .line 187
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 188
    .line 189
    .line 190
    move-result v4

    .line 191
    if-ne v5, v4, :cond_7

    .line 192
    .line 193
    iget-object v4, v1, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 194
    .line 195
    invoke-interface {v4, v12, v14}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    :cond_7
    move/from16 v16, v12

    .line 199
    .line 200
    const/4 v5, 0x1

    .line 201
    goto :goto_6

    .line 202
    :cond_8
    add-int/lit8 v13, v13, 0x1

    .line 203
    .line 204
    const/4 v5, 0x1

    .line 205
    goto :goto_5

    .line 206
    :cond_9
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 207
    .line 208
    .line 209
    move-result v4

    .line 210
    if-lez v4, :cond_a

    .line 211
    .line 212
    iget-object v4, v1, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 213
    .line 214
    invoke-interface {v4, v8}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 215
    .line 216
    .line 217
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 221
    .line 222
    .line 223
    const/4 v4, 0x0

    .line 224
    :goto_7
    if-ge v4, v10, :cond_e

    .line 225
    .line 226
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    move-result-object v5

    .line 230
    check-cast v5, Lcom/papa91/battle/protocol/SimpleRoom;

    .line 231
    .line 232
    const/4 v11, 0x0

    .line 233
    :goto_8
    iget-object v12, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 234
    .line 235
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    if-ge v11, v12, :cond_c

    .line 240
    .line 241
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 242
    .line 243
    .line 244
    move-result v12

    .line 245
    iget-object v13, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 246
    .line 247
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v13

    .line 251
    check-cast v13, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 252
    .line 253
    iget-object v13, v13, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 254
    .line 255
    invoke-virtual {v13}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 256
    .line 257
    .line 258
    move-result v13

    .line 259
    if-ne v12, v13, :cond_b

    .line 260
    .line 261
    invoke-static {v5}, Lapp/mgsim/arena/SimpleWrapperRoom;->cloneSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 262
    .line 263
    .line 264
    move-result-object v11

    .line 265
    invoke-virtual {v9, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    const/4 v11, 0x1

    .line 269
    goto :goto_9

    .line 270
    :cond_b
    add-int/lit8 v11, v11, 0x1

    .line 271
    .line 272
    goto :goto_8

    .line 273
    :cond_c
    const/4 v11, 0x0

    .line 274
    :goto_9
    if-nez v11, :cond_d

    .line 275
    .line 276
    invoke-static {v5}, Lapp/mgsim/arena/SimpleWrapperRoom;->cloneSimpleRoom(Lcom/papa91/battle/protocol/SimpleRoom;)Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 277
    .line 278
    .line 279
    move-result-object v5

    .line 280
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 284
    .line 285
    goto :goto_7

    .line 286
    :cond_e
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    .line 287
    .line 288
    .line 289
    move-result v0

    .line 290
    const/4 v4, 0x2

    .line 291
    if-lez v0, :cond_13

    .line 292
    .line 293
    const/4 v5, 0x0

    .line 294
    :goto_a
    if-ge v5, v0, :cond_13

    .line 295
    .line 296
    invoke-virtual {v9, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    move-result-object v10

    .line 300
    check-cast v10, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 301
    .line 302
    iget-object v11, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 303
    .line 304
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 305
    .line 306
    .line 307
    move-result-object v11

    .line 308
    const/4 v12, -0x1

    .line 309
    :cond_f
    :goto_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 310
    .line 311
    .line 312
    move-result v13

    .line 313
    if-eqz v13, :cond_12

    .line 314
    .line 315
    const/4 v13, 0x1

    .line 316
    add-int/2addr v12, v13

    .line 317
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    move-result-object v14

    .line 321
    check-cast v14, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 322
    .line 323
    iget-object v15, v10, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 324
    .line 325
    invoke-virtual {v15}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 326
    .line 327
    .line 328
    move-result v15

    .line 329
    iget-object v13, v14, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 330
    .line 331
    invoke-virtual {v13}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 332
    .line 333
    .line 334
    move-result v13

    .line 335
    if-ne v15, v13, :cond_f

    .line 336
    .line 337
    iget v13, v1, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 338
    .line 339
    if-ne v13, v4, :cond_11

    .line 340
    .line 341
    iget-object v13, v10, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 342
    .line 343
    invoke-virtual {v1, v13}, Lcom/join/mgps/fragment/roomlist/c;->W0(Lcom/papa91/battle/protocol/SimpleRoom;)Z

    .line 344
    .line 345
    .line 346
    move-result v13

    .line 347
    if-eqz v13, :cond_10

    .line 348
    .line 349
    iget-object v13, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 350
    .line 351
    invoke-interface {v13, v12, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    goto :goto_b

    .line 355
    :cond_10
    invoke-interface {v11}, Ljava/util/Iterator;->remove()V

    .line 356
    .line 357
    .line 358
    iget-object v13, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 359
    .line 360
    invoke-interface {v13, v14}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 361
    .line 362
    .line 363
    goto :goto_b

    .line 364
    :cond_11
    iget-object v13, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 365
    .line 366
    invoke-interface {v13, v12, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    goto :goto_b

    .line 370
    :cond_12
    add-int/lit8 v5, v5, 0x1

    .line 371
    .line 372
    goto :goto_a

    .line 373
    :cond_13
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 374
    .line 375
    .line 376
    move-result v0

    .line 377
    if-lez v0, :cond_16

    .line 378
    .line 379
    const/4 v0, 0x0

    .line 380
    :goto_c
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 381
    .line 382
    .line 383
    move-result v5

    .line 384
    if-ge v0, v5, :cond_16

    .line 385
    .line 386
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 387
    .line 388
    .line 389
    move-result-object v5

    .line 390
    check-cast v5, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 391
    .line 392
    iget v9, v1, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 393
    .line 394
    if-ne v9, v4, :cond_14

    .line 395
    .line 396
    iget-object v9, v5, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 397
    .line 398
    invoke-virtual {v1, v9}, Lcom/join/mgps/fragment/roomlist/c;->W0(Lcom/papa91/battle/protocol/SimpleRoom;)Z

    .line 399
    .line 400
    .line 401
    move-result v9

    .line 402
    if-eqz v9, :cond_15

    .line 403
    .line 404
    iget-object v9, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 405
    .line 406
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    .line 408
    .line 409
    goto :goto_d

    .line 410
    :cond_14
    iget-object v9, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 411
    .line 412
    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 413
    .line 414
    .line 415
    :cond_15
    :goto_d
    add-int/lit8 v0, v0, 0x1

    .line 416
    .line 417
    goto :goto_c

    .line 418
    :cond_16
    iget-object v0, v1, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 419
    .line 420
    const/4 v4, 0x0

    .line 421
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/fragment/roomlist/c;->i0(ZLjava/lang/String;)V

    .line 422
    .line 423
    .line 424
    invoke-direct/range {p0 .. p0}, Lcom/join/mgps/fragment/roomlist/c;->K0()V

    .line 425
    .line 426
    .line 427
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/roomlist/c;->b0()V

    .line 428
    .line 429
    .line 430
    if-eqz v3, :cond_17

    .line 431
    .line 432
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 433
    .line 434
    .line 435
    :cond_17
    iget-object v0, v1, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 436
    .line 437
    iget-object v3, v1, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 438
    .line 439
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 440
    .line 441
    .line 442
    move-result v3

    .line 443
    iget-boolean v4, v1, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 444
    .line 445
    invoke-interface {v0, v3, v4}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 446
    .line 447
    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    .line 449
    .line 450
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 451
    .line 452
    .line 453
    const-string v3, "---updateListData---- spend Time :"

    .line 454
    .line 455
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 456
    .line 457
    .line 458
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 459
    .line 460
    .line 461
    move-result-wide v3

    .line 462
    sub-long/2addr v3, v6

    .line 463
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v0

    .line 470
    invoke-virtual {v1, v0}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 471
    .line 472
    .line 473
    monitor-exit v2

    .line 474
    return-void

    .line 475
    :catchall_0
    move-exception v0

    .line 476
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 477
    throw v0

    .line 478
    :cond_18
    :goto_e
    return-void
.end method

.method public V0()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/roomlist/c;->a0(Landroid/content/Context;)Lcom/wufan/user/service/protobuf/UserInfo;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 12
    .line 13
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    return v1

    .line 24
    :cond_1
    const/4 v0, 0x1

    .line 25
    return v0
.end method

.method W0(Lcom/papa91/battle/protocol/SimpleRoom;)Z
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sr"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x0

    .line 7
    const/4 v4, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    .line 9
    .line 10
    .line 11
    move-result v5

    .line 12
    const/4 v6, 0x1

    .line 13
    if-ge v1, v5, :cond_2

    .line 14
    .line 15
    invoke-virtual {p1, v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerList(I)Lcom/papa91/battle/protocol/RoomPosition;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    if-eqz v7, :cond_0

    .line 24
    .line 25
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/RoomPosition;->getPlatform()Lcom/papa91/battle/protocol/Platform;

    .line 26
    .line 27
    .line 28
    move-result-object v7

    .line 29
    sget-object v8, Lcom/papa91/battle/protocol/Platform;->MOBILE:Lcom/papa91/battle/protocol/Platform;

    .line 30
    .line 31
    if-ne v7, v8, :cond_1

    .line 32
    .line 33
    add-int/lit8 v2, v2, 0x1

    .line 34
    .line 35
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getLeaderId()I

    .line 40
    .line 41
    .line 42
    move-result v7

    .line 43
    if-ne v5, v7, :cond_1

    .line 44
    .line 45
    const/4 v4, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    add-int/2addr v2, v3

    .line 53
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlayerListCount()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-ne v2, v1, :cond_3

    .line 58
    .line 59
    const/4 v1, 0x1

    .line 60
    goto :goto_2

    .line 61
    :cond_3
    const/4 v1, 0x0

    .line 62
    :goto_2
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_4

    .line 67
    .line 68
    if-eqz v1, :cond_4

    .line 69
    .line 70
    if-eqz v4, :cond_4

    .line 71
    .line 72
    const/4 v0, 0x1

    .line 73
    :cond_4
    return v0
.end method

.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/g2;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->g:Ljava/util/List;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/g2;-><init>(Landroid/content/Context;Ljava/util/List;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->l:Lcom/join/mgps/adapter/g2;

    .line 11
    .line 12
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->m:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$e;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$e;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->m:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->l:Lcom/join/mgps/adapter/g2;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 42
    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->l:Lcom/join/mgps/adapter/g2;

    .line 45
    .line 46
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$f;

    .line 47
    .line 48
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$f;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/g2;->f(Lcom/join/mgps/adapter/g2$b;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 55
    .line 56
    const/16 v1, 0xa

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPreLoadCount(I)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 65
    .line 66
    .line 67
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 68
    .line 69
    const/4 v1, 0x0

    .line 70
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 74
    .line 75
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$g;

    .line 76
    .line 77
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$g;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingListener(Lcom/join/android/app/component/xrecyclerview/XRecyclerView$f;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 84
    .line 85
    new-instance v1, Lcom/join/mgps/fragment/roomlist/c$h;

    .line 86
    .line 87
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/roomlist/c$h;-><init>(Lcom/join/mgps/fragment/roomlist/c;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    const v1, 0x7f0712fa

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    .line 102
    .line 103
    move-result v0

    .line 104
    div-int/2addr v0, v2

    .line 105
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    div-int/2addr v1, v2

    .line 114
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const v3, 0x7f0713c2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    .line 123
    .line 124
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 125
    .line 126
    new-instance v3, Lcom/join/mgps/fragment/roomlist/c$i;

    .line 127
    .line 128
    invoke-direct {v3, p0, v0, v1}, Lcom/join/mgps/fragment/roomlist/c$i;-><init>(Lcom/join/mgps/fragment/roomlist/c;II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method b0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->h:Landroid/widget/TextView;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->g:Ljava/util/List;

    .line 7
    .line 8
    if-eqz v0, :cond_1

    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->h:Landroid/widget/TextView;

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->h:Landroid/widget/TextView;

    .line 26
    .line 27
    const/16 v1, 0x8

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method c0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->q:Landroid/os/Handler;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->r:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->q:Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->r:Ljava/lang/Runnable;

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public d0(Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "newDatas",
            "isPushFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "---addPushListData activity is null ---"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->g:Ljava/util/List;

    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 32
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide v4

    .line 36
    new-instance v6, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v7, "---addPushListData---- start Time :"

    .line 42
    .line 43
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    invoke-virtual {p0, v6}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    if-eqz p1, :cond_3

    .line 57
    .line 58
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    if-lez v6, :cond_3

    .line 63
    .line 64
    invoke-direct {p0, p1, v2}, Lcom/join/mgps/fragment/roomlist/c;->f0(Ljava/util/List;Z)Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 69
    .line 70
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 74
    .line 75
    invoke-interface {v2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 76
    .line 77
    .line 78
    :cond_3
    if-eqz p2, :cond_4

    .line 79
    .line 80
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->U0()Z

    .line 81
    .line 82
    .line 83
    const/4 p1, 0x3

    .line 84
    iput p1, p0, Lcom/join/mgps/fragment/roomlist/c;->B:I

    .line 85
    .line 86
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->K0()V

    .line 87
    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 90
    .line 91
    invoke-direct {p0, v3, p1}, Lcom/join/mgps/fragment/roomlist/c;->i0(ZLjava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 95
    .line 96
    iget-boolean p2, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 97
    .line 98
    invoke-interface {p1, p2}, Lcom/join/mgps/fragment/roomlist/c$n;->b(Z)V

    .line 99
    .line 100
    .line 101
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 104
    .line 105
    .line 106
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->b0()V

    .line 107
    .line 108
    .line 109
    if-eqz v1, :cond_5

    .line 110
    .line 111
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->c0()V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 115
    .line 116
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 117
    .line 118
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 119
    .line 120
    .line 121
    move-result p2

    .line 122
    iget-boolean v1, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 123
    .line 124
    invoke-interface {p1, p2, v1}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 130
    .line 131
    .line 132
    const-string p2, "---addPushListData---- spend Time :"

    .line 133
    .line 134
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 138
    .line 139
    .line 140
    move-result-wide v1

    .line 141
    sub-long/2addr v1, v4

    .line 142
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    monitor-exit v0

    .line 153
    return-void

    .line 154
    :catchall_0
    move-exception p1

    .line 155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    throw p1
.end method

.method public e0(Ljava/lang/String;)Z
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
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->L:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->M:Z

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
    iput-boolean v1, p0, Lcom/join/mgps/fragment/roomlist/c;->L:Z

    .line 25
    .line 26
    invoke-static {}, Lt6/o;->o()Lt6/o;

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
    invoke-virtual {v2, p1}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    if-eqz p1, :cond_2

    .line 39
    .line 40
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

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
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

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
    iput-boolean v1, p0, Lcom/join/mgps/fragment/roomlist/c;->M:Z

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->M:Z

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iput-boolean v1, p0, Lcom/join/mgps/fragment/roomlist/c;->M:Z

    .line 66
    .line 67
    goto :goto_1

    .line 68
    :cond_3
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->L:Z

    .line 69
    .line 70
    :goto_1
    iget-boolean p1, p0, Lcom/join/mgps/fragment/roomlist/c;->M:Z

    .line 71
    .line 72
    if-eqz p1, :cond_4

    .line 73
    .line 74
    iget-boolean p1, p0, Lcom/join/mgps/fragment/roomlist/c;->L:Z

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

.method public g0()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/fragment/roomlist/c;->t:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/join/mgps/fragment/roomlist/c;->t:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-gtz v4, :cond_0

    .line 21
    .line 22
    const-string v0, "fast join room so fast ,waiting a moment!"

    .line 23
    .line 24
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/join/mgps/fragment/roomlist/c;->t:J

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 43
    .line 44
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/roomlist/c;->showToast(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->V0()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-nez v0, :cond_2

    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->I0()V

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->E0()V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method h0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public j0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public k0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public l0()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/roomlist/c;->C:I

    .line 2
    .line 3
    return v0
.end method

.method m0(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "removedList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lapp/mgsim/arena/SimpleWrapperRoom;",
            ">;)V"
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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 5
    .line 6
    monitor-enter v0

    .line 7
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-lez v1, :cond_2

    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1, p1}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->y0(Ljava/util/ArrayList;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-gtz p1, :cond_1

    .line 28
    .line 29
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->A0()V

    .line 30
    .line 31
    .line 32
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    iget-boolean v2, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 41
    .line 42
    invoke-interface {p1, v1, v2}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 43
    .line 44
    .line 45
    :cond_2
    monitor-exit v0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception p1

    .line 48
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw p1
.end method

.method n0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->F:Landroid/app/Dialog;

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
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->F:Landroid/app/Dialog;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method o0()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const v1, 0x1020002

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const v1, 0x7f0a0fe4

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
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
    const/4 v0, -0x1

    .line 5
    if-ne p2, v0, :cond_4

    .line 6
    .line 7
    const/16 p2, 0x3f4

    .line 8
    .line 9
    if-ne p1, p2, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 12
    .line 13
    if-eqz p1, :cond_4

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 16
    .line 17
    if-eqz p1, :cond_4

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 26
    .line 27
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->F0(Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 32
    .line 33
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 34
    .line 35
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const-string p3, ""

    .line 40
    .line 41
    iget-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 42
    .line 43
    invoke-virtual {p1, p2, p3, v0}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinRoom(ILjava/lang/String;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    const/16 p2, 0x3f5

    .line 48
    .line 49
    const-string v0, "gameId"

    .line 50
    .line 51
    if-ne p1, p2, :cond_2

    .line 52
    .line 53
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 58
    .line 59
    iget-boolean p3, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 60
    .line 61
    invoke-virtual {p2, p1, p3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->createRoom(Ljava/lang/String;Z)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_2
    const/16 p2, 0x3f6

    .line 66
    .line 67
    if-ne p1, p2, :cond_3

    .line 68
    .line 69
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 76
    .line 77
    .line 78
    move-result-wide v0

    .line 79
    invoke-virtual {p2, v0, v1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fastJoinRoom(J)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/16 p2, 0x3f7

    .line 84
    .line 85
    if-ne p1, p2, :cond_4

    .line 86
    .line 87
    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->fastJoinRoomSelected()V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
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
    const-string v0, "---onAttach---"

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    check-cast p1, Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->L0()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
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
    const-string p1, "---onCreate---"

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    const-string v0, "isElite"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    iput-boolean v0, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 20
    .line 21
    const-string v0, "filterGameId"

    .line 22
    .line 23
    const-string v1, ""

    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 30
    .line 31
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->P0()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->stopTimer()V

    .line 5
    .line 6
    .line 7
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 6
    .line 7
    return-void
.end method

.method public q0()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-gtz v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v1, 0x0

    .line 20
    :goto_0
    monitor-exit v0

    .line 21
    return v1

    .line 22
    :catchall_0
    move-exception v1

    .line 23
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    throw v1
.end method

.method public r0(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/4 v0, 0x0

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getDown_type()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, 0x2

    .line 17
    if-eq v1, v2, :cond_0

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-virtual {v1, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 v1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_2

    .line 37
    .line 38
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 v2, 0xb

    .line 43
    .line 44
    if-eq p1, v2, :cond_3

    .line 45
    .line 46
    :cond_2
    if-eqz v1, :cond_4

    .line 47
    .line 48
    invoke-static {v1}, Lcom/join/android/app/common/utils/o;->i(Lcom/join/mgps/db/tables/EMUApkTable;)Z

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-eqz p1, :cond_4

    .line 53
    .line 54
    :cond_3
    const/4 p1, 0x1

    .line 55
    return p1

    .line 56
    :cond_4
    return v0
.end method

.method public refresh()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->j:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->g(Z)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showToast(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V
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
    const-string v1, "StandardEliteRoomFragment"

    .line 22
    .line 23
    invoke-static {v1, p1}, Lcom/papa91/arc/ext/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public t0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->E:Lcom/join/mgps/fragment/roomlist/c$m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/join/mgps/fragment/roomlist/c$m;->c(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method u0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/join/mgps/fragment/roomlist/c;->u:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/join/mgps/fragment/roomlist/c;->u:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x3e8

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-gtz v4, :cond_0

    .line 21
    .line 22
    const-string p1, "join room so fast ,waiting a moment!"

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iput-wide v0, p0, Lcom/join/mgps/fragment/roomlist/c;->u:J

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 35
    .line 36
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    const-string p1, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\uff01"

    .line 43
    .line 44
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->showToast(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 49
    .line 50
    monitor-enter v0

    .line 51
    :try_start_0
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    if-gtz v1, :cond_2

    .line 58
    .line 59
    monitor-exit v0

    .line 60
    return-void

    .line 61
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-lt p1, v1, :cond_3

    .line 68
    .line 69
    monitor-exit v0

    .line 70
    return-void

    .line 71
    :cond_3
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 78
    .line 79
    iget-object p1, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowPCJoin()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/socket/fight/arena/c;->o(Landroid/content/Context;)Z

    .line 92
    .line 93
    .line 94
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    .line 97
    const-string p1, "\u7981\u6b62PC\u7528\u6237\u52a0\u5165!"

    .line 98
    .line 99
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->showToast(Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    monitor-exit v0

    .line 103
    return-void

    .line 104
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getAllowSpectatorJoin()Z

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    if-nez p1, :cond_5

    .line 111
    .line 112
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 113
    .line 114
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSeatsNumber()I

    .line 115
    .line 116
    .line 117
    move-result p1

    .line 118
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 119
    .line 120
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getSitDownloadNumber()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne p1, v1, :cond_5

    .line 125
    .line 126
    const-string p1, "\u623f\u95f4\u5df2\u6ee1\uff0c\u7981\u6b62\u89c2\u8d5b\uff01"

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->showToast(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    monitor-exit v0

    .line 132
    return-void

    .line 133
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->V0()Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_6

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->I0()V

    .line 140
    .line 141
    .line 142
    monitor-exit v0

    .line 143
    return-void

    .line 144
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 145
    .line 146
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .line 148
    .line 149
    const-string v1, ""

    .line 150
    .line 151
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    .line 153
    .line 154
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 155
    .line 156
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 157
    .line 158
    .line 159
    move-result-wide v1

    .line 160
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->r0(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_7

    .line 172
    .line 173
    invoke-static {}, Lq5/f;->M()Lq5/f;

    .line 174
    .line 175
    .line 176
    move-result-object p1

    .line 177
    new-instance v1, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    const-string v2, ""

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    .line 186
    .line 187
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 188
    .line 189
    invoke-virtual {v2}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 190
    .line 191
    .line 192
    move-result-wide v2

    .line 193
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    invoke-virtual {p1, v1}, Lq5/f;->G(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 201
    .line 202
    .line 203
    move-result-object p1

    .line 204
    invoke-static {}, Lt6/o;->o()Lt6/o;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    invoke-virtual {p1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPlugin_num()Ljava/lang/String;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    invoke-virtual {v1, v2}, Lt6/o;->n(Ljava/lang/String;)Lcom/join/mgps/db/tables/EMUApkTable;

    .line 213
    .line 214
    .line 215
    move-result-object v1

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 217
    .line 218
    .line 219
    move-result-object v2

    .line 220
    invoke-static {v2}, Lcom/join/mgps/dialog/PlugInstallDialog_;->intent(Landroid/content/Context;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v2, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->c(Lcom/join/mgps/db/tables/EMUApkTable;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v1, p1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->a(Lcom/github/snowdream/android/app/downloader/DownloadTask;)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    const/4 v1, 0x2

    .line 233
    invoke-virtual {p1, v1}, Lcom/join/mgps/dialog/PlugInstallDialog_$a;->b(I)Lcom/join/mgps/dialog/PlugInstallDialog_$a;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 238
    .line 239
    .line 240
    monitor-exit v0

    .line 241
    return-void

    .line 242
    :cond_7
    new-instance p1, Ljava/lang/StringBuilder;

    .line 243
    .line 244
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 245
    .line 246
    .line 247
    const-string v1, ""

    .line 248
    .line 249
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 253
    .line 254
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 255
    .line 256
    .line 257
    move-result-wide v1

    .line 258
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->e0(Ljava/lang/String;)Z

    .line 266
    .line 267
    .line 268
    move-result p1

    .line 269
    if-nez p1, :cond_8

    .line 270
    .line 271
    new-instance p1, Ljava/lang/StringBuilder;

    .line 272
    .line 273
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    .line 275
    .line 276
    const-string v1, ""

    .line 277
    .line 278
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 282
    .line 283
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 284
    .line 285
    .line 286
    move-result-wide v1

    .line 287
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object p1

    .line 294
    const/16 v1, 0x3f4

    .line 295
    .line 296
    invoke-virtual {p0, p1, v1}, Lcom/join/mgps/fragment/roomlist/c;->M0(Ljava/lang/String;I)V

    .line 297
    .line 298
    .line 299
    goto :goto_0

    .line 300
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 301
    .line 302
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 303
    .line 304
    .line 305
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 306
    .line 307
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getGameId()J

    .line 308
    .line 309
    .line 310
    move-result-wide v1

    .line 311
    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    const-string v1, ""

    .line 315
    .line 316
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 317
    .line 318
    .line 319
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object p1

    .line 323
    invoke-direct {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->s0(Ljava/lang/String;)Z

    .line 324
    .line 325
    .line 326
    move-result p1

    .line 327
    if-nez p1, :cond_a

    .line 328
    .line 329
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getHasJoinPassword()Z

    .line 332
    .line 333
    .line 334
    move-result p1

    .line 335
    if-eqz p1, :cond_9

    .line 336
    .line 337
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 338
    .line 339
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->F0(Lcom/papa91/battle/protocol/SimpleRoom;)V

    .line 340
    .line 341
    .line 342
    goto :goto_0

    .line 343
    :cond_9
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 344
    .line 345
    iget-object v1, p0, Lcom/join/mgps/fragment/roomlist/c;->w:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 346
    .line 347
    invoke-virtual {v1}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 348
    .line 349
    .line 350
    move-result v1

    .line 351
    const-string v2, ""

    .line 352
    .line 353
    iget-boolean v3, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 354
    .line 355
    invoke-virtual {p1, v1, v2, v3}, Lcom/join/mgps/activity/arena/GameRoomListActivity;->joinRoom(ILjava/lang/String;Z)V

    .line 356
    .line 357
    .line 358
    :cond_a
    :goto_0
    monitor-exit v0

    .line 359
    return-void

    .line 360
    :catchall_0
    move-exception p1

    .line 361
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    throw p1
.end method

.method public v0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colloctionId"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->A:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->A:Ljava/lang/String;

    .line 12
    .line 13
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method w0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printInfo"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "StandardEliteRoomFragment"

    .line 2
    .line 3
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public x0(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "newDatas",
            "isPushFinished"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/papa91/battle/protocol/SimpleRoom;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string p1, "---refreshPushListData activity is null ---"

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 12
    .line 13
    monitor-enter v0

    .line 14
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 15
    .line 16
    .line 17
    move-result-wide v1

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    .line 20
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    .line 22
    .line 23
    const-string v4, "---refreshPushListData---- start Time :"

    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    const/4 v3, 0x0

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v4

    .line 45
    if-ltz v4, :cond_1

    .line 46
    .line 47
    invoke-direct {p0, p1, v3}, Lcom/join/mgps/fragment/roomlist/c;->f0(Ljava/util/List;Z)Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget-object v4, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 52
    .line 53
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 54
    .line 55
    .line 56
    iget-object v4, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 57
    .line 58
    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/join/mgps/fragment/roomlist/c;->e:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 64
    .line 65
    .line 66
    iget-object v4, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 67
    .line 68
    invoke-interface {v4, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 69
    .line 70
    .line 71
    :cond_1
    if-eqz p2, :cond_2

    .line 72
    .line 73
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->U0()Z

    .line 74
    .line 75
    .line 76
    const/4 p1, 0x3

    .line 77
    iput p1, p0, Lcom/join/mgps/fragment/roomlist/c;->B:I

    .line 78
    .line 79
    invoke-direct {p0}, Lcom/join/mgps/fragment/roomlist/c;->K0()V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->D:Ljava/lang/String;

    .line 83
    .line 84
    invoke-direct {p0, v3, p1}, Lcom/join/mgps/fragment/roomlist/c;->i0(ZLjava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 88
    .line 89
    iget-boolean p2, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 90
    .line 91
    invoke-interface {p1, p2}, Lcom/join/mgps/fragment/roomlist/c$n;->b(Z)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->i:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->stopRefresh()V

    .line 97
    .line 98
    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/roomlist/c;->b0()V

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/fragment/roomlist/c;->K:Lcom/join/mgps/fragment/roomlist/c$n;

    .line 103
    .line 104
    iget-object p2, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    iget-boolean v3, p0, Lcom/join/mgps/fragment/roomlist/c;->d:Z

    .line 111
    .line 112
    invoke-interface {p1, p2, v3}, Lcom/join/mgps/fragment/roomlist/c$n;->a(IZ)V

    .line 113
    .line 114
    .line 115
    new-instance p1, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string p2, "---refreshPushListData---- spend Time :"

    .line 121
    .line 122
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 126
    .line 127
    .line 128
    move-result-wide v3

    .line 129
    sub-long/2addr v3, v1

    .line 130
    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-virtual {p0, p1}, Lcom/join/mgps/fragment/roomlist/c;->w0(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    monitor-exit v0

    .line 141
    return-void

    .line 142
    :catchall_0
    move-exception p1

    .line 143
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    throw p1
.end method

.method public z0(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "roomId"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->k:Lcom/join/mgps/activity/arena/GameRoomListActivity_;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 7
    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lcom/join/mgps/fragment/roomlist/c;->f:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_2

    .line 25
    .line 26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v3

    .line 30
    check-cast v3, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 31
    .line 32
    iget-object v4, v3, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 33
    .line 34
    if-eqz v4, :cond_1

    .line 35
    .line 36
    invoke-virtual {v4}, Lcom/papa91/battle/protocol/SimpleRoom;->getRoomId()I

    .line 37
    .line 38
    .line 39
    move-result v4

    .line 40
    if-ne p1, v4, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-lez p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/join/mgps/fragment/roomlist/c;->m0(Ljava/util/ArrayList;)V

    .line 52
    .line 53
    .line 54
    :cond_3
    monitor-exit v0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    throw p1
.end method
