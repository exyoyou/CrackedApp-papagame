.class public Lcom/byazt/ac/ve;
.super Lcom/byazt/ac/c;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;
.implements Lcom/byazt/ddx/a$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x59,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ac/ve$c;
    }
.end annotation


# static fields
.field public static final bm:Lcom/byazt/zb/sp$c;


# instance fields
.field public aw:Lcom/byazt/ua/c;

.field public bx:Lcom/byazt/xzj/RewardLpBottomView;

.field public cu:Lcom/byazt/zb/x;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public eo:Landroid/widget/FrameLayout;

.field public h:J

.field public hd:Lcom/byazt/kcl/tt$c;

.field public final ic:Lcom/byazt/ac/ve$c;

.field public final l:Lcom/byazt/at/tt;

.field public final lo:Lcom/byazt/at/ve;

.field public final lr:Lcom/byazt/at/n;

.field public lt:Lcom/byazt/hkv/tt;

.field public final md:Lcom/byazt/nr/d;

.field public nb:Lcom/byazt/kcl/tt$tt;

.field public or:Lcom/byazt/ddx/sp;

.field public final p:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public pf:Lcom/byazt/rpt/PlayableEndcardFrameLayout;

.field public pu:Landroid/webkit/DownloadListener;

.field public qp:Z

.field public final sv:Lcom/byazt/ab/c;

.field public to:Ljava/lang/String;

.field public final yv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zb:Lcom/byazt/pg/ve;

.field public final zm:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/ac/ve$2;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/ac/ve$2;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/ac/ve;->bm:Lcom/byazt/zb/sp$c;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZLcom/byazt/go/AbstractEndCardFrameLayout;)V
    .locals 7

    .line 1
    invoke-direct/range {p0 .. p6}, Lcom/byazt/ac/c;-><init>(Lcom/byazt/lcf/TTBaseVideoActivity;Lcom/byazt/ete/ic;Ljava/lang/String;IIZ)V

    .line 2
    .line 3
    .line 4
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 p4, 0x0

    .line 7
    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 8
    .line 9
    .line 10
    iput-object p3, p0, Lcom/byazt/ac/ve;->zm:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    .line 14
    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 15
    .line 16
    .line 17
    iput-object p3, p0, Lcom/byazt/ac/ve;->yv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 18
    .line 19
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 20
    .line 21
    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 22
    .line 23
    .line 24
    iput-object p3, p0, Lcom/byazt/ac/ve;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 25
    .line 26
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 27
    .line 28
    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 29
    .line 30
    .line 31
    iput-object p3, p0, Lcom/byazt/ac/ve;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 32
    .line 33
    new-instance p3, Lcom/byazt/nr/d;

    .line 34
    .line 35
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    invoke-direct {p3, p4, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 40
    .line 41
    .line 42
    iput-object p3, p0, Lcom/byazt/ac/ve;->md:Lcom/byazt/nr/d;

    .line 43
    .line 44
    const-wide/16 p3, 0x0

    .line 45
    .line 46
    iput-wide p3, p0, Lcom/byazt/ac/ve;->h:J

    .line 47
    .line 48
    new-instance p3, Lcom/byazt/ac/ve$1;

    .line 49
    .line 50
    invoke-direct {p3, p0}, Lcom/byazt/ac/ve$1;-><init>(Lcom/byazt/ac/ve;)V

    .line 51
    .line 52
    .line 53
    iput-object p3, p0, Lcom/byazt/ac/ve;->ic:Lcom/byazt/ac/ve$c;

    .line 54
    .line 55
    new-instance p3, Lcom/byazt/ac/ve$3;

    .line 56
    .line 57
    invoke-direct {p3, p0}, Lcom/byazt/ac/ve$3;-><init>(Lcom/byazt/ac/ve;)V

    .line 58
    .line 59
    .line 60
    iput-object p3, p0, Lcom/byazt/ac/ve;->lr:Lcom/byazt/at/n;

    .line 61
    .line 62
    new-instance p3, Lcom/byazt/ac/ve$4;

    .line 63
    .line 64
    invoke-direct {p3, p0}, Lcom/byazt/ac/ve$4;-><init>(Lcom/byazt/ac/ve;)V

    .line 65
    .line 66
    .line 67
    iput-object p3, p0, Lcom/byazt/ac/ve;->l:Lcom/byazt/at/tt;

    .line 68
    .line 69
    new-instance p3, Lcom/byazt/ac/ve$5;

    .line 70
    .line 71
    invoke-direct {p3, p0}, Lcom/byazt/ac/ve$5;-><init>(Lcom/byazt/ac/ve;)V

    .line 72
    .line 73
    .line 74
    iput-object p3, p0, Lcom/byazt/ac/ve;->lo:Lcom/byazt/at/ve;

    .line 75
    .line 76
    invoke-virtual {p7}, Lcom/byazt/go/AbstractEndCardFrameLayout;->getPlayableWebView()Lcom/byazt/el/SSWebView;

    .line 77
    .line 78
    .line 79
    move-result-object p3

    .line 80
    iput-object p3, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 81
    .line 82
    iget-object p3, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 83
    .line 84
    const p4, 0x7e06ffcf

    .line 85
    .line 86
    .line 87
    invoke-virtual {p3, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p3

    .line 91
    check-cast p3, Landroid/widget/FrameLayout;

    .line 92
    .line 93
    iput-object p3, p0, Lcom/byazt/ac/ve;->eo:Landroid/widget/FrameLayout;

    .line 94
    .line 95
    iget-object p3, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 96
    .line 97
    const p4, 0x7e06fedb

    .line 98
    .line 99
    .line 100
    invoke-virtual {p3, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object p3

    .line 104
    check-cast p3, Lcom/byazt/rpt/PlayableEndcardFrameLayout;

    .line 105
    .line 106
    iput-object p3, p0, Lcom/byazt/ac/ve;->pf:Lcom/byazt/rpt/PlayableEndcardFrameLayout;

    .line 107
    .line 108
    iget-object p3, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 109
    .line 110
    const p4, 0x7e06ff70

    .line 111
    .line 112
    .line 113
    invoke-virtual {p3, p4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    check-cast p3, Lcom/byazt/xzj/RewardLpBottomView;

    .line 118
    .line 119
    iput-object p3, p0, Lcom/byazt/ac/ve;->bx:Lcom/byazt/xzj/RewardLpBottomView;

    .line 120
    .line 121
    iget-object p3, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 122
    .line 123
    invoke-static {p3}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    .line 124
    .line 125
    .line 126
    move-result p3

    .line 127
    if-eqz p3, :cond_0

    .line 128
    .line 129
    const/4 p3, 0x2

    .line 130
    const/4 v4, 0x2

    .line 131
    goto :goto_0

    .line 132
    :cond_0
    const/4 p3, 0x1

    .line 133
    const/4 v4, 0x1

    .line 134
    :goto_0
    new-instance p3, Lcom/byazt/ab/c;

    .line 135
    .line 136
    iget-object v1, p0, Lcom/byazt/ac/c;->ve:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {p1}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 139
    .line 140
    .line 141
    move-result-object p4

    .line 142
    invoke-virtual {p4}, Lcom/byazt/fcd/c;->qp()Lcom/byazt/zd/tt;

    .line 143
    .line 144
    .line 145
    move-result-object v5

    .line 146
    invoke-virtual {p7}, Lcom/byazt/go/AbstractEndCardFrameLayout;->getVideoArea()Landroid/widget/FrameLayout;

    .line 147
    .line 148
    .line 149
    move-result-object v6

    .line 150
    move-object v0, p3

    .line 151
    move-object v2, p1

    .line 152
    move-object v3, p2

    .line 153
    invoke-direct/range {v0 .. v6}, Lcom/byazt/ab/c;-><init>(Ljava/lang/String;Landroid/app/Activity;Lcom/byazt/ete/ic;ILcom/byazt/zd/tt;Landroid/widget/FrameLayout;)V

    .line 154
    .line 155
    .line 156
    iput-object p3, p0, Lcom/byazt/ac/ve;->sv:Lcom/byazt/ab/c;

    .line 157
    .line 158
    invoke-virtual {p0}, Lcom/byazt/ac/c;->c()V

    .line 159
    .line 160
    .line 161
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ac/ve;)Landroid/webkit/DownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->pu:Landroid/webkit/DownloadListener;

    return-object p0
.end method

.method private bx()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/ve;->md:Lcom/byazt/nr/d;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    invoke-direct {p0, v1}, Lcom/byazt/ac/ve;->tt(I)Landroid/os/Message;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 9
    .line 10
    .line 11
    invoke-direct {p0}, Lcom/byazt/ac/ve;->pf()V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->ve(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public static synthetic c(Lcom/byazt/ac/ve;Landroid/webkit/DownloadListener;)Landroid/webkit/DownloadListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ac/ve;->pu:Landroid/webkit/DownloadListener;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ac/ve;Lcom/byazt/pg/ve;)Lcom/byazt/pg/ve;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/ac/ve;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/ac/ve;->ve(I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ac/ve;Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/ac/ve;->tt(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ac/ve;ZLjava/util/Map;Landroid/view/View;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ac/ve;->tt(ZLjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method private c(Lcom/byazt/hkv/tt;)V
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->sp(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ac/ve;->bx:Lcom/byazt/xzj/RewardLpBottomView;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p1}, Lcom/byazt/xzj/RewardLpBottomView;->setDownLoadClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private c(Ljava/util/Map;Landroid/view/View;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 11
    new-instance v0, Lcom/byazt/ddx/sp;

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v0, v1}, Lcom/byazt/ddx/sp;-><init>(Lcom/byazt/ete/ic;)V

    iput-object v0, p0, Lcom/byazt/ac/ve;->or:Lcom/byazt/ddx/sp;

    const/4 v1, 0x1

    .line 12
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/sp;->c(Z)Lcom/byazt/ddx/sp;

    .line 13
    iget-object v0, p0, Lcom/byazt/ac/ve;->or:Lcom/byazt/ddx/sp;

    invoke-virtual {v0}, Lcom/byazt/ddx/sp;->c()V

    .line 14
    iget-object v0, p0, Lcom/byazt/ac/ve;->eo:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    new-instance v0, Lcom/byazt/pg/ve;

    iget-object v3, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/byazt/ac/ve;->eo:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/byazt/ac/ve;->or:Lcom/byazt/ddx/sp;

    iget-object v6, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    iget-object v7, p0, Lcom/byazt/ac/c;->ve:Ljava/lang/String;

    .line 16
    invoke-static {v7}, Lcom/byazt/aas/nb;->uj(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/byazt/ac/ve;->aw:Lcom/byazt/ua/c;

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/byazt/pg/ve;-><init>(Landroid/app/Activity;Landroid/view/ViewGroup;Lcom/byazt/ddx/sp;Lcom/byazt/ete/ic;Ljava/lang/String;ILcom/byazt/ua/c;)V

    iput-object v0, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    .line 17
    invoke-virtual {v0}, Lcom/byazt/pg/c;->c()V

    .line 18
    iget-object v0, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    new-instance v1, Lcom/byazt/ac/ve$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/byazt/ac/ve$6;-><init>(Lcom/byazt/ac/ve;Ljava/util/Map;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/byazt/pg/c;->c(Lcom/byazt/qj/c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/ac/ve;)Z
    .locals 0

    .line 6
    iget-boolean p0, p0, Lcom/byazt/ac/ve;->qp:Z

    return p0
.end method

.method private cu()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/ac/c;->m:Z

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/ac/ve;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ac/ve;->md:Lcom/byazt/nr/d;

    .line 10
    .line 11
    const/4 v1, 0x4

    .line 12
    invoke-direct {p0, v1}, Lcom/byazt/ac/ve;->tt(I)Landroid/os/Message;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/16 v1, 0x8

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/lcf/TTBaseVideoActivity;->u(I)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve;->nb:Lcom/byazt/kcl/tt$tt;

    .line 29
    .line 30
    if-eqz v0, :cond_1

    .line 31
    .line 32
    invoke-interface {v0}, Lcom/byazt/kcl/tt$tt;->c()V

    .line 33
    .line 34
    .line 35
    :cond_1
    return-void
.end method

.method public static synthetic da(Lcom/byazt/ac/ve;)Lcom/byazt/ac/ve$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->ic:Lcom/byazt/ac/ve$c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/ac/ve;)Lcom/byazt/zb/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/ac/ve;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->eo:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private nb()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/rl;->c(Lcom/byazt/ete/ic;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/byazt/ete/ic;->fr()F

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    iget-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iput-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    iget v2, p0, Lcom/byazt/ac/c;->my:I

    .line 41
    .line 42
    const/4 v3, 0x1

    .line 43
    if-ne v2, v3, :cond_1

    .line 44
    .line 45
    const-string v2, "orientation"

    .line 46
    .line 47
    const-string v3, "portrait"

    .line 48
    .line 49
    invoke-virtual {v1, v2, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 50
    .line 51
    .line 52
    :cond_1
    iget v2, p0, Lcom/byazt/ac/c;->rl:I

    .line 53
    .line 54
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const-string v3, "height"

    .line 59
    .line 60
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    iget v2, p0, Lcom/byazt/ac/c;->gt:I

    .line 65
    .line 66
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    const-string v3, "width"

    .line 71
    .line 72
    invoke-virtual {v1, v3, v2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    const-string v2, "aspect_ratio"

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v1, v2, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    iput-object v0, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 91
    .line 92
    return-void
.end method

.method private pf()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/ve;->hd:Lcom/byazt/kcl/tt$c;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/byazt/kcl/tt$c;->c()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-direct {p0, v0}, Lcom/byazt/ac/ve;->ve(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private qp()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/rl;->sp(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iput-object v1, p0, Lcom/byazt/ac/ve;->bx:Lcom/byazt/xzj/RewardLpBottomView;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/byazt/ete/my;->uj(Lcom/byazt/ete/ic;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iput-object v1, p0, Lcom/byazt/ac/ve;->bx:Lcom/byazt/xzj/RewardLpBottomView;

    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ete/my;->sp(Lcom/byazt/ete/ic;)Z

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    .line 32
    iput-object v1, p0, Lcom/byazt/ac/ve;->bx:Lcom/byazt/xzj/RewardLpBottomView;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/byazt/ac/ve;->pf:Lcom/byazt/rpt/PlayableEndcardFrameLayout;

    .line 36
    .line 37
    if-eqz v0, :cond_3

    .line 38
    .line 39
    iget-object v0, p0, Lcom/byazt/ac/ve;->bx:Lcom/byazt/xzj/RewardLpBottomView;

    .line 40
    .line 41
    if-eqz v0, :cond_3

    .line 42
    .line 43
    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/byazt/ac/c;->ve:Ljava/lang/String;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v2}, Lcom/byazt/xzj/RewardLpBottomView;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/byazt/ac/ve;->pf:Lcom/byazt/rpt/PlayableEndcardFrameLayout;

    .line 51
    .line 52
    new-instance v1, Lcom/byazt/ac/ve$7;

    .line 53
    .line 54
    invoke-direct {v1, p0}, Lcom/byazt/ac/ve$7;-><init>(Lcom/byazt/ac/ve;)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v1}, Lcom/byazt/rpt/PlayableEndcardFrameLayout;->c(Lcom/byazt/rpt/PlayableEndcardFrameLayout$c;)V

    .line 58
    .line 59
    .line 60
    :cond_3
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/ac/ve;)Lcom/byazt/hkv/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->lt:Lcom/byazt/hkv/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method private sv()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->c()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Lcom/byazt/kcl/a;->m()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-wide/16 v0, 0x0

    .line 34
    .line 35
    :goto_0
    iget-object v2, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/byazt/lcf/TTBaseVideoActivity;->pu()Lcom/byazt/kcl/a;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v2}, Lcom/byazt/kcl/a;->u()Z

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    iget-object v3, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 46
    .line 47
    invoke-virtual {v3}, Lcom/byazt/lcf/TTBaseVideoActivity;->to()Lcom/byazt/fcd/c;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    instance-of v3, v3, Lcom/byazt/fcd/x;

    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    iget-object v2, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 57
    .line 58
    if-eqz v2, :cond_3

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/byazt/zb/x;->sp()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_3

    .line 65
    .line 66
    const/4 v2, 0x1

    .line 67
    goto :goto_1

    .line 68
    :cond_3
    const/4 v2, 0x0

    .line 69
    :goto_1
    iget-object v3, p0, Lcom/byazt/ac/ve;->sv:Lcom/byazt/ab/c;

    .line 70
    .line 71
    invoke-virtual {v3, v0, v1, v2}, Lcom/byazt/ab/c;->c(JZ)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private tt(I)Landroid/os/Message;
    .locals 2

    .line 50
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x66

    .line 51
    iput v1, v0, Landroid/os/Message;->what:I

    .line 52
    iput p1, v0, Landroid/os/Message;->arg1:I

    return-object v0
.end method

.method public static synthetic tt(Lcom/byazt/ac/ve;)Lcom/byazt/kcl/tt$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->hd:Lcom/byazt/kcl/tt$c;

    return-object p0
.end method

.method private tt(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V
    .locals 7

    .line 30
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/byazt/ac/ve;->lt:Lcom/byazt/hkv/tt;

    .line 32
    new-instance v0, Lcom/byazt/ac/ve$8;

    iget-object v3, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    iget-object v4, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-virtual {v1}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/byazt/ac/ve$8;-><init>(Lcom/byazt/ac/ve;Landroid/content/Context;Lcom/byazt/omf/d;Ljava/lang/String;Lcom/byazt/ddx/a;)V

    iput-object v0, p0, Lcom/byazt/ac/c;->sl:Lcom/byazt/jwd/uj;

    .line 33
    iget-object v1, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, v0}, Lcom/byazt/el/SSWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 34
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    new-instance v1, Lcom/byazt/jwd/ve;

    iget-object v2, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object v3, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    invoke-direct {v1, v2, v3}, Lcom/byazt/jwd/ve;-><init>(Lcom/byazt/omf/d;Lcom/byazt/ddx/a;)V

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 35
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {p0, v0}, Lcom/byazt/ac/c;->c(Lcom/byazt/el/SSWebView;)V

    .line 36
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setBackgroundColor(I)V

    .line 37
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->setDisplayZoomControls(Z)V

    .line 38
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {v0, p1}, Lcom/byazt/qg/BizWebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    .line 39
    invoke-direct {p0, p2}, Lcom/byazt/ac/ve;->c(Lcom/byazt/hkv/tt;)V

    return-void
.end method

.method private tt(ZLjava/util/Map;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    new-instance v1, Lcom/byazt/ddx/a;

    iget-object v2, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-direct {v1, v2, v0}, Lcom/byazt/ddx/a;-><init>(Lcom/byazt/ete/ic;Lcom/byazt/nl/uj;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/byazt/ddx/a;->tt(Z)Lcom/byazt/ddx/a;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    .line 4
    invoke-virtual {v1, p0}, Lcom/byazt/ddx/a;->c(Lcom/byazt/ddx/a$tt;)V

    .line 5
    iget-object v1, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    invoke-virtual {v1, v0}, Lcom/byazt/ddx/a;->c(Z)V

    .line 6
    iget-object v1, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    if-eqz p1, :cond_1

    const-string v2, "reward_endcard"

    goto :goto_0

    :cond_1
    const-string v2, "fullscreen_endcard"

    :goto_0
    invoke-virtual {v1, v2}, Lcom/byazt/ddx/a;->c(Ljava/lang/String;)V

    .line 7
    new-instance v1, Lcom/byazt/omf/d;

    iget-object v2, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-direct {v1, v2}, Lcom/byazt/omf/d;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 8
    iget-object v2, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->tt(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 9
    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->c(Lcom/byazt/ete/ic;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 10
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 11
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/omf/d;->uj(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 p1, 0x7

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    .line 12
    :goto_1
    invoke-virtual {v1, p1}, Lcom/byazt/omf/d;->ve(I)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/ac/c;->gu:Lcom/byazt/at/c;

    .line 13
    invoke-virtual {p1, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/c;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 14
    invoke-static {v1}, Lcom/byazt/aas/nb;->my(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/byazt/omf/d;->n(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 15
    invoke-virtual {p1, v1}, Lcom/byazt/omf/d;->c(Lcom/byazt/el/SSWebView;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 16
    invoke-static {v1}, Lcom/byazt/wz/x;->c(Lcom/byazt/ete/ic;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/byazt/omf/d;->tt(I)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object v1, p0, Lcom/byazt/ac/c;->ve:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, v1}, Lcom/byazt/omf/d;->c(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p1

    .line 18
    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Ljava/util/Map;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/ac/c;->gr:Lcom/byazt/at/sp;

    .line 19
    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/sp;)Lcom/byazt/omf/d;

    move-result-object p1

    .line 20
    invoke-virtual {p1, p3}, Lcom/byazt/omf/d;->c(Landroid/view/View;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 21
    invoke-virtual {p2}, Lcom/byazt/lcf/TTBaseVideoActivity;->c()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->ve(Ljava/lang/String;)Lcom/byazt/omf/d;

    move-result-object p1

    iget-object p2, p0, Lcom/byazt/ac/ve;->lr:Lcom/byazt/at/n;

    .line 22
    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/n;)Lcom/byazt/omf/d;

    .line 23
    iget-object p1, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {p1}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    invoke-virtual {p1, v0}, Lcom/byazt/omf/d;->x(Z)V

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object p2, p0, Lcom/byazt/ac/ve;->l:Lcom/byazt/at/tt;

    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/tt;)Lcom/byazt/omf/d;

    .line 26
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    iget-object p2, p0, Lcom/byazt/ac/ve;->lo:Lcom/byazt/at/ve;

    invoke-virtual {p1, p2}, Lcom/byazt/omf/d;->c(Lcom/byazt/at/ve;)Lcom/byazt/omf/d;

    .line 27
    invoke-direct {p0}, Lcom/byazt/ac/ve;->qp()V

    .line 28
    invoke-direct {p0}, Lcom/byazt/ac/ve;->nb()V

    .line 29
    invoke-virtual {p0}, Lcom/byazt/ac/ve;->or()V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/ac/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/ac/ve;->cu()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/ac/ve;)Lcom/byazt/kcl/tt$tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->nb:Lcom/byazt/kcl/tt$tt;

    return-object p0
.end method

.method private ve(I)V
    .locals 2

    .line 2
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    .line 3
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    :catch_0
    invoke-static {}, Lcom/byazt/ukr/yp;->c()Lcom/byazt/ukr/yp;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/byazt/ukr/yp;->ve(Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic x(Lcom/byazt/ac/ve;)Lcom/byazt/xzj/RewardLpBottomView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ac/ve;->bx:Lcom/byazt/xzj/RewardLpBottomView;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/ac/ve;->nb:Lcom/byazt/kcl/tt$tt;

    invoke-interface {v0}, Lcom/byazt/kcl/tt$tt;->ve()Lcom/byazt/kcl/n;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 4
    :cond_0
    invoke-super {p0}, Lcom/byazt/ac/c;->a()V

    .line 5
    iget-object v0, p0, Lcom/byazt/ac/ve;->sv:Lcom/byazt/ab/c;

    invoke-virtual {v0}, Lcom/byazt/ab/c;->c()V

    .line 6
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0, v2}, Lcom/byazt/zb/x;->tt(Z)Lcom/byazt/zb/x;

    .line 8
    :cond_1
    invoke-virtual {p0, v1, v2}, Lcom/byazt/ac/c;->c(ZZ)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iput-boolean p1, p0, Lcom/byazt/ac/ve;->qp:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public c(I)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/byazt/ac/c;->c(I)V

    .line 25
    invoke-direct {p0}, Lcom/byazt/ac/ve;->sv()V

    return-void
.end method

.method public c(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/byazt/ac/ve;->pu:Landroid/webkit/DownloadListener;

    .line 20
    iput-object p2, p0, Lcom/byazt/ac/ve;->lt:Lcom/byazt/hkv/tt;

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/byazt/ac/ve;->tt(Landroid/webkit/DownloadListener;Lcom/byazt/hkv/tt;)V

    return-void
.end method

.method public c(Lcom/byazt/kcl/tt$c;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/byazt/ac/ve;->hd:Lcom/byazt/kcl/tt$c;

    return-void
.end method

.method public c(Lcom/byazt/kcl/tt$tt;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/byazt/ac/ve;->nb:Lcom/byazt/kcl/tt$tt;

    return-void
.end method

.method public c(Lcom/byazt/ua/c;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/ac/ve;->aw:Lcom/byazt/ua/c;

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/byazt/ac/ve;->to:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iput-object p1, p0, Lcom/byazt/ac/ve;->to:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve;->to:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 30
    iput-object p1, p0, Lcom/byazt/ac/ve;->to:Ljava/lang/String;

    .line 31
    iget-object p1, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->da(I)V

    :cond_1
    return-void
.end method

.method public c(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/byazt/ac/c;->i:Lcom/byazt/ddx/da;

    if-eqz v0, :cond_0

    .line 34
    invoke-virtual {v0}, Lcom/byazt/ddx/da;->da()V

    :cond_0
    if-eqz p1, :cond_1

    .line 35
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/rl;->ve(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 36
    invoke-virtual {p0}, Lcom/byazt/ac/ve;->h()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "duration"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public c(ZLjava/util/Map;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    invoke-static {v0}, Lcom/byazt/aas/nb;->gu(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/ac/ve;->eo:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    .line 9
    invoke-direct {p0, p2, p3}, Lcom/byazt/ac/ve;->c(Ljava/util/Map;Landroid/view/View;)V

    return-void

    .line 10
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/ac/ve;->tt(ZLjava/util/Map;Landroid/view/View;)V

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/d;->sl()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0
.end method

.method public eo()Lcom/byazt/omf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public gr()Ljava/lang/String;
    .locals 1

    const-string v0, "playable"

    return-object v0
.end method

.method public h()J
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-wide v2, p0, Lcom/byazt/ac/ve;->h:J

    .line 6
    .line 7
    sub-long/2addr v0, v2

    .line 8
    return-wide v0
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/16 v1, 0x65

    .line 4
    .line 5
    if-eq v0, v1, :cond_4

    .line 6
    .line 7
    const/16 v1, 0x66

    .line 8
    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve;->md:Lcom/byazt/nr/d;

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/byazt/ac/ve;->nb:Lcom/byazt/kcl/tt$tt;

    .line 18
    .line 19
    invoke-interface {v0}, Lcom/byazt/kcl/tt$tt;->ve()Lcom/byazt/kcl/n;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, v1}, Lcom/byazt/kcl/n;->c(Z)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/byazt/lcf/TTBaseVideoActivity;->b()V

    .line 30
    .line 31
    .line 32
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 33
    .line 34
    const/4 v0, 0x2

    .line 35
    if-ne p1, v0, :cond_1

    .line 36
    .line 37
    invoke-direct {p0}, Lcom/byazt/ac/ve;->pf()V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    if-eqz p1, :cond_2

    .line 42
    .line 43
    if-ne p1, v1, :cond_3

    .line 44
    .line 45
    :cond_2
    invoke-virtual {p0}, Lcom/byazt/ac/ve;->md()V

    .line 46
    .line 47
    .line 48
    :cond_3
    :goto_0
    return-void

    .line 49
    :cond_4
    invoke-direct {p0}, Lcom/byazt/ac/ve;->bx()V

    .line 50
    .line 51
    .line 52
    return-void
.end method

.method public md()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/byazt/ac/c;->c(Z)V

    .line 3
    .line 4
    .line 5
    iget-object v1, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lcom/byazt/zb/x;->tt(Z)Lcom/byazt/zb/x;

    .line 10
    .line 11
    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/byazt/ac/c;->ve(Z)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/byazt/ac/c;->c(ZZ)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/ac/c;->sl:Lcom/byazt/jwd/uj;

    .line 20
    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Lcom/byazt/jwd/uj;->tt(Z)V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public n(Z)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    invoke-virtual {v0, p1}, Lcom/byazt/omf/d;->sp(Z)V

    .line 4
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "isReward"

    .line 5
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 6
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string v1, "isVerifyReward"

    invoke-virtual {p1, v1, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public or()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    if-eqz v0, :cond_3

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_2

    .line 10
    .line 11
    :cond_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/omf/x;->hd()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/byazt/ac/ve;->bm:Lcom/byazt/zb/sp$c;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/byazt/zb/sp;->c(Lcom/byazt/zb/sp$c;)V

    .line 24
    .line 25
    .line 26
    :cond_1
    new-instance v1, Lcom/byazt/vgp/ve;

    .line 27
    .line 28
    invoke-direct {v1}, Lcom/byazt/vgp/ve;-><init>()V

    .line 29
    .line 30
    .line 31
    new-instance v5, Lcom/byazt/ac/uj;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/byazt/ac/ve;->lr:Lcom/byazt/at/n;

    .line 34
    .line 35
    invoke-direct {v5, v0}, Lcom/byazt/ac/uj;-><init>(Lcom/byazt/at/n;)V

    .line 36
    .line 37
    .line 38
    new-instance v4, Lcom/byazt/vgp/n;

    .line 39
    .line 40
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 41
    .line 42
    invoke-direct {v4, v0}, Lcom/byazt/vgp/n;-><init>(Lcom/byazt/omf/d;)V

    .line 43
    .line 44
    .line 45
    new-instance v0, Lorg/json/JSONObject;

    .line 46
    .line 47
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 48
    .line 49
    .line 50
    :try_start_0
    const-string v2, "cid"

    .line 51
    .line 52
    iget-object v3, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 53
    .line 54
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->uj()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    .line 60
    .line 61
    const-string v2, "log_extra"

    .line 62
    .line 63
    iget-object v3, p0, Lcom/byazt/ac/c;->tt:Lcom/byazt/ete/ic;

    .line 64
    .line 65
    invoke-virtual {v3}, Lcom/byazt/ete/ic;->w_()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :catchall_0
    nop

    .line 74
    :goto_0
    new-instance v6, Ljava/util/HashSet;

    .line 75
    .line 76
    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 77
    .line 78
    .line 79
    const-string v2, "subscribe_app_ad"

    .line 80
    .line 81
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    const-string v2, "adInfo"

    .line 85
    .line 86
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    const-string v2, "webview_time_track"

    .line 90
    .line 91
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 92
    .line 93
    .line 94
    const-string v2, "download_app_ad"

    .line 95
    .line 96
    invoke-interface {v6, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    iget-object v3, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 104
    .line 105
    sget-object v7, Lcom/byazt/zb/x$c;->c:Lcom/byazt/zb/x$c;

    .line 106
    .line 107
    invoke-virtual/range {v1 .. v7}, Lcom/byazt/vgp/ve;->c(Landroid/content/Context;Lcom/byazt/el/SSWebView;Lcom/byazt/zb/ve;Lcom/byazt/zb/c;Ljava/util/Set;Lcom/byazt/zb/x$c;)Lcom/byazt/zb/x;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    iget-object v2, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 112
    .line 113
    invoke-virtual {v1, v2}, Lcom/byazt/zb/x;->n(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-static {}, Lcom/byazt/fh/c;->x()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v2

    .line 121
    invoke-virtual {v1, v2}, Lcom/byazt/zb/x;->uj(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-static {}, Lcom/byazt/fh/c;->c()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lcom/byazt/zb/x;->c(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {v1, v0}, Lcom/byazt/zb/x;->n(Lorg/json/JSONObject;)Lcom/byazt/zb/x;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "sdkEdition"

    .line 138
    .line 139
    invoke-static {}, Lcom/byazt/fh/c;->ve()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zb/x;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-static {}, Lcom/byazt/fh/c;->a()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->tt(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {}, Lcom/byazt/fh/c;->n()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->ve(Ljava/lang/String;)Lcom/byazt/zb/x;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    const-wide/16 v1, 0xa

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zb/x;->c(J)Lcom/byazt/zb/x;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0, v1, v2}, Lcom/byazt/zb/x;->tt(J)Lcom/byazt/zb/x;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    const/4 v1, 0x0

    .line 174
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->ve(Z)Lcom/byazt/zb/x;

    .line 175
    .line 176
    .line 177
    move-result-object v0

    .line 178
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->c(Z)Lcom/byazt/zb/x;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    iput-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 183
    .line 184
    invoke-virtual {v0}, Lcom/byazt/zb/x;->da()Ljava/util/Set;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 189
    .line 190
    if-eqz v1, :cond_3

    .line 191
    .line 192
    if-eqz v0, :cond_3

    .line 193
    .line 194
    invoke-interface {v0}, Ljava/util/Set;->size()I

    .line 195
    .line 196
    .line 197
    move-result v1

    .line 198
    if-gtz v1, :cond_2

    .line 199
    .line 200
    goto :goto_2

    .line 201
    :cond_2
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 202
    .line 203
    iget-object v2, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 204
    .line 205
    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 206
    .line 207
    .line 208
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 209
    .line 210
    .line 211
    move-result-object v0

    .line 212
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-eqz v2, :cond_3

    .line 217
    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    check-cast v2, Ljava/lang/String;

    .line 223
    .line 224
    iget-object v3, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    .line 225
    .line 226
    invoke-virtual {v3}, Lcom/byazt/omf/d;->a()Lcom/byazt/pct/nu;

    .line 227
    .line 228
    .line 229
    move-result-object v3

    .line 230
    new-instance v4, Lcom/byazt/ac/ve$9;

    .line 231
    .line 232
    invoke-direct {v4, p0, v1}, Lcom/byazt/ac/ve$9;-><init>(Lcom/byazt/ac/ve;Ljava/lang/ref/WeakReference;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v3, v2, v4}, Lcom/byazt/pct/nu;->c(Ljava/lang/String;Lcom/byazt/pct/n;)Lcom/byazt/pct/nu;

    .line 236
    .line 237
    .line 238
    goto :goto_1

    .line 239
    :cond_3
    :goto_2
    return-void
.end method

.method public p()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/byazt/ac/c;->z:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->getWebView()Landroid/webkit/WebView;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/byazt/ac/c;->z:Z

    .line 24
    .line 25
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 26
    .line 27
    if-eqz v0, :cond_0

    .line 28
    .line 29
    iget-object v1, p0, Lcom/byazt/ac/c;->da:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->a(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    :cond_0
    return-void
.end method

.method public t()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/ac/c;->t()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/ac/c;->sp:Lcom/byazt/el/SSWebView;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/byazt/aas/pf;->uj(Landroid/view/View;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->tt(Z)Lcom/byazt/zb/x;

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/byazt/pg/c;->ve()V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget-object v0, p0, Lcom/byazt/ac/ve;->or:Lcom/byazt/ddx/sp;

    .line 30
    .line 31
    if-eqz v0, :cond_2

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/byazt/ddx/sp;->ve()V

    .line 34
    .line 35
    .line 36
    :cond_2
    return-void
.end method

.method public tt(II)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/ac/c;->c:Lcom/byazt/lcf/TTBaseVideoActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 41
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "skip_remain_time"

    .line 42
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 43
    iget-boolean p1, p0, Lcom/byazt/ac/c;->uj:Z

    if-eqz p1, :cond_1

    const-string p1, "reward_remain_time"

    .line 44
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 45
    :cond_1
    iget-object p1, p0, Lcom/byazt/ac/c;->x:Lcom/byazt/omf/d;

    const-string p2, "reward_button_status"

    invoke-virtual {p1, p2, v0}, Lcom/byazt/omf/d;->tt(Ljava/lang/String;Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public tt(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {v0, p1}, Lcom/byazt/zb/x;->c(Z)Lcom/byazt/zb/x;

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve;->sv:Lcom/byazt/ab/c;

    invoke-virtual {v0, p1}, Lcom/byazt/ab/c;->c(Z)V

    return-void
.end method

.method public u()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/ac/c;->u()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/zb/x;->tt(Z)Lcom/byazt/zb/x;

    .line 10
    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/byazt/pg/c;->tt()V

    .line 17
    .line 18
    .line 19
    :cond_1
    return-void
.end method

.method public uj(Z)V
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lcom/byazt/ac/c;->uj(Z)V

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/byazt/ac/ve;->sv:Lcom/byazt/ab/c;

    invoke-virtual {p1}, Lcom/byazt/ab/c;->tt()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    if-eqz p1, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/byazt/pg/c;->tt()V

    :cond_1
    return-void
.end method

.method public yp()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/ac/c;->yp()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ac/ve;->or:Lcom/byazt/ddx/sp;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/sp;->c(I)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public z()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/byazt/ac/c;->z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ac/ve;->cu:Lcom/byazt/zb/x;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/zb/x;->or()V

    .line 9
    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/byazt/ac/c;->t:Lcom/byazt/ddx/a;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lcom/byazt/ddx/a;->c(Lcom/byazt/ddx/a$tt;)V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/byazt/ac/ve;->sv:Lcom/byazt/ab/c;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ab/c;->uj()V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/byazt/pg/ve;->uj()V

    .line 29
    .line 30
    .line 31
    :cond_2
    iget-object v0, p0, Lcom/byazt/ac/ve;->or:Lcom/byazt/ddx/sp;

    .line 32
    .line 33
    if-eqz v0, :cond_3

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/byazt/ddx/sp;->uj()V

    .line 36
    .line 37
    .line 38
    :cond_3
    iput-object v1, p0, Lcom/byazt/ac/ve;->pu:Landroid/webkit/DownloadListener;

    .line 39
    .line 40
    return-void
.end method

.method public zb()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ac/ve;->p:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    return v0

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    return v0
.end method

.method public zm()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/ac/c;->zm()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ac/ve;->sv:Lcom/byazt/ab/c;

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/byazt/ab/c;->ve()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/ac/ve;->zb:Lcom/byazt/pg/ve;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/byazt/pg/c;->ve()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
