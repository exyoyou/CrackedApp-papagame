.class public Lcom/byazt/ouz/NativeExpressVideoView;
.super Lcom/byazt/ouz/NativeExpressView;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dh/ve$uj;
.implements Lcom/byazt/dh/ve$ve;
.implements Lcom/byazt/ouz/sl;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x4b8
    }
.end annotation


# instance fields
.field public c:I

.field public gr:J

.field public gu:Lcom/byazt/ua/c;

.field public n:Z

.field public p:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Z

.field public uj:I

.field public ve:Z

.field public yv:Lcom/byazt/xl/uj;

.field public zm:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/byazt/ouz/NativeExpressView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 2
    iput p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 4
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    .line 5
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    .line 6
    iget-object p3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->ab()I

    move-result p3

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 7
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressVideoView;->u()V

    return-void
.end method

.method public constructor <init>(ZLandroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/byazt/ouz/NativeExpressView;-><init>(ZLandroid/content/Context;Lcom/byazt/ete/ic;Lcom/byazt/dj/tt;Ljava/lang/String;Z)V

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 11
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    .line 12
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    .line 13
    iget-object p3, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {p3}, Lcom/byazt/ete/ic;->ab()I

    move-result p3

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 14
    invoke-virtual {p0}, Lcom/byazt/ouz/NativeExpressVideoView;->u()V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ouz/NativeExpressVideoView;)Lcom/byazt/ua/c;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gu:Lcom/byazt/ua/c;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/ouz/NativeExpressVideoView;Lcom/byazt/xl/yp;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressVideoView;->tt(Lcom/byazt/xl/yp;)V

    return-void
.end method

.method private c(Lcom/byazt/xl/yp;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 6
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 7
    invoke-direct {p0, p1}, Lcom/byazt/ouz/NativeExpressVideoView;->tt(Lcom/byazt/xl/yp;)V

    return-void

    .line 8
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/byazt/ouz/NativeExpressVideoView$3;

    invoke-direct {v1, p0, p1}, Lcom/byazt/ouz/NativeExpressVideoView$3;-><init>(Lcom/byazt/ouz/NativeExpressVideoView;Lcom/byazt/xl/yp;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private c(J)Z
    .locals 3

    .line 33
    iget v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-wide v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gr:J

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz p1, :cond_2

    .line 34
    invoke-virtual {p1}, Lcom/byazt/ouz/ExpressVideoView;->G_()Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private gr()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 2
    .line 3
    instance-of v1, v0, Lcom/byazt/mt/c;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    instance-of v0, v0, Lcom/byazt/atv/n;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    return-void

    .line 17
    :cond_1
    const/4 v1, 0x1

    .line 18
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->tt(Z)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->G_()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->setPauseIcon(Z)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 35
    .line 36
    const/4 v1, 0x2

    .line 37
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->setVideoPlayStatus(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 42
    .line 43
    const/4 v1, 0x3

    .line 44
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->setVideoPlayStatus(I)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->setPauseIcon(Z)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 54
    .line 55
    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 59
    .line 60
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->a()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private gu()V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Lcom/byazt/ua/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ua/c;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gu:Lcom/byazt/ua/c;

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p0, v0, v1, v2}, Lcom/byazt/ouz/NativeExpressVideoView;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ouz/ExpressVideoView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/byazt/un/NativeVideoTsView;->setNativeExpressVideoView(Lcom/byazt/ouz/NativeExpressVideoView;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 24
    .line 25
    new-instance v1, Lcom/byazt/ouz/NativeExpressVideoView$1;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/byazt/ouz/NativeExpressVideoView$1;-><init>(Lcom/byazt/ouz/NativeExpressVideoView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setAdCreativeClickListener(Lcom/byazt/un/NativeVideoTsView$c;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0, v1}, Lcom/byazt/ouz/ExpressVideoView;->setShouldCheckNetChange(Z)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 40
    .line 41
    new-instance v2, Lcom/byazt/ouz/NativeExpressVideoView$2;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/byazt/ouz/NativeExpressVideoView$2;-><init>(Lcom/byazt/ouz/NativeExpressVideoView;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v2}, Lcom/byazt/un/NativeVideoTsView;->setControllerStatusCallBack(Lcom/byazt/un/NativeVideoTsView$uj;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdLoadListener(Lcom/byazt/dh/ve$uj;)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 55
    .line 56
    invoke-virtual {v0, p0}, Lcom/byazt/un/NativeVideoTsView;->setVideoAdInteractionListener(Lcom/byazt/dh/ve$ve;)V

    .line 57
    .line 58
    .line 59
    const-string v0, "embeded_ad"

    .line 60
    .line 61
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    const-string v2, "splash_ad"

    .line 68
    .line 69
    const/4 v3, 0x1

    .line 70
    if-eqz v0, :cond_1

    .line 71
    .line 72
    :try_start_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 73
    .line 74
    iget-boolean v4, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 75
    .line 76
    if-eqz v4, :cond_0

    .line 77
    .line 78
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->x:Lcom/byazt/dj/tt;

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/byazt/dj/tt;->n()Z

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    goto :goto_0

    .line 85
    :cond_0
    iget-boolean v4, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    .line 86
    .line 87
    :goto_0
    invoke-virtual {v0, v4}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 88
    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-eqz v0, :cond_2

    .line 98
    .line 99
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 100
    .line 101
    invoke-virtual {v0, v3}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 106
    .line 107
    iget-boolean v4, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    .line 108
    .line 109
    invoke-virtual {v0, v4}, Lcom/byazt/un/NativeVideoTsView;->setIsAutoPlay(Z)V

    .line 110
    .line 111
    .line 112
    :goto_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    .line 113
    .line 114
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 115
    .line 116
    .line 117
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    .line 120
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 121
    .line 122
    :goto_2
    const/4 v1, 0x1

    .line 123
    goto :goto_3

    .line 124
    :cond_3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 125
    .line 126
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 127
    .line 128
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->ab()I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    if-ne v2, v3, :cond_4

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_4
    :goto_3
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setIsQuiet(Z)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 139
    .line 140
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->ve()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    .line 142
    .line 143
    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    const/4 v1, 0x0

    .line 146
    iput-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 147
    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    const-string v2, "\uff08dev ignore\uff09ExpressVideoView-->print:"

    .line 151
    .line 152
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v0

    .line 166
    const-string v1, "NativeExpressVideoView"

    .line 167
    .line 168
    invoke-static {v1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method private setShowAdInteractionView(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/ExpressVideoView;->setShowAdInteractionView(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/ouz/NativeExpressVideoView;)Ljava/util/HashSet;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->p:Ljava/util/HashSet;

    return-object p0
.end method

.method private tt(Lcom/byazt/xl/yp;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 14
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->a()D

    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->sp()D

    move-result-wide v2

    .line 16
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->x()D

    move-result-wide v4

    .line 17
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->i()D

    move-result-wide v6

    .line 18
    iget-object v8, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v0, v0

    invoke-static {v8, v0}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v0

    .line 19
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v2, v2

    invoke-static {v1, v2}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v1

    .line 20
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v3, v4

    invoke-static {v2, v3}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v2

    .line 21
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    double-to-float v4, v6

    invoke-static {v3, v4}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v3

    .line 22
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->t()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    .line 23
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->t()F

    move-result v6

    invoke-static {v4, v6}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 24
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->u()F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2

    .line 25
    iget-object v6, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->u()F

    move-result v7

    invoke-static {v6, v7}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v6

    int-to-float v6, v6

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    .line 26
    :goto_1
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->yp()F

    move-result v7

    cmpl-float v7, v7, v5

    if-lez v7, :cond_3

    .line 27
    iget-object v7, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->yp()F

    move-result v8

    invoke-static {v7, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v7

    int-to-float v7, v7

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    .line 28
    :goto_2
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->z()F

    move-result v8

    cmpl-float v8, v8, v5

    if-lez v8, :cond_4

    .line 29
    iget-object v5, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->z()F

    move-result v8

    invoke-static {v5, v8}, Lcom/byazt/aas/pf;->ve(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    :cond_4
    cmpg-float v8, v6, v4

    if-gez v8, :cond_5

    move v4, v6

    :cond_5
    cmpg-float v6, v7, v4

    if-gez v6, :cond_6

    goto :goto_3

    :cond_6
    move v7, v4

    :goto_3
    cmpg-float v4, v5, v7

    if-gez v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v7

    .line 30
    :goto_4
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->tt()I

    move-result v4

    const/4 v6, 0x2

    if-eq v4, v6, :cond_9

    .line 31
    iget-object v4, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v4, :cond_8

    .line 32
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 33
    :cond_8
    iput v2, v4, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 34
    iput v3, v4, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 35
    iput v1, v4, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 36
    iput v0, v4, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 37
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 38
    :cond_9
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-static {v0, v5}, Lcom/byazt/aas/pf;->tt(Landroid/view/View;F)V

    .line 39
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 40
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    .line 41
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 42
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/byazt/un/NativeVideoTsView;->c(JZZ)Z

    .line 43
    iget v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->uj:I

    invoke-virtual {p0, v0}, Lcom/byazt/ouz/NativeExpressVideoView;->a(I)V

    .line 44
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    if-eqz v0, :cond_a

    .line 45
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->F_()V

    .line 46
    :cond_a
    invoke-direct {p0, v1}, Lcom/byazt/ouz/NativeExpressVideoView;->setShowAdInteractionView(Z)V

    .line 47
    :cond_b
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_c

    .line 48
    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 49
    :cond_c
    instance-of v0, p1, Lcom/byazt/atv/ve;

    if-eqz v0, :cond_f

    .line 50
    check-cast p1, Lcom/byazt/atv/ve;

    invoke-virtual {p1}, Lcom/byazt/atv/ve;->m()Landroid/widget/FrameLayout;

    move-result-object p1

    if-eqz p1, :cond_e

    .line 51
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz v0, :cond_d

    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 53
    :cond_d
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_e
    return-void

    .line 54
    :cond_f
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->tt()I

    move-result v0

    if-ne v0, v6, :cond_12

    .line 55
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->c()Landroid/view/View;

    move-result-object p1

    .line 56
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    .line 57
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz v0, :cond_10

    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 59
    :cond_10
    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_11
    return-void

    .line 60
    :cond_12
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->rl:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 16
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->a()V

    return-void
.end method

.method public a(I)V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ogz/sl;->a(I)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne v1, p1, :cond_0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v2, p1, :cond_1

    .line 4
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-ne v3, p1, :cond_3

    .line 6
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/byazt/nr/rh;->n(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 7
    :cond_2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 8
    iput-boolean v2, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    if-ne v3, p1, :cond_5

    .line 9
    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/byazt/nr/rh;->uj(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    invoke-static {v3}, Lcom/byazt/nr/rh;->a(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    :cond_4
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 11
    iput-boolean v2, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    goto :goto_0

    :cond_5
    const/4 v0, 0x4

    if-ne v0, p1, :cond_6

    .line 12
    iput-boolean v2, p0, Lcom/byazt/ouz/NativeExpressVideoView;->tt:Z

    .line 13
    :cond_6
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    if-nez v0, :cond_7

    .line 14
    iput v1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 15
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mIsAutoPlay="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->ve:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "NativeVideoAdView"

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c()J
    .locals 2

    .line 27
    iget-wide v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gr:J

    return-wide v0
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ouz/ExpressVideoView;
    .locals 2

    .line 5
    new-instance v0, Lcom/byazt/ouz/ExpressVideoView;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/byazt/ouz/ExpressVideoView;-><init>(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;Z)V

    return-object v0
.end method

.method public c(F)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(FFFFI)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(I)V
    .locals 6

    .line 16
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-nez v0, :cond_0

    const-string p1, "NativeExpressVideoView"

    const-string v0, "onChangeVideoState,ExpressVideoView is null !!!!!!!!!!!!"

    .line 17
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v5, 0x2

    if-eq p1, v5, :cond_3

    const/4 v5, 0x3

    if-eq p1, v5, :cond_3

    const/4 v5, 0x4

    if-eq p1, v5, :cond_2

    const/4 v5, 0x5

    if-eq p1, v5, :cond_1

    goto :goto_0

    .line 18
    :cond_1
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/byazt/un/NativeVideoTsView;->c(JZZ)Z

    :goto_0
    return-void

    .line 19
    :cond_2
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object p1

    invoke-interface {p1}, Lcom/byazt/dh/ve;->da()V

    return-void

    .line 20
    :cond_3
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/ExpressVideoView;->setVideoPlayStatus(I)V

    .line 21
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    invoke-virtual {p1, v4}, Lcom/byazt/ouz/ExpressVideoView;->setCanInterruptVideoPlay(Z)V

    .line 22
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    .line 23
    :cond_4
    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/byazt/un/NativeVideoTsView;->c(JZZ)Z

    return-void
.end method

.method public c(ILjava/lang/String;)V
    .locals 2

    .line 28
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/NativeExpressView;->c(ILjava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->getVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lcom/byazt/un/uj;

    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/byazt/un/uj;

    const/16 v1, 0x32

    invoke-virtual {v0, v1}, Lcom/byazt/nj/c;->ve(I)V

    .line 32
    new-instance v1, Lcom/byazt/ouz/NativeExpressVideoView$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ouz/NativeExpressVideoView$4;-><init>(Lcom/byazt/ouz/NativeExpressVideoView;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/byazt/nj/c;->c(Lcom/byazt/nj/c$c;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_1

    .line 24
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    return-void

    .line 25
    :cond_1
    iget-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/byazt/ouz/NativeExpressVideoView;->c(Z)V

    return-void

    .line 26
    :cond_2
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressVideoView;->gr()V

    :cond_3
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 9
    invoke-super {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->c(Z)V

    .line 10
    iput-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    .line 11
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/byazt/un/NativeVideoTsView;->tt(ZZ)V

    .line 12
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 13
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/byazt/dh/ve;->tt(Z)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/byazt/mt/c;

    if-eqz v1, :cond_1

    .line 15
    check-cast v0, Lcom/byazt/mt/c;

    invoke-virtual {v0, p1}, Lcom/byazt/mt/c;->c(Z)V

    :cond_1
    return-void
.end method

.method public da()V
    .locals 0

    return-void
.end method

.method public getVideoController()Lcom/byazt/dh/ve;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->getVideoController()Lcom/byazt/dh/ve;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return-object v0
.end method

.method public getVideoModel()Lcom/byazt/ua/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gu:Lcom/byazt/ua/c;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public n(I)V
    .locals 0

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->onAttachedToWindow()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/byazt/mt/c;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    instance-of v0, v0, Lcom/byazt/atv/n;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget v1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 19
    .line 20
    const/4 v2, 0x2

    .line 21
    if-eq v1, v2, :cond_1

    .line 22
    .line 23
    const/4 v2, 0x5

    .line 24
    if-eq v1, v2, :cond_1

    .line 25
    .line 26
    const/4 v1, 0x1

    .line 27
    invoke-virtual {v0, v1}, Lcom/byazt/un/NativeVideoTsView;->setNeedNativeVideoPlayBtnVisible(Z)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->F_()V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->E_()V

    .line 38
    .line 39
    .line 40
    :cond_1
    return-void
.end method

.method public onProgressUpdate(JJ)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->u:Lcom/byazt/dh/ve$ve;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/dh/ve$ve;->onProgressUpdate(JJ)V

    .line 9
    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/ouz/NativeExpressVideoView;->c(J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    const/4 v0, 0x2

    .line 18
    iput v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 19
    .line 20
    :cond_1
    iput-wide p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gr:J

    .line 21
    .line 22
    iput-wide p3, p0, Lcom/byazt/ouz/NativeExpressVideoView;->zm:J

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->p:Ljava/util/HashSet;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 33
    .line 34
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->getVideoController()Lcom/byazt/dh/ve;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    instance-of v1, v0, Lcom/byazt/un/uj;

    .line 39
    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    check-cast v0, Lcom/byazt/un/uj;

    .line 43
    .line 44
    const/16 v1, 0x32

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Lcom/byazt/nj/c;->ve(I)V

    .line 47
    .line 48
    .line 49
    :cond_2
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gu:Lcom/byazt/ua/c;

    .line 50
    .line 51
    if-eqz v0, :cond_3

    .line 52
    .line 53
    iput-wide p1, v0, Lcom/byazt/ua/c;->sp:J

    .line 54
    .line 55
    :cond_3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 56
    .line 57
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 58
    .line 59
    if-eqz v1, :cond_4

    .line 60
    .line 61
    check-cast v0, Lcom/byazt/atv/n;

    .line 62
    .line 63
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/byazt/atv/n;->c(JJ)V

    .line 64
    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public onVideoAdContinuePlay()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->u:Lcom/byazt/dh/ve$ve;

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    invoke-interface {v1}, Lcom/byazt/dh/ve$ve;->onVideoAdContinuePlay()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->z:Z

    .line 12
    .line 13
    const/4 v0, 0x2

    .line 14
    iput v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 15
    .line 16
    return-void
.end method

.method public onVideoAdPaused()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->u:Lcom/byazt/dh/ve$ve;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/dh/ve$ve;->onVideoAdPaused()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressView;->z:Z

    .line 13
    .line 14
    const/4 v0, 0x3

    .line 15
    iput v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 16
    .line 17
    return-void
.end method

.method public onVideoAdStartPlay()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->u:Lcom/byazt/dh/ve$ve;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0}, Lcom/byazt/dh/ve$ve;->onVideoAdStartPlay()V

    .line 9
    .line 10
    .line 11
    :cond_0
    const/4 v0, 0x2

    .line 12
    iput v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 13
    .line 14
    return-void
.end method

.method public onVideoComplete()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->n:Z

    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    instance-of v1, v0, Lcom/byazt/mt/c;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    check-cast v0, Lcom/byazt/mt/c;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/byazt/mt/c;->uj()V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 18
    .line 19
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 20
    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    check-cast v0, Lcom/byazt/atv/n;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/byazt/atv/n;->u()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->u:Lcom/byazt/dh/ve$ve;

    .line 29
    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/byazt/dh/ve$ve;->onVideoComplete()V

    .line 33
    .line 34
    .line 35
    :cond_2
    const/4 v0, 0x5

    .line 36
    iput v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gu:Lcom/byazt/ua/c;

    .line 39
    .line 40
    if-eqz v0, :cond_3

    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, v0, Lcom/byazt/ua/c;->c:Z

    .line 44
    .line 45
    :cond_3
    return-void
.end method

.method public onVideoError(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->t:Lcom/byazt/dh/ve$uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/byazt/dh/ve$uj;->onVideoError(II)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-wide p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->zm:J

    .line 9
    .line 10
    iput-wide p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->gr:J

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    iput p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    .line 14
    .line 15
    return-void
.end method

.method public onVideoLoad()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->t:Lcom/byazt/dh/ve$uj;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/dh/ve$uj;->onVideoLoad()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 9
    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    instance-of v1, v0, Lcom/byazt/mt/c;

    .line 13
    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    check-cast v0, Lcom/byazt/mt/c;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/mt/c;->n()V

    .line 19
    .line 20
    .line 21
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 22
    .line 23
    instance-of v1, v0, Lcom/byazt/atv/n;

    .line 24
    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    check-cast v0, Lcom/byazt/atv/n;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/atv/n;->yp()V

    .line 30
    .line 31
    .line 32
    :cond_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/byazt/ouz/NativeExpressView;->onWindowFocusChanged(Z)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 5
    .line 6
    instance-of v1, v0, Lcom/byazt/mt/c;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    instance-of v0, v0, Lcom/byazt/atv/n;

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 15
    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    iget-object p1, v0, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    if-nez p1, :cond_1

    .line 29
    .line 30
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/byazt/ouz/ExpressVideoView;->tt:Landroid/widget/ImageView;

    .line 33
    .line 34
    const/16 v0, 0x8

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method

.method public setCanInterruptVideoPlay(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Lcom/byazt/ouz/ExpressVideoView;->setCanInterruptVideoPlay(Z)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setPauseFromExpressView(Z)V
    .locals 0

    return-void
.end method

.method public sp()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->sp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public t()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/ouz/NativeExpressView;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->gt()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public tt()I
    .locals 2

    .line 66
    iget v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 67
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v0}, Lcom/byazt/ouz/ExpressVideoView;->ve()V

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->getNativeVideoController()Lcom/byazt/dh/ve;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/dh/ve;->qy()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    .line 70
    :cond_1
    iget v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->c:I

    return v0
.end method

.method public tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    const/4 v0, -0x1

    if-eq p2, v0, :cond_4

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-eq p2, v0, :cond_3

    .line 61
    invoke-super {p0, p1, p2, p3, p4}, Lcom/byazt/ouz/NativeExpressView;->tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    return-void

    .line 62
    :cond_1
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->sp:Ljava/lang/String;

    const-string p2, "draw_ad"

    if-ne p1, p2, :cond_3

    .line 63
    iget-object p1, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz p1, :cond_2

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    :cond_2
    return-void

    .line 65
    :cond_3
    iget-boolean p1, p0, Lcom/byazt/ouz/NativeExpressView;->gt:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/byazt/ouz/NativeExpressVideoView;->c(Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public tt(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/xl/uj<",
            "+",
            "Landroid/view/View;",
            ">;",
            "Lcom/byazt/xl/yp;",
            ")V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    .line 3
    instance-of v0, p1, Lcom/byazt/ouz/z;

    if-eqz v0, :cond_0

    .line 4
    move-object v0, p1

    check-cast v0, Lcom/byazt/ouz/z;

    invoke-interface {v0}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    check-cast v0, Lcom/byazt/ouz/z;

    invoke-interface {v0}, Lcom/byazt/ouz/z;->J_()Lcom/byazt/omf/d;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/omf/d;->c(Lcom/byazt/ouz/sl;)Lcom/byazt/omf/d;

    :cond_0
    if-eqz p2, :cond_3

    .line 6
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->ve()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {p2}, Lcom/byazt/xl/yp;->tt()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p2}, Lcom/byazt/xl/yp;->tt()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    if-eqz v0, :cond_2

    .line 9
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-static {v2}, Lcom/byazt/ete/xd;->tt(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x19

    invoke-virtual {v0, v1, v3, v2}, Lcom/byazt/un/NativeVideoTsView;->c(Landroid/content/Context;ILjava/lang/String;)V

    .line 10
    :cond_2
    invoke-direct {p0, p2}, Lcom/byazt/ouz/NativeExpressVideoView;->c(Lcom/byazt/xl/yp;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->yv:Lcom/byazt/xl/uj;

    if-eqz v0, :cond_5

    instance-of v1, v0, Lcom/byazt/mt/c;

    if-eqz v1, :cond_5

    .line 12
    check-cast v0, Lcom/byazt/mt/c;

    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->ab()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Lcom/byazt/mt/c;->c(Z)V

    .line 13
    :cond_5
    invoke-super {p0, p1, p2}, Lcom/byazt/ouz/NativeExpressView;->tt(Lcom/byazt/xl/uj;Lcom/byazt/xl/yp;)V

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/ouz/NativeExpressView;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->yp:Landroid/widget/FrameLayout;

    .line 9
    .line 10
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->i:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/aas/nb;->t(Lcom/byazt/ete/ic;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->uj:I

    .line 17
    .line 18
    new-instance v0, Ljava/util/HashSet;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->p:Ljava/util/HashSet;

    .line 24
    .line 25
    iget v0, p0, Lcom/byazt/ouz/NativeExpressVideoView;->uj:I

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/byazt/ouz/NativeExpressVideoView;->a(I)V

    .line 28
    .line 29
    .line 30
    invoke-direct {p0}, Lcom/byazt/ouz/NativeExpressVideoView;->gu()V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public uj(I)V
    .locals 0

    return-void
.end method

.method public ve(I)V
    .locals 0

    return-void
.end method

.method public x()V
    .locals 0

    return-void
.end method

.method public yp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/NativeExpressView;->sl:Lcom/byazt/ouz/ExpressVideoView;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/un/NativeVideoTsView;->sl()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
