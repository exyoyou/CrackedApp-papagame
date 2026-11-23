.class public abstract Lcom/beizi/fusion/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/c/a;
.implements Ljava/util/Observer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/beizi/fusion/c/e$a;
    }
.end annotation


# static fields
.field protected static a:Landroid/content/Context;

.field private static r:Z


# instance fields
.field private A:I

.field private B:I

.field private C:I

.field private D:Ljava/util/Timer;

.field private E:Z

.field private F:Lcom/beizi/fusion/events/b;

.field private G:J

.field private H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;",
            ">;"
        }
    .end annotation
.end field

.field private I:Z

.field private J:Lcom/beizi/fusion/tool/ab;

.field private K:Lcom/beizi/fusion/c/e$a;

.field private L:Z

.field private M:Z

.field private N:Lcom/beizi/fusion/model/AdSpacesBean;

.field private O:Lcom/beizi/fusion/events/a;

.field private P:I

.field private Q:I

.field private R:I

.field private S:Z

.field private T:Z

.field private U:J

.field private V:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private W:Ljava/util/TimerTask;

.field private X:Ljava/lang/String;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/beizi/fusion/events/EventBean;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Ljava/lang/String;

.field protected f:J

.field protected g:Landroid/view/View;

.field protected h:Lcom/beizi/fusion/a;

.field protected i:Lcom/beizi/fusion/work/a;

.field protected j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/beizi/fusion/work/a;",
            ">;"
        }
    .end annotation
.end field

.field protected k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/beizi/fusion/c/c;",
            ">;"
        }
    .end annotation
.end field

.field protected l:Z

.field protected m:Ljava/lang/String;

.field protected n:Z

.field protected o:Z

.field protected p:Lcom/beizi/fusion/work/a;

.field protected q:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private s:Z

.field private t:Lcom/beizi/fusion/c/e;

.field private u:Lcom/beizi/fusion/model/AdSpacesBean;

.field private v:J

.field private w:J

.field private x:J

.field private volatile y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/a;J)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/Hashtable;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->j:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->k:Ljava/util/ArrayList;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->l:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->s:Z

    .line 22
    .line 23
    const-wide/16 v1, 0x1f4

    .line 24
    .line 25
    iput-wide v1, p0, Lcom/beizi/fusion/c/e;->v:J

    .line 26
    .line 27
    const-wide/16 v1, 0x64

    .line 28
    .line 29
    iput-wide v1, p0, Lcom/beizi/fusion/c/e;->w:J

    .line 30
    .line 31
    iput v0, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 32
    .line 33
    iput v0, p0, Lcom/beizi/fusion/c/e;->z:I

    .line 34
    .line 35
    iput v0, p0, Lcom/beizi/fusion/c/e;->A:I

    .line 36
    .line 37
    const/4 v1, 0x1

    .line 38
    iput v1, p0, Lcom/beizi/fusion/c/e;->B:I

    .line 39
    .line 40
    const/4 v2, 0x2

    .line 41
    iput v2, p0, Lcom/beizi/fusion/c/e;->C:I

    .line 42
    .line 43
    const/4 v3, 0x0

    .line 44
    iput-object v3, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    .line 45
    .line 46
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->E:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->I:Z

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->M:Z

    .line 51
    .line 52
    iput-object v3, p0, Lcom/beizi/fusion/c/e;->N:Lcom/beizi/fusion/model/AdSpacesBean;

    .line 53
    .line 54
    iput-object v3, p0, Lcom/beizi/fusion/c/e;->O:Lcom/beizi/fusion/events/a;

    .line 55
    .line 56
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->n:Z

    .line 57
    .line 58
    iput v0, p0, Lcom/beizi/fusion/c/e;->P:I

    .line 59
    .line 60
    iput v1, p0, Lcom/beizi/fusion/c/e;->Q:I

    .line 61
    .line 62
    iput v2, p0, Lcom/beizi/fusion/c/e;->R:I

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->o:Z

    .line 65
    .line 66
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->S:Z

    .line 67
    .line 68
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->T:Z

    .line 69
    .line 70
    iput-object v3, p0, Lcom/beizi/fusion/c/e;->p:Lcom/beizi/fusion/work/a;

    .line 71
    .line 72
    new-instance v0, Lcom/beizi/fusion/c/e$1;

    .line 73
    .line 74
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    invoke-direct {v0, p0, v1}, Lcom/beizi/fusion/c/e$1;-><init>(Lcom/beizi/fusion/c/e;Landroid/os/Looper;)V

    .line 79
    .line 80
    .line 81
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->q:Landroid/os/Handler;

    .line 82
    .line 83
    iput-object v3, p0, Lcom/beizi/fusion/c/e;->W:Ljava/util/TimerTask;

    .line 84
    .line 85
    if-nez p1, :cond_0

    .line 86
    .line 87
    const-string p1, "Illegal Argument: context is null"

    .line 88
    .line 89
    invoke-static {p1}, Lcom/beizi/fusion/tool/au;->b(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_0
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    .line 94
    .line 95
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sput-object p1, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    .line 100
    .line 101
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    .line 102
    .line 103
    instance-of p1, p1, Landroid/app/Activity;

    .line 104
    .line 105
    if-nez p1, :cond_1

    .line 106
    .line 107
    const-string p1, "Illegal Argument: context is not Activity context"

    .line 108
    .line 109
    invoke-static {p1}, Lcom/beizi/fusion/tool/au;->b(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    :cond_1
    :goto_0
    iput-object p2, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    .line 113
    .line 114
    iput-object p3, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    .line 115
    .line 116
    iput-wide p4, p0, Lcom/beizi/fusion/c/e;->f:J

    .line 117
    .line 118
    iput-object p0, p0, Lcom/beizi/fusion/c/e;->t:Lcom/beizi/fusion/c/e;

    .line 119
    .line 120
    sget-object p1, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    .line 121
    .line 122
    if-nez p1, :cond_2

    .line 123
    .line 124
    if-eqz p3, :cond_2

    .line 125
    .line 126
    const/16 p1, 0x2794

    .line 127
    .line 128
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 129
    .line 130
    .line 131
    :cond_2
    return-void
.end method

.method private F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->J:Lcom/beizi/fusion/tool/ab;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/beizi/fusion/tool/ab;->a(Landroid/content/Context;)Lcom/beizi/fusion/tool/ab;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->J:Lcom/beizi/fusion/tool/ab;

    .line 13
    .line 14
    new-instance v0, Landroid/content/IntentFilter;

    .line 15
    .line 16
    const-string v1, "com.ad.action.UPDATE_CONFIG_SUCCESS"

    .line 17
    .line 18
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    new-instance v1, Lcom/beizi/fusion/c/e$a;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/beizi/fusion/c/e$a;-><init>(Lcom/beizi/fusion/c/e;)V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/beizi/fusion/c/e;->K:Lcom/beizi/fusion/c/e$a;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/beizi/fusion/c/e;->J:Lcom/beizi/fusion/tool/ab;

    .line 29
    .line 30
    invoke-virtual {v2, v1, v0}, Lcom/beizi/fusion/tool/ab;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private G()V
    .locals 7

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->L:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->F()V

    .line 7
    .line 8
    .line 9
    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/beizi/fusion/update/b;->a(Landroid/content/Context;)Lcom/beizi/fusion/update/b;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const/4 v1, 0x5

    .line 16
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/update/b;->b(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    .line 20
    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Ljava/util/Timer;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    .line 29
    .line 30
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->W:Ljava/util/TimerTask;

    .line 31
    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    new-instance v0, Lcom/beizi/fusion/c/e$2;

    .line 35
    .line 36
    invoke-direct {v0, p0}, Lcom/beizi/fusion/c/e$2;-><init>(Lcom/beizi/fusion/c/e;)V

    .line 37
    .line 38
    .line 39
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->W:Ljava/util/TimerTask;

    .line 40
    .line 41
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    .line 42
    .line 43
    if-eqz v0, :cond_5

    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->W:Ljava/util/TimerTask;

    .line 46
    .line 47
    if-eqz v0, :cond_5

    .line 48
    .line 49
    iget-wide v0, p0, Lcom/beizi/fusion/c/e;->f:J

    .line 50
    .line 51
    const-wide/16 v2, 0x7d0

    .line 52
    .line 53
    cmp-long v4, v0, v2

    .line 54
    .line 55
    if-lez v4, :cond_3

    .line 56
    .line 57
    move-wide v0, v2

    .line 58
    :cond_3
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->x:J

    .line 59
    .line 60
    const-wide/16 v4, 0x0

    .line 61
    .line 62
    cmp-long v6, v2, v4

    .line 63
    .line 64
    if-lez v6, :cond_4

    .line 65
    .line 66
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 67
    .line 68
    .line 69
    move-result-wide v0

    .line 70
    :cond_4
    iget-object v2, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    .line 71
    .line 72
    iget-object v3, p0, Lcom/beizi/fusion/c/e;->W:Ljava/util/TimerTask;

    .line 73
    .line 74
    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .line 76
    .line 77
    :catch_0
    :cond_5
    return-void
.end method

.method private H()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->J:Lcom/beizi/fusion/tool/ab;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->K:Lcom/beizi/fusion/c/e$a;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/tool/ab;->a(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    .line 11
    .line 12
    :catch_0
    :cond_0
    return-void
.end method

.method private I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setReqId(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->a()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 14
    .line 15
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setAppId(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 27
    .line 28
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setSpaceId(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 34
    .line 35
    iget-wide v1, p0, Lcom/beizi/fusion/c/e;->f:J

    .line 36
    .line 37
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setReserveTime(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    :cond_0
    return-void
.end method

.method private J()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean;->getBid()Lcom/beizi/fusion/model/AdSpacesBean$BidBean;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BidBean;->getReserveFRWTime()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    int-to-long v2, v2

    .line 18
    iput-wide v2, p0, Lcom/beizi/fusion/c/e;->v:J

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BidBean;->getReserveTime()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    int-to-long v2, v2

    .line 25
    iput-wide v2, p0, Lcom/beizi/fusion/c/e;->w:J

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BidBean;->getTimeOut()I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    int-to-long v2, v0

    .line 32
    iput-wide v2, p0, Lcom/beizi/fusion/c/e;->x:J

    .line 33
    .line 34
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->j()Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    .line 44
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->x:J

    .line 45
    .line 46
    const-wide/16 v4, 0x0

    .line 47
    .line 48
    cmp-long v0, v2, v4

    .line 49
    .line 50
    if-gtz v0, :cond_1

    .line 51
    .line 52
    const-wide/16 v2, 0x320

    .line 53
    .line 54
    iput-wide v2, p0, Lcom/beizi/fusion/c/e;->x:J

    .line 55
    .line 56
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->f:J

    .line 62
    .line 63
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v2, ":mUsableTime====="

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->v:J

    .line 72
    .line 73
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v2, "=====mLastTime:"

    .line 77
    .line 78
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->w:J

    .line 82
    .line 83
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->f:J

    .line 87
    .line 88
    iget-wide v4, p0, Lcom/beizi/fusion/c/e;->w:J

    .line 89
    .line 90
    cmp-long v0, v2, v4

    .line 91
    .line 92
    if-lez v0, :cond_3

    .line 93
    .line 94
    iget-wide v4, p0, Lcom/beizi/fusion/c/e;->v:J

    .line 95
    .line 96
    cmp-long v0, v2, v4

    .line 97
    .line 98
    if-lez v0, :cond_2

    .line 99
    .line 100
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->V()V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_2
    iget v0, p0, Lcom/beizi/fusion/c/e;->B:I

    .line 105
    .line 106
    iput v0, p0, Lcom/beizi/fusion/c/e;->z:I

    .line 107
    .line 108
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->W()V

    .line 109
    .line 110
    .line 111
    return v1

    .line 112
    :cond_3
    const/16 v0, 0x2788

    .line 113
    .line 114
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 115
    .line 116
    .line 117
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 118
    .line 119
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 120
    .line 121
    const/4 v1, 0x7

    .line 122
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 123
    .line 124
    .line 125
    const/4 v0, 0x1

    .line 126
    return v0
.end method

.method private K()V
    .locals 2

    .line 1
    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/u;->b(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method private L()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 11
    .line 12
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 18
    .line 19
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->d:Lcom/beizi/fusion/events/a$g;

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 25
    .line 26
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 32
    .line 33
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 39
    .line 40
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 41
    .line 42
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 46
    .line 47
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    .line 48
    .line 49
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 50
    .line 51
    .line 52
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 53
    .line 54
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 60
    .line 61
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 62
    .line 63
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 67
    .line 68
    iget-object v1, v0, Lcom/beizi/fusion/events/b;->k:Lcom/beizi/fusion/events/a$a;

    .line 69
    .line 70
    invoke-virtual {v1, v0}, Ljava/util/Observable;->addObserver(Ljava/util/Observer;)V

    .line 71
    .line 72
    .line 73
    :cond_0
    return-void
.end method

.method private M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean;->getAdType()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    const/4 v2, -0x1

    .line 17
    sparse-switch v1, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :sswitch_0
    const-string v1, "BANNER"

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_0

    .line 29
    .line 30
    goto/16 :goto_0

    .line 31
    .line 32
    :cond_0
    const/16 v2, 0x8

    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :sswitch_1
    const-string v1, "REGIONALNATIVE"

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    move-result v0

    .line 42
    if-nez v0, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v2, 0x7

    .line 46
    goto :goto_0

    .line 47
    :sswitch_2
    const-string v1, "FULLSCREENVIDEO"

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    if-nez v0, :cond_2

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    const/4 v2, 0x6

    .line 57
    goto :goto_0

    .line 58
    :sswitch_3
    const-string v1, "INTERACTIVECARD"

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v0

    .line 64
    if-nez v0, :cond_3

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const/4 v2, 0x5

    .line 68
    goto :goto_0

    .line 69
    :sswitch_4
    const-string v1, "DRAWFLOW"

    .line 70
    .line 71
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    move-result v0

    .line 75
    if-nez v0, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    const/4 v2, 0x4

    .line 79
    goto :goto_0

    .line 80
    :sswitch_5
    const-string v1, "REWARDEDVIDEO"

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    if-nez v0, :cond_5

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    const/4 v2, 0x3

    .line 90
    goto :goto_0

    .line 91
    :sswitch_6
    const-string v1, "INTERSTITIAL"

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_6

    .line 98
    .line 99
    goto :goto_0

    .line 100
    :cond_6
    const/4 v2, 0x2

    .line 101
    goto :goto_0

    .line 102
    :sswitch_7
    const-string v1, "SPLASH"

    .line 103
    .line 104
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 105
    .line 106
    .line 107
    move-result v0

    .line 108
    if-nez v0, :cond_7

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_7
    const/4 v2, 0x1

    .line 112
    goto :goto_0

    .line 113
    :sswitch_8
    const-string v1, "NATIVE"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-nez v0, :cond_8

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_8
    const/4 v2, 0x0

    .line 123
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 124
    .line 125
    .line 126
    const/4 v0, 0x0

    .line 127
    goto :goto_1

    .line 128
    :pswitch_0
    const-string v0, "4"

    .line 129
    .line 130
    goto :goto_1

    .line 131
    :pswitch_1
    const-string v0, "12"

    .line 132
    .line 133
    goto :goto_1

    .line 134
    :pswitch_2
    const-string v0, "6"

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :pswitch_3
    const-string v0, "13"

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :pswitch_4
    const-string v0, "7"

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :pswitch_5
    const-string v0, "1"

    .line 144
    .line 145
    goto :goto_1

    .line 146
    :pswitch_6
    const-string v0, "3"

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :pswitch_7
    const-string v0, "2"

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :pswitch_8
    const-string v0, "5"

    .line 153
    .line 154
    :goto_1
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 155
    .line 156
    if-eqz v1, :cond_9

    .line 157
    .line 158
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/events/EventBean;->setAdType(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    :cond_9
    return-void

    .line 162
    nop

    .line 163
    :sswitch_data_0
    .sparse-switch
        -0x772abbe9 -> :sswitch_8
        -0x6dd2e199 -> :sswitch_7
        -0x51d5b0d4 -> :sswitch_6
        -0x1616c6f3 -> :sswitch_5
        -0x29b238e -> :sswitch_4
        0xf0aa4d2 -> :sswitch_3
        0x27475180 -> :sswitch_2
        0x66b626f6 -> :sswitch_1
        0x7458732c -> :sswitch_0
    .end sparse-switch

    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    .line 196
    .line 197
    .line 198
    .line 199
    .line 200
    .line 201
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private N()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->T:Z

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->p:Lcom/beizi/fusion/work/a;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    sget-object v1, Lcom/beizi/fusion/e/a;->a:Lcom/beizi/fusion/e/a;

    .line 16
    .line 17
    if-ne v0, v1, :cond_1

    .line 18
    .line 19
    :cond_0
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method private O()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Lcom/beizi/fusion/work/a;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    sget-object v2, Lcom/beizi/fusion/e/a;->a:Lcom/beizi/fusion/e/a;

    .line 30
    .line 31
    if-ne v1, v2, :cond_0

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    return v0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    return v0
.end method

.method private declared-synchronized P()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->k:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    .line 6
    .line 7
    monitor-exit p0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception v0

    .line 10
    monitor-exit p0

    .line 11
    throw v0
.end method

.method private Q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method private R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "mManagerObserver.mManagerResultStatus.getStatus() = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BeiZis"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x1

    .line 46
    const/4 v2, 0x3

    .line 47
    if-eq v0, v1, :cond_1

    .line 48
    .line 49
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 50
    .line 51
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    const/4 v1, 0x2

    .line 58
    if-eq v0, v1, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 61
    .line 62
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-ne v0, v2, :cond_2

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 73
    .line 74
    invoke-virtual {v0, v2}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void
.end method

.method private S()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "mManagerObserver.mManagerResultStatus.getStatus() = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 16
    .line 17
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BeiZis"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 36
    .line 37
    if-eqz v0, :cond_2

    .line 38
    .line 39
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    const/4 v1, 0x3

    .line 46
    if-eq v0, v1, :cond_1

    .line 47
    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const/4 v1, 0x1

    .line 57
    if-eq v0, v1, :cond_1

    .line 58
    .line 59
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    const/4 v1, 0x2

    .line 68
    if-ne v0, v1, :cond_2

    .line 69
    .line 70
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 73
    .line 74
    const/4 v1, 0x4

    .line 75
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 76
    .line 77
    .line 78
    :cond_2
    return-void
.end method

.method private T()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->U()Lcom/beizi/fusion/work/a;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    new-instance v1, Lcom/beizi/fusion/model/ChannelBidResult;

    .line 11
    .line 12
    invoke-direct {v1}, Lcom/beizi/fusion/model/ChannelBidResult;-><init>()V

    .line 13
    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-direct {p0, v0}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    .line 18
    .line 19
    .line 20
    move-result-wide v2

    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/beizi/fusion/model/ChannelBidResult;->setEcpm(D)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/model/ChannelBidResult;->setChannelName(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/ChannelBidResult;->setBidType(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 40
    .line 41
    invoke-direct {p0, v0}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/beizi/fusion/model/ChannelBidResult;->setEcpm(D)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/ChannelBidResult;->setChannelName(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/ChannelBidResult;->setBidType(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/work/a;->a(Lcom/beizi/fusion/model/ChannelBidResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    :catch_0
    return-void
.end method

.method private U()Lcom/beizi/fusion/work/a;
    .locals 10

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 3
    .line 4
    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-eqz v2, :cond_7

    .line 16
    .line 17
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    if-lez v3, :cond_7

    .line 22
    .line 23
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    move-object v3, v0

    .line 32
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-eqz v4, :cond_6

    .line 37
    .line 38
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v4

    .line 42
    check-cast v4, Lcom/beizi/fusion/work/a;

    .line 43
    .line 44
    if-nez v4, :cond_2

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    invoke-virtual {v4}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 48
    .line 49
    .line 50
    move-result-object v5

    .line 51
    if-eqz v5, :cond_1

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    if-nez v6, :cond_3

    .line 62
    .line 63
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v6

    .line 67
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-nez v6, :cond_3

    .line 72
    .line 73
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v5

    .line 85
    if-eqz v5, :cond_3

    .line 86
    .line 87
    goto :goto_0

    .line 88
    :cond_3
    invoke-virtual {v4}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    .line 89
    .line 90
    .line 91
    move-result-object v5

    .line 92
    sget-object v6, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    .line 93
    .line 94
    if-eq v5, v6, :cond_4

    .line 95
    .line 96
    goto :goto_0

    .line 97
    :cond_4
    const-string v5, "BeiZis"

    .line 98
    .line 99
    new-instance v6, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v7, "handleSendWinNotice ---getSecondAdWorker---"

    .line 105
    .line 106
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v7, "---"

    .line 117
    .line 118
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v4}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v7

    .line 125
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    const-string v7, ";getPrice:"

    .line 129
    .line 130
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    invoke-direct {p0, v4}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    .line 134
    .line 135
    .line 136
    move-result-wide v7

    .line 137
    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    invoke-static {v5, v6}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    if-nez v3, :cond_5

    .line 148
    .line 149
    :goto_1
    move-object v3, v4

    .line 150
    goto :goto_0

    .line 151
    :cond_5
    invoke-direct {p0, v4}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    .line 152
    .line 153
    .line 154
    move-result-wide v5

    .line 155
    invoke-direct {p0, v3}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    .line 156
    .line 157
    .line 158
    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    cmpl-double v9, v5, v7

    .line 160
    .line 161
    if-lez v9, :cond_1

    .line 162
    .line 163
    goto :goto_1

    .line 164
    :cond_6
    move-object v0, v3

    .line 165
    :catch_0
    :cond_7
    return-object v0
.end method

.method private V()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->q:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/beizi/fusion/c/e;->f:J

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->v:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->x:J

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-lez v6, :cond_0

    .line 17
    .line 18
    const-wide/16 v6, 0x32

    .line 19
    .line 20
    sub-long/2addr v2, v6

    .line 21
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    :cond_0
    cmp-long v2, v0, v4

    .line 26
    .line 27
    if-gtz v2, :cond_1

    .line 28
    .line 29
    const-wide/16 v0, 0x64

    .line 30
    .line 31
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/c/e;->q:Landroid/os/Handler;

    .line 32
    .line 33
    const/4 v3, 0x1

    .line 34
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 35
    .line 36
    .line 37
    :cond_2
    return-void
.end method

.method private W()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->q:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    iget-wide v0, p0, Lcom/beizi/fusion/c/e;->f:J

    .line 6
    .line 7
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->w:J

    .line 8
    .line 9
    sub-long/2addr v0, v2

    .line 10
    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->x:J

    .line 11
    .line 12
    const-wide/16 v4, 0x0

    .line 13
    .line 14
    cmp-long v6, v2, v4

    .line 15
    .line 16
    if-lez v6, :cond_0

    .line 17
    .line 18
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 19
    .line 20
    .line 21
    move-result-wide v0

    .line 22
    :cond_0
    cmp-long v2, v0, v4

    .line 23
    .line 24
    if-gtz v2, :cond_1

    .line 25
    .line 26
    const-wide/16 v0, 0x3e8

    .line 27
    .line 28
    :cond_1
    iget-object v2, p0, Lcom/beizi/fusion/c/e;->q:Landroid/os/Handler;

    .line 29
    .line 30
    const/4 v3, 0x2

    .line 31
    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 32
    .line 33
    .line 34
    :cond_2
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/c/e;->B:I

    return p0
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;I)I
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/c/e;->z:I

    return p1
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)I
    .locals 6

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_0

    .line 143
    :cond_0
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object p2

    .line 144
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    invoke-virtual {v0, p2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 145
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 146
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    invoke-virtual {v0, p2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_4

    .line 147
    iget-wide v0, p0, Lcom/beizi/fusion/c/e;->f:J

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/beizi/fusion/c/e;->G:J

    sub-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    .line 148
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    const/4 v0, 0x4

    invoke-virtual {p1, p2, v0}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    return v0

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 150
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    const/4 v0, 0x6

    invoke-virtual {p1, p2, v0}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    return v0

    .line 151
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUsableTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " forwardBean.getSleepTime() + System.currentTimeMillis() - mEnterRequestMethodTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    add-long/2addr v2, v4

    iget-wide v4, p0, Lcom/beizi/fusion/c/e;->G:J

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ",forwardBean.getSleepTime() = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BeiZis"

    .line 153
    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/b;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 155
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    const/4 v0, -0x1

    invoke-virtual {p1, p2, v0}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    return v0

    .line 156
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    invoke-virtual {p1, p2, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    return v1

    .line 157
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    const/4 v0, -0x2

    invoke-virtual {p1, p2, v0}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    return v0

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private a(Ljava/lang/String;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/c/g;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "comparePrices handleCompeteToDetermine worker:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeiZis"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    iput-object p2, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 251
    iget-object p2, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p2, p2, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    const/4 v0, 0x2

    invoke-virtual {p2, p1, v0}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 252
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    .line 253
    sget-object p1, Lcom/beizi/fusion/c/g;->c:Lcom/beizi/fusion/c/g;

    return-object p1
.end method

.method private a(Ljava/lang/String;Lcom/beizi/fusion/work/a;Ljava/lang/String;)Lcom/beizi/fusion/c/g;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 254
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->E:Z

    if-nez v0, :cond_0

    .line 255
    invoke-direct {p0, p2, p3}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/work/a;Ljava/lang/String;)V

    .line 256
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->b()V

    .line 257
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    .line 258
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->l(Ljava/lang/String;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p3, 0x1

    .line 259
    invoke-direct {p0, p2, p3}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;I)V

    .line 260
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->m(Ljava/lang/String;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/events/a;)Lcom/beizi/fusion/events/a;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->O:Lcom/beizi/fusion/events/a;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/events/b;)Lcom/beizi/fusion/events/b;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    return-object p1
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/model/AdSpacesBean;)Lcom/beizi/fusion/model/AdSpacesBean;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    return-object p1
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Ljava/util/List;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;",
            ">;"
        }
    .end annotation

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p3, :cond_0

    .line 57
    iget-object p3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBid()Lcom/beizi/fusion/model/AdSpacesBean$BidBean;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBidComponent()Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBidComponent()Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;->getBidList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBidComponent()Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;->getBidList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_0

    .line 58
    iget-object p3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBidComponent()Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;

    move-result-object p3

    invoke-virtual {p3}, Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;->getBidList()Ljava/util/List;

    move-result-object p3

    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 59
    :cond_0
    iget-object p3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 60
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->i()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, p3}, Lcom/beizi/fusion/e/b;->a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 61
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 62
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;Ljava/util/Timer;)Ljava/util/Timer;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    return-object p1
.end method

.method private a(I)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-direct {p0, v0, p1}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/work/a;I)V

    .line 165
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->q()V

    .line 166
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->o()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Landroid/view/View;)V

    .line 167
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->f()Ljava/lang/String;

    move-result-object p1

    const-string v0, "4"

    .line 168
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 169
    iget-boolean p1, p0, Lcom/beizi/fusion/c/e;->n:Z

    if-nez p1, :cond_0

    .line 170
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->e()V

    const/4 p1, 0x1

    .line 171
    iput-boolean p1, p0, Lcom/beizi/fusion/c/e;->n:Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;Landroid/view/ViewGroup;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->b(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;Lcom/beizi/fusion/work/a;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;I)V

    return-void
.end method

.method private a(Lcom/beizi/fusion/work/a;I)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 128
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    move-result-object v0

    .line 129
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/work/a;

    .line 130
    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v2

    .line 131
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v3

    if-eqz v2, :cond_1

    if-nez v3, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 133
    :cond_3
    invoke-direct {p0, v1, p2}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;I)V

    .line 134
    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->at()Lcom/beizi/fusion/c/g;

    move-result-object v3

    sget-object v4, Lcom/beizi/fusion/c/g;->c:Lcom/beizi/fusion/c/g;

    if-ne v3, v4, :cond_4

    .line 135
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/beizi/fusion/c/e;->f(Ljava/lang/String;)V

    goto :goto_0

    .line 136
    :cond_4
    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    move-result-object v1

    sget-object v3, Lcom/beizi/fusion/e/a;->a:Lcom/beizi/fusion/e/a;

    if-ne v1, v3, :cond_1

    .line 137
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/beizi/fusion/c/e;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method private a(Lcom/beizi/fusion/work/a;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x1

    .line 261
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->E:Z

    .line 262
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "---handleCompeteSuccess---"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "---"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "BeiZis"

    invoke-static {v1, p2}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 264
    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/work/a;I)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/work/a;)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->j:Ljava/util/Map;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "materialInfo"

    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-nez v1, :cond_1

    return-void

    .line 270
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->V:Ljava/util/Map;

    if-nez v1, :cond_2

    return-void

    .line 271
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    .line 272
    :cond_3
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->ax()Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_4

    return-void

    .line 273
    :cond_4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    return-void

    .line 274
    :cond_5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method static synthetic a(Lcom/beizi/fusion/c/e;Z)Z
    .locals 0

    .line 9
    iput-boolean p1, p0, Lcom/beizi/fusion/c/e;->L:Z

    return p1
.end method

.method private a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/lang/String;)Z
    .locals 13

    move-object v9, p0

    move-object/from16 v10, p3

    .line 83
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    const/4 v11, 0x2

    invoke-virtual {v0, v10, v11}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    const/4 v12, 0x0

    if-eqz p2, :cond_0

    .line 84
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "complain_config_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 85
    iget-object v1, v9, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 86
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getComplain()Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 87
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$ComplainBean;->getDuration()J

    move-result-wide v2

    .line 88
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-gez v0, :cond_0

    .line 89
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    const/16 v1, 0xa

    invoke-virtual {v0, v10, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v12

    :catch_0
    nop

    .line 90
    :cond_0
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-wide v1, v9, Lcom/beizi/fusion/c/e;->f:J

    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getFilter()Lcom/beizi/fusion/model/AdSpacesBean$FilterBean;

    move-result-object v3

    iget-object v4, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v6

    .line 91
    invoke-virtual {p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getSpaceId()Ljava/lang/String;

    move-result-object v7

    move-object v8, p0

    .line 92
    invoke-static/range {v0 .. v8}, Lcom/beizi/fusion/e/b;->a(Landroid/content/Context;JLcom/beizi/fusion/model/AdSpacesBean$FilterBean;Lcom/beizi/fusion/events/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/c/a;)V

    .line 93
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    invoke-virtual {v0, v10}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 94
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    const/4 v1, -0x1

    invoke-virtual {v0, v10, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    return v12

    .line 96
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)I

    move-result v0

    if-eq v0, v11, :cond_2

    return v12

    .line 97
    :cond_2
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    invoke-virtual {v0, v10, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    const/4 v0, 0x1

    return v0

    .line 98
    :cond_3
    iget-object v0, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    invoke-virtual {v0, v10}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x7

    const-string v2, "channel error = "

    invoke-virtual {p0, v0, v1, v2}, Lcom/beizi/fusion/c/e;->a(IILjava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdDispense buyerBean AdFilter fail:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v1, v1, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    .line 100
    invoke-static {v10, v1}, Lcom/beizi/fusion/events/a;->a(Ljava/lang/String;Lcom/beizi/fusion/events/a$l;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return v12
.end method

.method static synthetic b(Lcom/beizi/fusion/c/e;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/beizi/fusion/c/e;->C:I

    return p0
.end method

.method private b()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method private b(Landroid/view/ViewGroup;)V
    .locals 12

    .line 8
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->I:Z

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    if-eqz v0, :cond_16

    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/beizi/fusion/c/e;->U:J

    .line 10
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->m()V

    .line 11
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->n()V

    .line 12
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->d:Landroid/view/ViewGroup;

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/beizi/fusion/c/e;->G:J

    .line 14
    invoke-static {}, Lcom/beizi/fusion/tool/at;->a()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    .line 15
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/c/b;->f()Lcom/beizi/fusion/events/b;

    move-result-object p1

    .line 16
    new-instance v0, Lcom/beizi/fusion/events/b;

    new-instance v11, Lcom/beizi/fusion/events/EventBean;

    sget-object v2, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v1

    invoke-virtual {v1}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    const-string v8, ""

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, ""

    move-object v1, v11

    invoke-direct/range {v1 .. v10}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v11}, Lcom/beizi/fusion/events/b;-><init>(Lcom/beizi/fusion/events/EventBean;)V

    iput-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/c/e;->O:Lcom/beizi/fusion/events/a;

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->b()Lcom/beizi/fusion/events/EventBean;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    .line 19
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->I()V

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->O:Lcom/beizi/fusion/events/a;

    iget-object v1, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a;->a(Lcom/beizi/fusion/events/EventBean;)V

    .line 21
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->L()V

    .line 22
    invoke-static {}, Lcom/beizi/fusion/BeiZis;->isIsSyncInit()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    .line 23
    iget-object v0, p1, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result v0

    if-eq v0, v2, :cond_2

    :cond_1
    iget-boolean v0, p0, Lcom/beizi/fusion/c/e;->S:Z

    if-nez v0, :cond_2

    .line 24
    sget-object v0, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/model/ResponseInfo;->init()Lcom/beizi/fusion/model/ResponseInfo;

    .line 25
    iput-boolean v1, p0, Lcom/beizi/fusion/c/e;->S:Z

    :cond_2
    if-eqz p1, :cond_3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mInitObserver.mInitStatus.getStatus() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    invoke-virtual {v3}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",mManagerObserver.mGetLocalConfigStatus.getStatus() = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v3, v3, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    .line 27
    invoke-virtual {v3}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "BeiZis"

    .line 28
    invoke-static {v3, v0}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 29
    iget-object p1, p1, Lcom/beizi/fusion/events/b;->a:Lcom/beizi/fusion/events/a$i;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result p1

    if-ne p1, v2, :cond_4

    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    iget-boolean p1, p0, Lcom/beizi/fusion/c/e;->S:Z

    if-eqz p1, :cond_14

    .line 30
    :cond_5
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 31
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result p1

    const-string v3, "kGetLocalConfigStatusInternalError"

    const/4 v4, -0x2

    if-ne p1, v1, :cond_13

    .line 32
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1, v2}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 33
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-object v5, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->f()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/beizi/fusion/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean;

    move-result-object p1

    iput-object p1, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    const/4 v5, 0x3

    if-eqz p1, :cond_e

    .line 34
    iget-object v3, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    if-eqz v3, :cond_6

    .line 35
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean;->getFilterSsid()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Lcom/beizi/fusion/events/EventBean;->setPlatformFilterSsid(Ljava/lang/String;)V

    .line 36
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    iget-object v3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean;->getComponentSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/beizi/fusion/events/EventBean;->setComponentSsid(Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    iget-object v3, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBzComponentSsid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/beizi/fusion/events/EventBean;->setBzComponentSsid(Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->M()V

    .line 39
    :cond_6
    sget-object p1, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/beizi/fusion/model/ResponseInfo;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/model/ResponseInfo;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/beizi/fusion/model/ResponseInfo;->getManager()Lcom/beizi/fusion/model/Manager;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 41
    invoke-virtual {v3}, Lcom/beizi/fusion/model/Manager;->getAdSpaces()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 42
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 43
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/beizi/fusion/model/AdSpacesBean;

    if-eqz v3, :cond_7

    .line 44
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean;->getComponent()Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;

    move-result-object v4

    .line 45
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBidComponent()Lcom/beizi/fusion/model/AdSpacesBean$BidComponent;

    move-result-object v6

    .line 46
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean;->getBuyer()Ljava/util/List;

    move-result-object v3

    goto :goto_0

    :cond_7
    const/4 v4, 0x0

    move-object v3, v4

    move-object v6, v3

    :goto_0
    if-nez v4, :cond_8

    if-eqz v6, :cond_d

    :cond_8
    if-eqz v3, :cond_d

    .line 47
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    .line 48
    invoke-virtual {p1}, Lcom/beizi/fusion/model/ResponseInfo;->getMaxValidTime()J

    move-result-wide v3

    const-wide/16 v6, 0x0

    cmp-long p1, v3, v6

    if-nez p1, :cond_9

    const-wide v3, 0x9a7ec800L

    .line 49
    :cond_9
    sget-object p1, Lcom/beizi/fusion/c/e;->a:Landroid/content/Context;

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "lastUpdateTime"

    invoke-static {p1, v7, v6}, Lcom/beizi/fusion/tool/as;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v6

    cmp-long p1, v8, v3

    if-gtz p1, :cond_c

    .line 51
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->M:Z

    .line 52
    iput-boolean v1, p0, Lcom/beizi/fusion/c/e;->I:Z

    .line 53
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result p1

    if-ne p1, v2, :cond_16

    .line 54
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1, v5}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 55
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->J()Z

    move-result p1

    if-eqz p1, :cond_a

    return-void

    .line 56
    :cond_a
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->K()V

    .line 57
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/b;->c()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 58
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/a$l;->a(I)V

    return-void

    .line 59
    :cond_b
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean;)V

    goto/16 :goto_1

    .line 60
    :cond_c
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->I:Z

    .line 61
    iput-boolean v1, p0, Lcom/beizi/fusion/c/e;->M:Z

    .line 62
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->G()V

    goto/16 :goto_1

    .line 63
    :cond_d
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->I:Z

    .line 64
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->G()V

    goto/16 :goto_1

    .line 65
    :cond_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spaceBean is null and return fail mUpdateConfigSuccess:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/beizi/fusion/c/e;->L:Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    iget-boolean p1, p0, Lcom/beizi/fusion/c/e;->L:Z

    if-eqz p1, :cond_12

    .line 67
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result p1

    if-ne p1, v2, :cond_11

    .line 68
    invoke-static {}, Lcom/beizi/fusion/b/a;->a()I

    move-result p1

    if-ne p1, v1, :cond_f

    .line 69
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/a$l;->a(I)V

    const/16 p1, 0x2711

    .line 70
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    goto :goto_1

    :cond_f
    if-ne p1, v2, :cond_10

    .line 71
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/a$l;->a(I)V

    const/16 p1, 0x2774

    .line 72
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    goto :goto_1

    :cond_10
    if-ne p1, v5, :cond_16

    .line 73
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/a$l;->a(I)V

    const/16 p1, 0x277e

    .line 74
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    goto :goto_1

    .line 75
    :cond_11
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1, v4}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 76
    invoke-virtual {p0, v3}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 77
    :cond_12
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->I:Z

    .line 78
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->G()V

    goto :goto_1

    .line 79
    :cond_13
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {p1, v4}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 80
    invoke-virtual {p0, v3}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;)V

    goto :goto_1

    .line 81
    :cond_14
    iget-boolean p1, p0, Lcom/beizi/fusion/c/e;->L:Z

    if-eqz p1, :cond_15

    .line 82
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->I:Z

    .line 83
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->G()V

    goto :goto_1

    :cond_15
    const/16 p1, 0x2710

    .line 84
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    :cond_16
    :goto_1
    return-void
.end method

.method static synthetic b(Lcom/beizi/fusion/c/e;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->a(I)V

    return-void
.end method

.method private b(Lcom/beizi/fusion/work/a;I)V
    .locals 4

    const-string v0, "other"

    .line 85
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/work/a;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    :cond_0
    new-instance v1, Lcom/beizi/fusion/model/ChannelBidResult;

    invoke-direct {v1}, Lcom/beizi/fusion/model/ChannelBidResult;-><init>()V

    .line 87
    iget-object v2, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/ChannelBidResult;->setBidType(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/ChannelBidResult;->setChannelName(Ljava/lang/String;)V

    .line 90
    invoke-virtual {v1, p2}, Lcom/beizi/fusion/model/ChannelBidResult;->setReason(I)V

    .line 91
    iget-object p2, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-direct {p0, p2}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/beizi/fusion/model/ChannelBidResult;->setEcpm(D)V

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    .line 92
    invoke-virtual {v1, v2, v3}, Lcom/beizi/fusion/model/ChannelBidResult;->setEcpm(D)V

    .line 93
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/ChannelBidResult;->setChannelName(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v1, v0}, Lcom/beizi/fusion/model/ChannelBidResult;->setBidType(Ljava/lang/String;)V

    .line 95
    invoke-virtual {v1, p2}, Lcom/beizi/fusion/model/ChannelBidResult;->setReason(I)V

    .line 96
    :goto_0
    invoke-virtual {p1, v1}, Lcom/beizi/fusion/work/a;->b(Lcom/beizi/fusion/model/ChannelBidResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method static synthetic c(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->q:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/beizi/fusion/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->H()V

    return-void
.end method

.method private d(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/beizi/fusion/work/a;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/fusion/work/a;

    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->d()V

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/work/a;->a(Z)V

    goto :goto_0

    :cond_1
    return-void

    .line 7
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->g()V

    return-void
.end method

.method private d(Lcom/beizi/fusion/work/a;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    move-result-object v1

    .line 9
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/beizi/fusion/work/a;

    .line 10
    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v3

    .line 11
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v4

    if-eqz v3, :cond_1

    if-nez v4, :cond_2

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    invoke-virtual {p0, v2}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;)Z

    move-result v3

    if-nez v3, :cond_5

    invoke-virtual {p0, v2}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/work/a;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 14
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "worker.getAdStatus():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BeiZis"

    invoke-static {v4, v3}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    move-result-object v3

    sget-object v4, Lcom/beizi/fusion/e/a;->d:Lcom/beizi/fusion/e/a;

    if-eq v3, v4, :cond_1

    invoke-direct {p0, v2}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    move-result-wide v2

    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    return v0

    .line 16
    :cond_5
    :goto_1
    invoke-direct {p0, v2}, Lcom/beizi/fusion/c/e;->f(Lcom/beizi/fusion/work/a;)D

    move-result-wide v3

    .line 17
    invoke-virtual {v2}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    move-result-object v2

    sget-object v5, Lcom/beizi/fusion/e/a;->a:Lcom/beizi/fusion/e/a;

    if-eq v2, v5, :cond_6

    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    move-result-wide v5

    cmpl-double v2, v3, v5

    if-lez v2, :cond_1

    :cond_6
    return v0

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method private e(Lcom/beizi/fusion/work/a;)D
    .locals 5

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_4

    .line 13
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v2

    .line 15
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->c(Lcom/beizi/fusion/work/a;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAvgPrice()D

    move-result-wide v0

    goto :goto_1

    .line 17
    :cond_2
    :goto_0
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBidPrice()D

    move-result-wide v3

    cmpl-double p1, v3, v0

    if-lez p1, :cond_3

    .line 18
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBidPrice()D

    move-result-wide v0

    goto :goto_1

    .line 19
    :cond_3
    invoke-virtual {v2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getAvgPrice()D

    move-result-wide v0

    :cond_4
    :goto_1
    return-wide v0
.end method

.method static synthetic e(Lcom/beizi/fusion/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->I()V

    return-void
.end method

.method private f(Lcom/beizi/fusion/work/a;)D
    .locals 2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_0

    return-wide v0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object p1

    if-nez p1, :cond_1

    return-wide v0

    .line 5
    :cond_1
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBidPrice()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic f(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/events/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/c/e;->O:Lcom/beizi/fusion/events/a;

    return-object p0
.end method

.method static synthetic g(Lcom/beizi/fusion/c/e;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->L()V

    return-void
.end method

.method static synthetic h(Lcom/beizi/fusion/c/e;)Lcom/beizi/fusion/model/AdSpacesBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    return-object p0
.end method

.method private h(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "HPFRW"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private i(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter convertSelfChannel buyerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BeiZis"

    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcom/beizi/fusion/tool/at;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "BEIZI"

    :cond_0
    return-object p1
.end method

.method static synthetic i(Lcom/beizi/fusion/c/e;)Ljava/util/Timer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/beizi/fusion/c/e;->D:Ljava/util/Timer;

    return-object p0
.end method

.method static synthetic j(Lcom/beizi/fusion/c/e;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/beizi/fusion/c/e;->M:Z

    return p0
.end method

.method private j(Ljava/lang/String;)Z
    .locals 0

    .line 1
    const/4 p1, 0x0

    return p1
.end method

.method private k(Ljava/lang/String;)V
    .locals 2

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    const/4 v1, 0x3

    invoke-virtual {v0, p1, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method private l(Ljava/lang/String;)Lcom/beizi/fusion/c/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->k(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/beizi/fusion/c/g;->a:Lcom/beizi/fusion/c/g;

    return-object p1
.end method

.method private m(Ljava/lang/String;)Lcom/beizi/fusion/c/g;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->f(Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/beizi/fusion/c/g;->b:Lcom/beizi/fusion/c/g;

    return-object p1
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "requestUuid"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    invoke-direct {p0, v0}, Lcom/beizi/fusion/c/e;->a(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    .line 15
    .line 16
    :catch_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0
.end method

.method public B()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->X:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public C()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->V:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->e:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public E()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->ay()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public a(Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/c/g;
    .locals 9

    .line 101
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 102
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getId()Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v2

    .line 104
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getZone()Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enter comparePrices compareWorker:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",mCurrentHighestWorker:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "BeiZis"

    invoke-static {v4, v3}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/beizi/fusion/c/e;->j(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    invoke-direct {p0, v2, p1, v1}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Lcom/beizi/fusion/work/a;Ljava/lang/String;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1

    .line 108
    :cond_1
    iget-object v3, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 109
    iget-object v3, v3, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    invoke-virtual {v3, v2, v5}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 110
    :cond_2
    iget v3, p0, Lcom/beizi/fusion/c/e;->y:I

    if-lt v3, v5, :cond_3

    .line 111
    invoke-direct {p0, p1, v5}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;I)V

    .line 112
    invoke-direct {p0, v2}, Lcom/beizi/fusion/c/e;->m(Ljava/lang/String;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1

    .line 113
    :cond_3
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->N()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 114
    invoke-direct {p0, v2, p1}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1

    .line 115
    :cond_4
    invoke-direct {p0, v0}, Lcom/beizi/fusion/c/e;->h(Ljava/lang/String;)Z

    move-result v0

    .line 116
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->d(Lcom/beizi/fusion/work/a;)Z

    move-result v3

    .line 117
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channel == mTimeStage = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/beizi/fusion/c/e;->z:I

    iget v8, p0, Lcom/beizi/fusion/c/e;->B:I

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    goto :goto_0

    :cond_5
    const/4 v7, 0x0

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ";isNeedComparePrices = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",isHighestPrice:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ";mCurrentHighestWorker:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget v4, p0, Lcom/beizi/fusion/c/e;->z:I

    iget v6, p0, Lcom/beizi/fusion/c/e;->A:I

    if-ne v4, v6, :cond_9

    if-eqz v0, :cond_9

    if-eqz v3, :cond_6

    goto :goto_1

    .line 119
    :cond_6
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    move-result-wide v0

    .line 120
    iget-object v3, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-direct {p0, v3}, Lcom/beizi/fusion/c/e;->e(Lcom/beizi/fusion/work/a;)D

    move-result-wide v3

    .line 121
    iget-object v6, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz v6, :cond_8

    cmpg-double v6, v0, v3

    if-gtz v6, :cond_8

    .line 122
    invoke-direct {p0, p1, v5}, Lcom/beizi/fusion/c/e;->b(Lcom/beizi/fusion/work/a;I)V

    .line 123
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->d(Lcom/beizi/fusion/work/a;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 124
    invoke-direct {p0, v5}, Lcom/beizi/fusion/c/e;->a(I)V

    .line 125
    :cond_7
    invoke-direct {p0, v2}, Lcom/beizi/fusion/c/e;->m(Ljava/lang/String;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1

    .line 126
    :cond_8
    invoke-direct {p0, v2, p1}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1

    .line 127
    :cond_9
    :goto_1
    invoke-direct {p0, v2, p1, v1}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Lcom/beizi/fusion/work/a;Ljava/lang/String;)Lcom/beizi/fusion/c/g;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;"
        }
    .end annotation

    .line 139
    invoke-static {p1, p2, p3}, Lcom/beizi/fusion/e/b;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object p1

    return-object p1
.end method

.method public abstract a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/work/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;",
            "Ljava/lang/String;",
            "Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$RenderViewBean;",
            ">;",
            "Lcom/beizi/fusion/work/a;",
            ")",
            "Lcom/beizi/fusion/work/a;"
        }
    .end annotation
.end method

.method protected a(Ljava/util/List;)Ljava/util/Map;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/beizi/fusion/work/a;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 63
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    .line 64
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "generateWorkers forwardBeans.size() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BeiZis"

    invoke-static {v2, v1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    const/4 v3, 0x0

    .line 66
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 67
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 68
    :cond_1
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getBuyerId()Ljava/lang/String;

    move-result-object v11

    .line 69
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v12

    .line 70
    iget-object v5, p0, Lcom/beizi/fusion/c/e;->H:Ljava/util/List;

    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v11, v5, v6}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    .line 71
    :cond_2
    :try_start_0
    invoke-virtual {v5}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->clone()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v13, v5

    goto :goto_1

    :catch_0
    nop

    move-object v13, v0

    :goto_1
    if-nez v13, :cond_3

    goto :goto_2

    .line 72
    :cond_3
    iget-object v5, p0, Lcom/beizi/fusion/c/e;->O:Lcom/beizi/fusion/events/a;

    invoke-virtual {v5, v13, v4}, Lcom/beizi/fusion/events/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;)V

    .line 73
    iget-object v5, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v5, v5, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    const/4 v6, 0x1

    invoke-virtual {v5, v12, v6}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 74
    invoke-direct {p0, v4, v13, v12}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 75
    :cond_4
    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getRenderView()Ljava/util/List;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, p0

    move-object v6, v4

    move-object v7, v11

    move-object v8, v13

    invoke-virtual/range {v5 .. v10}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;Ljava/lang/String;Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Ljava/util/List;Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/work/a;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 76
    invoke-virtual {v4}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getSleepTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/beizi/fusion/work/a;->a(J)V

    .line 77
    invoke-virtual {v5, v4}, Lcom/beizi/fusion/work/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;)V

    .line 78
    invoke-virtual {v5, v13}, Lcom/beizi/fusion/work/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V

    .line 79
    invoke-virtual {v13}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBidType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/beizi/fusion/work/a;->a(Ljava/lang/String;)V

    .line 80
    invoke-direct {p0, v11, v12, v5}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/work/a;)V

    .line 81
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v11}, Lcom/beizi/fusion/c/e;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "generateWorkers put new "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " worker into workerList"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_6
    return-object v1

    :cond_7
    :goto_3
    return-object v0
.end method

.method protected abstract a()V
.end method

.method protected a(IILjava/lang/String;)V
    .locals 0

    if-ne p1, p2, :cond_0

    .line 140
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/beizi/fusion/tool/u;->c(Ljava/lang/String;)Lcom/beizi/fusion/model/FreqItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    invoke-static {p1}, Lcom/beizi/fusion/tool/u;->c(Ljava/lang/String;)Lcom/beizi/fusion/model/FreqItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/model/FreqItem;->toString()Ljava/lang/String;

    move-result-object p1

    .line 142
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/beizi/fusion/tool/u;->d(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz v0, :cond_0

    .line 247
    instance-of v1, v0, Lcom/beizi/fusion/AdListener;

    if-eqz v1, :cond_0

    .line 248
    check-cast v0, Lcom/beizi/fusion/AdListener;

    invoke-interface {v0, p1, p2}, Lcom/beizi/fusion/AdListener;->onAdTick(J)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;)V
    .locals 2

    .line 10
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 11
    invoke-static {}, Lcom/beizi/fusion/tool/e;->b()Lcom/beizi/fusion/tool/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/tool/e;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/beizi/fusion/c/e$3;

    invoke-direct {v1, p0, p1}, Lcom/beizi/fusion/c/e$3;-><init>(Lcom/beizi/fusion/c/e;Landroid/view/ViewGroup;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->b(Landroid/view/ViewGroup;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/beizi/fusion/a;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Ljava/lang/String;ZI)V
    .locals 1

    const/4 p3, 0x1

    if-eqz p1, :cond_1

    .line 158
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "C2S"

    .line 159
    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "S2S"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 160
    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Z)V

    return-void

    .line 161
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->d(Lcom/beizi/fusion/work/a;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 162
    invoke-direct {p0, p3}, Lcom/beizi/fusion/c/e;->a(I)V

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p0, p4}, Lcom/beizi/fusion/c/e;->b(I)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Z)V
    .locals 4

    const-string v0, "enter auctionAndRequestAd"

    const-string v1, "BeiZis"

    .line 39
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    if-nez v0, :cond_0

    return-void

    .line 41
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->H:Ljava/util/List;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->u()I

    move-result v0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_2

    const-string p1, "auctionAndRequestAd ad aleady callback"

    .line 43
    invoke-static {v1, p1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    .line 44
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->d:Lcom/beizi/fusion/events/a$g;

    invoke-virtual {v0, v2}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 45
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->H:Ljava/util/List;

    invoke-direct {p0, p1, v0, p2}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Ljava/util/List;Z)Ljava/util/List;

    move-result-object p1

    if-nez p2, :cond_4

    .line 46
    iget-object p2, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p2, p2, Lcom/beizi/fusion/events/b;->d:Lcom/beizi/fusion/events/a$g;

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 47
    :cond_4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_6

    .line 48
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 50
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getBuyerId()Ljava/lang/String;

    move-result-object v1

    .line 51
    iget-object v2, p0, Lcom/beizi/fusion/c/e;->H:Ljava/util/List;

    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 52
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_6
    invoke-virtual {p0, p2}, Lcom/beizi/fusion/c/e;->a(Ljava/util/List;)Ljava/util/Map;

    move-result-object p1

    .line 54
    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->d(Ljava/util/Map;)V

    return-void

    :cond_7
    :goto_1
    const-string p1, "auctionAndRequestAd mBuyerBeanList == null "

    .line 55
    invoke-static {v1, p1}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean;)V
    .locals 10

    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    .line 19
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result v0

    if-nez v0, :cond_2

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 21
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->j:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 22
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean;->getFilter()Lcom/beizi/fusion/model/AdSpacesBean$FilterBean;

    move-result-object v4

    .line 23
    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean;->getBuyer()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/beizi/fusion/c/e;->H:Ljava/util/List;

    .line 24
    iget-object v1, p0, Lcom/beizi/fusion/c/e;->b:Landroid/content/Context;

    iget-wide v2, p0, Lcom/beizi/fusion/c/e;->f:J

    iget-object v5, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->i()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v9, p0

    invoke-static/range {v1 .. v9}, Lcom/beizi/fusion/e/b;->a(Landroid/content/Context;JLcom/beizi/fusion/model/AdSpacesBean$FilterBean;Lcom/beizi/fusion/events/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/c/a;)V

    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 26
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/a$l;->a(I)V

    return-void

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    new-instance v1, Lcom/beizi/fusion/model/EventItem;

    .line 29
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    const-string v3, "200.000"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v2, v4, v4}, Lcom/beizi/fusion/model/EventItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0, v3, v0, v1}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V

    .line 31
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->N:Lcom/beizi/fusion/model/AdSpacesBean;

    const-string p1, "BeiZis"

    const-string v0, "normal request"

    .line 32
    invoke-static {p1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->N:Lcom/beizi/fusion/model/AdSpacesBean;

    invoke-virtual {p1}, Lcom/beizi/fusion/model/AdSpacesBean;->getComponent()Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Z)V

    goto :goto_0

    .line 34
    :cond_1
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    invoke-virtual {p1}, Lcom/beizi/fusion/events/a$l;->a()I

    move-result p1

    const/4 v0, 0x6

    const-string v1, "platform error = "

    invoke-virtual {p0, p1, v0, v1}, Lcom/beizi/fusion/c/e;->a(IILjava/lang/String;)V

    .line 35
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AdDispenses AdFilter fail:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    invoke-static {v0}, Lcom/beizi/fusion/events/a;->a(Lcom/beizi/fusion/events/a$l;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2792

    .line 36
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    goto :goto_0

    .line 37
    :cond_2
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object p1, p1, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    const/4 v0, -0x2

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/a$l;->a(I)V

    const-string p1, "kPlatformFilterStatusInternalError"

    .line 38
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enter handleAdRequestStatusError error is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BeiZis"

    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x2793

    .line 14
    invoke-virtual {p0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 1

    .line 224
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_7

    .line 225
    instance-of v0, p1, Lcom/beizi/fusion/AdListener;

    if-eqz v0, :cond_0

    .line 226
    check-cast p1, Lcom/beizi/fusion/AdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/AdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 227
    :cond_0
    instance-of v0, p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v0, :cond_1

    .line 228
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    goto :goto_0

    .line 229
    :cond_1
    instance-of v0, p1, Lcom/beizi/fusion/NativeAdListener;

    if-eqz v0, :cond_2

    .line 230
    check-cast p1, Lcom/beizi/fusion/NativeAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/NativeAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 231
    :cond_2
    instance-of v0, p1, Lcom/beizi/fusion/InterstitialAdListener;

    if-eqz v0, :cond_3

    .line 232
    check-cast p1, Lcom/beizi/fusion/InterstitialAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/InterstitialAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 233
    :cond_3
    instance-of v0, p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    if-eqz v0, :cond_4

    .line 234
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/NativeUnifiedAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 235
    :cond_4
    instance-of v0, p1, Lcom/beizi/fusion/b;

    if-eqz v0, :cond_5

    .line 236
    check-cast p1, Lcom/beizi/fusion/b;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/b;->a(I)V

    goto :goto_0

    .line 237
    :cond_5
    instance-of v0, p1, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;

    if-eqz v0, :cond_6

    .line 238
    check-cast p1, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 239
    :cond_6
    instance-of v0, p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    if-eqz v0, :cond_7

    .line 240
    check-cast p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/unified/BZUnifiedAdListener;->onAdFailed(I)V

    .line 241
    :cond_7
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->b()V

    .line 242
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    const/4 p1, 0x3

    .line 243
    iput p1, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 244
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->r()V

    const/4 p1, 0x1

    .line 245
    sput-boolean p1, Lcom/beizi/fusion/c/e;->r:Z

    return-void
.end method

.method public a(Ljava/lang/String;Landroid/view/View;)V
    .locals 2

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    iget-boolean p1, p0, Lcom/beizi/fusion/c/e;->l:Z

    if-eqz p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->T()V

    .line 175
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/work/a;I)V

    .line 176
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->l:Z

    .line 177
    iput v0, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 178
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->b()V

    .line 179
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    .line 180
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_8

    .line 181
    instance-of v1, p1, Lcom/beizi/fusion/AdListener;

    if-eqz v1, :cond_1

    .line 182
    check-cast p1, Lcom/beizi/fusion/AdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/AdListener;->onAdLoaded()V

    goto :goto_0

    .line 183
    :cond_1
    instance-of v1, p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v1, :cond_2

    .line 184
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    goto :goto_0

    .line 185
    :cond_2
    instance-of v1, p1, Lcom/beizi/fusion/InterstitialAdListener;

    if-eqz v1, :cond_3

    .line 186
    check-cast p1, Lcom/beizi/fusion/InterstitialAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/InterstitialAdListener;->onAdLoaded()V

    goto :goto_0

    .line 187
    :cond_3
    instance-of v1, p1, Lcom/beizi/fusion/NativeAdListener;

    if-eqz v1, :cond_7

    if-eqz p2, :cond_6

    .line 188
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->aq()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 189
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    check-cast p1, Lcom/beizi/fusion/NativeAdListener;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/beizi/fusion/NativeAdListener;->onAdLoaded(Landroid/view/View;)V

    goto :goto_0

    .line 190
    :cond_4
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->o()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 191
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    check-cast p1, Lcom/beizi/fusion/NativeAdListener;

    iget-object p2, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {p2}, Lcom/beizi/fusion/work/a;->o()Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beizi/fusion/NativeAdListener;->onAdLoaded(Landroid/view/View;)V

    goto :goto_0

    .line 192
    :cond_5
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->g()V

    goto :goto_0

    .line 193
    :cond_6
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->g()V

    goto :goto_0

    .line 194
    :cond_7
    instance-of p2, p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    if-eqz p2, :cond_8

    .line 195
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    iget-object p2, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    invoke-virtual {p2}, Lcom/beizi/fusion/work/a;->as()Lcom/beizi/fusion/NativeUnifiedAdResponse;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/beizi/fusion/NativeUnifiedAdListener;->onAdLoaded(Lcom/beizi/fusion/NativeUnifiedAdResponse;)V

    .line 196
    :cond_8
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->Q()V

    .line 197
    sput-boolean v0, Lcom/beizi/fusion/c/e;->r:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdResponse;)V
    .locals 2

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    iget-boolean p1, p0, Lcom/beizi/fusion/c/e;->l:Z

    if-eqz p1, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->T()V

    .line 201
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/work/a;I)V

    .line 202
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->l:Z

    .line 203
    iput v0, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 204
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->b()V

    .line 205
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    .line 206
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_1

    .line 207
    instance-of v1, p1, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;

    if-eqz v1, :cond_1

    .line 208
    check-cast p1, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;->onAdLoaded(Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdResponse;)V

    .line 209
    :cond_1
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->Q()V

    .line 210
    sput-boolean v0, Lcom/beizi/fusion/c/e;->r:Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V
    .locals 2

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AdLoaded:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-boolean p1, p0, Lcom/beizi/fusion/c/e;->l:Z

    if-eqz p1, :cond_0

    return-void

    .line 213
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->T()V

    .line 214
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/work/a;I)V

    .line 215
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->l:Z

    .line 216
    iput v0, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 217
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->b()V

    .line 218
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    .line 219
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_1

    .line 220
    instance-of v1, p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    if-eqz v1, :cond_1

    .line 221
    check-cast p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/unified/BZUnifiedAdListener;->onAdLoaded(Lcom/beizi/fusion/unified/BZUnifiedAdResponse;)V

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->Q()V

    .line 223
    sput-boolean v0, Lcom/beizi/fusion/c/e;->r:Z

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V
    .locals 1

    .line 15
    sget-object v0, Lcom/beizi/fusion/tool/m;->a:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 16
    invoke-static {p2, p3}, Lcom/beizi/fusion/tool/u;->a(Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V

    .line 17
    invoke-static {}, Lcom/beizi/fusion/tool/e;->b()Lcom/beizi/fusion/tool/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/beizi/fusion/tool/e;->c()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    new-instance v0, Lcom/beizi/fusion/c/e$4;

    invoke-direct {v0, p0, p2, p3}, Lcom/beizi/fusion/c/e$4;-><init>(Lcom/beizi/fusion/c/e;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/work/a;->a(Ljava/util/Map;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/beizi/fusion/c/e;->s:Z

    return-void
.end method

.method public b(I)V
    .locals 4

    const/16 v0, 0x279c

    const/16 v1, 0x270f

    const/4 v2, 0x1

    if-eq p1, v0, :cond_2

    .line 119
    iget v0, p0, Lcom/beizi/fusion/c/e;->y:I

    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    if-eq p1, v1, :cond_2

    .line 120
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->N()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->O()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 121
    :cond_2
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/beizi/fusion/c/b;->j()Z

    move-result v0

    const/4 v3, 0x3

    if-eqz v0, :cond_3

    if-ne p1, v1, :cond_3

    const/4 p1, 0x3

    .line 122
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz v0, :cond_b

    .line 123
    instance-of v1, v0, Lcom/beizi/fusion/AdListener;

    if-eqz v1, :cond_4

    .line 124
    check-cast v0, Lcom/beizi/fusion/AdListener;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/AdListener;->onAdFailedToLoad(I)V

    goto :goto_0

    .line 125
    :cond_4
    instance-of v1, v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v1, :cond_5

    .line 126
    check-cast v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    goto :goto_0

    .line 127
    :cond_5
    instance-of v1, v0, Lcom/beizi/fusion/NativeAdListener;

    if-eqz v1, :cond_6

    .line 128
    check-cast v0, Lcom/beizi/fusion/NativeAdListener;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/NativeAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 129
    :cond_6
    instance-of v1, v0, Lcom/beizi/fusion/InterstitialAdListener;

    if-eqz v1, :cond_7

    .line 130
    check-cast v0, Lcom/beizi/fusion/InterstitialAdListener;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/InterstitialAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 131
    :cond_7
    instance-of v1, v0, Lcom/beizi/fusion/NativeUnifiedAdListener;

    if-eqz v1, :cond_8

    .line 132
    check-cast v0, Lcom/beizi/fusion/NativeUnifiedAdListener;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/NativeUnifiedAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 133
    :cond_8
    instance-of v1, v0, Lcom/beizi/fusion/b;

    if-eqz v1, :cond_9

    .line 134
    check-cast v0, Lcom/beizi/fusion/b;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/b;->a(I)V

    goto :goto_0

    .line 135
    :cond_9
    instance-of v1, v0, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;

    if-eqz v1, :cond_a

    .line 136
    check-cast v0, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/bzunified/BeiZiUnifiedAdListener;->onAdFailed(I)V

    goto :goto_0

    .line 137
    :cond_a
    instance-of v1, v0, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    if-eqz v1, :cond_b

    .line 138
    check-cast v0, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    invoke-interface {v0, p1}, Lcom/beizi/fusion/unified/BZUnifiedAdListener;->onAdFailed(I)V

    .line 139
    :cond_b
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->b()V

    .line 140
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    .line 141
    iput v3, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 142
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->r()V

    .line 143
    sput-boolean v2, Lcom/beizi/fusion/c/e;->r:Z

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 3

    .line 97
    iget v0, p0, Lcom/beizi/fusion/c/e;->y:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/beizi/fusion/c/e;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 98
    :cond_0
    iget v0, p0, Lcom/beizi/fusion/c/e;->P:I

    if-nez v0, :cond_1

    .line 99
    iget v0, p0, Lcom/beizi/fusion/c/e;->Q:I

    iput v0, p0, Lcom/beizi/fusion/c/e;->P:I

    .line 100
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AdShow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    iput v1, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 102
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_8

    .line 103
    instance-of v0, p1, Lcom/beizi/fusion/AdListener;

    if-eqz v0, :cond_2

    .line 104
    check-cast p1, Lcom/beizi/fusion/AdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/AdListener;->onAdShown()V

    goto :goto_0

    .line 105
    :cond_2
    instance-of v0, p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v0, :cond_3

    .line 106
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoAdShown()V

    goto :goto_0

    .line 107
    :cond_3
    instance-of v0, p1, Lcom/beizi/fusion/NativeAdListener;

    if-eqz v0, :cond_4

    .line 108
    check-cast p1, Lcom/beizi/fusion/NativeAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/NativeAdListener;->onAdShown()V

    goto :goto_0

    .line 109
    :cond_4
    instance-of v0, p1, Lcom/beizi/fusion/InterstitialAdListener;

    if-eqz v0, :cond_5

    .line 110
    check-cast p1, Lcom/beizi/fusion/InterstitialAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/InterstitialAdListener;->onAdShown()V

    goto :goto_0

    .line 111
    :cond_5
    instance-of v0, p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    if-eqz v0, :cond_6

    .line 112
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/NativeUnifiedAdListener;->onAdShown()V

    goto :goto_0

    .line 113
    :cond_6
    instance-of v0, p1, Lcom/beizi/fusion/b;

    if-eqz v0, :cond_7

    .line 114
    check-cast p1, Lcom/beizi/fusion/b;

    invoke-interface {p1}, Lcom/beizi/fusion/b;->a()V

    goto :goto_0

    .line 115
    :cond_7
    instance-of v0, p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    if-eqz v0, :cond_8

    .line 116
    check-cast p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdListener;->onAdShown()V

    .line 117
    :cond_8
    :goto_0
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->q()V

    .line 118
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->j()V

    return-void
.end method

.method public b(Ljava/lang/String;Landroid/view/View;)V
    .locals 1

    .line 144
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 145
    instance-of v0, p1, Lcom/beizi/fusion/NativeAdListener;

    if-eqz v0, :cond_0

    .line 146
    check-cast p1, Lcom/beizi/fusion/NativeAdListener;

    invoke-interface {p1, p2}, Lcom/beizi/fusion/NativeAdListener;->onAdClosed(Landroid/view/View;)V

    .line 147
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->S()V

    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0, p1}, Lcom/beizi/fusion/work/a;->b(Ljava/util/Map;)V

    return-void

    .line 151
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->s()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 152
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    .line 153
    :cond_2
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/work/a;

    if-nez v1, :cond_4

    goto :goto_0

    .line 154
    :cond_4
    invoke-virtual {v1}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BEIZI"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 155
    invoke-virtual {v1, p1}, Lcom/beizi/fusion/work/a;->b(Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_1
    return-void
.end method

.method protected b(Lcom/beizi/fusion/work/a;)Z
    .locals 1

    const-string v0, "S2S"

    .line 148
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 7
    iget p1, p0, Lcom/beizi/fusion/c/e;->P:I

    iget v0, p0, Lcom/beizi/fusion/c/e;->Q:I

    if-ne p1, v0, :cond_0

    .line 8
    iget p1, p0, Lcom/beizi/fusion/c/e;->R:I

    iput p1, p0, Lcom/beizi/fusion/c/e;->P:I

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_5

    .line 10
    instance-of v0, p1, Lcom/beizi/fusion/AdListener;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Lcom/beizi/fusion/AdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/AdListener;->onAdClosed()V

    goto :goto_0

    .line 12
    :cond_1
    instance-of v0, p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v0, :cond_2

    .line 13
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    goto :goto_0

    .line 14
    :cond_2
    instance-of v0, p1, Lcom/beizi/fusion/NativeAdListener;

    if-eqz v0, :cond_3

    .line 15
    check-cast p1, Lcom/beizi/fusion/NativeAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/NativeAdListener;->onAdClosed()V

    goto :goto_0

    .line 16
    :cond_3
    instance-of v0, p1, Lcom/beizi/fusion/InterstitialAdListener;

    if-eqz v0, :cond_4

    .line 17
    check-cast p1, Lcom/beizi/fusion/InterstitialAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/InterstitialAdListener;->onAdClosed()V

    goto :goto_0

    .line 18
    :cond_4
    instance-of v0, p1, Lcom/beizi/fusion/b;

    if-eqz v0, :cond_5

    .line 19
    check-cast p1, Lcom/beizi/fusion/b;

    invoke-interface {p1}, Lcom/beizi/fusion/b;->c()V

    .line 20
    :cond_5
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->S()V

    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 22
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->V:Ljava/util/Map;

    return-void
.end method

.method protected c(Lcom/beizi/fusion/work/a;)Z
    .locals 1

    const-string v0, "C2S"

    .line 21
    invoke-virtual {p1}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public d()Lcom/beizi/fusion/events/b;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 1

    .line 18
    iget-object p1, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz p1, :cond_6

    .line 19
    instance-of v0, p1, Lcom/beizi/fusion/AdListener;

    if-eqz v0, :cond_0

    .line 20
    check-cast p1, Lcom/beizi/fusion/AdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/AdListener;->onAdClicked()V

    goto :goto_0

    .line 21
    :cond_0
    instance-of v0, p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v0, :cond_1

    .line 22
    check-cast p1, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoClick()V

    goto :goto_0

    .line 23
    :cond_1
    instance-of v0, p1, Lcom/beizi/fusion/NativeAdListener;

    if-eqz v0, :cond_2

    .line 24
    check-cast p1, Lcom/beizi/fusion/NativeAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/NativeAdListener;->onAdClick()V

    goto :goto_0

    .line 25
    :cond_2
    instance-of v0, p1, Lcom/beizi/fusion/InterstitialAdListener;

    if-eqz v0, :cond_3

    .line 26
    check-cast p1, Lcom/beizi/fusion/InterstitialAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/InterstitialAdListener;->onAdClick()V

    goto :goto_0

    .line 27
    :cond_3
    instance-of v0, p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    if-eqz v0, :cond_4

    .line 28
    check-cast p1, Lcom/beizi/fusion/NativeUnifiedAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/NativeUnifiedAdListener;->onAdClick()V

    goto :goto_0

    .line 29
    :cond_4
    instance-of v0, p1, Lcom/beizi/fusion/b;

    if-eqz v0, :cond_5

    .line 30
    check-cast p1, Lcom/beizi/fusion/b;

    invoke-interface {p1}, Lcom/beizi/fusion/b;->b()V

    goto :goto_0

    .line 31
    :cond_5
    instance-of v0, p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    if-eqz v0, :cond_6

    .line 32
    check-cast p1, Lcom/beizi/fusion/unified/BZUnifiedAdListener;

    invoke-interface {p1}, Lcom/beizi/fusion/unified/BZUnifiedAdListener;->onAdClick()V

    .line 33
    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->R()V

    return-void
.end method

.method protected e()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->b:Lcom/beizi/fusion/events/a$h;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->c:Lcom/beizi/fusion/events/a$k;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->d:Lcom/beizi/fusion/events/a$g;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->e:Lcom/beizi/fusion/events/a$d;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 7
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->f:Lcom/beizi/fusion/events/a$e;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 9
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->k:Lcom/beizi/fusion/events/a$a;

    invoke-virtual {v0}, Ljava/util/Observable;->deleteObservers()V

    :cond_0
    return-void
.end method

.method protected e(Ljava/lang/String;)V
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    if-eqz v0, :cond_0

    .line 21
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    const/4 v1, 0x5

    invoke-virtual {v0, p1, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->c:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/events/EventBean;->getAdType()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected f(Ljava/lang/String;)V
    .locals 2

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    const/4 v1, 0x4

    invoke-virtual {v0, p1, v1}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method protected g()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    iget-object v0, v0, Lcom/beizi/fusion/events/b;->d:Lcom/beizi/fusion/events/a$g;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    const/16 v0, 0x279c

    .line 3
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/c/e;->b(I)V

    return-void
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/c/e;->X:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .locals 2

    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->u()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->u()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->m:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized j()V
    .locals 2

    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->k:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/beizi/fusion/c/c;

    .line 4
    invoke-interface {v1}, Lcom/beizi/fusion/c/c;->a()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->P()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewarded()V

    :cond_0
    return-void
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoComplete()V

    :cond_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    invoke-interface {v0}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoCacheSuccess()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    instance-of v1, v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    check-cast v0, Lcom/beizi/fusion/RewardedVideoAdListener;

    .line 10
    .line 11
    invoke-interface {v0}, Lcom/beizi/fusion/RewardedVideoAdListener;->onRewardedVideoPlayError()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public o()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/beizi/fusion/c/e;->o:Z

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->b()V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->c()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->l()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget v0, p0, Lcom/beizi/fusion/c/e;->P:I

    .line 18
    .line 19
    iget v1, p0, Lcom/beizi/fusion/c/e;->Q:I

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    if-eq v0, v1, :cond_1

    .line 23
    .line 24
    iput-object v2, p0, Lcom/beizi/fusion/c/e;->h:Lcom/beizi/fusion/a;

    .line 25
    .line 26
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->j:Ljava/util/Map;

    .line 27
    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 31
    .line 32
    .line 33
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->k:Ljava/util/ArrayList;

    .line 34
    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->t:Lcom/beizi/fusion/c/e;

    .line 41
    .line 42
    if-eqz v0, :cond_4

    .line 43
    .line 44
    iput-object v2, p0, Lcom/beizi/fusion/c/e;->t:Lcom/beizi/fusion/c/e;

    .line 45
    .line 46
    :cond_4
    invoke-direct {p0}, Lcom/beizi/fusion/c/e;->H()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/beizi/fusion/c/e;->e()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public p()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->m()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method protected q()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x3

    .line 23
    if-eq v0, v1, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/4 v1, 0x4

    .line 34
    if-ne v0, v1, :cond_1

    .line 35
    .line 36
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 37
    .line 38
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 39
    .line 40
    const/4 v1, 0x2

    .line 41
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    return-void
.end method

.method protected r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 16
    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/events/a$l;->a()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    const/4 v1, 0x1

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    .line 24
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->F:Lcom/beizi/fusion/events/b;

    .line 25
    .line 26
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->j:Lcom/beizi/fusion/events/a$j;

    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/a$l;->a(I)V

    .line 30
    .line 31
    .line 32
    :cond_1
    return-void
.end method

.method public s()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/beizi/fusion/work/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->j:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/c/e;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public u()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/c/e;->y:I

    .line 2
    .line 3
    return v0
.end method

.method public update(Ljava/util/Observable;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public v()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/beizi/fusion/c/e;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public w()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean;->getEventStrategy()Lcom/beizi/fusion/model/AdSpacesBean$EventStrategyBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->u:Lcom/beizi/fusion/model/AdSpacesBean;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean;->getEventStrategy()Lcom/beizi/fusion/model/AdSpacesBean$EventStrategyBean;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$EventStrategyBean;->getValidTimeShow()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-ltz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$EventStrategyBean;->getValidTimeShow()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    return v0

    .line 28
    :cond_0
    const v0, 0x7fffffff

    .line 29
    .line 30
    .line 31
    return v0
.end method

.method public x()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-nez v1, :cond_0

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0

    .line 26
    :cond_0
    const/4 v0, 0x0

    .line 27
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/c/e;->i:Lcom/beizi/fusion/work/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/beizi/fusion/work/a;->aw()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public z()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/beizi/fusion/c/e;->U:J

    .line 2
    .line 3
    return-wide v0
.end method
