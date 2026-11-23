.class public final Lcom/join/mgps/activity/PapaMainV3Fragment_;
.super Lcom/join/mgps/activity/PapaMainV3Fragment;
.source "SourceFile"

# interfaces
.implements Lxc/a;
.implements Lzc/a;
.implements Lzc/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/PapaMainV3Fragment_$t0;
    }
.end annotation


# static fields
.field public static final I2:Ljava/lang/String; = "gameId"


# instance fields
.field private final A2:Landroid/content/IntentFilter;

.field private final B2:Landroid/content/BroadcastReceiver;

.field private final C2:Landroid/content/IntentFilter;

.field private final D2:Landroid/content/BroadcastReceiver;

.field private final E2:Landroid/content/IntentFilter;

.field private final F2:Landroid/content/BroadcastReceiver;

.field private final G2:Landroid/content/IntentFilter;

.field private final H2:Landroid/content/BroadcastReceiver;

.field private final v2:Lzc/c;

.field private w2:Landroid/view/View;

.field private final x2:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final y2:Landroid/content/IntentFilter;

.field private final z2:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lzc/c;

    .line 5
    .line 6
    invoke-direct {v0}, Lzc/c;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->v2:Lzc/c;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->x2:Ljava/util/Map;

    .line 17
    .line 18
    new-instance v0, Landroid/content/IntentFilter;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->y2:Landroid/content/IntentFilter;

    .line 24
    .line 25
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$1;

    .line 26
    .line 27
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$1;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->z2:Landroid/content/BroadcastReceiver;

    .line 31
    .line 32
    new-instance v0, Landroid/content/IntentFilter;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->A2:Landroid/content/IntentFilter;

    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$2;

    .line 40
    .line 41
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$2;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->B2:Landroid/content/BroadcastReceiver;

    .line 45
    .line 46
    new-instance v0, Landroid/content/IntentFilter;

    .line 47
    .line 48
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->C2:Landroid/content/IntentFilter;

    .line 52
    .line 53
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$3;

    .line 54
    .line 55
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$3;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->D2:Landroid/content/BroadcastReceiver;

    .line 59
    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    .line 61
    .line 62
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->E2:Landroid/content/IntentFilter;

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$4;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$4;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->F2:Landroid/content/BroadcastReceiver;

    .line 73
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    .line 75
    .line 76
    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->G2:Landroid/content/IntentFilter;

    .line 80
    .line 81
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$5;

    .line 82
    .line 83
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$5;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->H2:Landroid/content/BroadcastReceiver;

    .line 87
    .line 88
    return-void
.end method

.method static synthetic A2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Y0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic B2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic C2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->c1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic D2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->n1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic E2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static F2()Lcom/join/mgps/activity/PapaMainV3Fragment_$t0;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$t0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$t0;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private G2()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "gameId"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->u:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method static synthetic V1(Lcom/join/mgps/activity/PapaMainV3Fragment_;Landroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->e1(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic W1(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->E1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic X1(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Y1(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMessage(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic Z1(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->v1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic a2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->b1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic b2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLoding()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic c2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showLodingFailed()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->showMain()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic e2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->K0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic f2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->D1(Lcom/join/mgps/dto/HomeFloatData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic g2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->N1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic h2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->m1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic i2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->F1(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private init_(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    new-instance v0, Lcom/join/mgps/pref/PrefDef_;

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-direct {v0, v1}, Lcom/join/mgps/pref/PrefDef_;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->A:Lcom/join/mgps/pref/PrefDef_;

    .line 19
    .line 20
    invoke-static {p0}, Lzc/c;->b(Lzc/b;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x7f12031f

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->f:Ljava/lang/String;

    .line 31
    .line 32
    const v0, 0x7f1200cd

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->g:Ljava/lang/String;

    .line 40
    .line 41
    invoke-direct {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_;->G2()V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->y2:Landroid/content/IntentFilter;

    .line 45
    .line 46
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.account_status_uidchange"

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->A2:Landroid/content/IntentFilter;

    .line 52
    .line 53
    const-string v0, "android.net.wifi.STATE_CHANGE"

    .line 54
    .line 55
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->A2:Landroid/content/IntentFilter;

    .line 59
    .line 60
    const-string v0, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->A2:Landroid/content/IntentFilter;

    .line 66
    .line 67
    const-string v0, "android.net.wifi.SCAN_RESULTS"

    .line 68
    .line 69
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->A2:Landroid/content/IntentFilter;

    .line 73
    .line 74
    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 75
    .line 76
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->C2:Landroid/content/IntentFilter;

    .line 80
    .line 81
    const-string v0, "com.broadcast.bespeak.sussess"

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->E2:Landroid/content/IntentFilter;

    .line 87
    .line 88
    const-string v0, "com.papa.maintab.clicked"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->G2:Landroid/content/IntentFilter;

    .line 94
    .line 95
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.refreshMyGame"

    .line 96
    .line 97
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    .line 99
    .line 100
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->G2:Landroid/content/IntentFilter;

    .line 101
    .line 102
    const-string v0, "com.join.android.app.mgsim.wufun.broadcast.paygamefinish"

    .line 103
    .line 104
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method

.method static synthetic j2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->s0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic k2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->w0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic l2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->Q0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic m2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->P0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic n2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->I0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic o2(Lcom/join/mgps/activity/PapaMainV3Fragment_;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->L0(ILjava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic p2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->v0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic q2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->y1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic r2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->t0(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic s2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->E0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic t2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->I1(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic u2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->W0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic v2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->X0(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic w2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment;->o1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic x2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->D0()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic y2(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/PapaMainV3Fragment;->C0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic z2(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->C1()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method C0(Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "gameId",
            "item"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/PapaMainV3Fragment_$o0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment_$o0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method C1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$j;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$j;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method D0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaMainV3Fragment_$n0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaMainV3Fragment_$n0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method D1(Lcom/join/mgps/dto/HomeFloatData;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "homeFloatData"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$x;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$x;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/HomeFloatData;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method E0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaMainV3Fragment_$j0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaMainV3Fragment_$j0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method E1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$p;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$p;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method F1(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "vipPopDatas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/VipPopData;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$h;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/util/List;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method I0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaMainV3Fragment_$e0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaMainV3Fragment_$e0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method I1(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$i;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$i;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method K0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$w;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$w;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x7d0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method K1(Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "mainBean",
            "m",
            "pnx",
            "fromNet"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaMainV3Fragment_$l;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move-object v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaMainV3Fragment_$l;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7;Ljava/lang/String;IZ)V

    .line 10
    .line 11
    .line 12
    const-wide/16 p1, 0x0

    .line 13
    .line 14
    const-string p3, ""

    .line 15
    .line 16
    invoke-static {p3, v6, p1, p2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method L0(ILjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "messageId",
            "messageType"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/PapaMainV3Fragment_$f0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move v6, p1

    .line 12
    move-object v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment_$f0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;ILjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method N1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$y;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$y;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method P0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$d0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$d0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method P1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$g;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$g;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method Q0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$c0;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$c0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method W0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaMainV3Fragment_$k0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaMainV3Fragment_$k0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method X0(Ljava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "m",
            "pnx"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/activity/PapaMainV3Fragment_$l0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v8

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    move v7, p2

    .line 13
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/activity/PapaMainV3Fragment_$l0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v8}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method Y0()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$k;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$k;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method b1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$s;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$s;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method c1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$m;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$m;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method e1(Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$f;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Landroid/content/Intent;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public getBean(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->x2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public internalFindViewById(I)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(I)TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->w2:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    :goto_0
    return-object p1
.end method

.method m1(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$z;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method n1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$n;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method notifyDataSetChanged()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$o;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$o;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method o1(Lcom/join/mgps/dto/PAPAHomeBeanV7;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "mainBean"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/PapaMainV3Fragment_$m0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/PapaMainV3Fragment_$m0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;Lcom/join/mgps/dto/PAPAHomeBeanV7;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->v2:Lzc/c;

    .line 2
    .line 3
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_;->init_(Landroid/os/Bundle;)V

    .line 8
    .line 9
    .line 10
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->z2:Landroid/content/BroadcastReceiver;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->y2:Landroid/content/IntentFilter;

    .line 20
    .line 21
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->B2:Landroid/content/BroadcastReceiver;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->A2:Landroid/content/IntentFilter;

    .line 31
    .line 32
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->D2:Landroid/content/BroadcastReceiver;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->C2:Landroid/content/IntentFilter;

    .line 42
    .line 43
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->F2:Landroid/content/BroadcastReceiver;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->E2:Landroid/content/IntentFilter;

    .line 53
    .line 54
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->H2:Landroid/content/BroadcastReceiver;

    .line 62
    .line 63
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->G2:Landroid/content/IntentFilter;

    .line 64
    .line 65
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 66
    .line 67
    .line 68
    invoke-static {v0}, Lzc/c;->c(Lzc/c;)Lzc/c;

    .line 69
    .line 70
    .line 71
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
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
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->w2:Landroid/view/View;

    .line 6
    .line 7
    if-nez p3, :cond_0

    .line 8
    .line 9
    const p3, 0x7f0d0722

    .line 10
    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->w2:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->w2:Landroid/view/View;

    .line 20
    .line 21
    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->z2:Landroid/content/BroadcastReceiver;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->B2:Landroid/content/BroadcastReceiver;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->D2:Landroid/content/BroadcastReceiver;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->F2:Landroid/content/BroadcastReceiver;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iget-object v1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->H2:Landroid/content/BroadcastReceiver;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 44
    .line 45
    .line 46
    invoke-super {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->onDestroy()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->w2:Landroid/view/View;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i:Landroid/widget/TextView;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l:Landroid/widget/ImageView;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m:Landroid/view/View;

    .line 18
    .line 19
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->o:Landroid/widget/ImageView;

    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p:Landroid/view/View;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 28
    .line 29
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->s:Landroid/widget/ImageView;

    .line 30
    .line 31
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t:Lcom/google/android/material/appbar/AppBarLayout;

    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->K:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 34
    .line 35
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->L:Landroid/view/View;

    .line 36
    .line 37
    return-void
.end method

.method public onViewChanged(Lzc/a;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hasViews"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a0e8e

    .line 2
    .line 3
    .line 4
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->e:Lcom/join/android/app/component/xrecyclerview/XRecyclerView2;

    .line 11
    .line 12
    const v0, 0x7f0a1af5

    .line 13
    .line 14
    .line 15
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/TextView;

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->i:Landroid/widget/TextView;

    .line 22
    .line 23
    const v0, 0x7f0a0f95

    .line 24
    .line 25
    .line 26
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, Landroid/widget/LinearLayout;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->j:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    const v0, 0x7f0a0f92

    .line 35
    .line 36
    .line 37
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Landroid/widget/LinearLayout;

    .line 42
    .line 43
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->k:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    const v0, 0x7f0a10a2

    .line 46
    .line 47
    .line 48
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    check-cast v0, Landroid/widget/ImageView;

    .line 53
    .line 54
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l:Landroid/widget/ImageView;

    .line 55
    .line 56
    const v0, 0x7f0a177d

    .line 57
    .line 58
    .line 59
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m:Landroid/view/View;

    .line 64
    .line 65
    const v0, 0x7f0a09ca

    .line 66
    .line 67
    .line 68
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 75
    .line 76
    const v0, 0x7f0a086c

    .line 77
    .line 78
    .line 79
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/ImageView;

    .line 84
    .line 85
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->o:Landroid/widget/ImageView;

    .line 86
    .line 87
    const v0, 0x7f0a1628

    .line 88
    .line 89
    .line 90
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->p:Landroid/view/View;

    .line 95
    .line 96
    const v0, 0x7f0a0652

    .line 97
    .line 98
    .line 99
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    check-cast v0, Landroid/widget/FrameLayout;

    .line 104
    .line 105
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 106
    .line 107
    const v0, 0x7f0a18dd

    .line 108
    .line 109
    .line 110
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    check-cast v0, Landroid/widget/ViewFlipper;

    .line 115
    .line 116
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->r:Landroid/widget/ViewFlipper;

    .line 117
    .line 118
    const v0, 0x7f0a09f1

    .line 119
    .line 120
    .line 121
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    check-cast v0, Landroid/widget/ImageView;

    .line 126
    .line 127
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->s:Landroid/widget/ImageView;

    .line 128
    .line 129
    const v0, 0x7f0a0104

    .line 130
    .line 131
    .line 132
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    .line 137
    .line 138
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->t:Lcom/google/android/material/appbar/AppBarLayout;

    .line 139
    .line 140
    const v0, 0x7f0a0fe4

    .line 141
    .line 142
    .line 143
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    check-cast v0, Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 148
    .line 149
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->K:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 150
    .line 151
    const v0, 0x7f0a14b4

    .line 152
    .line 153
    .line 154
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    iput-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->L:Landroid/view/View;

    .line 159
    .line 160
    const v0, 0x7f0a1368

    .line 161
    .line 162
    .line 163
    invoke-interface {p1, v0}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    const v1, 0x7f0a151d

    .line 168
    .line 169
    .line 170
    invoke-interface {p1, v1}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    const v2, 0x7f0a1508

    .line 175
    .line 176
    .line 177
    invoke-interface {p1, v2}, Lzc/a;->internalFindViewById(I)Landroid/view/View;

    .line 178
    .line 179
    .line 180
    move-result-object p1

    .line 181
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->L:Landroid/view/View;

    .line 182
    .line 183
    if-eqz v2, :cond_0

    .line 184
    .line 185
    new-instance v3, Lcom/join/mgps/activity/PapaMainV3Fragment_$p0;

    .line 186
    .line 187
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$p0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    .line 192
    .line 193
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->l:Landroid/widget/ImageView;

    .line 194
    .line 195
    if-eqz v2, :cond_1

    .line 196
    .line 197
    new-instance v3, Lcom/join/mgps/activity/PapaMainV3Fragment_$q0;

    .line 198
    .line 199
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$q0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->n:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 206
    .line 207
    if-eqz v2, :cond_2

    .line 208
    .line 209
    new-instance v3, Lcom/join/mgps/activity/PapaMainV3Fragment_$r0;

    .line 210
    .line 211
    invoke-direct {v3, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$r0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    .line 216
    .line 217
    :cond_2
    if-eqz v0, :cond_3

    .line 218
    .line 219
    new-instance v2, Lcom/join/mgps/activity/PapaMainV3Fragment_$s0;

    .line 220
    .line 221
    invoke-direct {v2, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$s0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 225
    .line 226
    .line 227
    :cond_3
    if-eqz v1, :cond_4

    .line 228
    .line 229
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$a;

    .line 230
    .line 231
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$a;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 235
    .line 236
    .line 237
    :cond_4
    if-eqz p1, :cond_5

    .line 238
    .line 239
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$b;

    .line 240
    .line 241
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$b;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 242
    .line 243
    .line 244
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 245
    .line 246
    .line 247
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->m:Landroid/view/View;

    .line 248
    .line 249
    if-eqz p1, :cond_6

    .line 250
    .line 251
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$c;

    .line 252
    .line 253
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$c;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 254
    .line 255
    .line 256
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    :cond_6
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->q:Landroid/widget/FrameLayout;

    .line 260
    .line 261
    if-eqz p1, :cond_7

    .line 262
    .line 263
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$d;

    .line 264
    .line 265
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$d;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    .line 270
    .line 271
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment;->s:Landroid/widget/ImageView;

    .line 272
    .line 273
    if-eqz p1, :cond_8

    .line 274
    .line 275
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$e;

    .line 276
    .line 277
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$e;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 278
    .line 279
    .line 280
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    .line 282
    .line 283
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/activity/PapaMainV3Fragment;->afterViews()V

    .line 284
    .line 285
    .line 286
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->v2:Lzc/c;

    .line 5
    .line 6
    invoke-virtual {p1, p0}, Lzc/c;->a(Lzc/a;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public putBean(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/PapaMainV3Fragment_;->x2:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method s0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$a0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$a0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLoding()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$t;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$t;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showLodingFailed()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$u;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$u;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMain()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$v;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$v;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method showMessage(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$q;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$q;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method t0(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v7, Lcom/join/mgps/activity/PapaMainV3Fragment_$i0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v7

    .line 10
    move-object v1, p0

    .line 11
    move-object v6, p1

    .line 12
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/activity/PapaMainV3Fragment_$i0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-static {v7}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method v0()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaMainV3Fragment_$g0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaMainV3Fragment_$g0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method v1()V
    .locals 4

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$r;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/PapaMainV3Fragment_$r;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string v3, ""

    .line 9
    .line 10
    invoke-static {v3, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method w0(Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/PapaMainV3Fragment_$b0;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/activity/PapaMainV3Fragment_$b0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Lcom/join/mgps/dto/PAPAHomeBeanV7$HomeBeanDTO;)V

    .line 4
    .line 5
    .line 6
    const-wide/16 v1, 0x0

    .line 7
    .line 8
    const-string p1, ""

    .line 9
    .line 10
    invoke-static {p1, v0, v1, v2}, Lorg/androidannotations/api/b;->e(Ljava/lang/String;Ljava/lang/Runnable;J)V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method y1()V
    .locals 7

    .line 1
    new-instance v6, Lcom/join/mgps/activity/PapaMainV3Fragment_$h0;

    .line 2
    .line 3
    const-string v2, ""

    .line 4
    .line 5
    const-wide/16 v3, 0x0

    .line 6
    .line 7
    const-string v5, ""

    .line 8
    .line 9
    move-object v0, v6

    .line 10
    move-object v1, p0

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/activity/PapaMainV3Fragment_$h0;-><init>(Lcom/join/mgps/activity/PapaMainV3Fragment_;Ljava/lang/String;JLjava/lang/String;)V

    .line 12
    .line 13
    .line 14
    invoke-static {v6}, Lorg/androidannotations/api/a;->l(Lorg/androidannotations/api/a$c;)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
