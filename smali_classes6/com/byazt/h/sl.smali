.class public Lcom/byazt/h/sl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/h/a;
.implements Lcom/byazt/hs/ve$c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x206,
        0x9e
    }
.end annotation


# instance fields
.field public volatile a:Z

.field public final c:Lcom/byazt/t/DownloadInfo;

.field public final d:Lcom/byazt/u/n$tt;

.field public da:Lcom/byazt/t/uj;

.field public gr:J

.field public final gt:Lcom/byazt/w/n;

.field public gu:J

.field public final h:Lcom/byazt/u/n$tt;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/h/nu;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public final md:Z

.field public final my:Ljava/lang/Object;

.field public final n:Lcom/byazt/h/sp;

.field public nu:Lcom/byazt/m/BaseException;

.field public p:I

.field public volatile qy:Z

.field public volatile rh:Z

.field public final rl:Lcom/byazt/u/n;

.field public sl:Lcom/byazt/t/uj;

.field public volatile sp:Z

.field public volatile t:Z

.field public final tt:Lcom/byazt/h/yp;

.field public u:J

.field public final uj:Lcom/byazt/u/a;

.field public final ve:Lcom/byazt/h/tt;

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/h/u;",
            ">;"
        }
    .end annotation
.end field

.field public final yp:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation
.end field

.field public yv:F

.field public final z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;"
        }
    .end annotation
.end field

.field public zm:J


# direct methods
.method public constructor <init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/yp;Lcom/byazt/u/a;)V
    .locals 4
    .param p1    # Lcom/byazt/t/DownloadInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/byazt/h/yp;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    .line 6
    .line 7
    iput-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    .line 8
    .line 9
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v1, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    .line 15
    .line 16
    new-instance v1, Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v1, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/byazt/h/sl;->t:Z

    .line 25
    .line 26
    new-instance v2, Ljava/util/LinkedList;

    .line 27
    .line 28
    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 29
    .line 30
    .line 31
    iput-object v2, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    .line 32
    .line 33
    new-instance v2, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 36
    .line 37
    .line 38
    iput-object v2, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    .line 39
    .line 40
    new-instance v2, Ljava/lang/Object;

    .line 41
    .line 42
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v2, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    .line 46
    .line 47
    iput-boolean v0, p0, Lcom/byazt/h/sl;->qy:Z

    .line 48
    .line 49
    new-instance v2, Lcom/byazt/h/sl$1;

    .line 50
    .line 51
    invoke-direct {v2, p0}, Lcom/byazt/h/sl$1;-><init>(Lcom/byazt/h/sl;)V

    .line 52
    .line 53
    .line 54
    iput-object v2, p0, Lcom/byazt/h/sl;->h:Lcom/byazt/u/n$tt;

    .line 55
    .line 56
    new-instance v2, Lcom/byazt/h/sl$2;

    .line 57
    .line 58
    invoke-direct {v2, p0}, Lcom/byazt/h/sl$2;-><init>(Lcom/byazt/h/sl;)V

    .line 59
    .line 60
    .line 61
    iput-object v2, p0, Lcom/byazt/h/sl;->d:Lcom/byazt/u/n$tt;

    .line 62
    .line 63
    iput-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    .line 64
    .line 65
    iput-object p2, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    .line 66
    .line 67
    new-instance v2, Lcom/byazt/h/tt;

    .line 68
    .line 69
    invoke-virtual {p2}, Lcom/byazt/h/yp;->uj()I

    .line 70
    .line 71
    .line 72
    move-result v3

    .line 73
    invoke-virtual {p2}, Lcom/byazt/h/yp;->n()I

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    invoke-direct {v2, v3, p2}, Lcom/byazt/h/tt;-><init>(II)V

    .line 78
    .line 79
    .line 80
    iput-object v2, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    .line 81
    .line 82
    iput-object p3, p0, Lcom/byazt/h/sl;->uj:Lcom/byazt/u/a;

    .line 83
    .line 84
    new-instance p2, Lcom/byazt/h/sp;

    .line 85
    .line 86
    invoke-direct {p2, p1, p3, v2}, Lcom/byazt/h/sp;-><init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/u/a;Lcom/byazt/h/ve;)V

    .line 87
    .line 88
    .line 89
    iput-object p2, p0, Lcom/byazt/h/sl;->n:Lcom/byazt/h/sp;

    .line 90
    .line 91
    new-instance p2, Lcom/byazt/u/n;

    .line 92
    .line 93
    invoke-direct {p2}, Lcom/byazt/u/n;-><init>()V

    .line 94
    .line 95
    .line 96
    iput-object p2, p0, Lcom/byazt/h/sl;->rl:Lcom/byazt/u/n;

    .line 97
    .line 98
    new-instance p2, Lcom/byazt/w/n;

    .line 99
    .line 100
    invoke-direct {p2}, Lcom/byazt/w/n;-><init>()V

    .line 101
    .line 102
    .line 103
    iput-object p2, p0, Lcom/byazt/h/sl;->gt:Lcom/byazt/w/n;

    .line 104
    .line 105
    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getId()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    invoke-static {p1}, Lcom/byazt/k/c;->c(I)Lcom/byazt/k/c;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    const-string p2, "debug"

    .line 114
    .line 115
    invoke-virtual {p1, p2}, Lcom/byazt/k/c;->tt(Ljava/lang/String;)I

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-ne p1, v1, :cond_0

    .line 120
    .line 121
    const/4 v0, 0x1

    .line 122
    :cond_0
    iput-boolean v0, p0, Lcom/byazt/h/sl;->md:Z

    .line 123
    .line 124
    return-void
.end method

.method public static synthetic a(Lcom/byazt/h/sl;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    return-object p0
.end method

.method private a()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    new-instance v1, Lcom/byazt/h/nu;

    iget-object v2, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/byazt/h/nu;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 6
    iget-object v2, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    new-instance v3, Lcom/byazt/h/nu;

    const/4 v4, 0x0

    invoke-direct {v3, v1, v4}, Lcom/byazt/h/nu;-><init>(Ljava/lang/String;Z)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    iget-object v1, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/byazt/h/yp;->c(I)V

    return-void
.end method

.method private c(J)I
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 127
    iget-object v2, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/h/i;

    .line 128
    invoke-virtual {v2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v3

    cmp-long v5, v3, p1

    if-nez v5, :cond_0

    return v1

    .line 129
    :cond_0
    invoke-virtual {v2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v2

    cmp-long v4, v2, p1

    if-gtz v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private c(Ljava/lang/String;)I
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 44
    iget-object v2, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/h/nu;

    .line 45
    iget-object v2, v2, Lcom/byazt/h/nu;->c:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method private c(II)J
    .locals 5

    .line 130
    iget-object v0, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/i;

    .line 131
    invoke-direct {p0, v0}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/i;)J

    move-result-wide v1

    add-int/lit8 p1, p1, 0x1

    if-ge p1, p2, :cond_0

    .line 132
    iget-object p2, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/h/i;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    return-wide v1

    .line 133
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/h/i;->ve()J

    move-result-wide p1

    invoke-virtual {v0}, Lcom/byazt/h/i;->n()J

    move-result-wide v3

    sub-long/2addr p1, v3

    const-wide/16 v3, -0x1

    cmp-long v0, v1, v3

    if-nez v0, :cond_2

    return-wide p1

    .line 134
    :cond_2
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method private c(Lcom/byazt/h/i;)J
    .locals 7

    .line 135
    invoke-virtual {p1}, Lcom/byazt/h/i;->tt()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 136
    iget-wide v2, p0, Lcom/byazt/h/sl;->u:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    .line 137
    invoke-virtual {p1}, Lcom/byazt/h/i;->n()J

    move-result-wide v0

    sub-long v0, v2, v0

    :cond_0
    return-wide v0
.end method

.method private c(JJJI)Lcom/byazt/h/u;
    .locals 18

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 160
    iget-object v3, v0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v4, 0x7fffffffffffffffL

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const-string v10, ", threadIndex = "

    const-string v11, "SegmentDispatcher"

    if-eqz v9, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/byazt/h/u;

    .line 161
    iget-wide v12, v9, Lcom/byazt/h/u;->a:J

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_2

    add-int/lit8 v7, v7, 0x1

    .line 162
    iget-wide v12, v9, Lcom/byazt/h/u;->a:J

    cmp-long v16, v12, v1

    move-wide/from16 v12, p3

    move/from16 v17, v7

    if-gez v16, :cond_1

    .line 163
    invoke-virtual {v9, v1, v2, v12, v13}, Lcom/byazt/h/u;->c(JJ)J

    move-result-wide v6

    .line 164
    iget-boolean v14, v0, Lcom/byazt/h/sl;->md:Z

    if-eqz v14, :cond_0

    .line 165
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "findPoorReadThread: speed = "

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v9, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v11, v10}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v10, 0x0

    cmp-long v14, v6, v10

    if-ltz v14, :cond_1

    cmp-long v10, v6, v4

    if-gez v10, :cond_1

    move-wide v4, v6

    move-object v8, v9

    :cond_1
    move/from16 v7, v17

    goto :goto_0

    :cond_2
    move-wide/from16 v12, p3

    goto :goto_0

    :cond_3
    if-eqz v8, :cond_4

    move/from16 v1, p7

    if-lt v7, v1, :cond_4

    cmp-long v1, v4, p5

    if-gez v1, :cond_4

    .line 166
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "findPoorReadThread: ----------- minSpeed = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v8, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-object v8

    :cond_4
    const/4 v1, 0x0

    return-object v1
.end method

.method public static synthetic c(Lcom/byazt/h/sl;ZJJ)Lcom/byazt/h/u;
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/byazt/h/sl;->c(ZJJ)Lcom/byazt/h/u;

    move-result-object p0

    return-object p0
.end method

.method private c(ZJJ)Lcom/byazt/h/u;
    .locals 8

    .line 138
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/h/u;

    .line 139
    iget v3, v2, Lcom/byazt/h/u;->ve:I

    if-nez v3, :cond_1

    if-eqz p1, :cond_0

    .line 140
    :cond_1
    iget-wide v3, v2, Lcom/byazt/h/u;->uj:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    iget-wide v3, v2, Lcom/byazt/h/u;->n:J

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    iget-wide v3, v2, Lcom/byazt/h/u;->uj:J

    sub-long v3, p2, v3

    cmp-long v5, v3, p4

    if-lez v5, :cond_0

    if-nez v1, :cond_2

    :goto_1
    move-object v1, v2

    goto :goto_0

    .line 141
    :cond_2
    iget-wide v3, v2, Lcom/byazt/h/u;->uj:J

    iget-wide v5, v1, Lcom/byazt/h/u;->uj:J

    cmp-long v7, v3, v5

    if-gez v7, :cond_0

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method private c(Lcom/byazt/h/nu;)V
    .locals 7

    .line 51
    new-instance v6, Lcom/byazt/h/u;

    iget-object v1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    iget-object v3, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    move-object v0, v6

    move-object v2, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/byazt/h/u;-><init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/sl;Lcom/byazt/h/ve;Lcom/byazt/h/nu;I)V

    .line 52
    iget-object p1, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {p1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    invoke-static {}, Lcom/byazt/zz/ve;->nu()Ljava/util/concurrent/ExecutorService;

    move-result-object p1

    .line 54
    invoke-interface {p1, v6}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    invoke-virtual {v6, p1}, Lcom/byazt/h/u;->c(Ljava/util/concurrent/Future;)V

    return-void
.end method

.method private c(Lcom/byazt/m/BaseException;)V
    .locals 3

    const-string v0, "SegmentDispatcher"

    const-string v1, "onError, e = "

    .line 94
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    iput-object p1, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    .line 96
    iget-object p1, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    invoke-virtual {p1}, Lcom/byazt/h/tt;->ve()V

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-object p1, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/u;

    .line 99
    invoke-virtual {v0}, Lcom/byazt/h/u;->n()V

    goto :goto_0

    .line 100
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private c(Lcom/byazt/t/uj;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/byazt/h/sl;->da:Lcom/byazt/t/uj;

    if-nez v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/byazt/h/sl;->sl:Lcom/byazt/t/uj;

    if-nez v0, :cond_0

    return-void

    .line 103
    :cond_0
    invoke-virtual {p1}, Lcom/byazt/t/uj;->da()J

    move-result-wide v1

    .line 104
    invoke-virtual {v0}, Lcom/byazt/t/uj;->da()J

    move-result-wide v3

    const/16 v5, 0x432

    const-string v6, "SegmentDispatcher"

    cmp-long v7, v1, v3

    if-eqz v7, :cond_2

    .line 105
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "total len not equals,len="

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",sLen="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ",code="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Lcom/byazt/t/uj;->ve:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",sCode="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v0, Lcom/byazt/t/uj;->ve:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ",range="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {p1}, Lcom/byazt/t/uj;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sRange = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/byazt/t/uj;->n()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",url = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p1, Lcom/byazt/t/uj;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ",sUrl="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/byazt/t/uj;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 107
    invoke-static {v6, v7}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v8, 0x0

    cmp-long v10, v1, v8

    if-lez v10, :cond_2

    cmp-long v1, v3, v8

    if-gtz v1, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    new-instance p1, Lcom/byazt/m/BaseException;

    invoke-direct {p1, v5, v7}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/t/uj;->ve()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {v0}, Lcom/byazt/t/uj;->ve()Ljava/lang/String;

    move-result-object v0

    .line 111
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "etag not equals with main url, etag = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mainEtag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    invoke-static {v6, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 115
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 116
    :cond_3
    new-instance p1, Lcom/byazt/m/BaseException;

    invoke-direct {p1, v5, v1}, Lcom/byazt/m/BaseException;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method private c(Ljava/util/List;Lcom/byazt/h/i;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;",
            "Lcom/byazt/h/i;",
            "Z)V"
        }
    .end annotation

    .line 46
    invoke-virtual {p2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v0

    .line 47
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 48
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/byazt/h/i;

    invoke-virtual {v4}, Lcom/byazt/h/i;->ve()J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 49
    :cond_0
    invoke-interface {p1, v3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    if-eqz p3, :cond_1

    .line 50
    invoke-virtual {p2, v2}, Lcom/byazt/h/i;->c(I)V

    :cond_1
    return-void
.end method

.method private c(JJ)Z
    .locals 9

    .line 148
    iget-object v0, p0, Lcom/byazt/h/sl;->gt:Lcom/byazt/w/n;

    sub-long v2, p1, p3

    invoke-virtual {v0, v2, v3, p1, p2}, Lcom/byazt/w/n;->tt(JJ)J

    move-result-wide v0

    .line 149
    iget-object v4, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    int-to-long v5, v4

    .line 150
    div-long/2addr v0, v5

    :cond_0
    long-to-float v0, v0

    .line 151
    iget v1, p0, Lcom/byazt/h/sl;->yv:F

    mul-float v0, v0, v1

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-long v6, v0

    .line 152
    div-int/lit8 v8, v4, 0x2

    move-object v1, p0

    move-wide v4, p1

    invoke-direct/range {v1 .. v8}, Lcom/byazt/h/sl;->c(JJJI)Lcom/byazt/h/u;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "SegmentDispatcher"

    if-eqz v0, :cond_1

    .line 153
    invoke-direct {p0, v0}, Lcom/byazt/h/sl;->ve(Lcom/byazt/h/u;)Z

    .line 154
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handlePoorReadThread: reconnect for poor speed, threadIndex = "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p2, v0, Lcom/byazt/h/u;->ve:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-virtual {v0}, Lcom/byazt/h/u;->a()V

    return v1

    :cond_1
    const/4 v4, 0x1

    move-object v3, p0

    move-wide v5, p1

    move-wide v7, p3

    .line 156
    invoke-direct/range {v3 .. v8}, Lcom/byazt/h/sl;->c(ZJJ)Lcom/byazt/h/u;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 157
    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->ve(Lcom/byazt/h/u;)Z

    .line 158
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "handlePoorReadThread: reconnect for connect timeout, threadIndex = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p3, p1, Lcom/byazt/h/u;->ve:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p1}, Lcom/byazt/h/u;->a()V

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public static synthetic c(Lcom/byazt/h/sl;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/byazt/h/sl;->a:Z

    return p0
.end method

.method public static synthetic c(Lcom/byazt/h/sl;Lcom/byazt/h/u;)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->ve(Lcom/byazt/h/u;)Z

    move-result p0

    return p0
.end method

.method private c(Lcom/byazt/h/u;JJJD)Z
    .locals 6

    .line 142
    iget-wide v0, p1, Lcom/byazt/h/u;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 143
    iget-object v0, p0, Lcom/byazt/h/sl;->gt:Lcom/byazt/w/n;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/byazt/w/n;->tt(JJ)J

    move-result-wide v0

    .line 144
    iget-object v2, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    int-to-long v2, v2

    .line 145
    div-long v2, v0, v2

    goto :goto_0

    :cond_0
    move-wide v2, v0

    .line 146
    :goto_0
    invoke-virtual {p1, p2, p3, p4, p5}, Lcom/byazt/h/u;->c(JJ)J

    move-result-wide p2

    cmp-long p4, p2, p6

    if-ltz p4, :cond_1

    long-to-double p4, p2

    long-to-double v4, v2

    mul-double v4, v4, p8

    cmpg-double p8, p4, v4

    if-gez p8, :cond_2

    .line 147
    :cond_1
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "isDownloadSpeedPoor: totalSpeed = "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ", threadAvgSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ", poorSpeed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p5, ", speed = "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, ",threadIndex = "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/byazt/h/u;->ve:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SegmentDispatcher"

    invoke-static {p2, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private da()Lcom/byazt/h/nu;
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget v0, p0, Lcom/byazt/h/sl;->m:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    rem-int/2addr v0, v1

    .line 11
    iget-object v1, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    .line 12
    .line 13
    invoke-virtual {v1}, Lcom/byazt/h/yp;->tt()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    iget v1, p0, Lcom/byazt/h/sl;->m:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iput v1, p0, Lcom/byazt/h/sl;->m:I

    .line 24
    .line 25
    :cond_0
    iget-object v1, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    .line 26
    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/byazt/h/nu;

    .line 32
    .line 33
    monitor-exit p0

    .line 34
    return-object v0

    .line 35
    :catchall_0
    move-exception v0

    .line 36
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw v0
.end method

.method private i()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/h/yp;->t()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/byazt/h/sl;->t:Z

    .line 11
    .line 12
    invoke-direct {p0}, Lcom/byazt/h/sl;->n()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/byazt/hs/ve;->c()Lcom/byazt/hs/ve;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    iget-object v2, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    .line 21
    .line 22
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getUrl()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    const-wide/16 v3, 0x7d0

    .line 27
    .line 28
    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/byazt/hs/ve;->c(Ljava/lang/String;Lcom/byazt/hs/ve$c;J)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    if-le v0, v2, :cond_2

    .line 33
    .line 34
    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getBackUpUrls()Ljava/util/List;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    check-cast v2, Ljava/lang/String;

    .line 57
    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    .line 60
    .line 61
    move-result v5

    .line 62
    if-nez v5, :cond_1

    .line 63
    .line 64
    invoke-virtual {v1, v2, p0, v3, v4}, Lcom/byazt/hs/ve;->c(Ljava/lang/String;Lcom/byazt/hs/ve$c;J)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    return-void
.end method

.method private m()Lcom/byazt/h/i;
    .locals 15

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-direct {p0}, Lcom/byazt/h/sl;->nu()Lcom/byazt/h/i;

    .line 3
    .line 4
    .line 5
    move-result-object v1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    return-object v2

    .line 10
    :cond_0
    iget-object v13, v1, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    .line 11
    .line 12
    if-nez v13, :cond_1

    .line 13
    .line 14
    return-object v1

    .line 15
    :cond_1
    invoke-virtual {v1}, Lcom/byazt/h/i;->da()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    const/4 v14, 0x2

    .line 20
    if-lt v3, v14, :cond_2

    .line 21
    .line 22
    return-object v2

    .line 23
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 24
    .line 25
    .line 26
    move-result-wide v7

    .line 27
    invoke-direct {p0, v7, v8}, Lcom/byazt/h/sl;->tt(J)V

    .line 28
    .line 29
    .line 30
    iget-wide v3, v13, Lcom/byazt/h/u;->a:J

    .line 31
    .line 32
    sub-long v3, v7, v3

    .line 33
    .line 34
    const-wide/16 v5, 0x7d0

    .line 35
    .line 36
    cmp-long v9, v3, v5

    .line 37
    .line 38
    if-lez v9, :cond_4

    .line 39
    .line 40
    sub-long v5, v7, v5

    .line 41
    .line 42
    const-wide/16 v9, 0x1f4

    .line 43
    .line 44
    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    .line 45
    .line 46
    move-object v3, p0

    .line 47
    move-object v4, v13

    .line 48
    invoke-direct/range {v3 .. v12}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/u;JJJD)Z

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eqz v3, :cond_4

    .line 53
    .line 54
    iget-boolean v0, p0, Lcom/byazt/h/sl;->md:Z

    .line 55
    .line 56
    if-eqz v0, :cond_3

    .line 57
    .line 58
    const-string v0, "SegmentDispatcher"

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v3, "obtainSegmentWhenNoNewSegment: isDownloadSpeedPoor segment = "

    .line 63
    .line 64
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v3, ", owner.threadIndex = "

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v3, v13, Lcom/byazt/h/u;->ve:I

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-static {v0, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    :cond_3
    return-object v1

    .line 88
    :cond_4
    add-int/lit8 v3, v0, 0x1

    .line 89
    .line 90
    if-le v0, v14, :cond_6

    .line 91
    .line 92
    iget-boolean v0, p0, Lcom/byazt/h/sl;->md:Z

    .line 93
    .line 94
    if-eqz v0, :cond_5

    .line 95
    .line 96
    const-string v0, "SegmentDispatcher"

    .line 97
    .line 98
    const-string v2, "obtainSegmentWhenNoNewSegment: waitCount > 2, return segment = "

    .line 99
    .line 100
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-static {v0, v2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    :cond_5
    return-object v1

    .line 112
    :cond_6
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    const-wide/16 v0, 0x1f4

    .line 114
    .line 115
    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    .line 116
    .line 117
    .line 118
    monitor-exit p0

    .line 119
    move v0, v3

    .line 120
    goto :goto_0

    .line 121
    :catchall_0
    move-exception v0

    .line 122
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 123
    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 124
    :catch_0
    return-object v2
.end method

.method public static synthetic n(Lcom/byazt/h/sl;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/h/sl;->gu:J

    return-wide v0
.end method

.method private n()V
    .locals 7

    .line 2
    iget-wide v0, p0, Lcom/byazt/h/sl;->u:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    cmp-long v5, v0, v2

    if-lez v5, :cond_1

    iget-boolean v0, p0, Lcom/byazt/h/sl;->t:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v0}, Lcom/byazt/h/yp;->c()I

    move-result v0

    .line 4
    iget-wide v1, p0, Lcom/byazt/h/sl;->u:J

    iget-object v3, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v3}, Lcom/byazt/h/yp;->x()J

    move-result-wide v5

    div-long/2addr v1, v5

    long-to-int v2, v1

    if-le v0, v2, :cond_2

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    :goto_1
    const-string v1, "SegmentDispatcher"

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "dispatchReadThread: totalLength = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v5, p0, Lcom/byazt/h/sl;->u:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", threadCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    if-gtz v0, :cond_3

    goto :goto_2

    :cond_3
    move v4, v0

    .line 6
    :goto_2
    monitor-enter p0

    .line 7
    :cond_4
    :try_start_0
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v4, :cond_7

    .line 8
    iget-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    if-eqz v0, :cond_5

    goto :goto_3

    .line 9
    :cond_5
    invoke-direct {p0}, Lcom/byazt/h/sl;->da()Lcom/byazt/h/nu;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/nu;)V

    .line 10
    iget-object v0, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v0}, Lcom/byazt/h/yp;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_4

    .line 11
    :cond_6
    :goto_3
    monitor-exit p0

    return-void

    .line 12
    :cond_7
    :goto_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private n(Lcom/byazt/h/u;Lcom/byazt/h/i;)V
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/h/da;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 13
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "applySegment: start "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SegmentDispatcher"

    invoke-static {v4, v3}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v3, v2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    const-string v5, "applySegment: "

    if-ne v3, v1, :cond_0

    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is already the owner of "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    iget-object v3, v2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    if-nez v3, :cond_17

    .line 17
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/h/u;->x()J

    move-result-wide v7

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_16

    .line 18
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v7

    .line 19
    invoke-direct {v0, v7, v8}, Lcom/byazt/h/sl;->c(J)I

    move-result v3

    const/4 v9, 0x2

    const/4 v10, -0x1

    if-eq v3, v10, :cond_15

    .line 20
    iget-object v10, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/byazt/h/i;

    if-eqz v10, :cond_15

    const-wide/16 v11, 0x0

    if-eq v10, v2, :cond_7

    .line 21
    invoke-virtual {v10}, Lcom/byazt/h/i;->ve()J

    move-result-wide v13

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v15

    cmp-long v17, v13, v15

    if-nez v17, :cond_5

    .line 22
    invoke-direct {v0, v10}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/i;)J

    move-result-wide v13

    cmp-long v15, v13, v11

    if-lez v15, :cond_5

    .line 23
    iget-object v15, v10, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    if-eqz v15, :cond_3

    const-wide/32 v16, 0x80000

    cmp-long v18, v13, v16

    if-gez v18, :cond_1

    .line 24
    iget-wide v11, v1, Lcom/byazt/h/u;->a:J

    move-wide/from16 v19, v7

    iget-wide v6, v15, Lcom/byazt/h/u;->a:J

    sub-long/2addr v11, v6

    const-wide/16 v6, 0x3e8

    cmp-long v8, v11, v6

    if-lez v8, :cond_2

    .line 25
    invoke-virtual {v10}, Lcom/byazt/h/i;->n()J

    move-result-wide v6

    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v11

    sub-long/2addr v6, v11

    const-wide/16 v11, 0x2

    div-long/2addr v13, v11

    cmp-long v8, v6, v13

    if-gez v8, :cond_2

    goto :goto_0

    :cond_1
    move-wide/from16 v19, v7

    .line 26
    :cond_2
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "applySegmentLocked: has same segment, but owner is normal, abort. segmentInList = "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    move-wide/from16 v19, v7

    :goto_0
    if-eqz v15, :cond_4

    .line 27
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "applySegmentLocked: has same segment,and owner too slow, segmentInList = "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x1

    .line 28
    invoke-virtual {v15, v6}, Lcom/byazt/h/u;->c(Z)V

    goto :goto_1

    .line 29
    :cond_4
    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "applySegmentLocked: has same segment and no owner, segmentInList = "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    :goto_1
    invoke-virtual {v10}, Lcom/byazt/h/i;->a()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Lcom/byazt/h/i;->ve(J)V

    .line 31
    invoke-virtual {v10}, Lcom/byazt/h/i;->da()I

    move-result v6

    invoke-virtual {v2, v6}, Lcom/byazt/h/i;->tt(I)V

    .line 32
    iget-object v6, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v6, v3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v6, 0x1

    goto :goto_3

    :cond_5
    move-wide/from16 v19, v7

    :goto_2
    const/4 v6, 0x0

    :goto_3
    if-eqz v6, :cond_6

    goto :goto_4

    .line 33
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not exist! but has another same segment, segmentInList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    new-instance v1, Lcom/byazt/h/da;

    const-string v2, "segment not exist, but has another same segment"

    invoke-direct {v1, v9, v2}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_7
    move-wide/from16 v19, v7

    .line 35
    :goto_4
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->c()J

    move-result-wide v6

    add-int/lit8 v8, v3, -0x1

    :goto_5
    const-wide/16 v9, 0x1

    if-ltz v8, :cond_e

    .line 36
    iget-object v11, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/byazt/h/i;

    .line 37
    invoke-virtual {v11}, Lcom/byazt/h/i;->a()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v16, v12, v14

    if-lez v16, :cond_8

    cmp-long v16, v12, v19

    if-ltz v16, :cond_b

    :cond_8
    cmp-long v12, v6, v14

    if-gtz v12, :cond_a

    .line 38
    invoke-virtual {v11}, Lcom/byazt/h/i;->n()J

    move-result-wide v12

    cmp-long v14, v12, v19

    if-gtz v14, :cond_9

    goto :goto_6

    .line 39
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "applySegment:prev\'s current has over this start, prev = "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", segment = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    iget-object v1, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 41
    new-instance v1, Lcom/byazt/h/da;

    const/4 v2, 0x3

    const-string v3, "prev overstep"

    invoke-direct {v1, v2, v3}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v1

    .line 42
    :cond_a
    :goto_6
    iget-object v12, v11, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    if-nez v12, :cond_c

    sub-long v12, v19, v9

    .line 43
    invoke-virtual {v11, v12, v13}, Lcom/byazt/h/i;->ve(J)V

    .line 44
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "applySegment: prev set end, prev = "

    invoke-virtual {v13, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-virtual {v11}, Lcom/byazt/h/i;->c()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-lez v15, :cond_b

    goto :goto_7

    :cond_b
    add-int/lit8 v8, v8, -0x1

    goto :goto_5

    .line 46
    :cond_c
    iget-object v6, v11, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    sub-long v7, v19, v9

    invoke-virtual {v6, v7, v8}, Lcom/byazt/h/u;->c(J)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 47
    invoke-virtual {v11, v7, v8}, Lcom/byazt/h/i;->ve(J)V

    .line 48
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "applySegment: adjustSegmentEndOffset succeed, prev = "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 49
    :cond_d
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applySegment: adjustSegmentEndOffset filed, prev = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    new-instance v1, Lcom/byazt/h/da;

    const/4 v2, 0x4

    const-string v3, "prev end adjust fail"

    invoke-direct {v1, v2, v3}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_e
    :goto_7
    const/4 v6, 0x1

    add-int/2addr v3, v6

    .line 51
    iget-object v6, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    :goto_8
    if-ge v3, v6, :cond_12

    .line 52
    iget-object v7, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/byazt/h/i;

    .line 53
    invoke-virtual {v7}, Lcom/byazt/h/i;->c()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v8, v11, v13

    if-gtz v8, :cond_10

    iget-object v8, v7, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    if-eqz v8, :cond_f

    goto :goto_9

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 54
    :cond_10
    :goto_9
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->a()J

    move-result-wide v11

    .line 55
    invoke-virtual {v7}, Lcom/byazt/h/i;->ve()J

    move-result-wide v21

    cmp-long v3, v11, v13

    if-lez v3, :cond_11

    cmp-long v3, v11, v21

    if-ltz v3, :cond_12

    :cond_11
    sub-long v8, v21, v9

    .line 56
    invoke-virtual {v2, v8, v9}, Lcom/byazt/h/i;->ve(J)V

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v6, "applySegment: segment set end:"

    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", later = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_12
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->a()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v3, v6, v8

    if-lez v3, :cond_14

    cmp-long v3, v19, v6

    if-gtz v3, :cond_13

    .line 59
    invoke-virtual/range {p2 .. p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v8

    cmp-long v3, v8, v6

    if-gtz v3, :cond_13

    goto :goto_a

    .line 60
    :cond_13
    new-instance v1, Lcom/byazt/h/da;

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v1

    .line 61
    :cond_14
    :goto_a
    iput-object v1, v2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    .line 62
    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "applySegment: OK "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 63
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " not exist! segmentIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    new-instance v1, Lcom/byazt/h/da;

    const-string v2, "segment not exist"

    invoke-direct {v1, v9, v2}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v1

    .line 65
    :cond_16
    new-instance v1, Lcom/byazt/h/da;

    const/4 v2, 0x5

    const-string v3, "applySegment"

    invoke-direct {v1, v2, v3}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v1

    .line 66
    :cond_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " is already has an owner:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    new-instance v1, Lcom/byazt/h/da;

    const-string v2, "segment already has an owner"

    const/4 v3, 0x1

    invoke-direct {v1, v3, v2}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw v1
.end method

.method private nu()Lcom/byazt/h/i;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const v2, 0x7fffffff

    .line 9
    .line 10
    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-eqz v3, :cond_1

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    check-cast v3, Lcom/byazt/h/i;

    .line 22
    .line 23
    invoke-direct {p0, v3}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/i;)J

    .line 24
    .line 25
    .line 26
    move-result-wide v4

    .line 27
    const-wide/16 v6, 0x0

    .line 28
    .line 29
    cmp-long v8, v4, v6

    .line 30
    .line 31
    if-lez v8, :cond_0

    .line 32
    .line 33
    invoke-virtual {v3}, Lcom/byazt/h/i;->da()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-ge v4, v2, :cond_0

    .line 38
    .line 39
    move-object v1, v3

    .line 40
    move v2, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    return-object v1
.end method

.method private rh()J
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_2

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    monitor-enter p0

    .line 15
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/byazt/h/sl;->tt(J)V

    .line 16
    .line 17
    .line 18
    iget-object v2, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    .line 19
    .line 20
    invoke-virtual {v2}, Lcom/byazt/h/yp;->sl()J

    .line 21
    .line 22
    .line 23
    move-result-wide v2

    .line 24
    const-wide/16 v4, 0x0

    .line 25
    .line 26
    cmp-long v6, v2, v4

    .line 27
    .line 28
    if-lez v6, :cond_1

    .line 29
    .line 30
    iget-wide v6, p0, Lcom/byazt/h/sl;->zm:J

    .line 31
    .line 32
    cmp-long v8, v6, v4

    .line 33
    .line 34
    if-lez v8, :cond_1

    .line 35
    .line 36
    sub-long v4, v0, v6

    .line 37
    .line 38
    cmp-long v6, v4, v2

    .line 39
    .line 40
    if-lez v6, :cond_1

    .line 41
    .line 42
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/byazt/h/sl;->c(JJ)Z

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    .line 48
    iput-wide v0, p0, Lcom/byazt/h/sl;->zm:J

    .line 49
    .line 50
    iget v0, p0, Lcom/byazt/h/sl;->p:I

    .line 51
    .line 52
    add-int/lit8 v0, v0, 0x1

    .line 53
    .line 54
    iput v0, p0, Lcom/byazt/h/sl;->p:I

    .line 55
    .line 56
    :cond_1
    monitor-exit p0

    .line 57
    const-wide/16 v0, 0x7d0

    .line 58
    .line 59
    return-wide v0

    .line 60
    :catchall_0
    move-exception v0

    .line 61
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    throw v0

    .line 63
    :cond_2
    :goto_0
    const-wide/16 v0, -0x1

    .line 64
    .line 65
    return-wide v0
.end method

.method private sl()V
    .locals 2

    .line 1
    const-string v0, "SegmentDispatcher"

    .line 2
    .line 3
    const-string v1, "onComplete"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/byazt/h/tt;->ve()V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    .line 14
    .line 15
    monitor-enter v0

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 19
    .line 20
    .line 21
    monitor-exit v0

    .line 22
    return-void

    .line 23
    :catchall_0
    move-exception v1

    .line 24
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw v1
.end method

.method public static synthetic sp(Lcom/byazt/h/sl;)J
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/byazt/h/sl;->rh()J

    move-result-wide v0

    return-wide v0
.end method

.method private sp()V
    .locals 5

    .line 2
    iget-object v0, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    .line 3
    invoke-virtual {v0}, Lcom/byazt/h/yp;->da()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/byazt/h/sl;->gu:J

    .line 4
    invoke-virtual {v0}, Lcom/byazt/h/yp;->sl()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/byazt/h/sl;->gr:J

    .line 5
    invoke-virtual {v0}, Lcom/byazt/h/yp;->z()F

    move-result v0

    iput v0, p0, Lcom/byazt/h/sl;->yv:F

    .line 6
    iget v0, p0, Lcom/byazt/h/sl;->p:I

    if-lez v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/byazt/h/sl;->rl:Lcom/byazt/u/n;

    iget-object v2, p0, Lcom/byazt/h/sl;->h:Lcom/byazt/u/n$tt;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Lcom/byazt/u/n;->c(Lcom/byazt/u/n$tt;J)V

    :cond_0
    return-void
.end method

.method private t()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/byazt/h/u;

    .line 18
    .line 19
    invoke-virtual {v1}, Lcom/byazt/h/u;->sp()Z

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    return v0

    .line 27
    :cond_1
    const/4 v0, 0x1

    .line 28
    return v0
.end method

.method private tt(Lcom/byazt/h/u;Lcom/byazt/h/nu;)Lcom/byazt/h/i;
    .locals 6

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    if-nez v0, :cond_2

    .line 24
    iget-object v0, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/i;

    if-eqz v0, :cond_0

    .line 25
    iget-object v4, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-direct {p0, v4, v0, v1}, Lcom/byazt/h/sl;->c(Ljava/util/List;Lcom/byazt/h/i;Z)V

    .line 26
    invoke-direct {p0, v0}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/i;)J

    move-result-wide v4

    cmp-long v1, v4, v2

    if-gtz v1, :cond_1

    iget-wide v4, p0, Lcom/byazt/h/sl;->u:J

    cmp-long v1, v4, v2

    if-gtz v1, :cond_0

    :cond_1
    return-object v0

    .line 27
    :cond_2
    invoke-direct {p0}, Lcom/byazt/h/sl;->u()V

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/byazt/h/sl;->ve(Lcom/byazt/h/u;Lcom/byazt/h/nu;)Lcom/byazt/h/i;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 29
    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->c(Lcom/byazt/h/i;)J

    move-result-wide v4

    cmp-long p2, v4, v2

    if-lez p2, :cond_3

    .line 30
    iget-object p2, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-direct {p0, p2, p1, v1}, Lcom/byazt/h/sl;->c(Ljava/util/List;Lcom/byazt/h/i;Z)V

    return-object p1

    .line 31
    :cond_3
    invoke-direct {p0}, Lcom/byazt/h/sl;->m()Lcom/byazt/h/i;

    move-result-object p1

    if-eqz p1, :cond_4

    return-object p1

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private tt(J)V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/byazt/h/sl;->gt:Lcom/byazt/w/n;

    iget-object v1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/byazt/w/n;->c(JJ)Z

    .line 90
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/h/u;

    .line 91
    invoke-virtual {v1, p1, p2}, Lcom/byazt/h/u;->tt(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private tt(Lcom/byazt/h/u;Lcom/byazt/h/i;Lcom/byazt/h/nu;Lcom/byazt/t/uj;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Lcom/byazt/m/i;
        }
    .end annotation

    .line 47
    iget-object v0, p2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    new-instance p1, Lcom/byazt/h/da;

    const/4 p2, 0x1

    const-string p3, "segment already has an owner"

    invoke-direct {p1, p2, p3}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw p1

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/byazt/h/u;->x()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-nez p1, :cond_c

    .line 50
    invoke-virtual {p4}, Lcom/byazt/t/uj;->tt()Z

    move-result p1

    const-wide/16 v0, 0x0

    if-nez p1, :cond_4

    .line 51
    invoke-virtual {p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v2

    const/16 p1, 0x3ec

    cmp-long v4, v2, v0

    if-gtz v4, :cond_3

    const-string v2, "SegmentDispatcher"

    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "parseHttpResponse: segment.getCurrentOffsetRead = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p4}, Lcom/byazt/t/uj;->c()Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 54
    :cond_2
    new-instance p3, Lcom/byazt/m/tt;

    iget v0, p4, Lcom/byazt/t/uj;->ve:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "2: response code error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p4, Lcom/byazt/t/uj;->ve:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " segment="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/byazt/m/tt;-><init>(IILjava/lang/String;)V

    throw p3

    .line 55
    :cond_3
    new-instance p3, Lcom/byazt/m/tt;

    iget v0, p4, Lcom/byazt/t/uj;->ve:I

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "1: response code error : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p4, p4, Lcom/byazt/t/uj;->ve:I

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " segment="

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lcom/byazt/m/tt;-><init>(IILjava/lang/String;)V

    throw p3

    .line 56
    :cond_4
    :goto_1
    iget-boolean p1, p3, Lcom/byazt/h/nu;->uj:Z

    if-eqz p1, :cond_9

    .line 57
    iget-object p1, p0, Lcom/byazt/h/sl;->da:Lcom/byazt/t/uj;

    if-nez p1, :cond_b

    .line 58
    iput-object p4, p0, Lcom/byazt/h/sl;->da:Lcom/byazt/t/uj;

    .line 59
    iget-object p1, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    monitor-enter p1

    .line 60
    :try_start_0
    iget-object v2, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 61
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    iget-object p1, p0, Lcom/byazt/h/sl;->uj:Lcom/byazt/u/a;

    if-eqz p1, :cond_5

    .line 63
    iget-object p3, p3, Lcom/byazt/h/nu;->c:Ljava/lang/String;

    iget-object v2, p4, Lcom/byazt/t/uj;->tt:Lcom/byazt/hs/sp;

    invoke-virtual {p2}, Lcom/byazt/h/i;->n()J

    move-result-wide v3

    invoke-interface {p1, p3, v2, v3, v4}, Lcom/byazt/u/a;->c(Ljava/lang/String;Lcom/byazt/hs/sp;J)V

    .line 64
    :cond_5
    invoke-virtual {p4}, Lcom/byazt/t/uj;->da()J

    move-result-wide p1

    cmp-long p3, p1, v0

    if-lez p3, :cond_8

    .line 65
    iget-object p3, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_6
    :goto_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_8

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/byazt/h/i;

    .line 66
    invoke-virtual {p4}, Lcom/byazt/h/i;->a()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long v6, v2, v0

    if-lez v6, :cond_7

    invoke-virtual {p4}, Lcom/byazt/h/i;->a()J

    move-result-wide v2

    sub-long v6, p1, v4

    cmp-long v8, v2, v6

    if-lez v8, :cond_6

    :cond_7
    sub-long v2, p1, v4

    .line 67
    invoke-virtual {p4, v2, v3}, Lcom/byazt/h/i;->ve(J)V

    goto :goto_2

    :cond_8
    return-void

    :catchall_0
    move-exception p2

    .line 68
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2

    .line 69
    :cond_9
    invoke-direct {p0, p4}, Lcom/byazt/h/sl;->c(Lcom/byazt/t/uj;)V

    .line 70
    iget-object p1, p0, Lcom/byazt/h/sl;->sl:Lcom/byazt/t/uj;

    if-nez p1, :cond_b

    .line 71
    iput-object p4, p0, Lcom/byazt/h/sl;->sl:Lcom/byazt/t/uj;

    .line 72
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    cmp-long v2, p1, v0

    if-gtz v2, :cond_a

    .line 73
    invoke-virtual {p4}, Lcom/byazt/t/uj;->da()J

    move-result-wide p1

    const-string p4, "SegmentDispatcher"

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "checkSegmentHttpResponse:len="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",url="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/byazt/h/nu;->c:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p4, p3}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    iget-object p3, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p3, p1, p2}, Lcom/byazt/t/DownloadInfo;->setTotalBytes(J)V

    .line 76
    :cond_a
    iget-object p1, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    monitor-enter p1

    .line 77
    :try_start_2
    iget-object p2, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 78
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p2

    :cond_b
    return-void

    .line 79
    :cond_c
    new-instance p1, Lcom/byazt/h/da;

    const/4 p2, 0x5

    const-string p3, "applySegment"

    invoke-direct {p1, p2, p3}, Lcom/byazt/h/da;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private tt(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/byazt/h/nu;",
            ">;)V"
        }
    .end annotation

    .line 15
    iget-boolean v0, p0, Lcom/byazt/h/sl;->md:Z

    if-eqz v0, :cond_0

    .line 16
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/h/nu;

    .line 17
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "addIpListLocked: urlRecord = "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "SegmentDispatcher"

    invoke-static {v2, v1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object v0, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v0}, Lcom/byazt/h/yp;->t()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 19
    :cond_1
    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->c(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_2

    .line 20
    iget-object v0, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    add-int/2addr p1, v1

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    return-void

    .line 22
    :cond_2
    iget-object p1, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private tt(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/h/sl;->u:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 3
    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getExpectFileLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/h/sl;->u:J

    const-string v0, "SegmentDispatcher"

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "initSegments: getExpectFileLength = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/byazt/h/sl;->u:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :cond_0
    monitor-enter p0

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/h/i;

    .line 9
    iget-object v2, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    new-instance v3, Lcom/byazt/h/i;

    invoke-direct {v3, v1}, Lcom/byazt/h/i;-><init>(Lcom/byazt/h/i;)V

    invoke-direct {p0, v2, v3, v0}, Lcom/byazt/h/sl;->c(Ljava/util/List;Lcom/byazt/h/i;Z)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->uj(Ljava/util/List;)V

    .line 11
    iget-object p1, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->ve(Ljava/util/List;)V

    goto :goto_2

    .line 12
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    new-instance v1, Lcom/byazt/h/i;

    const-wide/16 v4, -0x1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/byazt/h/i;-><init>(JJ)V

    invoke-direct {p0, p1, v1, v0}, Lcom/byazt/h/sl;->c(Ljava/util/List;Lcom/byazt/h/i;Z)V

    :goto_2
    const-string p1, "SegmentDispatcher"

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "initSegments: totalLength = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/byazt/h/sl;->u:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static synthetic tt(Lcom/byazt/h/sl;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/h/sl;->sp:Z

    return p0
.end method

.method private u()V
    .locals 15

    .line 1
    iget-wide v0, p0, Lcom/byazt/h/sl;->u:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-gt v0, v1, :cond_1

    .line 18
    .line 19
    return-void

    .line 20
    :cond_1
    const/4 v4, 0x0

    .line 21
    const/4 v5, 0x0

    .line 22
    const/4 v6, 0x1

    .line 23
    :goto_0
    const-string v7, "SegmentDispatcher"

    .line 24
    .line 25
    if-ge v6, v0, :cond_5

    .line 26
    .line 27
    iget-object v8, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    check-cast v8, Lcom/byazt/h/i;

    .line 34
    .line 35
    iget-object v9, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    check-cast v9, Lcom/byazt/h/i;

    .line 42
    .line 43
    invoke-virtual {v8}, Lcom/byazt/h/i;->n()J

    .line 44
    .line 45
    .line 46
    move-result-wide v10

    .line 47
    invoke-virtual {v9}, Lcom/byazt/h/i;->ve()J

    .line 48
    .line 49
    .line 50
    move-result-wide v12

    .line 51
    cmp-long v14, v10, v12

    .line 52
    .line 53
    if-lez v14, :cond_3

    .line 54
    .line 55
    invoke-virtual {v9}, Lcom/byazt/h/i;->c()J

    .line 56
    .line 57
    .line 58
    move-result-wide v10

    .line 59
    cmp-long v12, v10, v2

    .line 60
    .line 61
    if-gtz v12, :cond_3

    .line 62
    .line 63
    iget-object v10, v9, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    .line 64
    .line 65
    if-nez v10, :cond_3

    .line 66
    .line 67
    if-nez v4, :cond_2

    .line 68
    .line 69
    new-instance v4, Ljava/util/ArrayList;

    .line 70
    .line 71
    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 72
    .line 73
    .line 74
    :cond_2
    invoke-interface {v4, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    iget-boolean v10, p0, Lcom/byazt/h/sl;->md:Z

    .line 78
    .line 79
    if-eqz v10, :cond_4

    .line 80
    .line 81
    new-instance v10, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    const-string v11, "clearCovered, covered = "

    .line 84
    .line 85
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    const-string v9, ", prev = "

    .line 92
    .line 93
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    invoke-static {v7, v8}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_3
    invoke-virtual {v9}, Lcom/byazt/h/i;->n()J

    .line 108
    .line 109
    .line 110
    move-result-wide v9

    .line 111
    invoke-virtual {v8}, Lcom/byazt/h/i;->n()J

    .line 112
    .line 113
    .line 114
    move-result-wide v7

    .line 115
    cmp-long v11, v9, v7

    .line 116
    .line 117
    if-lez v11, :cond_4

    .line 118
    .line 119
    add-int/lit8 v5, v5, 0x1

    .line 120
    .line 121
    :cond_4
    :goto_1
    add-int/lit8 v6, v6, 0x1

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_5
    if-eqz v4, :cond_9

    .line 125
    .line 126
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    if-eqz v2, :cond_9

    .line 135
    .line 136
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    check-cast v2, Lcom/byazt/h/i;

    .line 141
    .line 142
    iget-object v3, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    .line 143
    .line 144
    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    iget-object v3, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 150
    .line 151
    .line 152
    move-result-object v3

    .line 153
    :cond_7
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 154
    .line 155
    .line 156
    move-result v4

    .line 157
    if-eqz v4, :cond_6

    .line 158
    .line 159
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 160
    .line 161
    .line 162
    move-result-object v4

    .line 163
    check-cast v4, Lcom/byazt/h/u;

    .line 164
    .line 165
    iget-object v5, v4, Lcom/byazt/h/u;->c:Lcom/byazt/h/i;

    .line 166
    .line 167
    if-ne v5, v2, :cond_7

    .line 168
    .line 169
    iget-boolean v5, p0, Lcom/byazt/h/sl;->md:Z

    .line 170
    .line 171
    if-eqz v5, :cond_8

    .line 172
    .line 173
    new-instance v5, Ljava/lang/StringBuilder;

    .line 174
    .line 175
    const-string v6, "clearCoveredSegmentLocked: reconnect, segment = "

    .line 176
    .line 177
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    const-string v6, ", threadIndex = "

    .line 184
    .line 185
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    iget v6, v4, Lcom/byazt/h/u;->ve:I

    .line 189
    .line 190
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v5

    .line 197
    invoke-static {v7, v5}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    :cond_8
    invoke-virtual {v4, v1}, Lcom/byazt/h/u;->c(Z)V

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :cond_9
    return-void
.end method

.method private uj(Lcom/byazt/h/u;Lcom/byazt/h/nu;)F
    .locals 7

    .line 50
    invoke-virtual {p1}, Lcom/byazt/h/u;->tt()J

    move-result-wide v0

    .line 51
    iget-object p2, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x1

    if-gt p2, v2, :cond_0

    .line 52
    iget-object p2, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {p2}, Lcom/byazt/h/yp;->c()I

    move-result p2

    :cond_0
    const-wide/16 v3, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    cmp-long v6, v0, v3

    if-gtz v6, :cond_5

    .line 53
    iget-object v0, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v0}, Lcom/byazt/h/yp;->u()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-lez v1, :cond_1

    cmpl-float v1, v0, v5

    if-ltz v1, :cond_2

    :cond_1
    int-to-float v0, p2

    div-float v0, v5, v0

    .line 54
    :cond_2
    iget p1, p1, Lcom/byazt/h/u;->ve:I

    if-nez p1, :cond_3

    return v0

    :cond_3
    if-le p2, v2, :cond_4

    sub-float/2addr v5, v0

    sub-int/2addr p2, v2

    :cond_4
    int-to-float p1, p2

    div-float/2addr v5, p1

    return v5

    .line 55
    :cond_5
    invoke-direct {p0}, Lcom/byazt/h/sl;->z()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-lez p1, :cond_4

    long-to-float p1, v0

    long-to-float p2, v2

    div-float/2addr p1, p2

    return p1
.end method

.method private uj(Lcom/byazt/h/u;)Lcom/byazt/h/nu;
    .locals 5

    .line 45
    iget-object v0, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/byazt/h/nu;

    .line 46
    iget-object v4, p1, Lcom/byazt/h/u;->tt:Lcom/byazt/h/nu;

    if-eq v3, v4, :cond_0

    invoke-virtual {v3}, Lcom/byazt/h/nu;->uj()Z

    move-result v4

    if-nez v4, :cond_0

    if-nez v2, :cond_1

    move-object v2, v3

    .line 47
    :cond_1
    invoke-virtual {v3}, Lcom/byazt/h/nu;->c()I

    move-result v4

    if-gtz v4, :cond_0

    goto :goto_0

    :cond_2
    move-object v3, v1

    .line 48
    :goto_0
    iget-object p1, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {p1}, Lcom/byazt/h/yp;->tt()Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz v3, :cond_3

    return-object v3

    .line 49
    :cond_3
    iget-object p1, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {p1}, Lcom/byazt/h/yp;->ve()Z

    move-result p1

    if-eqz p1, :cond_4

    return-object v1

    :cond_4
    return-object v2
.end method

.method public static synthetic uj(Lcom/byazt/h/sl;)Lcom/byazt/t/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/h/sl;->sl:Lcom/byazt/t/uj;

    return-object p0
.end method

.method private uj()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/byazt/h/sl;->n:Lcom/byazt/h/sp;

    iget-object v1, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    invoke-virtual {v0, v1}, Lcom/byazt/h/sp;->c(Lcom/byazt/h/uj;)V
    :try_end_0
    .catch Lcom/byazt/h/m; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/byazt/m/BaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SegmentDispatcher"

    const-string v2, "dispatchSegments: loopAndWrite e = "

    .line 3
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0, v0}, Lcom/byazt/h/sl;->c(Lcom/byazt/m/BaseException;)V

    .line 5
    throw v0

    :catch_1
    nop

    .line 6
    :goto_0
    iget-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    if-nez v0, :cond_6

    iget-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    if-eqz v0, :cond_0

    goto :goto_4

    .line 7
    :cond_0
    :try_start_1
    monitor-enter p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 8
    :cond_1
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/byazt/h/sl;->yp:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/i;

    if-eqz v0, :cond_1

    .line 10
    iget-object v1, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/byazt/h/sl;->c(Ljava/util/List;Lcom/byazt/h/i;Z)V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/byazt/h/sl;->ve(Ljava/util/List;)V

    .line 12
    monitor-exit p0

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 14
    :goto_2
    iget-boolean v0, p0, Lcom/byazt/h/sl;->qy:Z

    if-eqz v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "SegmentDispatcher"

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dispatchSegments: loopAndWrite  failedException = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    iget-object v0, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    throw v0

    .line 18
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v0

    iget-object v2, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 19
    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    iget-object v1, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/byazt/zl/c;->c(Lcom/byazt/t/DownloadInfo;Ljava/util/List;)V

    :cond_5
    const-string v0, "SegmentDispatcher"

    const-string v1, "dispatchSegments::download finished"

    .line 20
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_4
    return-void
.end method

.method private uj(Ljava/util/List;)V
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 21
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/i;

    .line 22
    invoke-virtual {v0}, Lcom/byazt/h/i;->ve()J

    move-result-wide v1

    const/4 v3, 0x1

    const-string v4, "SegmentDispatcher"

    const-wide/16 v5, 0x1

    const-wide/16 v7, 0x0

    cmp-long v9, v1, v7

    if-lez v9, :cond_0

    .line 23
    new-instance v9, Lcom/byazt/h/i;

    sub-long/2addr v1, v5

    invoke-direct {v9, v7, v8, v1, v2}, Lcom/byazt/h/i;-><init>(JJ)V

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "fixSegmentsLocked: first = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", add new first = "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0, p1, v9, v3}, Lcom/byazt/h/sl;->c(Ljava/util/List;Lcom/byazt/h/i;Z)V

    .line 26
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 27
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/h/i;

    .line 29
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 30
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/h/i;

    .line 31
    invoke-virtual {v1}, Lcom/byazt/h/i;->a()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v11

    sub-long/2addr v11, v5

    cmp-long v13, v9, v11

    if-gez v13, :cond_1

    .line 32
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "fixSegment: segment = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ", new end = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v10

    sub-long/2addr v10, v5

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-virtual {v2}, Lcom/byazt/h/i;->ve()J

    move-result-wide v9

    sub-long/2addr v9, v5

    invoke-virtual {v1, v9, v10}, Lcom/byazt/h/i;->ve(J)V

    :cond_1
    move-object v1, v2

    goto :goto_0

    .line 34
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v3

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/byazt/h/i;

    .line 36
    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v0}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v9, v0, v7

    if-lez v9, :cond_3

    .line 37
    invoke-virtual {p1}, Lcom/byazt/h/i;->a()J

    move-result-wide v7

    cmp-long v9, v7, v2

    if-eqz v9, :cond_4

    invoke-virtual {p1}, Lcom/byazt/h/i;->a()J

    move-result-wide v7

    sub-long/2addr v0, v5

    cmp-long v5, v7, v0

    if-gez v5, :cond_4

    .line 38
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fixSegment: last segment = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", new end=-1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1, v2, v3}, Lcom/byazt/h/i;->ve(J)V

    :cond_4
    return-void
.end method

.method private ve(Lcom/byazt/h/u;Lcom/byazt/h/nu;)Lcom/byazt/h/i;
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 48
    iget-object v2, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-wide/16 v3, -0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v2, :cond_1

    .line 49
    invoke-direct {v0, v6, v2}, Lcom/byazt/h/sl;->c(II)J

    move-result-wide v7

    cmp-long v9, v7, v3

    if-lez v9, :cond_0

    move v5, v6

    move-wide v3, v7

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 50
    :cond_1
    iget-object v2, v0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v2}, Lcom/byazt/h/yp;->sp()J

    move-result-wide v6

    .line 51
    iget-object v2, v0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v2}, Lcom/byazt/h/yp;->i()J

    move-result-wide v8

    if-ltz v5, :cond_11

    cmp-long v2, v3, v6

    if-lez v2, :cond_11

    .line 52
    iget-object v2, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/h/i;

    .line 53
    iget-object v5, v0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    iget-object v10, v0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v5, v10, :cond_2

    const/4 v5, 0x2

    goto :goto_1

    .line 54
    :cond_2
    iget-object v5, v0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {v5}, Lcom/byazt/h/yp;->yp()I

    move-result v5

    :goto_1
    const-string v10, ", threadIndex = "

    const-string v12, ", ratio = "

    const-string v13, ", childLength = "

    const-string v14, ", maxRemainBytes = "

    const-string v15, ", child = "

    const-string v11, "obtainSegment: parent = "

    const-string v0, "SegmentDispatcher"

    const-wide/16 v18, 0x2

    const-wide/16 v20, 0x0

    move-object/from16 v22, v0

    const/4 v0, 0x1

    if-ne v5, v0, :cond_b

    .line 55
    iget-object v0, v2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    if-eqz v0, :cond_a

    move-object/from16 v16, v12

    move-object/from16 v17, v13

    .line 56
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    const-wide/16 v23, 0xfa0

    move-object/from16 v25, v14

    move-object/from16 v26, v15

    sub-long v14, v12, v23

    .line 57
    invoke-virtual {v0, v14, v15, v12, v13}, Lcom/byazt/h/u;->c(JJ)J

    move-result-wide v23

    .line 58
    invoke-virtual {v1, v14, v15, v12, v13}, Lcom/byazt/h/u;->c(JJ)J

    move-result-wide v12

    const/high16 v5, -0x40800000    # -1.0f

    cmp-long v14, v23, v20

    if-lez v14, :cond_3

    cmp-long v14, v12, v20

    if-lez v14, :cond_3

    long-to-float v14, v12

    add-long v12, v23, v12

    long-to-float v12, v12

    div-float/2addr v14, v12

    goto :goto_2

    :cond_3
    const/high16 v14, -0x40800000    # -1.0f

    :goto_2
    cmpl-float v5, v14, v5

    if-nez v5, :cond_4

    .line 59
    invoke-virtual {v0}, Lcom/byazt/h/u;->tt()J

    move-result-wide v12

    move/from16 p2, v14

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcom/byazt/h/u;->tt()J

    move-result-wide v14

    cmp-long v0, v12, v20

    if-lez v0, :cond_5

    cmp-long v0, v14, v20

    if-lez v0, :cond_5

    long-to-float v0, v14

    add-long/2addr v12, v14

    long-to-float v5, v12

    div-float v14, v0, v5

    goto :goto_3

    :cond_4
    move/from16 p2, v14

    :cond_5
    move/from16 v14, p2

    :goto_3
    const/4 v0, 0x0

    cmpl-float v0, v14, v0

    if-lez v0, :cond_a

    const v0, 0x3f666666    # 0.9f

    mul-float v14, v14, v0

    long-to-float v0, v3

    mul-float v0, v0, v14

    float-to-long v12, v0

    cmp-long v0, v12, v6

    if-gez v0, :cond_6

    move-wide v12, v6

    :cond_6
    cmp-long v0, v8, v20

    if-lez v0, :cond_7

    cmp-long v0, v12, v8

    if-lez v0, :cond_7

    goto :goto_4

    :cond_7
    move-wide v8, v12

    .line 61
    :goto_4
    div-long v6, v6, v18

    sub-long v12, v3, v6

    cmp-long v0, v8, v12

    if-lez v0, :cond_8

    move-wide v8, v12

    goto :goto_5

    :cond_8
    cmp-long v0, v8, v6

    if-gez v0, :cond_9

    move-wide v8, v6

    .line 62
    :cond_9
    :goto_5
    new-instance v0, Lcom/byazt/h/i;

    invoke-virtual {v2}, Lcom/byazt/h/i;->n()J

    move-result-wide v5

    sub-long v12, v3, v8

    add-long/2addr v5, v12

    invoke-virtual {v2}, Lcom/byazt/h/i;->a()J

    move-result-wide v12

    invoke-direct {v0, v5, v6, v12, v13}, Lcom/byazt/h/i;-><init>(JJ)V

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v26

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v13, v25

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v15, v17

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v6, v16

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v14, v22

    invoke-static {v14, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_a
    move-object/from16 v14, v22

    move-object/from16 v5, p0

    move-object v6, v14

    goto/16 :goto_8

    :cond_b
    move-object v0, v12

    move-object v12, v15

    move-object v15, v13

    move-object v13, v14

    const/4 v14, 0x2

    if-ne v5, v14, :cond_10

    move-object/from16 v5, p0

    move-object/from16 v16, v0

    move-object/from16 v14, v22

    .line 64
    iget-wide v0, v5, Lcom/byazt/h/sl;->u:J

    iget-object v14, v5, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v14}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v23

    sub-long v0, v0, v23

    .line 65
    invoke-direct/range {p0 .. p2}, Lcom/byazt/h/sl;->uj(Lcom/byazt/h/u;Lcom/byazt/h/nu;)F

    move-result v14

    long-to-float v0, v0

    mul-float v0, v0, v14

    float-to-long v0, v0

    cmp-long v17, v0, v6

    if-gez v17, :cond_c

    move-wide v0, v6

    :cond_c
    cmp-long v17, v8, v20

    if-lez v17, :cond_d

    cmp-long v17, v0, v8

    if-lez v17, :cond_d

    goto :goto_6

    :cond_d
    move-wide v8, v0

    .line 66
    :goto_6
    div-long v6, v6, v18

    sub-long v0, v3, v6

    cmp-long v17, v8, v0

    if-lez v17, :cond_e

    move-wide v8, v0

    goto :goto_7

    :cond_e
    cmp-long v0, v8, v6

    if-gez v0, :cond_f

    move-wide v8, v6

    .line 67
    :cond_f
    :goto_7
    new-instance v0, Lcom/byazt/h/i;

    invoke-virtual {v2}, Lcom/byazt/h/i;->n()J

    move-result-wide v6

    sub-long v17, v3, v8

    add-long v6, v6, v17

    move-wide/from16 v17, v8

    invoke-virtual {v2}, Lcom/byazt/h/i;->a()J

    move-result-wide v8

    invoke-direct {v0, v6, v7, v8, v9}, Lcom/byazt/h/i;-><init>(JJ)V

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v17

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p1

    iget v2, v2, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v6, v22

    invoke-static {v6, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_10
    move-object/from16 v5, p0

    move-object/from16 v6, v22

    .line 69
    :goto_8
    new-instance v0, Lcom/byazt/h/i;

    invoke-virtual {v2}, Lcom/byazt/h/i;->n()J

    move-result-wide v7

    div-long v3, v3, v18

    add-long/2addr v7, v3

    invoke-virtual {v2}, Lcom/byazt/h/i;->a()J

    move-result-wide v3

    invoke-direct {v0, v7, v8, v3, v4}, Lcom/byazt/h/i;-><init>(JJ)V

    .line 70
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ",child = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_11
    move-object v5, v0

    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic ve(Lcom/byazt/h/sl;)Lcom/byazt/t/uj;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/h/sl;->da:Lcom/byazt/t/uj;

    return-object p0
.end method

.method private ve(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/byazt/h/nu;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    .line 18
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 19
    :cond_0
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/net/InetAddress;

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    .line 22
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 23
    iget-boolean v5, p0, Lcom/byazt/h/sl;->md:Z

    if-eqz v5, :cond_2

    .line 24
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "onDnsResolved: ip = "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "SegmentDispatcher"

    invoke-static {v6, v5}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_2
    new-instance v5, Lcom/byazt/h/nu;

    invoke-direct {v5, p1, v4}, Lcom/byazt/h/nu;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v4, v5, Lcom/byazt/h/nu;->ve:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-nez v4, :cond_3

    .line 27
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 28
    iget-object v6, v5, Lcom/byazt/h/nu;->ve:Ljava/lang/String;

    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_3
    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-lez v3, :cond_9

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    :cond_5
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :cond_6
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 32
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/LinkedList;

    if-eqz v4, :cond_6

    .line 33
    invoke-virtual {v4}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_6

    .line 34
    invoke-virtual {v4}, Ljava/util/LinkedList;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/nu;

    .line 35
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, -0x1

    const/4 v0, 0x1

    goto :goto_1

    :cond_7
    if-lez v3, :cond_8

    if-nez v0, :cond_5

    :cond_8
    return-object p1

    :cond_9
    :goto_2
    return-object v0
.end method

.method private ve()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/byazt/h/sl;->da:Lcom/byazt/t/uj;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/byazt/h/sl;->sl:Lcom/byazt/t/uj;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/byazt/h/sl;->my:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    .line 5
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    iget-object v0, p0, Lcom/byazt/h/sl;->da:Lcom/byazt/t/uj;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/byazt/h/sl;->sl:Lcom/byazt/t/uj;

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    if-nez v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    throw v0

    :cond_2
    :goto_0
    return-void

    :catchall_0
    move-exception v1

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private ve(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;)V"
        }
    .end annotation

    .line 10
    invoke-static {p1}, Lcom/byazt/h/z;->tt(Ljava/util/List;)J

    move-result-wide v0

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "checkDownloadBytes: getCurBytes = "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", totalBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    .line 12
    invoke-virtual {v2}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", downloadedBytes = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "SegmentDispatcher"

    .line 13
    invoke-static {v2, p1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 15
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v0

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getCurBytes()J

    move-result-wide v2

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 17
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1, v0, v1}, Lcom/byazt/t/DownloadInfo;->setCurBytes(J)V

    :cond_1
    return-void
.end method

.method private ve(Lcom/byazt/h/u;)Z
    .locals 1

    .line 43
    monitor-enter p0

    .line 44
    :try_start_0
    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->uj(Lcom/byazt/h/u;)Lcom/byazt/h/nu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 45
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    .line 46
    :cond_0
    invoke-virtual {p1, v0}, Lcom/byazt/h/u;->c(Lcom/byazt/h/nu;)Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 47
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private x()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/byazt/h/sl;->gr:J

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
    iput-wide v0, p0, Lcom/byazt/h/sl;->zm:J

    .line 14
    .line 15
    iget-object v0, p0, Lcom/byazt/h/sl;->rl:Lcom/byazt/u/n;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/byazt/h/sl;->d:Lcom/byazt/u/n$tt;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/u/n;->c(Lcom/byazt/u/n$tt;J)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method private yp()Z
    .locals 8

    .line 1
    iget-wide v0, p0, Lcom/byazt/h/sl;->u:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    const/4 v4, 0x0

    .line 6
    cmp-long v5, v0, v2

    .line 7
    .line 8
    if-gtz v5, :cond_0

    .line 9
    .line 10
    iput-boolean v4, p0, Lcom/byazt/h/sl;->rh:Z

    .line 11
    .line 12
    return v4

    .line 13
    :cond_0
    monitor-enter p0

    .line 14
    :try_start_0
    iget-object v2, p0, Lcom/byazt/h/sl;->z:Ljava/util/List;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/byazt/h/z;->c(Ljava/util/List;)J

    .line 17
    .line 18
    .line 19
    move-result-wide v2

    .line 20
    const-string v5, "SegmentDispatcher"

    .line 21
    .line 22
    const-string v6, "isAllContentDownloaded: firstOffset = "

    .line 23
    .line 24
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v7

    .line 28
    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    invoke-static {v5, v6}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    cmp-long v5, v2, v0

    .line 36
    .line 37
    if-ltz v5, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Lcom/byazt/h/sl;->rh:Z

    .line 41
    .line 42
    monitor-exit p0

    .line 43
    return v0

    .line 44
    :cond_1
    iput-boolean v4, p0, Lcom/byazt/h/sl;->rh:Z

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return v4

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw v0
.end method

.method private z()J
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-wide/16 v1, 0x0

    .line 8
    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/byazt/h/u;

    .line 20
    .line 21
    invoke-virtual {v3}, Lcom/byazt/h/u;->tt()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    add-long/2addr v1, v3

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    return-wide v1
.end method


# virtual methods
.method public c(Lcom/byazt/h/u;Lcom/byazt/h/nu;)Lcom/byazt/h/i;
    .locals 1

    .line 56
    iget-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 57
    :cond_0
    monitor-enter p0

    .line 58
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/h/sl;->tt(Lcom/byazt/h/u;Lcom/byazt/h/nu;)Lcom/byazt/h/i;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {p1}, Lcom/byazt/h/i;->x()V

    .line 60
    invoke-virtual {p1}, Lcom/byazt/h/i;->da()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 61
    new-instance p2, Lcom/byazt/h/i;

    invoke-direct {p2, p1}, Lcom/byazt/h/i;-><init>(Lcom/byazt/h/i;)V

    monitor-exit p0

    return-object p2

    .line 62
    :cond_1
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 63
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public c()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "cancel"

    .line 117
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    .line 119
    monitor-enter p0

    .line 120
    :try_start_0
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/h/u;

    .line 121
    invoke-virtual {v1}, Lcom/byazt/h/u;->n()V

    goto :goto_0

    .line 122
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-object v0, p0, Lcom/byazt/h/sl;->n:Lcom/byazt/h/sp;

    invoke-virtual {v0}, Lcom/byazt/h/sp;->c()V

    .line 124
    iget-object v0, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    invoke-virtual {v0}, Lcom/byazt/h/tt;->ve()V

    return-void

    :catchall_0
    move-exception v0

    .line 125
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public c(Lcom/byazt/h/u;)V
    .locals 2

    .line 55
    iget-boolean v0, p0, Lcom/byazt/h/sl;->md:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onReaderRun, threadIndex = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SegmentDispatcher"

    invoke-static {v0, p1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/h/u;Lcom/byazt/h/i;)V
    .locals 0

    .line 64
    monitor-enter p0

    .line 65
    :try_start_0
    invoke-virtual {p2}, Lcom/byazt/h/i;->i()V

    .line 66
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/h/u;Lcom/byazt/h/i;Lcom/byazt/h/nu;Lcom/byazt/t/uj;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Lcom/byazt/m/i;
        }
    .end annotation

    .line 67
    monitor-enter p0

    .line 68
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    if-nez v0, :cond_3

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/byazt/h/sl;->tt(Lcom/byazt/h/u;Lcom/byazt/h/i;Lcom/byazt/h/nu;Lcom/byazt/t/uj;)V

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Lcom/byazt/h/u;->tt(Z)V

    .line 71
    iget-wide p1, p0, Lcom/byazt/h/sl;->u:J

    const-wide/16 v0, 0x0

    cmp-long p3, p1, v0

    if-gtz p3, :cond_1

    .line 72
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1}, Lcom/byazt/t/DownloadInfo;->getTotalBytes()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/h/sl;->u:J

    cmp-long p3, p1, v0

    if-gtz p3, :cond_0

    .line 73
    invoke-virtual {p4}, Lcom/byazt/t/uj;->da()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/byazt/h/sl;->u:J

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/byazt/h/sl;->n()V

    goto :goto_0

    .line 75
    :cond_1
    iget-object p1, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    invoke-virtual {p1}, Lcom/byazt/h/yp;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 76
    invoke-direct {p0}, Lcom/byazt/h/sl;->n()V

    .line 77
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    .line 78
    :cond_3
    new-instance p1, Lcom/byazt/h/m;

    const-string p2, "connected"

    invoke-direct {p1, p2}, Lcom/byazt/h/m;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 79
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/h/u;Lcom/byazt/h/nu;Lcom/byazt/h/i;Lcom/byazt/m/BaseException;)V
    .locals 2

    .line 83
    monitor-enter p0

    :try_start_0
    const-string p2, "SegmentDispatcher"

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onSegmentFailed: segment = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", e = "

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/byazt/x/c;->n(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 85
    invoke-virtual {p1, p2}, Lcom/byazt/h/u;->tt(Z)V

    .line 86
    iget p1, p1, Lcom/byazt/h/u;->ve:I

    if-nez p1, :cond_0

    .line 87
    iput-object p4, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    .line 88
    :cond_0
    invoke-direct {p0}, Lcom/byazt/h/sl;->t()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 89
    iget-object p1, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    if-nez p1, :cond_1

    .line 90
    iput-object p4, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    .line 91
    :cond_1
    iput-boolean p2, p0, Lcom/byazt/h/sl;->qy:Z

    .line 92
    iget-object p1, p0, Lcom/byazt/h/sl;->nu:Lcom/byazt/m/BaseException;

    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->c(Lcom/byazt/m/BaseException;)V

    .line 93
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public c(Lcom/byazt/h/u;Lcom/byazt/h/nu;Lcom/byazt/h/i;Lcom/byazt/m/BaseException;II)V
    .locals 0

    .line 80
    invoke-static {p4}, Lcom/byazt/w/a;->tt(Lcom/byazt/m/BaseException;)Z

    move-result p2

    .line 81
    invoke-virtual {p4}, Lcom/byazt/m/BaseException;->getErrorCode()I

    move-result p3

    const/16 p4, 0x417

    if-eq p3, p4, :cond_0

    const/16 p4, 0x432

    if-eq p3, p4, :cond_0

    const/16 p4, 0x41f

    if-ne p3, p4, :cond_1

    :cond_0
    const/4 p2, 0x1

    :cond_1
    if-nez p2, :cond_2

    if-lt p5, p6, :cond_3

    .line 82
    :cond_2
    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->ve(Lcom/byazt/h/u;)Z

    :cond_3
    return-void
.end method

.method public c(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    .line 33
    iget-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/byazt/h/sl;->a:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 34
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/h/sl;->ve(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 35
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    const/4 p2, 0x0

    .line 36
    :goto_0
    monitor-enter p0

    if-eqz p2, :cond_1

    .line 37
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/byazt/h/sl;->tt(Ljava/lang/String;Ljava/util/List;)V

    :cond_1
    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/byazt/h/sl;->t:Z

    .line 39
    iget-object p1, p0, Lcom/byazt/h/sl;->tt:Lcom/byazt/h/yp;

    iget-object p2, p0, Lcom/byazt/h/sl;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/byazt/h/yp;->c(I)V

    const-string p1, "SegmentDispatcher"

    const-string p2, "onDnsResolved: dispatchReadThread"

    .line 40
    invoke-static {p1, p2}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0}, Lcom/byazt/h/sl;->n()V

    .line 42
    monitor-exit p0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public c(Ljava/util/List;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/h/i;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "finally pause"

    const-string v1, "SegmentDispatcher"

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/byazt/h/sl;->a()V

    .line 5
    invoke-direct {p0, p1}, Lcom/byazt/h/sl;->tt(Ljava/util/List;)V

    .line 6
    invoke-direct {p0}, Lcom/byazt/h/sl;->n()V

    .line 7
    invoke-direct {p0}, Lcom/byazt/h/sl;->sp()V

    .line 8
    invoke-direct {p0}, Lcom/byazt/h/sl;->i()V

    .line 9
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-direct {p0}, Lcom/byazt/h/sl;->ve()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 12
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1, v4, v5}, Lcom/byazt/t/DownloadInfo;->increaseAllConnectTime(J)V

    .line 13
    iget-object p1, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {p1, v4, v5}, Lcom/byazt/t/DownloadInfo;->setFirstSpeedTime(J)V

    .line 14
    iget-boolean p1, p0, Lcom/byazt/h/sl;->sp:Z

    const/4 v2, 0x1

    if-nez p1, :cond_2

    iget-boolean p1, p0, Lcom/byazt/h/sl;->a:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/byazt/h/sl;->uj:Lcom/byazt/u/a;

    iget-wide v3, p0, Lcom/byazt/h/sl;->u:J

    invoke-interface {p1, v3, v4}, Lcom/byazt/u/a;->c(J)V

    .line 16
    invoke-direct {p0}, Lcom/byazt/h/sl;->x()V

    .line 17
    invoke-direct {p0}, Lcom/byazt/h/sl;->uj()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 18
    iget-boolean p1, p0, Lcom/byazt/h/sl;->sp:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/byazt/h/sl;->a:Z

    if-nez p1, :cond_1

    .line 19
    invoke-static {v1, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/byazt/h/sl;->tt()V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/byazt/h/sl;->rl:Lcom/byazt/u/n;

    invoke-virtual {p1}, Lcom/byazt/u/n;->tt()V

    return v2

    .line 22
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/byazt/h/sl;->sp:Z

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcom/byazt/h/sl;->a:Z

    if-nez p1, :cond_3

    .line 23
    invoke-static {v1, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p0}, Lcom/byazt/h/sl;->tt()V

    .line 25
    :cond_3
    iget-object p1, p0, Lcom/byazt/h/sl;->rl:Lcom/byazt/u/n;

    invoke-virtual {p1}, Lcom/byazt/u/n;->tt()V

    return v2

    :catchall_0
    move-exception p1

    .line 26
    :try_start_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    .line 27
    iget-object v2, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2, v4, v5}, Lcom/byazt/t/DownloadInfo;->increaseAllConnectTime(J)V

    .line 28
    iget-object v2, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    invoke-virtual {v2, v4, v5}, Lcom/byazt/t/DownloadInfo;->setFirstSpeedTime(J)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    .line 29
    iget-boolean v2, p0, Lcom/byazt/h/sl;->sp:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/byazt/h/sl;->a:Z

    if-nez v2, :cond_4

    .line 30
    invoke-static {v1, v0}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    invoke-virtual {p0}, Lcom/byazt/h/sl;->tt()V

    .line 32
    :cond_4
    iget-object v0, p0, Lcom/byazt/h/sl;->rl:Lcom/byazt/u/n;

    invoke-virtual {v0}, Lcom/byazt/u/n;->tt()V

    throw p1
.end method

.method public tt()V
    .locals 2

    const-string v0, "SegmentDispatcher"

    const-string v1, "pause1"

    .line 80
    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 81
    iput-boolean v0, p0, Lcom/byazt/h/sl;->sp:Z

    .line 82
    monitor-enter p0

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/byazt/h/u;

    .line 84
    invoke-virtual {v1}, Lcom/byazt/h/u;->n()V

    goto :goto_0

    .line 85
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    iget-object v0, p0, Lcom/byazt/h/sl;->n:Lcom/byazt/h/sp;

    invoke-virtual {v0}, Lcom/byazt/h/sp;->tt()V

    .line 87
    iget-object v0, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    invoke-virtual {v0}, Lcom/byazt/h/tt;->ve()V

    return-void

    :catchall_0
    move-exception v0

    .line 88
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public tt(Lcom/byazt/h/u;)V
    .locals 3

    const-string v0, "SegmentDispatcher"

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onReaderExit: threadIndex = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcom/byazt/h/u;->ve:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    monitor-enter p0

    const/4 v0, 0x1

    .line 37
    :try_start_0
    invoke-virtual {p1, v0}, Lcom/byazt/h/u;->ve(Z)V

    .line 38
    iget-object v0, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    invoke-direct {p0}, Lcom/byazt/h/sl;->u()V

    .line 40
    iget-object p1, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/byazt/h/sl;->yp()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SegmentDispatcher"

    const-string v0, "onReaderExit: allContentDownloaded"

    .line 42
    invoke-static {p1, v0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/byazt/h/sl;->x:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/h/u;

    .line 44
    invoke-virtual {v0}, Lcom/byazt/h/u;->n()V

    goto :goto_0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/byazt/h/sl;->sl()V

    .line 46
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public tt(Lcom/byazt/h/u;Lcom/byazt/h/i;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/h/sl;->n(Lcom/byazt/h/u;Lcom/byazt/h/i;)V

    .line 34
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public uj(Lcom/byazt/h/u;Lcom/byazt/h/i;)Lcom/byazt/h/n;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/byazt/m/BaseException;
        }
    .end annotation

    .line 40
    monitor-enter p0

    .line 41
    :try_start_0
    new-instance p1, Lcom/byazt/h/t;

    iget-object v0, p0, Lcom/byazt/h/sl;->c:Lcom/byazt/t/DownloadInfo;

    iget-object v1, p0, Lcom/byazt/h/sl;->ve:Lcom/byazt/h/tt;

    invoke-direct {p1, v0, v1, p2}, Lcom/byazt/h/t;-><init>(Lcom/byazt/t/DownloadInfo;Lcom/byazt/h/tt;Lcom/byazt/h/i;)V

    .line 42
    iget-object p2, p0, Lcom/byazt/h/sl;->n:Lcom/byazt/h/sp;

    invoke-virtual {p2, p1}, Lcom/byazt/h/sp;->c(Lcom/byazt/h/t;)V

    .line 43
    invoke-virtual {p1}, Lcom/byazt/h/t;->c()Lcom/byazt/h/n;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 44
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public ve(Lcom/byazt/h/u;Lcom/byazt/h/i;)V
    .locals 3

    .line 36
    monitor-enter p0

    .line 37
    :try_start_0
    iget-object v0, p2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    if-ne v0, p1, :cond_0

    const-string v0, "SegmentDispatcher"

    const-string v1, "unApplySegment "

    .line 38
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/byazt/x/c;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p1}, Lcom/byazt/h/u;->uj()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/byazt/h/i;->uj(J)V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p2, Lcom/byazt/h/i;->c:Lcom/byazt/h/u;

    .line 41
    invoke-virtual {p1}, Lcom/byazt/h/u;->c()V

    .line 42
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
