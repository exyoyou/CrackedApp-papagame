.class public Lcom/byazt/ouz/my;
.super Lcom/byazt/xl/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x91
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/xl/c<",
        "Lcom/byazt/ouz/BackupView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lcom/byazt/xl/u;

.field public c:Lcom/byazt/ouz/BackupView;

.field public n:Lcom/byazt/xl/sp;

.field public tt:Landroid/view/View;

.field public uj:Lcom/byazt/xl/ve;

.field public ve:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;Lcom/byazt/xl/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/xl/c;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/ouz/my;->tt:Landroid/view/View;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/byazt/ouz/my;->ve:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/byazt/ouz/my;->a:Lcom/byazt/xl/u;

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/my;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ouz/my;->tt()V

    return-void
.end method

.method private tt()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/my;->uj:Lcom/byazt/xl/ve;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v3, p0, Lcom/byazt/ouz/my;->tt:Landroid/view/View;

    .line 8
    .line 9
    check-cast v3, Lcom/byazt/ouz/NativeExpressView;

    .line 10
    .line 11
    invoke-interface {v0, v3, v2}, Lcom/byazt/xl/ve;->c(Landroid/view/ViewGroup;I)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    const/16 v3, 0x6b

    .line 20
    .line 21
    if-nez v2, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/byazt/ouz/my;->n:Lcom/byazt/xl/sp;

    .line 24
    .line 25
    invoke-interface {v1, v3, v0}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_1
    iget-object v2, p0, Lcom/byazt/ouz/my;->a:Lcom/byazt/xl/u;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-interface {v2}, Lcom/byazt/xl/i;->da()V

    .line 36
    .line 37
    .line 38
    iget-object v2, p0, Lcom/byazt/ouz/my;->tt:Landroid/view/View;

    .line 39
    .line 40
    const-string v4, "tt_express_backup_fl_tag_26"

    .line 41
    .line 42
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Lcom/byazt/ouz/BackupView;

    .line 47
    .line 48
    iput-object v2, p0, Lcom/byazt/ouz/my;->c:Lcom/byazt/ouz/BackupView;

    .line 49
    .line 50
    if-eqz v2, :cond_4

    .line 51
    .line 52
    iget-object v0, p0, Lcom/byazt/ouz/my;->ve:Lcom/byazt/xv/ThemeStatusBroadcastReceiver;

    .line 53
    .line 54
    invoke-virtual {v2, v0}, Lcom/byazt/ouz/BackupView;->setThemeChangeReceiver(Lcom/byazt/xv/ThemeStatusBroadcastReceiver;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/byazt/xl/yp;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/byazt/xl/yp;-><init>()V

    .line 60
    .line 61
    .line 62
    iget-object v2, p0, Lcom/byazt/ouz/my;->c:Lcom/byazt/ouz/BackupView;

    .line 63
    .line 64
    const/4 v3, 0x0

    .line 65
    if-nez v2, :cond_2

    .line 66
    .line 67
    const/4 v2, 0x0

    .line 68
    goto :goto_0

    .line 69
    :cond_2
    invoke-virtual {v2}, Lcom/byazt/ouz/BackupView;->getRealWidth()F

    .line 70
    .line 71
    .line 72
    move-result v2

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/byazt/ouz/my;->c:Lcom/byazt/ouz/BackupView;

    .line 74
    .line 75
    if-nez v4, :cond_3

    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_3
    invoke-virtual {v4}, Lcom/byazt/ouz/BackupView;->getRealHeight()F

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    :goto_1
    invoke-virtual {v0, v1}, Lcom/byazt/xl/yp;->c(Z)V

    .line 83
    .line 84
    .line 85
    float-to-double v1, v2

    .line 86
    invoke-virtual {v0, v1, v2}, Lcom/byazt/xl/yp;->c(D)V

    .line 87
    .line 88
    .line 89
    float-to-double v1, v3

    .line 90
    invoke-virtual {v0, v1, v2}, Lcom/byazt/xl/yp;->tt(D)V

    .line 91
    .line 92
    .line 93
    iget-object v1, p0, Lcom/byazt/ouz/my;->n:Lcom/byazt/xl/sp;

    .line 94
    .line 95
    iget-object v2, p0, Lcom/byazt/ouz/my;->c:Lcom/byazt/ouz/BackupView;

    .line 96
    .line 97
    invoke-interface {v1, v2, v0}, Lcom/byazt/xl/sp;->c(Landroid/view/View;Lcom/byazt/xl/yp;)V

    .line 98
    .line 99
    .line 100
    return-void

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/byazt/ouz/my;->n:Lcom/byazt/xl/sp;

    .line 102
    .line 103
    invoke-interface {v1, v3, v0}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    .line 104
    .line 105
    .line 106
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/ouz/BackupView;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/byazt/ouz/my;->c:Lcom/byazt/ouz/BackupView;

    return-object v0
.end method

.method public c(Lcom/byazt/xl/sp;)V
    .locals 1

    .line 2
    iput-object p1, p0, Lcom/byazt/ouz/my;->n:Lcom/byazt/xl/sp;

    .line 3
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    invoke-direct {p0}, Lcom/byazt/ouz/my;->tt()V

    return-void

    .line 5
    :cond_0
    invoke-static {}, Lcom/byazt/omf/rh;->a()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/byazt/ouz/my$1;

    invoke-direct {v0, p0}, Lcom/byazt/ouz/my$1;-><init>(Lcom/byazt/ouz/my;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/byazt/xl/ve;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/ouz/my;->uj:Lcom/byazt/xl/ve;

    return-void
.end method

.method public synthetic sp()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ouz/my;->c()Lcom/byazt/ouz/BackupView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
