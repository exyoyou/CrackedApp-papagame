.class public Lcom/byazt/cc/a;
.super Lcom/byazt/ha/sp;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/dna/qp$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x22
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/cc/a$c;
    }
.end annotation


# static fields
.field public static ve:Z = true


# instance fields
.field public a:Lcom/byazt/ete/bm;

.field public final aw:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public bm:Lcom/byazt/gat/n;

.field public final bx:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final cu:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final da:Lcom/byazt/nr/d;

.field public final eo:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public gr:Lcom/byazt/im/i;

.field public gt:Lcom/byazt/im/a;

.field public gu:Lcom/byazt/nc/tt;

.field public h:Lcom/byazt/im/uj;

.field public hd:Z

.field public i:Landroid/content/Context;

.field public final ic:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final l:Lcom/byazt/cc/tt;

.field public lr:Lcom/byazt/im/sp;

.field public m:J

.field public md:Lcom/byazt/im/uj;

.field public my:J

.field public n:Lcom/byazt/dj/tt;

.field public final nb:Ljava/util/concurrent/atomic/AtomicInteger;

.field public nu:J

.field public final or:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public p:Lcom/byazt/ete/y;

.field public final pf:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final qp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public qy:Lcom/byazt/im/x;

.field public rh:J

.field public rl:Lcom/byazt/im/a;

.field public sl:I

.field public sp:Ljava/lang/String;

.field public final sv:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public t:I

.field public u:Lcom/byazt/tdq/c;

.field public uj:I

.field public x:Lcom/byazt/nh/c;

.field public yp:Lcom/byazt/cc/a$c;

.field public yv:Lcom/byazt/ete/y;

.field public z:J

.field public final zb:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public zm:Lcom/byazt/im/i;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/ha/sp;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x2

    .line 5
    iput v0, p0, Lcom/byazt/cc/a;->uj:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/byazt/cc/a;->x:Lcom/byazt/nh/c;

    .line 9
    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/byazt/cc/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 19
    .line 20
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/byazt/cc/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 24
    .line 25
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 26
    .line 27
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/byazt/cc/a;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 31
    .line 32
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 35
    .line 36
    .line 37
    iput-object v0, p0, Lcom/byazt/cc/a;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 38
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    .line 41
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 42
    .line 43
    .line 44
    iput-object v0, p0, Lcom/byazt/cc/a;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 45
    .line 46
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 47
    .line 48
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/byazt/cc/a;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 52
    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 54
    .line 55
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 56
    .line 57
    .line 58
    iput-object v0, p0, Lcom/byazt/cc/a;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    .line 62
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 63
    .line 64
    .line 65
    iput-object v0, p0, Lcom/byazt/cc/a;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 66
    .line 67
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 68
    .line 69
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 70
    .line 71
    .line 72
    iput-object v0, p0, Lcom/byazt/cc/a;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 75
    .line 76
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 77
    .line 78
    .line 79
    iput-object v0, p0, Lcom/byazt/cc/a;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 80
    .line 81
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 82
    .line 83
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 84
    .line 85
    .line 86
    iput-object v0, p0, Lcom/byazt/cc/a;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 87
    .line 88
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 89
    .line 90
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 91
    .line 92
    .line 93
    iput-object v0, p0, Lcom/byazt/cc/a;->ic:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    .line 95
    iput-boolean v1, p0, Lcom/byazt/cc/a;->hd:Z

    .line 96
    .line 97
    new-instance v0, Lcom/byazt/cc/tt;

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/byazt/cc/tt;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object v0, p0, Lcom/byazt/cc/a;->l:Lcom/byazt/cc/tt;

    .line 103
    .line 104
    if-eqz p1, :cond_0

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    iput-object p1, p0, Lcom/byazt/cc/a;->i:Landroid/content/Context;

    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    iput-object p1, p0, Lcom/byazt/cc/a;->i:Landroid/content/Context;

    .line 118
    .line 119
    :goto_0
    new-instance p1, Lcom/byazt/nr/d;

    .line 120
    .line 121
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-direct {p1, v0, p0}, Lcom/byazt/nr/d;-><init>(Landroid/os/Looper;Lcom/byazt/dna/qp$c;)V

    .line 126
    .line 127
    .line 128
    iput-object p1, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    .line 129
    .line 130
    new-instance p1, Lcom/byazt/cc/a$c;

    .line 131
    .line 132
    invoke-direct {p1, p0}, Lcom/byazt/cc/a$c;-><init>(Lcom/byazt/cc/a;)V

    .line 133
    .line 134
    .line 135
    iput-object p1, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    .line 136
    .line 137
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p1, v1}, Lcom/byazt/omf/x;->da(Z)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0}, Lcom/byazt/cc/a;->u()V

    .line 145
    .line 146
    .line 147
    return-void
.end method

.method public static synthetic a(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    iget-object v2, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    invoke-virtual {v0, v1, v2}, Lcom/byazt/tdq/c;->tt(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)V

    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/byazt/cc/a;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ha/sp;->c(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 4

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/cc/a;->my:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/byazt/im/uj;->ve(J)V

    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/cc/a;->rh:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Lcom/byazt/im/uj;->ve(J)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/byazt/cc/a;->uj:I

    return p1
.end method

.method public static c(Landroid/content/Context;)Lcom/byazt/cc/a;
    .locals 1

    .line 21
    new-instance v0, Lcom/byazt/cc/a;

    invoke-direct {v0, p0}, Lcom/byazt/cc/a;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private c(Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;Lcom/byazt/im/tt;J)Lcom/byazt/gat/a;
    .locals 9

    .line 167
    new-instance v0, Lcom/byazt/gat/a;

    new-instance v8, Lcom/byazt/cc/a$4;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/byazt/cc/a$4;-><init>(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;J)V

    invoke-direct {v0, p4, v8}, Lcom/byazt/gat/a;-><init>(Lcom/byazt/im/tt;Lcom/byazt/gat/ve;)V

    return-object v0
.end method

.method private c(Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/cc/a$c;)Lcom/byazt/gat/c;
    .locals 8

    .line 168
    new-instance v7, Lcom/byazt/im/ve;

    iget-object v1, p0, Lcom/byazt/cc/a;->i:Landroid/content/Context;

    const-string v2, "splash_ad"

    iget-object v5, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/byazt/im/ve;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/dj/tt;Z)V

    .line 169
    new-instance p2, Lcom/byazt/gat/c;

    new-instance v0, Lcom/byazt/cc/a$5;

    invoke-direct {v0, p0, p1, p3}, Lcom/byazt/cc/a$5;-><init>(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    iget-object p1, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    invoke-direct {p2, v7, v0, p1}, Lcom/byazt/gat/c;-><init>(Lcom/byazt/im/ve;Lcom/byazt/gat/uj;Lcom/byazt/tdq/c;)V

    return-object p2
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/a;)Lcom/byazt/im/a;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/cc/a;->rl:Lcom/byazt/im/a;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/sp;)Lcom/byazt/im/sp;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/cc/a;->lr:Lcom/byazt/im/sp;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/nh/c;)Lcom/byazt/nh/c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/cc/a;->x:Lcom/byazt/nh/c;

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/cc/a;)Ljava/lang/String;
    .locals 0

    .line 5
    iget-object p0, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    return-object p1
.end method

.method private c(I)V
    .locals 4

    .line 201
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    iget v1, p0, Lcom/byazt/cc/a;->sl:I

    invoke-virtual {v0, v1}, Lcom/byazt/ogz/sl;->i(I)I

    move-result v0

    if-ge v0, p1, :cond_2

    if-gtz v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-direct {p0}, Lcom/byazt/cc/a;->yp()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 203
    :cond_1
    iget-object v1, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    if-eqz v1, :cond_2

    sub-int/2addr p1, v0

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buffer time: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "  \u51cf\u53bbbuffer time\u540e\u8d85\u65f6\u65f6\u95f4\uff1a"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Splash_FullLink"

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    const/4 v1, 0x4

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/byazt/cc/a;->tt(Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/im/sp;Lcom/byazt/cc/a$c;J)V
    .locals 0

    .line 10
    invoke-direct/range {p0 .. p5}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/im/sp;Lcom/byazt/cc/a$c;J)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/a;ZZ)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;ZZ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/i;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/i;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;JZ)V
    .locals 0

    .line 14
    invoke-direct/range {p0 .. p7}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;JZ)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;Z)V
    .locals 0

    .line 15
    invoke-direct/range {p0 .. p5}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;Z)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;ZLcom/byazt/ete/y;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/byazt/cc/a;->c(ZLcom/byazt/ete/y;)V

    return-void
.end method

.method private c(Lcom/byazt/dj/tt;I)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a--begin "

    const-string v1, "Splash_FullLink"

    .line 47
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/byazt/cc/a;->z:J

    .line 49
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->ve(Lcom/byazt/dj/tt;)Lcom/byazt/ete/bm;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    .line 50
    iget-object v2, p0, Lcom/byazt/cc/a;->sp:Ljava/lang/String;

    iput-object v2, v0, Lcom/byazt/ete/bm;->my:Ljava/lang/String;

    .line 51
    iput-object p1, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    .line 52
    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/dj/tt;)I

    move-result v0

    iput v0, p0, Lcom/byazt/cc/a;->sl:I

    .line 53
    invoke-static {}, Lcom/byazt/tdq/c;->c()Lcom/byazt/tdq/c;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    .line 54
    iget-object v0, p0, Lcom/byazt/cc/a;->l:Lcom/byazt/cc/tt;

    iget-object v2, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    iget v3, p0, Lcom/byazt/cc/a;->sl:I

    invoke-virtual {v0, v2, v3}, Lcom/byazt/cc/tt;->c(Lcom/byazt/dj/tt;I)I

    move-result v0

    .line 55
    iput v0, p0, Lcom/byazt/cc/a;->uj:I

    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524drit\u4f4d "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/byazt/cc/a;->sl:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/ogz/sl;->a(Ljava/lang/String;)I

    move-result v1

    .line 58
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->uj()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v1, p2}, Lcom/byazt/cc/a;->c(Ljava/lang/String;II)V

    .line 59
    iget-object v2, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    int-to-long v3, p2

    iput-wide v3, v2, Lcom/byazt/ete/bm;->da:J

    int-to-long v5, v1

    .line 60
    iput-wide v5, v2, Lcom/byazt/ete/bm;->sl:J

    .line 61
    iget p2, p0, Lcom/byazt/cc/a;->t:I

    int-to-long v5, p2

    iput-wide v5, v2, Lcom/byazt/ete/bm;->t:J

    .line 62
    invoke-static {p1, v3, v4}, Lcom/byazt/cc/sp;->c(Lcom/byazt/dj/tt;J)V

    .line 63
    invoke-direct {p0}, Lcom/byazt/cc/a;->uj()V

    .line 64
    invoke-virtual {p0}, Lcom/byazt/ha/sp;->tt()V

    .line 65
    iget-object p2, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    invoke-direct {p0, p1, p2, v0}, Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)V

    return-void
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;I)V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    iget-object v1, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    iget v2, p0, Lcom/byazt/cc/a;->uj:I

    invoke-static {v0, v1, p2, v2, p3}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/ete/y;Lcom/byazt/ete/bm;II)V

    .line 67
    iget-object p3, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/cc/a$c;)V

    return-void
.end method

.method private c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/cc/a$c;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 68
    :cond_0
    new-instance v0, Lcom/byazt/tdq/n;

    invoke-direct {v0}, Lcom/byazt/tdq/n;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/byazt/cc/a;->l:Lcom/byazt/cc/tt;

    iget-wide v1, v1, Lcom/byazt/cc/tt;->tt:J

    iput-wide v1, v0, Lcom/byazt/tdq/n;->c:J

    .line 70
    new-instance v1, Lcom/byazt/im/n;

    invoke-direct {v1, p1, p2, v0}, Lcom/byazt/im/n;-><init>(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;Lcom/byazt/tdq/n;)V

    .line 71
    new-instance p2, Lcom/byazt/gat/n;

    new-instance v0, Lcom/byazt/cc/a$10;

    invoke-direct {v0, p0, p1, p3}, Lcom/byazt/cc/a$10;-><init>(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;Lcom/byazt/cc/a$c;)V

    iget-object p1, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    iget-object p3, p0, Lcom/byazt/cc/a;->l:Lcom/byazt/cc/tt;

    invoke-direct {p2, v1, v0, p1, p3}, Lcom/byazt/gat/n;-><init>(Lcom/byazt/im/n;Lcom/byazt/gat/tt;Lcom/byazt/tdq/c;Lcom/byazt/cc/tt;)V

    iput-object p2, p0, Lcom/byazt/cc/a;->bm:Lcom/byazt/gat/n;

    .line 72
    iget p1, p0, Lcom/byazt/cc/a;->uj:I

    invoke-virtual {p2, p1}, Lcom/byazt/gat/n;->c(I)V

    return-void
.end method

.method private c(Lcom/byazt/gat/c;ZI)V
    .locals 8

    .line 122
    invoke-direct {p0, p2}, Lcom/byazt/cc/a;->n(Z)V

    .line 123
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 124
    new-instance v7, Lcom/byazt/cc/a$2;

    move-object v0, v7

    move-object v1, p0

    move v2, p2

    move-object v5, p1

    move v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/byazt/cc/a$2;-><init>(Lcom/byazt/cc/a;ZJLcom/byazt/gat/c;I)V

    .line 125
    invoke-static {v7}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/byazt/im/a;)V
    .locals 8

    .line 76
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v0

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 78
    iget-wide v3, p0, Lcom/byazt/cc/a;->z:J

    sub-long v3, v1, v3

    const-string v5, "Splash_FullLink"

    if-eqz v0, :cond_0

    .line 79
    iget-object p1, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    invoke-static {p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;)V

    .line 80
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v6

    invoke-static {v6}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v6

    invoke-virtual {p1, v6}, Lcom/byazt/im/uj;->c(I)V

    .line 81
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/im/uj;->tt(I)V

    .line 82
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-virtual {p1, v3, v4}, Lcom/byazt/im/uj;->c(J)V

    .line 83
    iput-wide v1, p0, Lcom/byazt/cc/a;->nu:J

    .line 84
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u7f13\u5b58\u52a0\u8f7d\u7269\u6599--end \u8017\u65f6S1\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 85
    :cond_0
    iget-object v6, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-static {v6}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;)V

    .line 86
    iget-object v6, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v7

    invoke-static {v7}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/byazt/im/uj;->c(I)V

    .line 87
    iget-object v6, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/ete/pu;->tt(Lcom/byazt/ete/ic;)I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/byazt/im/uj;->tt(I)V

    .line 88
    iget-object v0, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-virtual {v0, v3, v4}, Lcom/byazt/im/uj;->c(J)V

    .line 89
    iput-wide v1, p0, Lcom/byazt/cc/a;->m:J

    .line 90
    iget-object v0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-static {v0, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/im/a;)V

    .line 91
    invoke-static {}, Lcom/byazt/hy/n;->c()Lcom/byazt/hy/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/hy/n;->ve()Lcom/byazt/re/c;

    move-result-object p1

    iget-object v0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-virtual {p1, v0}, Lcom/byazt/re/c;->c(Lcom/byazt/ete/y;)V

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5b9e\u65f6\u52a0\u8f7d\u7269\u6599--end \u8017\u65f6S1\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
    .locals 9

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 112
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 113
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/byazt/cc/sp;->ve(Lcom/byazt/ete/y;J)V

    .line 114
    new-instance v6, Lcom/byazt/im/tt;

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v1

    invoke-direct {v6, v0, v1}, Lcom/byazt/im/tt;-><init>(Lcom/byazt/ete/ic;Z)V

    .line 115
    invoke-virtual {p1}, Lcom/byazt/im/a;->uj()Lcom/byazt/ete/c;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/byazt/im/tt;->c(Lcom/byazt/ete/c;)V

    .line 116
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v0

    invoke-virtual {v6, v0}, Lcom/byazt/im/tt;->c(Z)V

    .line 117
    invoke-virtual {p1}, Lcom/byazt/im/c;->c()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/byazt/im/c;->c(I)V

    .line 118
    invoke-virtual {p1}, Lcom/byazt/im/c;->ve()J

    move-result-wide v0

    invoke-virtual {v6, v0, v1}, Lcom/byazt/im/c;->c(J)V

    .line 119
    new-instance v7, Lcom/byazt/gat/a;

    new-instance v8, Lcom/byazt/cc/a$16;

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/byazt/cc/a$16;-><init>(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;J)V

    invoke-direct {v7, v6, v8}, Lcom/byazt/gat/a;-><init>(Lcom/byazt/im/tt;Lcom/byazt/gat/ve;)V

    .line 120
    invoke-virtual {v7}, Lcom/byazt/gat/a;->tt()V

    .line 121
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/byazt/cc/a;->c(ZI)V

    :cond_2
    :goto_1
    return-void
.end method

.method private c(Lcom/byazt/im/a;Lcom/byazt/gat/c;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 171
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->ve(Lcom/byazt/ete/ic;)I

    move-result v0

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u5f00\u59cb\u6e32\u67d3 isCache "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", \u6e32\u67d3\u8d85\u65f6\u8bbe\u7f6e\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Splash_FullLink"

    invoke-static {v2, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result p1

    invoke-direct {p0, p2, p1, v0}, Lcom/byazt/cc/a;->c(Lcom/byazt/gat/c;ZI)V

    return-void
.end method

.method private c(Lcom/byazt/im/a;Lcom/byazt/im/sp;Lcom/byazt/cc/a$c;J)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    if-nez v1, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/im/sp;->x()Z

    move-result v3

    .line 232
    invoke-direct {p0, v3}, Lcom/byazt/cc/a;->uj(Z)Z

    move-result v4

    const/4 v5, 0x0

    const-string v6, "Splash_FullLink"

    if-nez v4, :cond_1

    const-string v4, "\u5b9e\u65f6cac\u5e7f\u544a: \u7d20\u6750\u52a0\u8f7d\u5931\u8d25\uff0c\u76f4\u63a5\u7ed9\u56de\u8c03"

    .line 233
    invoke-static {v6, v4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual {v2, v1}, Lcom/byazt/cc/a$c;->tt(Lcom/byazt/im/sp;)V

    goto :goto_0

    :cond_1
    const-string v4, "\u7f13\u5b58\u5e7f\u544a: \u7d20\u6750\u52a0\u8f7d\u5931\u8d25"

    .line 235
    invoke-static {v6, v4}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    iget-object v4, v0, Lcom/byazt/cc/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 237
    iget-object v4, v0, Lcom/byazt/cc/a;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-virtual {v2, v1}, Lcom/byazt/cc/a$c;->tt(Lcom/byazt/im/sp;)V

    :cond_2
    :goto_0
    move-object/from16 v2, p1

    .line 239
    invoke-direct {p0, v2, v3, v5}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;ZZ)V

    .line 240
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/im/sp;->a()Z

    move-result v2

    if-eqz v2, :cond_3

    const/16 v2, -0xe

    goto :goto_1

    :cond_3
    const/4 v2, -0x7

    .line 241
    :goto_1
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/im/sp;->a()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 242
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/im/sp;->x()Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v11

    int-to-long v12, v2

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/im/sp;->n()Ljava/lang/String;

    move-result-object v14

    move-wide/from16 v7, p4

    invoke-static/range {v7 .. v14}, Lcom/byazt/cc/x;->c(JZZLcom/byazt/ete/ic;JLjava/lang/String;)V

    :cond_4
    if-eqz v3, :cond_5

    const-string v2, "\u7f13\u5b58\u5e7f\u544a"

    goto :goto_2

    :cond_5
    const-string v2, "\u5b9e\u65f6\u5e7f\u544a"

    .line 243
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\u52a0\u8f7d\u7d20\u6750\u5931\u8d25 "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/im/sp;->uj()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/im/a;ZZ)V
    .locals 2

    if-eqz p2, :cond_0

    return-void

    .line 244
    :cond_0
    :try_start_0
    iget-object p2, p0, Lcom/byazt/cc/a;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/byazt/cc/a;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-nez p2, :cond_1

    const-string p1, "lqmt"

    const-string p2, "\u8be5\u5b9e\u65f6\u5e7f\u544a\u5df2\u56de\u8c03\u5a92\u4f53"

    .line 245
    invoke-static {p1, p2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 246
    :cond_1
    iget-object p2, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    iget-object v0, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    invoke-static {p2, v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    .line 247
    :cond_2
    iget-object p2, p0, Lcom/byazt/cc/a;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-gtz p2, :cond_3

    iget-object p2, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    invoke-virtual {p2}, Lcom/byazt/cc/a$c;->ve()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 248
    :cond_3
    iget-object p2, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    iget-object v0, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    iget v1, p0, Lcom/byazt/cc/a;->uj:I

    invoke-virtual {p2, p1, v0, p3, v1}, Lcom/byazt/tdq/c;->c(Lcom/byazt/im/a;Lcom/byazt/dj/tt;ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    return-void
.end method

.method private c(Lcom/byazt/im/i;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 174
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 175
    invoke-virtual {p1}, Lcom/byazt/im/i;->ve()Z

    move-result v2

    const-string v3, "Splash_FullLink"

    if-eqz v2, :cond_1

    .line 176
    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-static {v4, v5, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;Lcom/byazt/im/i;)V

    .line 177
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    iget-wide v4, p0, Lcom/byazt/cc/a;->z:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v4, v5}, Lcom/byazt/im/uj;->uj(J)V

    .line 178
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    iget v4, p0, Lcom/byazt/cc/a;->uj:I

    invoke-virtual {p1, v4}, Lcom/byazt/im/uj;->uj(I)V

    .line 179
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-virtual {p1, v2}, Lcom/byazt/im/uj;->c(Z)V

    .line 180
    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v4, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-static {p1, v4}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;)V

    .line 181
    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v4, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    invoke-static {p1, v4}, Lcom/byazt/cc/sp;->tt(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v4

    iget-object v5, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-static {v4, v5, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;Lcom/byazt/im/i;)V

    .line 183
    iget-object p1, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    iget-wide v4, p0, Lcom/byazt/cc/a;->z:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v4, v5}, Lcom/byazt/im/uj;->uj(J)V

    .line 184
    iget-object p1, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    iget v4, p0, Lcom/byazt/cc/a;->uj:I

    invoke-virtual {p1, v4}, Lcom/byazt/im/uj;->uj(I)V

    .line 185
    iget-object p1, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-virtual {p1, v2}, Lcom/byazt/im/uj;->c(Z)V

    .line 186
    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v4, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-static {p1, v4}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;)V

    .line 187
    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object p1

    iget-object v4, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    invoke-static {p1, v4}, Lcom/byazt/cc/sp;->tt(Lcom/byazt/ete/ic;Lcom/byazt/im/uj;)V

    .line 188
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u5f00\u5c4f\u5e7f\u544a\u6e32\u67d3--end, \u8017\u65f6S3\uff1a "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/byazt/cc/a;->rh:J

    sub-long v4, v0, v4

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u6e32\u67d3\u6210\u529f\u56de\u8c03 \u5f00\u5c4f\u5e7f\u544a\u7c7b\u578b\uff1a "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    const-string v4, "\u7f13\u5b58"

    goto :goto_1

    :cond_2
    const-string v4, "\u5b9e\u65f6"

    :goto_1
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v4, "\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a--end\uff0c\u603b\u8017\u65f6\uff1a "

    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/byazt/cc/a;->z:J

    sub-long/2addr v0, v4

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u52a0\u8f7d\u5f00\u5c4f\u5e7f\u544a--end\uff0cgetReqId\uff1a "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private c(Lcom/byazt/im/x;J)V
    .locals 6

    .line 126
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 127
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v1, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    invoke-static {v1, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/im/x;)V

    .line 129
    iget-object v1, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-static {v1, p1, p2, p3, v2}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/im/x;JLcom/byazt/ete/ic;)V

    .line 130
    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    invoke-static {p2, p3, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/y;Lcom/byazt/im/x;)V

    .line 131
    iget-wide p2, p0, Lcom/byazt/cc/a;->nu:J

    sub-long p2, v4, p2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/byazt/cc/a;->c(ZLcom/byazt/im/x;J)V

    .line 132
    iget-object p2, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    .line 133
    invoke-virtual {p2, p3}, Lcom/byazt/im/x;->n(Z)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object v1, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-static {v1, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/im/x;)V

    .line 135
    iget-object v1, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v2

    invoke-static {v1, p1, p2, p3, v2}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/im/x;JLcom/byazt/ete/ic;)V

    .line 136
    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-static {p2, p3, p1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/ic;Lcom/byazt/ete/y;Lcom/byazt/im/x;)V

    .line 137
    iget-wide p2, p0, Lcom/byazt/cc/a;->m:J

    sub-long p2, v4, p2

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/byazt/cc/a;->c(ZLcom/byazt/im/x;J)V

    .line 138
    :cond_1
    :goto_0
    invoke-direct {p0, p1, v4, v5}, Lcom/byazt/cc/a;->tt(Lcom/byazt/im/x;J)V

    .line 139
    iget-object p2, p0, Lcom/byazt/cc/a;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_4

    iget-object p2, p0, Lcom/byazt/cc/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    .line 140
    :cond_2
    iget-object p2, p0, Lcom/byazt/cc/a;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_3

    if-eqz v0, :cond_4

    .line 141
    iget-object v0, p0, Lcom/byazt/cc/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    invoke-virtual {p1}, Lcom/byazt/im/x;->tt()Lcom/byazt/ete/ic;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static/range {v0 .. v5}, Lcom/byazt/cc/sp;->c(Landroid/content/Context;Lcom/byazt/ete/y;Lcom/byazt/ete/ic;ZJ)V

    return-void

    :cond_3
    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/byazt/cc/a;->i:Landroid/content/Context;

    iget-object v1, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-virtual {p1}, Lcom/byazt/im/x;->tt()Lcom/byazt/ete/ic;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static/range {v0 .. v5}, Lcom/byazt/cc/sp;->c(Landroid/content/Context;Lcom/byazt/ete/y;Lcom/byazt/ete/ic;ZJ)V

    :cond_4
    :goto_1
    return-void
.end method

.method private c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-lez v0, :cond_1

    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v0

    .line 95
    invoke-direct {p0, p2, p1, p3}, Lcom/byazt/cc/a;->tt(Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/cc/a$c;)Lcom/byazt/gat/c;

    move-result-object v1

    .line 96
    invoke-virtual {v1}, Lcom/byazt/gat/c;->c()Lcom/byazt/nc/tt;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/byazt/im/x;->c(Lcom/byazt/nc/tt;)V

    .line 97
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v2

    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->uj(Z)Z

    move-result v2

    const-string v3, "Splash_FullLink"

    if-nez v2, :cond_3

    .line 98
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "\u4e0d\u9700\u8981\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a isCacheAd "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    invoke-static {}, Lcom/byazt/cc/a;->ve()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 100
    new-instance v0, Lcom/byazt/cc/a$14;

    invoke-direct {v0, p0, p3, p1}, Lcom/byazt/cc/a$14;-><init>(Lcom/byazt/cc/a;Lcom/byazt/cc/a$c;Lcom/byazt/im/x;)V

    .line 101
    invoke-static {v0}, Lcom/byazt/cc/n;->tt(Ljava/lang/Runnable;)V

    .line 102
    invoke-direct {p0, p2, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/gat/c;)V

    return-void

    .line 103
    :cond_2
    new-instance v2, Lcom/byazt/cc/a$15;

    invoke-direct {v2, p0, v0, p3, p1}, Lcom/byazt/cc/a$15;-><init>(Lcom/byazt/cc/a;ZLcom/byazt/cc/a$c;Lcom/byazt/im/x;)V

    .line 104
    invoke-static {v2}, Lcom/byazt/cc/n;->tt(Ljava/lang/Runnable;)V

    .line 105
    invoke-direct {p0, p2, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/gat/c;)V

    return-void

    .line 106
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "\u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a isCacheAd "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    .line 108
    invoke-virtual {v1}, Lcom/byazt/gat/c;->c()Lcom/byazt/nc/tt;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/cc/a;->gu:Lcom/byazt/nc/tt;

    .line 109
    iget-object p1, p0, Lcom/byazt/cc/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    iget-object p1, p0, Lcom/byazt/cc/a;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 111
    invoke-direct {p0}, Lcom/byazt/cc/a;->sp()V

    :cond_4
    return-void
.end method

.method private c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 150
    :cond_0
    iget-object p2, p0, Lcom/byazt/cc/a;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-lez p2, :cond_1

    return-void

    .line 151
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v2

    .line 152
    invoke-direct {p0, v2}, Lcom/byazt/cc/a;->uj(Z)Z

    move-result p2

    const-string v0, "Splash_FullLink"

    if-nez p2, :cond_3

    .line 153
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "\u5b9e\u65f6\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u4e0d\u9700\u8981\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a, \u6b64\u65f6\u6e32\u67d3\u7ed3\u679c: "

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/byazt/cc/a;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p1, p4}, Lcom/byazt/im/x;->c(Lcom/byazt/nc/tt;)V

    .line 155
    invoke-static {}, Lcom/byazt/cc/a;->ve()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 156
    invoke-virtual {p3, p1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/x;)V

    .line 157
    iget-object p1, p0, Lcom/byazt/cc/a;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 158
    iget-object p1, p0, Lcom/byazt/cc/a;->gr:Lcom/byazt/im/i;

    invoke-virtual {p3, p1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/i;)V

    return-void

    .line 159
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 160
    new-instance p2, Lcom/byazt/cc/a$3;

    move-object v0, p2

    move-object v1, p0

    move-object v5, p3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/byazt/cc/a$3;-><init>(Lcom/byazt/cc/a;ZJLcom/byazt/cc/a$c;Lcom/byazt/im/x;)V

    invoke-static {p2}, Lcom/byazt/bzd/x;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_3
    const-string p2, "\u7f13\u5b58\u5e7f\u544a: \u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u9700\u8981\u7b49\u5f85\u5b9e\u65f6\u5e7f\u544a"

    .line 161
    invoke-static {v0, p2}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    iput-object p1, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    .line 163
    iput-object p4, p0, Lcom/byazt/cc/a;->gu:Lcom/byazt/nc/tt;

    .line 164
    iget-object p1, p0, Lcom/byazt/cc/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 165
    iget-object p1, p0, Lcom/byazt/cc/a;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    invoke-direct {p0}, Lcom/byazt/cc/a;->sp()V

    :cond_4
    return-void
.end method

.method private c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;JZ)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 218
    :cond_0
    invoke-virtual {p2}, Lcom/byazt/im/a;->n()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;ZZ)V

    .line 219
    iget-object v0, p0, Lcom/byazt/cc/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 220
    :cond_1
    instance-of v0, p4, Lcom/byazt/uo/c;

    if-eqz v0, :cond_2

    .line 221
    move-object v0, p4

    check-cast v0, Lcom/byazt/uo/c;

    invoke-virtual {v0, p1, v1}, Lcom/byazt/uo/c;->updateSplashResourceModel(Lcom/byazt/im/x;Z)V

    .line 222
    :cond_2
    invoke-direct {p0, p1, p5, p6}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;J)V

    .line 223
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result p5

    if-eqz p5, :cond_3

    iget-object p5, p0, Lcom/byazt/cc/a;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-eqz p5, :cond_3

    return-void

    .line 224
    :cond_3
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result p5

    if-nez p5, :cond_4

    iget-object p5, p0, Lcom/byazt/cc/a;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p5

    if-eqz p5, :cond_4

    return-void

    .line 225
    :cond_4
    invoke-virtual {p1}, Lcom/byazt/im/x;->tt()Lcom/byazt/ete/ic;

    move-result-object p5

    invoke-virtual {p1}, Lcom/byazt/im/x;->n()Z

    move-result p6

    invoke-direct {p0, p5, p6}, Lcom/byazt/cc/a;->c(Lcom/byazt/ete/ic;Z)Z

    move-result p5

    if-nez p5, :cond_5

    invoke-virtual {p2}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p5

    invoke-direct {p0, p5}, Lcom/byazt/cc/a;->c(Lcom/byazt/ete/ic;)Z

    move-result p5

    if-eqz p5, :cond_7

    .line 226
    :cond_5
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result p5

    if-eqz p5, :cond_6

    iget-object p5, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    goto :goto_0

    :cond_6
    iget-object p5, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    :goto_0
    const/4 p6, 0x2

    invoke-static {p5, p6}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;I)V

    .line 227
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result p5

    invoke-direct {p0, p5}, Lcom/byazt/cc/a;->sp(Z)V

    :cond_7
    if-eqz p7, :cond_8

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    return-void

    .line 229
    :cond_8
    new-instance p5, Lcom/byazt/cc/a$8;

    move-object v0, p5

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/byazt/cc/a$8;-><init>(Lcom/byazt/cc/a;Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;)V

    .line 230
    invoke-static {p5}, Lcom/byazt/cc/n;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;Z)V
    .locals 7

    .line 206
    iget-object v0, p0, Lcom/byazt/cc/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 207
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/cc/a;->tt(Lcom/byazt/im/x;J)V

    .line 208
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "Splash_FullLink"

    if-eqz v0, :cond_1

    const-string v0, "\u7f13\u5b58\u5e7f\u544a\uff1a \u7d20\u6750\u9996\u5305\u56de\u8c03"

    .line 209
    invoke-static {v2, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/byazt/cc/a;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "\u5b9e\u65f6\u5e7f\u544a\uff1a \u7d20\u6750\u9996\u5305\u56de\u8c03"

    .line 211
    invoke-static {v2, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/byazt/cc/a;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 213
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    :goto_1
    const/4 v1, 0x3

    invoke-static {v0, v1}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;I)V

    .line 214
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->sp(Z)V

    if-eqz p5, :cond_3

    .line 215
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    return-void

    .line 216
    :cond_3
    new-instance p5, Lcom/byazt/cc/a$7;

    move-object v1, p5

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/byazt/cc/a$7;-><init>(Lcom/byazt/cc/a;Lcom/byazt/im/x;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;)V

    .line 217
    invoke-static {p5}, Lcom/byazt/cc/n;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method private c(Ljava/lang/String;II)V
    .locals 8

    .line 192
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/byazt/ogz/sl;->yp(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/16 v2, 0x1f4

    if-eq p1, v0, :cond_3

    if-eq p1, v1, :cond_1

    if-lez p2, :cond_0

    .line 193
    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/byazt/cc/a;->t:I

    goto :goto_3

    :cond_1
    if-lez p2, :cond_2

    move v0, p2

    goto :goto_1

    .line 194
    :cond_2
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_1
    iput v0, p0, Lcom/byazt/cc/a;->t:I

    goto :goto_3

    :cond_3
    if-lez p2, :cond_4

    .line 195
    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_2

    :cond_4
    invoke-static {p3, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/byazt/cc/a;->t:I

    .line 196
    :goto_3
    iget v0, p0, Lcom/byazt/cc/a;->t:I

    int-to-long v2, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-object v0, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    iget-wide v6, v0, Lcom/byazt/ete/bm;->i:J

    sub-long/2addr v4, v6

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-lez v0, :cond_5

    goto :goto_4

    .line 197
    :cond_5
    iget v0, p0, Lcom/byazt/cc/a;->t:I

    :goto_4
    iput v0, p0, Lcom/byazt/cc/a;->t:I

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "splashTimeOutControlType = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; devTimeOut = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; cloudTimeOut = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; realTimeOut = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/byazt/cc/a;->t:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Splash_FullLink"

    invoke-static {p2, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    iget p2, p0, Lcom/byazt/cc/a;->t:I

    int-to-long p2, p2

    invoke-virtual {p1, v1, p2, p3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 200
    iget p1, p0, Lcom/byazt/cc/a;->t:I

    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->c(I)V

    return-void
.end method

.method private c(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    .line 250
    :goto_0
    invoke-virtual {p1, p2}, Lcom/byazt/im/uj;->n(I)V

    return-void
.end method

.method private c(ZLcom/byazt/ete/y;)V
    .locals 2

    .line 75
    new-instance v0, Lcom/byazt/cc/a$13;

    const-string v1, "preloadSplash"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/byazt/cc/a$13;-><init>(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/ete/y;)V

    invoke-static {v0}, Lcom/byazt/bzd/x;->c(Lcom/byazt/bwm/sp;)V

    return-void
.end method

.method private c(ZLcom/byazt/im/x;J)V
    .locals 2

    if-eqz p1, :cond_0

    const-string p1, "\u7f13\u5b58\u5e7f\u544a"

    goto :goto_0

    :cond_0
    const-string p1, "\u5b9e\u65f6\u5e7f\u544a"

    .line 143
    :goto_0
    invoke-virtual {p2}, Lcom/byazt/im/x;->n()Z

    move-result v0

    const-string v1, "Splash_FullLink"

    if-eqz v0, :cond_2

    .line 144
    invoke-virtual {p2}, Lcom/byazt/im/x;->da()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 145
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f13\u5b58\u89c6\u9891\u7d20\u6750--end, \u8017\u65f6S2\uff1a "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 146
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f51\u7edc\u89c6\u9891\u7d20\u6750--end, \u8017\u65f6S2\uff1a "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 147
    :cond_2
    invoke-virtual {p2}, Lcom/byazt/im/x;->a()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 148
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f13\u5b58\u56fe\u7247\u7d20\u6750--end, \u8017\u65f6S2\uff1a "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 149
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\uff1a \u52a0\u8f7d\u7f51\u7edc\u56fe\u7247\u7d20\u6750--end, \u8017\u65f6S2\uff1a"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/ete/ic;)Z
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->c(Lcom/byazt/ete/ic;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Lcom/byazt/ete/ic;Z)Z
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/byazt/cc/a;->tt(Lcom/byazt/ete/ic;Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(Lcom/byazt/cc/a;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/byazt/cc/a;->hd:Z

    return p1
.end method

.method public static c(Lcom/byazt/dj/tt;)Z
    .locals 1

    .line 251
    new-instance v0, Lcom/byazt/ete/bm;

    invoke-direct {v0}, Lcom/byazt/ete/bm;-><init>()V

    invoke-static {p0, v0}, Lcom/byazt/gat/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object p0

    invoke-virtual {p0}, Lcom/byazt/by/n;->t()I

    move-result p0

    const/4 v0, 0x4

    and-int/2addr p0, v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private c(Lcom/byazt/ete/ic;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 74
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ej()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private c(Lcom/byazt/ete/ic;Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ej()I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v0
.end method

.method public static synthetic cu(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/byazt/cc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/a;->t()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic da(Lcom/byazt/cc/a;)Lcom/byazt/cc/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->l:Lcom/byazt/cc/tt;

    return-object p0
.end method

.method private da()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, v0}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/byazt/cc/a;->tt(Lcom/byazt/ete/ic;Z)Z

    move-result v0

    const-string v1, "Splash_FullLink"

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    invoke-direct {p0}, Lcom/byazt/cc/a;->sl()V

    const-string v0, "buffer_time\u8d85\u65f6-\u5e76\u53d1 \u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u5f00\u59cb\u7ed9\u52a0\u8f7d\u6210\u529f\u56de\u8c03"

    .line 6
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    if-eqz v0, :cond_1

    .line 8
    iget-object v1, p0, Lcom/byazt/cc/a;->gu:Lcom/byazt/nc/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/im/x;->c(Lcom/byazt/nc/tt;)V

    .line 9
    :cond_1
    new-instance v0, Lcom/byazt/cc/a$11;

    invoke-direct {v0, p0}, Lcom/byazt/cc/a$11;-><init>(Lcom/byazt/cc/a;)V

    .line 10
    invoke-static {v0}, Lcom/byazt/cc/n;->tt(Ljava/lang/Runnable;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "buffer_time\u8d85\u65f6-\u4e32\u884c \u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u5f00\u59cb\u7ed9\u52a0\u8f7d\u6210\u529f\u56de\u8c03\u4ee5\u53ca\u5f00\u59cb\u6e32\u67d3"

    .line 12
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0}, Lcom/byazt/cc/a;->sl()V

    .line 14
    iget-object v0, p0, Lcom/byazt/cc/a;->rl:Lcom/byazt/im/a;

    iget-object v1, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    iget-object v2, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    invoke-direct {p0, v0, v1, v2}, Lcom/byazt/cc/a;->tt(Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/cc/a$c;)Lcom/byazt/gat/c;

    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {v0}, Lcom/byazt/gat/c;->c()Lcom/byazt/nc/tt;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/byazt/im/x;->c(Lcom/byazt/nc/tt;)V

    .line 17
    :cond_3
    new-instance v1, Lcom/byazt/cc/a$12;

    invoke-direct {v1, p0}, Lcom/byazt/cc/a$12;-><init>(Lcom/byazt/cc/a;)V

    .line 18
    invoke-static {v1}, Lcom/byazt/cc/n;->tt(Ljava/lang/Runnable;)V

    .line 19
    iget-object v1, p0, Lcom/byazt/cc/a;->rl:Lcom/byazt/im/a;

    invoke-direct {p0, v1, v0}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/gat/c;)V

    :cond_4
    return-void
.end method

.method public static synthetic eo(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/cc/a;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gt(Lcom/byazt/cc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/a;->sl()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic gu(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic h(Lcom/byazt/cc/a;)Lcom/byazt/tdq/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/cc/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/cc/a;->uj:I

    return p0
.end method

.method private i()V
    .locals 3

    const-string v0, "startCallBackWhenBufferTimeout "

    const-string v1, "Splash_FullLink"

    .line 3
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    iget-object v2, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    invoke-virtual {v0, v2}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/x;)V

    .line 5
    iget-object v0, p0, Lcom/byazt/cc/a;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/cc/a;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/a;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string v0, "\u7d20\u6750\u52a0\u8f7d\u548c\u6e32\u67d3\u5e76\u53d1 buffer_time\u8d85\u65f6 \u7f13\u5b58\u7d20\u6750\u52a0\u8f7d\u6210\u529f\uff0c\u6e32\u67d3\u6210\u529f\u5f00\u59cb\u7ed9 onRenderSplashSuccess\u56de\u8c03"

    .line 9
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    iget-object v1, p0, Lcom/byazt/cc/a;->zm:Lcom/byazt/im/i;

    invoke-virtual {v0, v1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/i;)V

    :cond_1
    return-void
.end method

.method public static synthetic i(Lcom/byazt/cc/a;Z)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->a(Z)V

    return-void
.end method

.method public static synthetic m(Lcom/byazt/cc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/a;->i()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic md(Lcom/byazt/cc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/a;->da()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic my(Lcom/byazt/cc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/a;->n()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private n()V
    .locals 2

    .line 4
    iget v0, p0, Lcom/byazt/cc/a;->uj:I

    invoke-static {v0}, Lcom/byazt/tdq/c;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/byazt/cc/a;->uj:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    :cond_0
    return-void

    .line 6
    :cond_1
    invoke-direct {p0}, Lcom/byazt/cc/a;->a()V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    return-void
.end method

.method public static synthetic n(Lcom/byazt/cc/a;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ha/sp;->c(Z)V

    return-void
.end method

.method private n(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/cc/a;->my:J

    return-void

    .line 8
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/cc/a;->rh:J

    return-void
.end method

.method public static synthetic n(Lcom/byazt/cc/a;)Z
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/byazt/cc/a;->yp()Z

    move-result p0

    return p0
.end method

.method public static synthetic nu(Lcom/byazt/cc/a;)Lcom/byazt/im/x;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->qy:Lcom/byazt/im/x;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic or(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic p(Lcom/byazt/cc/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/cc/a;->hd:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic qp(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qy(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/cc/a;)Lcom/byazt/nh/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->x:Lcom/byazt/nh/c;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rl(Lcom/byazt/cc/a;)Lcom/byazt/dj/tt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sl(Lcom/byazt/cc/a;)Lcom/byazt/ete/bm;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    return-object p0
.end method

.method private sl()V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    if-eqz v0, :cond_1

    const/4 v1, 0x2

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/cc/a;)Lcom/byazt/cc/a$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    return-object p0
.end method

.method private sp()V
    .locals 4

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/a;->rl:Lcom/byazt/im/a;

    const-string v1, "SplashLoadManager"

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/byazt/cc/a;->rl:Lcom/byazt/im/a;

    .line 4
    invoke-virtual {v0}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ym()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/byazt/cc/a;->rl:Lcom/byazt/im/a;

    invoke-virtual {v0}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ete/ic;->ym()Lorg/json/JSONObject;

    move-result-object v0

    const-string v2, "real_drop_cache_type"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "loadCacheWhenRealAdDrop - \u7f13\u5b58\u515c\u5e95\u8fd4\u56de\u914d\u7f6e realDropCacheType\uff1a "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0}, Lcom/byazt/cc/a;->x()V

    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->l:Lcom/byazt/cc/tt;

    invoke-virtual {v0}, Lcom/byazt/cc/tt;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "loadCacheWhenRealAdDrop - \u8ba1\u5206\u6a21\u5f0f\u4e0b\u5141\u8bb8\u515c\u5e95\u7f13\u5b58\uff1a "

    .line 9
    invoke-static {v1, v0}, Lcom/byazt/dz/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Lcom/byazt/cc/a;->x()V

    return-void

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    if-eqz v0, :cond_2

    .line 12
    iget-object v1, p0, Lcom/byazt/cc/a;->lr:Lcom/byazt/im/sp;

    invoke-virtual {v0, v1}, Lcom/byazt/cc/a$c;->c(Lcom/byazt/im/sp;)V

    :cond_2
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/cc/a;Z)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Lcom/byazt/ha/sp;->c(Z)V

    return-void
.end method

.method private sp(Z)V
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    if-eqz v0, :cond_1

    .line 14
    invoke-direct {p0}, Lcom/byazt/cc/a;->yp()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 15
    iget-object p1, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void
.end method

.method private t()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    iget-object v1, p0, Lcom/byazt/cc/a;->a:Lcom/byazt/ete/bm;

    invoke-static {v0, v1}, Lcom/byazt/gat/n;->c(Lcom/byazt/dj/tt;Lcom/byazt/ete/bm;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    new-instance v1, Lcom/byazt/ete/os;

    iget-object v2, p0, Lcom/byazt/cc/a;->gt:Lcom/byazt/im/a;

    invoke-virtual {v2}, Lcom/byazt/im/a;->uj()Lcom/byazt/ete/c;

    move-result-object v2

    iget-object v3, p0, Lcom/byazt/cc/a;->gt:Lcom/byazt/im/a;

    invoke-virtual {v3}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/byazt/ete/os;-><init>(Lcom/byazt/ete/c;Lcom/byazt/ete/ic;[B)V

    iget-object v2, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/tdq/c;->c(Lcom/byazt/ete/os;Lcom/byazt/dj/tt;Z)V

    return-void
.end method

.method public static synthetic t(Lcom/byazt/cc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/cc/a;->sp()V

    return-void
.end method

.method private tt(Z)Lcom/byazt/ete/ic;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/byazt/cc/a;->rl:Lcom/byazt/im/a;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    return-object p1

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/byazt/cc/a;->gt:Lcom/byazt/im/a;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    return-object p1
.end method

.method private tt(Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/cc/a$c;)Lcom/byazt/gat/c;
    .locals 8

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 46
    :cond_0
    new-instance v7, Lcom/byazt/im/ve;

    iget-object v1, p0, Lcom/byazt/cc/a;->i:Landroid/content/Context;

    const-string v2, "splash_ad"

    iget-object v5, p0, Lcom/byazt/cc/a;->n:Lcom/byazt/dj/tt;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/byazt/im/ve;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/dj/tt;Z)V

    .line 47
    new-instance p2, Lcom/byazt/gat/c;

    new-instance v0, Lcom/byazt/cc/a$6;

    invoke-direct {v0, p0, p1, p3}, Lcom/byazt/cc/a$6;-><init>(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    iget-object p1, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    invoke-direct {p2, v7, v0, p1}, Lcom/byazt/gat/c;-><init>(Lcom/byazt/im/ve;Lcom/byazt/gat/uj;Lcom/byazt/tdq/c;)V

    return-object p2

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/cc/a;Lcom/byazt/im/a;)Lcom/byazt/im/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a;->gt:Lcom/byazt/im/a;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/cc/a;Lcom/byazt/im/i;)Lcom/byazt/im/i;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/cc/a;->gr:Lcom/byazt/im/i;

    return-object p1
.end method

.method public static synthetic tt(Lcom/byazt/cc/a;)Lcom/byazt/lh/tt;
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/cc/a;Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    return-void
.end method

.method private tt(Lcom/byazt/dj/tt;)V
    .locals 2

    .line 7
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    const/4 v0, 0x0

    .line 8
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v0

    check-cast v0, Lcom/byazt/lh/tt;

    iput-object v0, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    .line 9
    iget-object v1, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/byazt/dj/tt;->or()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/byazt/lh/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    iget-object v0, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    new-instance v1, Lcom/byazt/ky/ve;

    invoke-direct {v1}, Lcom/byazt/ky/ve;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    .line 11
    invoke-static {}, Lcom/byazt/wi/a;->c()Lcom/byazt/wi/a;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/byazt/wi/a;->c(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    iget-object v0, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    new-instance v1, Lcom/byazt/wi/ve;

    invoke-direct {v1}, Lcom/byazt/wi/ve;-><init>()V

    invoke-virtual {p1, v0, v1}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/a;)V

    :cond_0
    return-void
.end method

.method private tt(Lcom/byazt/im/a;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 48
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    return-void

    .line 49
    :cond_1
    invoke-direct {p0}, Lcom/byazt/cc/a;->a()V

    return-void
.end method

.method private tt(Lcom/byazt/im/a;Lcom/byazt/cc/a$c;)V
    .locals 10

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 24
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object v0

    .line 25
    invoke-virtual {p1}, Lcom/byazt/im/a;->n()Z

    move-result v1

    .line 26
    new-instance v2, Lcom/byazt/im/x;

    invoke-direct {v2, v0, v1}, Lcom/byazt/im/x;-><init>(Lcom/byazt/ete/ic;Z)V

    .line 27
    invoke-direct {p0, p1, v2, p2}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/im/x;Lcom/byazt/cc/a$c;)Lcom/byazt/gat/c;

    move-result-object v2

    .line 28
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 29
    new-instance v7, Lcom/byazt/im/tt;

    invoke-direct {v7, v0, v1}, Lcom/byazt/im/tt;-><init>(Lcom/byazt/ete/ic;Z)V

    .line 30
    invoke-virtual {v7, v1}, Lcom/byazt/im/tt;->c(Z)V

    .line 31
    invoke-virtual {p1}, Lcom/byazt/im/a;->uj()Lcom/byazt/ete/c;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/byazt/im/tt;->c(Lcom/byazt/ete/c;)V

    .line 32
    invoke-virtual {p1}, Lcom/byazt/im/c;->c()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/byazt/im/c;->c(I)V

    .line 33
    invoke-virtual {p1}, Lcom/byazt/im/c;->ve()J

    move-result-wide v3

    invoke-virtual {v7, v3, v4}, Lcom/byazt/im/c;->c(J)V

    .line 34
    invoke-virtual {v2}, Lcom/byazt/gat/c;->c()Lcom/byazt/nc/tt;

    move-result-object v6

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    .line 35
    invoke-direct/range {v3 .. v9}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/cc/a$c;Lcom/byazt/nc/tt;Lcom/byazt/im/tt;J)Lcom/byazt/gat/a;

    move-result-object p2

    .line 36
    invoke-virtual {v2, p2}, Lcom/byazt/gat/c;->c(Lcom/byazt/gat/a;)V

    if-eqz v1, :cond_1

    .line 37
    iget-object v0, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/byazt/cc/sp;->ve(Lcom/byazt/ete/y;J)V

    .line 38
    invoke-virtual {p2}, Lcom/byazt/gat/a;->tt()V

    const/4 p2, 0x1

    .line 39
    invoke-direct {p0, v1, p2}, Lcom/byazt/cc/a;->c(ZI)V

    .line 40
    invoke-direct {p0, p1, v2}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;Lcom/byazt/gat/c;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private tt(Lcom/byazt/im/x;J)V
    .locals 3

    .line 15
    invoke-virtual {p1}, Lcom/byazt/im/x;->sl()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/byazt/cc/a;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    iget-wide v1, p0, Lcom/byazt/cc/a;->nu:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lcom/byazt/im/uj;->tt(J)V

    .line 18
    iget-object p2, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    invoke-virtual {p1}, Lcom/byazt/im/x;->a()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/byazt/ete/y;->ve(Z)V

    .line 19
    iget-object p2, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    invoke-virtual {p1}, Lcom/byazt/im/x;->n()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/byazt/ete/y;->tt(Z)V

    return-void

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/byazt/cc/a;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 21
    :cond_2
    iget-object v0, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    iget-wide v1, p0, Lcom/byazt/cc/a;->m:J

    sub-long/2addr p2, v1

    invoke-virtual {v0, p2, p3}, Lcom/byazt/im/uj;->tt(J)V

    .line 22
    iget-object p2, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-virtual {p1}, Lcom/byazt/im/x;->a()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/byazt/ete/y;->ve(Z)V

    .line 23
    iget-object p2, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-virtual {p1}, Lcom/byazt/im/x;->n()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/byazt/ete/y;->tt(Z)V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/cc/a;Z)Z
    .locals 0

    .line 6
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->uj(Z)Z

    move-result p0

    return p0
.end method

.method private tt(Lcom/byazt/ete/ic;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 45
    invoke-static {p1}, Lcom/byazt/ete/pu;->c(Lcom/byazt/ete/ic;)I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private tt(Lcom/byazt/ete/ic;Z)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 41
    :cond_0
    invoke-direct {p0}, Lcom/byazt/cc/a;->yp()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/byazt/cc/a;->z()Z

    move-result p2

    if-eqz p2, :cond_1

    return v0

    .line 42
    :cond_1
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object p2

    invoke-virtual {p2}, Lcom/byazt/by/n;->u()I

    move-result p2

    const/4 v1, 0x1

    and-int/2addr p2, v1

    if-ne p2, v1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    return v1

    .line 43
    :cond_3
    invoke-static {p1}, Lcom/byazt/cc/x;->tt(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-nez p2, :cond_4

    return v0

    .line 44
    :cond_4
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->tt(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lcom/byazt/ete/ic;->gk()I

    move-result p1

    if-ne p1, v1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public static synthetic u(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private u()V
    .locals 2

    .line 2
    new-instance v0, Lcom/byazt/ete/y;

    invoke-direct {v0}, Lcom/byazt/ete/y;-><init>()V

    iput-object v0, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    .line 3
    new-instance v0, Lcom/byazt/ete/y;

    invoke-direct {v0}, Lcom/byazt/ete/y;-><init>()V

    iput-object v0, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    .line 4
    iget-object v1, p0, Lcom/byazt/cc/a;->yv:Lcom/byazt/ete/y;

    invoke-static {v1, v0}, Lcom/byazt/cc/sp;->c(Lcom/byazt/ete/y;Lcom/byazt/ete/y;)V

    .line 5
    new-instance v0, Lcom/byazt/im/uj;

    invoke-direct {v0}, Lcom/byazt/im/uj;-><init>()V

    iput-object v0, p0, Lcom/byazt/cc/a;->md:Lcom/byazt/im/uj;

    .line 6
    new-instance v0, Lcom/byazt/im/uj;

    invoke-direct {v0}, Lcom/byazt/im/uj;-><init>()V

    iput-object v0, p0, Lcom/byazt/cc/a;->h:Lcom/byazt/im/uj;

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/cc/a;Z)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->tt(Z)Lcom/byazt/ete/ic;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/cc/a;->ic:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private uj()V
    .locals 2

    .line 5
    iget-object v0, p0, Lcom/byazt/cc/a;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 6
    iget-object v0, p0, Lcom/byazt/cc/a;->eo:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 7
    iget-object v0, p0, Lcom/byazt/cc/a;->zb:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 8
    iget-object v0, p0, Lcom/byazt/cc/a;->or:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 9
    iget-object v0, p0, Lcom/byazt/cc/a;->pf:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 10
    iget-object v0, p0, Lcom/byazt/cc/a;->bx:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 11
    iget-object v0, p0, Lcom/byazt/cc/a;->cu:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 12
    iget-object v0, p0, Lcom/byazt/cc/a;->qp:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 13
    iget-object v0, p0, Lcom/byazt/cc/a;->sv:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    iget-object v0, p0, Lcom/byazt/cc/a;->aw:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/cc/a;Lcom/byazt/im/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->tt(Lcom/byazt/im/a;)V

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    return-void
.end method

.method private uj(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 15
    invoke-direct {p0}, Lcom/byazt/cc/a;->yp()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ve(Lcom/byazt/ete/ic;)I
    .locals 4

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/byazt/cc/a;->z:J

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-eqz p1, :cond_0

    .line 10
    invoke-static {p1}, Lcom/byazt/ete/pu;->n(Lcom/byazt/ete/ic;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x64

    .line 11
    :goto_0
    iget v0, p0, Lcom/byazt/cc/a;->t:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p1

    .line 12
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/by/n;->yp()I

    move-result p1

    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method private ve(Lcom/byazt/dj/tt;)Lcom/byazt/ete/bm;
    .locals 3

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 15
    new-instance p1, Lcom/byazt/ete/bm;

    invoke-direct {p1}, Lcom/byazt/ete/bm;-><init>()V

    const/4 v2, 0x2

    .line 16
    iput v2, p1, Lcom/byazt/ete/bm;->sp:I

    .line 17
    iput-wide v0, p1, Lcom/byazt/ete/bm;->x:J

    .line 18
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/omf/x;->kp()I

    move-result v0

    iput v0, p1, Lcom/byazt/ete/bm;->yp:I

    .line 19
    iget-object v0, p0, Lcom/byazt/cc/a;->x:Lcom/byazt/nh/c;

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/byazt/gk/tt;

    if-eqz v1, :cond_0

    .line 20
    check-cast v0, Lcom/byazt/gk/tt;

    invoke-interface {v0}, Lcom/byazt/gk/tt;->tt()J

    move-result-wide v0

    iput-wide v0, p1, Lcom/byazt/ete/bm;->i:J

    :cond_0
    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/cc/a;Lcom/byazt/im/i;)Lcom/byazt/im/i;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/cc/a;->zm:Lcom/byazt/im/i;

    return-object p1
.end method

.method public static synthetic ve(Lcom/byazt/cc/a;)Lcom/byazt/lh/tt;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/cc/a;Lcom/byazt/im/a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->c(Lcom/byazt/im/a;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/cc/a;Ljava/lang/String;ZLcom/byazt/lq/ve;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/cc/a;Z)V
    .locals 0

    .line 5
    invoke-virtual {p0, p1}, Lcom/byazt/ha/sp;->c(Z)V

    return-void
.end method

.method public static ve()Z
    .locals 2

    .line 21
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/n;->t()I

    move-result v0

    const/16 v1, 0x100

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private ve(Z)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/byazt/cc/a;->u:Lcom/byazt/tdq/c;

    if-nez p1, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/byazt/cc/a;->gt:Lcom/byazt/im/a;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/byazt/im/a;->uj()Lcom/byazt/ete/c;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/byazt/cc/a;->gt:Lcom/byazt/im/a;

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcom/byazt/cc/a;->gt:Lcom/byazt/im/a;

    invoke-virtual {p1}, Lcom/byazt/im/c;->tt()Lcom/byazt/ete/ic;

    move-result-object p1

    invoke-static {p1}, Lcom/byazt/eti/n;->c(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method public static synthetic x(Lcom/byazt/cc/a;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->nb:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method private x()V
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    if-eqz v0, :cond_0

    const/4 v1, 0x4

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/byazt/cc/a$c;->tt()V

    :cond_1
    return-void
.end method

.method public static synthetic x(Lcom/byazt/cc/a;Z)Z
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->ve(Z)Z

    move-result p0

    return p0
.end method

.method public static synthetic yp(Lcom/byazt/cc/a;)Lcom/byazt/im/sp;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->lr:Lcom/byazt/im/sp;

    return-object p0
.end method

.method private yp()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/byazt/cc/a;->uj:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic yv(Lcom/byazt/cc/a;)Lcom/byazt/gat/n;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->bm:Lcom/byazt/gat/n;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/cc/a;)Lcom/byazt/ete/y;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->p:Lcom/byazt/ete/y;

    return-object p0
.end method

.method private z()Z
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/by/n;->c()Lcom/byazt/by/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/by/n;->sl()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic zb(Lcom/byazt/cc/a;)Lcom/byazt/im/i;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->gr:Lcom/byazt/im/i;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic zm(Lcom/byazt/cc/a;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/cc/a;->i:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(Lcom/byazt/dj/tt;Lcom/byazt/nh/c;I)V
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 22
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->rl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 23
    invoke-static {v0}, Lcom/byazt/ip/n;->c(I)Lcom/byazt/ip/uj;

    move-result-object v1

    check-cast v1, Lcom/byazt/lh/tt;

    iput-object v1, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    goto :goto_0

    .line 24
    :cond_0
    invoke-direct {p0, p1}, Lcom/byazt/cc/a;->tt(Lcom/byazt/dj/tt;)V

    .line 25
    :goto_0
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/byazt/cc/a;->sp:Ljava/lang/String;

    const/4 v2, 0x1

    .line 26
    invoke-static {p1, v2, v1}, Lcom/byazt/iyp/tt;->c(Lcom/byazt/dj/tt;ZLjava/lang/String;)V

    .line 27
    iget-object v1, p0, Lcom/byazt/ha/sp;->c:Lcom/byazt/lh/tt;

    iget-object v2, p0, Lcom/byazt/ha/sp;->tt:Ljava/lang/String;

    new-instance v3, Lcom/byazt/cc/a$1;

    invoke-direct {v3, p0, p1}, Lcom/byazt/cc/a$1;-><init>(Lcom/byazt/cc/a;Lcom/byazt/dj/tt;)V

    invoke-virtual {v1, v2, v3}, Lcom/byazt/ip/uj;->c(Ljava/lang/String;Lcom/byazt/ip/uj$c;)V

    .line 28
    invoke-virtual {p0}, Lcom/byazt/ha/sp;->c()V

    .line 29
    invoke-static {}, Lcom/byazt/ogz/i;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 30
    new-instance p1, Lcom/byazt/lq/ve;

    const/16 p3, 0x3e8

    const-string v1, "\u5e7f\u544a\u8bf7\u6c42\u5f00\u5173\u5df2\u5173\u95ed,\u8bf7\u8054\u7cfb\u7a7f\u5c71\u7532\u7ba1\u7406\u5458"

    invoke-direct {p1, p3, v1}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    .line 31
    invoke-virtual {p0, v2, v0, p1}, Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 32
    invoke-virtual {p2, p1}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    return-void

    .line 33
    :cond_1
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v1

    invoke-static {p1}, Lcom/byazt/aas/nb;->tt(Lcom/byazt/dj/tt;)I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/byazt/ogz/sl;->x(I)I

    move-result v1

    .line 34
    new-instance v9, Lcom/byazt/cc/a$9;

    const-string v5, "loadSplashAd b"

    move-object v3, v9

    move-object v4, p0

    move-object v6, p2

    move-object v7, p1

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/byazt/cc/a$9;-><init>(Lcom/byazt/cc/a;Ljava/lang/String;Lcom/byazt/nh/c;Lcom/byazt/dj/tt;I)V

    .line 35
    sget-boolean p3, Lcom/byazt/omf/rh;->c:Z

    if-nez p3, :cond_2

    const-string p1, "SplashLoadManager"

    const-string p3, "please exec TTAdSdk.init and TTAdSdk.start before load ad"

    .line 36
    invoke-static {p1, p3}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    new-instance p1, Lcom/byazt/lq/ve;

    const/16 v1, 0x2710

    invoke-direct {p1, v1, p3}, Lcom/byazt/lq/ve;-><init>(ILjava/lang/String;)V

    .line 38
    invoke-virtual {p0, v2, v0, p1}, Lcom/byazt/ha/sp;->c(Ljava/lang/String;ZLcom/byazt/lq/ve;)V

    .line 39
    invoke-virtual {p2, p1}, Lcom/byazt/nh/c;->c(Lcom/byazt/nc/c;)V

    return-void

    .line 40
    :cond_2
    invoke-static {}, Lcom/byazt/omf/AdSdkInitializerHolder;->isSdkInitSuccess()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x4

    if-eq v1, p2, :cond_3

    .line 41
    invoke-static {p1}, Lcom/byazt/cc/a;->c(Lcom/byazt/dj/tt;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 42
    :cond_3
    invoke-interface {v9}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    .line 43
    :cond_4
    invoke-static {}, Lcom/byazt/omf/h;->canMultiThreadLoad()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 44
    invoke-static {v9}, Lcom/byazt/bwm/n;->uj(Lcom/byazt/bwm/sp;)V

    goto :goto_1

    .line 45
    :cond_5
    sget-object p2, Lcom/byazt/bwm/i;->tt:Lcom/byazt/bwm/i;

    invoke-virtual {p2}, Lcom/byazt/bwm/i;->t()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p2

    invoke-interface {p2, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 46
    :goto_1
    invoke-static {}, Lcom/byazt/ktv/c;->c()Lcom/byazt/ktv/c;

    move-result-object p2

    const/4 p3, 0x3

    invoke-virtual {p2, p3, p1}, Lcom/byazt/ktv/c;->c(ILcom/byazt/dj/tt;)V

    return-void
.end method

.method public handleMsg(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v0, p0, Lcom/byazt/cc/a;->yp:Lcom/byazt/cc/a$c;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/cc/a$c;->c()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/cc/a;->da:Lcom/byazt/nr/d;

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 21
    .line 22
    const/4 v0, 0x4

    .line 23
    if-ne p1, v0, :cond_2

    .line 24
    .line 25
    invoke-direct {p0}, Lcom/byazt/cc/a;->x()V

    .line 26
    .line 27
    .line 28
    :cond_2
    return-void
.end method
