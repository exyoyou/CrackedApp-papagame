.class public abstract Lcom/beizi/fusion/work/a;
.super Ljava/util/Observable;
.source "SourceFile"

# interfaces
.implements Lcom/beizi/fusion/c/c;


# instance fields
.field private A:Z

.field private B:Ljava/lang/String;

.field private C:I

.field private D:Z

.field private E:Z

.field private F:Ljava/lang/String;

.field private G:Z

.field private H:Z

.field protected a:Lcom/beizi/fusion/events/b;

.field protected b:Lcom/beizi/fusion/events/EventBean;

.field protected c:Ljava/lang/String;

.field protected d:Lcom/beizi/fusion/c/e;

.field protected e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

.field protected f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

.field protected g:Lcom/beizi/fusion/c/g;

.field protected h:Ljava/lang/String;

.field protected i:Ljava/lang/String;

.field protected j:Lcom/beizi/fusion/e/a;

.field protected k:I

.field protected l:J

.field protected m:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:Z

.field private s:J

.field private t:Z

.field private u:Z

.field private v:Z

.field private w:Z

.field private x:Ljava/util/TimerTask;

.field private y:Ljava/util/Timer;

.field private z:J


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    .line 6
    .line 7
    sget-object v1, Lcom/beizi/fusion/e/a;->a:Lcom/beizi/fusion/e/a;

    .line 8
    .line 9
    iput-object v1, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput v1, p0, Lcom/beizi/fusion/work/a;->n:I

    .line 13
    .line 14
    iput v1, p0, Lcom/beizi/fusion/work/a;->o:I

    .line 15
    .line 16
    iput v1, p0, Lcom/beizi/fusion/work/a;->p:I

    .line 17
    .line 18
    iput v1, p0, Lcom/beizi/fusion/work/a;->q:I

    .line 19
    .line 20
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->r:Z

    .line 21
    .line 22
    const-wide/16 v2, 0x0

    .line 23
    .line 24
    iput-wide v2, p0, Lcom/beizi/fusion/work/a;->s:J

    .line 25
    .line 26
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->t:Z

    .line 27
    .line 28
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->u:Z

    .line 29
    .line 30
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->v:Z

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->w:Z

    .line 33
    .line 34
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->x:Ljava/util/TimerTask;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->y:Ljava/util/Timer;

    .line 37
    .line 38
    iput-wide v2, p0, Lcom/beizi/fusion/work/a;->z:J

    .line 39
    .line 40
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->A:Z

    .line 41
    .line 42
    const-string v4, "WATERFALL"

    .line 43
    .line 44
    iput-object v4, p0, Lcom/beizi/fusion/work/a;->B:Ljava/lang/String;

    .line 45
    .line 46
    iput v1, p0, Lcom/beizi/fusion/work/a;->C:I

    .line 47
    .line 48
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->D:Z

    .line 49
    .line 50
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->E:Z

    .line 51
    .line 52
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->F:Ljava/lang/String;

    .line 53
    .line 54
    iput v1, p0, Lcom/beizi/fusion/work/a;->k:I

    .line 55
    .line 56
    iput-wide v2, p0, Lcom/beizi/fusion/work/a;->l:J

    .line 57
    .line 58
    new-instance v0, Lcom/beizi/fusion/work/a$1;

    .line 59
    .line 60
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    invoke-direct {v0, p0, v2}, Lcom/beizi/fusion/work/a$1;-><init>(Lcom/beizi/fusion/work/a;Landroid/os/Looper;)V

    .line 65
    .line 66
    .line 67
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    .line 68
    .line 69
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->G:Z

    .line 70
    .line 71
    iput-boolean v1, p0, Lcom/beizi/fusion/work/a;->H:Z

    .line 72
    .line 73
    return-void
.end method

.method private aA()V
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "mAdLifeManager != null ? "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "BeiZis"

    .line 28
    .line 29
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 33
    .line 34
    if-eqz v0, :cond_3

    .line 35
    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v4, "enter cancelExposureTaskIfNeed (System.currentTimeMillis() - mStartLoadTime) = "

    .line 42
    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 47
    .line 48
    .line 49
    move-result-wide v4

    .line 50
    iget-wide v6, p0, Lcom/beizi/fusion/work/a;->z:J

    .line 51
    .line 52
    sub-long/2addr v4, v6

    .line 53
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v4, ",mAdLifeManager.getValidExposureTime() = "

    .line 57
    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 62
    .line 63
    invoke-virtual {v4}, Lcom/beizi/fusion/c/e;->w()I

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v4, ",mExposureTimerTask != null ? "

    .line 71
    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->x:Ljava/util/TimerTask;

    .line 76
    .line 77
    if-eqz v4, :cond_1

    .line 78
    .line 79
    const/4 v4, 0x1

    .line 80
    goto :goto_1

    .line 81
    :cond_1
    const/4 v4, 0x0

    .line 82
    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string v4, ",mExposureTimer != null ? "

    .line 86
    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    iget-object v4, p0, Lcom/beizi/fusion/work/a;->y:Ljava/util/Timer;

    .line 91
    .line 92
    if-eqz v4, :cond_2

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_2
    const/4 v2, 0x0

    .line 96
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 107
    .line 108
    if-eqz v0, :cond_4

    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    iget-wide v2, p0, Lcom/beizi/fusion/work/a;->z:J

    .line 115
    .line 116
    sub-long/2addr v0, v2

    .line 117
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 118
    .line 119
    invoke-virtual {v2}, Lcom/beizi/fusion/c/e;->w()I

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    int-to-long v2, v2

    .line 124
    cmp-long v4, v0, v2

    .line 125
    .line 126
    if-gez v4, :cond_4

    .line 127
    .line 128
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->x:Ljava/util/TimerTask;

    .line 129
    .line 130
    if-eqz v0, :cond_4

    .line 131
    .line 132
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->y:Ljava/util/Timer;

    .line 133
    .line 134
    if-eqz v0, :cond_4

    .line 135
    .line 136
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->W()V

    .line 140
    .line 141
    .line 142
    :cond_4
    return-void
.end method

.method private az()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->c()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private b()Z
    .locals 1

    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ah()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 0

    .line 3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected A()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;->az()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->af()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->K()V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x3

    .line 20
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/work/a;->b(I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v1, "channel "

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    const-string v1, " reportAdLoadFail mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 44
    .line 45
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 46
    .line 47
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    const-string v1, "BeiZis"

    .line 61
    .line 62
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;->b()Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_1

    .line 70
    .line 71
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 74
    .line 75
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 76
    .line 77
    const/16 v2, 0xb

    .line 78
    .line 79
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 80
    .line 81
    .line 82
    :cond_1
    return-void
.end method

.method protected B()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdShow mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x5

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected C()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdExposure mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x6

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected D()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdClick mManagerObserver.mChannelResultStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x7

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected E()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdClickCallBack mManagerObserver.mChannelResultStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v2, 0x11

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method protected F()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdClose mManagerObserver.mChannelResultStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v2, 0x9

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method protected G()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdClickClose mManagerObserver.mChannelResultStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v2, 0x8

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method protected H()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdClickCallBack mManagerObserver.mChannelResultStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v2, 0x16

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method protected I()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdRewarded mManagerObserver.mChannelResultStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v2, 0xc

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method public J()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a;->E:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v1, "channel "

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v1, " reportParticipateBid mManagerObserver.mBidChannelStatus.getStatus(channel)  = "

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 30
    .line 31
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->k:Lcom/beizi/fusion/events/a$a;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 34
    .line 35
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const-string v1, "BeiZis"

    .line 47
    .line 48
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a;->E:Z

    .line 53
    .line 54
    :cond_0
    return-void
.end method

.method protected K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportParticipateBid mManagerObserver.mBidChannelStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->k:Lcom/beizi/fusion/events/a$a;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method

.method protected L()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v1, "channel == ---reportComparisonSuccess---"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "BeiZis"

    .line 35
    .line 36
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method protected M()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "channel == ---reportComparisonSendWinNotification---"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "BeiZis"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method protected N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/16 v2, 0x9

    .line 10
    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 17
    .line 18
    .line 19
    const-string v1, "channel == ---reportComparisonSendLossNotification---"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    const-string v1, "BeiZis"

    .line 36
    .line 37
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void
.end method

.method protected O()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v2, 0x4

    .line 20
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 21
    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method protected P()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->O()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected Q()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->h:Lcom/beizi/fusion/events/a$c;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x4

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method protected R()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportChannelClickEnhance GrayPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected S()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportChannelClickEnhance RandomPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected T()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportChannelClickEnhance LayerPass mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected U()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportChannelClickEnhance ReduceArea mManagerObserver.mChannelClickEnhanceStatus.getStatus(channel)  = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->i:Lcom/beizi/fusion/events/a$b;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x4

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected V()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportValidTimeExposure mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v2, 0xd

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method protected W()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportNotEnoughExposureTime mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/16 v2, 0xe

    .line 54
    .line 55
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 56
    .line 57
    .line 58
    :cond_0
    return-void
.end method

.method protected X()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

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
    const-string v1, "adStatus = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->u()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "BeiZis"

    .line 29
    .line 30
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 34
    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->u()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/4 v1, 0x1

    .line 42
    if-ge v0, v1, :cond_1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    const/4 v1, 0x0

    .line 46
    :goto_0
    return v1
.end method

.method protected Y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->h()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->am()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ak()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    :cond_0
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method protected Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;->az()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/work/a;)Lcom/beizi/fusion/c/g;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    .line 22
    .line 23
    :cond_0
    return-void
.end method

.method public a()V
    .locals 2

    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->h()Lcom/beizi/fusion/e/a;

    move-result-object v0

    sget-object v1, Lcom/beizi/fusion/e/a;->c:Lcom/beizi/fusion/e/a;

    if-eq v0, v1, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->Q()V

    :cond_0
    return-void
.end method

.method protected a(D)V
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_2

    const-string v0, "BEIZI"

    .line 27
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->setAvgPrice(D)V

    .line 29
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    .line 30
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setBeiZiPrice(Ljava/lang/String;)V

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ak()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 32
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v0, p1, p2}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->setBidPrice(D)V

    .line 33
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_1

    .line 34
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setBidPrice(Ljava/lang/String;)V

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    :cond_2
    return-void
.end method

.method public a(I)V
    .locals 0

    .line 1
    return-void
.end method

.method public a(J)V
    .locals 0

    .line 12
    iput-wide p1, p0, Lcom/beizi/fusion/work/a;->s:J

    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 2
    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 0

    .line 3
    return-void
.end method

.method protected a(Landroid/os/Message;)V
    .locals 2

    .line 15
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    if-eqz v0, :cond_0

    .line 16
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/beizi/fusion/events/EventBean;->setError(Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/events/EventBean;->setErrorCode(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    .line 19
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->A()V

    .line 20
    iget-object p1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setError(Ljava/lang/String;)V

    .line 21
    iget-object p1, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    invoke-virtual {p1, v0}, Lcom/beizi/fusion/events/EventBean;->setErrorCode(Ljava/lang/String;)V

    .line 22
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ao()V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/ViewGroup;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 4
    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;)V
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    return-void
.end method

.method public a(Lcom/beizi/fusion/model/ChannelBidResult;)V
    .locals 0

    .line 5
    return-void
.end method

.method public a(Lcom/beizi/fusion/unified/BZUnifiedAdActionData;)V
    .locals 0

    .line 6
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/beizi/fusion/work/a;->B:Ljava/lang/String;

    return-void
.end method

.method protected a(Ljava/lang/String;I)V
    .locals 2

    .line 23
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;->az()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 25
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 26
    iget-object p2, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/util/Map;)V
    .locals 0

    .line 7
    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/beizi/fusion/work/a;->r:Z

    return-void
.end method

.method protected aa()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a;->t:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-direct {p0, v0}, Lcom/beizi/fusion/work/a;->b(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->c(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/beizi/fusion/work/a;->t:Z

    .line 30
    .line 31
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a;->A:Z

    .line 32
    .line 33
    if-eqz v0, :cond_2

    .line 34
    .line 35
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;->aA()V

    .line 36
    .line 37
    .line 38
    :cond_2
    return-void
.end method

.method protected ab()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->an()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->i()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/beizi/fusion/model/EventItem;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 32
    .line 33
    const-string v6, "255.200"

    .line 34
    .line 35
    invoke-direct {v2, v6, v3, v4, v5}, Lcom/beizi/fusion/model/EventItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v6, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method protected ac()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->an()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->i()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/beizi/fusion/model/EventItem;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 32
    .line 33
    const-string v6, "280.300"

    .line 34
    .line 35
    invoke-direct {v2, v6, v3, v4, v5}, Lcom/beizi/fusion/model/EventItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v6, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method protected ad()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->an()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->i()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/beizi/fusion/model/EventItem;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 32
    .line 33
    const-string v6, "290.300"

    .line 34
    .line 35
    invoke-direct {v2, v6, v3, v4, v5}, Lcom/beizi/fusion/model/EventItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v6, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method protected ae()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->an()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->i()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    new-instance v2, Lcom/beizi/fusion/model/EventItem;

    .line 18
    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 20
    .line 21
    .line 22
    move-result-wide v3

    .line 23
    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->f()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    iget-object v5, p0, Lcom/beizi/fusion/work/a;->i:Ljava/lang/String;

    .line 32
    .line 33
    const-string v6, "280.500"

    .line 34
    .line 35
    invoke-direct {v2, v6, v3, v4, v5}, Lcom/beizi/fusion/model/EventItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v6, v1, v2}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/beizi/fusion/model/EventItem;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    return-void
.end method

.method protected af()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ah()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/work/a;->c(I)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected ag()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->p()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x3

    .line 6
    if-eq v0, v1, :cond_0

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "mWorker = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v1, ",set ad suc"

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "BeiZisBid"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x2

    .line 36
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/work/a;->c(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public ah()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ai()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method

.method protected ai()Z
    .locals 2

    .line 1
    const-string v0, "C2S"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected aj()Z
    .locals 2

    .line 1
    const-string v0, "S2S"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected ak()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->aj()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ai()Z

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
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method public al()Z
    .locals 2

    .line 1
    const-string v0, "BPDI"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public am()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->an()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->al()Z

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
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 17
    :goto_1
    return v0
.end method

.method protected an()Z
    .locals 2

    .line 1
    const-string v0, "WATERFALL"

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method protected ao()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->b:Lcom/beizi/fusion/events/EventBean;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a;->a(Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected ap()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->A()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/16 v1, 0x279c

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/beizi/fusion/c/e;->b(I)V

    .line 11
    .line 12
    .line 13
    :cond_0
    return-void
.end method

.method public aq()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/work/a;->k:I

    .line 2
    .line 3
    return v0
.end method

.method protected ar()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "C2S"

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v1, "channel "

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    const-string v1, " reportC2SPrice mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 38
    .line 39
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 40
    .line 41
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    const-string v1, "BeiZis"

    .line 55
    .line 56
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 62
    .line 63
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 64
    .line 65
    const/16 v2, 0x14

    .line 66
    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 68
    .line 69
    .line 70
    :cond_0
    return-void
.end method

.method public as()Lcom/beizi/fusion/NativeUnifiedAdResponse;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public at()Lcom/beizi/fusion/c/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->g:Lcom/beizi/fusion/c/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public au()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x3e8

    .line 6
    .line 7
    add-long/2addr v0, v2

    .line 8
    iput-wide v0, p0, Lcom/beizi/fusion/work/a;->l:J

    .line 9
    .line 10
    return-void
.end method

.method public av()Ljava/util/Map;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public aw()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ax()Lorg/json/JSONObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public ay()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/beizi/fusion/work/a;->n:I

    return-void
.end method

.method public b(Lcom/beizi/fusion/model/ChannelBidResult;)V
    .locals 0

    .line 1
    return-void
.end method

.method public b(Ljava/util/Map;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/beizi/fusion/work/a;->p:I

    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a;->D:Z

    return v0
.end method

.method public abstract d()V
.end method

.method protected d(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    sget-object v1, Lcom/beizi/fusion/e/a;->b:Lcom/beizi/fusion/e/a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 3
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->x()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 4
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v1}, Lcom/beizi/fusion/c/e;->x()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    sget-object v0, Lcom/beizi/fusion/e/a;->d:Lcom/beizi/fusion/e/a;

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    .line 6
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/beizi/fusion/c/e;->a(Ljava/lang/String;I)V

    return-void

    .line 7
    :cond_0
    sget-object v0, Lcom/beizi/fusion/e/a;->d:Lcom/beizi/fusion/e/a;

    iput-object v0, p0, Lcom/beizi/fusion/work/a;->j:Lcom/beizi/fusion/e/a;

    .line 8
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->X()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    iget-object v1, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    invoke-virtual {v1}, Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;->getComponent()Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;

    move-result-object v1

    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->g()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/beizi/fusion/c/e;->a(Lcom/beizi/fusion/model/AdSpacesBean$ComponentBean;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_1
    const-string v0, "BeiZis"

    const-string v1, "fail distribute direct fail"

    .line 11
    invoke-static {v0, v1}, Lcom/beizi/fusion/tool/ac;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    invoke-virtual {v0, p1}, Lcom/beizi/fusion/c/e;->b(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public abstract e()V
.end method

.method public abstract f()Ljava/lang/String;
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->B:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract h()Lcom/beizi/fusion/e/a;
.end method

.method public i()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public j()Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 2
    .line 3
    return-object v0
.end method

.method protected abstract k()V
.end method

.method public l()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->m:Landroid/os/Handler;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/beizi/fusion/work/a;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public q()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->L()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected r()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->d:Lcom/beizi/fusion/c/e;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/c/e;->d()Lcom/beizi/fusion/events/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;->getBuyerSpaceUuId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 20
    .line 21
    :cond_1
    return-void
.end method

.method protected s()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/beizi/fusion/events/b;->a()Lcom/beizi/fusion/events/a;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->e:Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;

    .line 10
    .line 11
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->f:Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a;->a(Lcom/beizi/fusion/model/AdSpacesBean$BuyerBean;Lcom/beizi/fusion/model/AdSpacesBean$ForwardBean;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method protected t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportInitBegin mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x1

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected u()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportInitEnd mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method protected v()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

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
    const-string v1, "channel "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, " reportAdRequest mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 26
    .line 27
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 28
    .line 29
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    const-string v1, "BeiZis"

    .line 43
    .line 44
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 50
    .line 51
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 52
    .line 53
    const/4 v2, 0x3

    .line 54
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    return-void
.end method

.method public w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/beizi/fusion/work/a;->G:Z

    .line 2
    .line 3
    return v0
.end method

.method protected x()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;->az()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ai()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ar()V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->y()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x2

    .line 23
    invoke-virtual {p0, v0}, Lcom/beizi/fusion/work/a;->b(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->J()V

    .line 27
    .line 28
    .line 29
    :cond_1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->z()V

    .line 30
    .line 31
    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v1, "channel "

    .line 38
    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    const-string v1, " reportAdLoaded mManagerObserver.mChannelResultStatus.getStatus(channel) = "

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 53
    .line 54
    iget-object v1, v1, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;)I

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "BeiZis"

    .line 70
    .line 71
    invoke-static {v1, v0}, Lcom/beizi/fusion/tool/ac;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-direct {p0}, Lcom/beizi/fusion/work/a;->b()Z

    .line 75
    .line 76
    .line 77
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    .line 80
    iget-object v0, p0, Lcom/beizi/fusion/work/a;->a:Lcom/beizi/fusion/events/b;

    .line 81
    .line 82
    iget-object v0, v0, Lcom/beizi/fusion/events/b;->g:Lcom/beizi/fusion/events/a$f;

    .line 83
    .line 84
    iget-object v1, p0, Lcom/beizi/fusion/work/a;->c:Ljava/lang/String;

    .line 85
    .line 86
    const/4 v2, 0x4

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/events/a$l;->a(Ljava/lang/String;I)V

    .line 88
    .line 89
    .line 90
    :cond_2
    return-void
.end method

.method protected y()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->ah()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/beizi/fusion/work/a;->w()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 16
    :goto_0
    return v0
.end method

.method protected z()V
    .locals 0

    return-void
.end method
