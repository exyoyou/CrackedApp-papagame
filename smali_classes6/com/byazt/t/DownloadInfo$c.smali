.class public Lcom/byazt/t/DownloadInfo$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x42,
        0x713
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/t/DownloadInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:Z

.field public aw:Z

.field public bm:Z

.field public bx:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public cu:Lcom/byazt/ev/EnqueueType;

.field public d:Z

.field public da:[Ljava/lang/String;

.field public eo:Ljava/lang/String;

.field public gr:Z

.field public gt:Z

.field public gu:Z

.field public h:J

.field public hd:Lorg/json/JSONObject;

.field public i:I

.field public ic:Z

.field public kp:Ljava/lang/String;

.field public l:[I

.field public lo:I

.field public lr:Ljava/lang/String;

.field public lt:Z

.field public m:I

.field public md:Ljava/lang/String;

.field public my:Z

.field public n:Ljava/lang/String;

.field public nb:Z

.field public nu:I

.field public or:Z

.field public p:Ljava/lang/String;

.field public pf:Z

.field public pu:Z

.field public qp:Z

.field public qy:Z

.field public rh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public rl:Ljava/lang/String;

.field public sl:[I

.field public sp:Ljava/lang/String;

.field public sv:J

.field public t:I

.field public tk:Z

.field public to:J

.field public tt:Ljava/lang/String;

.field public u:I

.field public uj:Ljava/lang/String;

.field public ve:Ljava/lang/String;

.field public x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Z

.field public yv:Z

.field public z:Z

.field public zb:Z

.field public zm:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->z:Z

    .line 3
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->gt:Z

    .line 4
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->zm:Z

    .line 5
    sget-object v1, Lcom/byazt/ev/EnqueueType;->ENQUEUE_NONE:Lcom/byazt/ev/EnqueueType;

    iput-object v1, p0, Lcom/byazt/t/DownloadInfo$c;->cu:Lcom/byazt/ev/EnqueueType;

    .line 6
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->bm:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->z:Z

    .line 9
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->gt:Z

    .line 10
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->zm:Z

    .line 11
    sget-object v1, Lcom/byazt/ev/EnqueueType;->ENQUEUE_NONE:Lcom/byazt/ev/EnqueueType;

    iput-object v1, p0, Lcom/byazt/t/DownloadInfo$c;->cu:Lcom/byazt/ev/EnqueueType;

    .line 12
    iput-boolean v0, p0, Lcom/byazt/t/DownloadInfo$c;->bm:Z

    .line 13
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->ve:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->kp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic aw(Lcom/byazt/t/DownloadInfo$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/DownloadInfo$c;->sv:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic bm(Lcom/byazt/t/DownloadInfo$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/DownloadInfo$c;->h:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic bx(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->pf:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic c(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic cu(Lcom/byazt/t/DownloadInfo$c;)Lcom/byazt/ev/EnqueueType;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->cu:Lcom/byazt/ev/EnqueueType;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic d(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->p:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic da(Lcom/byazt/t/DownloadInfo$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->x:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic eo(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->md:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic gr(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->d:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic gt(Lcom/byazt/t/DownloadInfo$c;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->rh:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic gu(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->qy:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic h(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->yv:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic hd(Lcom/byazt/t/DownloadInfo$c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->hd:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic i(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->a:Z

    return p0
.end method

.method public static synthetic ic(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->aw:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic kp(Lcom/byazt/t/DownloadInfo$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/t/DownloadInfo$c;->to:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic l(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->gt:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic lo(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->bm:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic lr(Lcom/byazt/t/DownloadInfo$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/DownloadInfo$c;->lo:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic lt(Lcom/byazt/t/DownloadInfo$c;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->l:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic m(Lcom/byazt/t/DownloadInfo$c;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->sl:[I

    return-object p0
.end method

.method public static synthetic md(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->zm:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic my(Lcom/byazt/t/DownloadInfo$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/DownloadInfo$c;->nu:I

    return p0
.end method

.method public static synthetic n(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic nb(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->nb:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic nu(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->z:Z

    return p0
.end method

.method public static synthetic or(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->or:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic p(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->gr:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic pf(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->ic:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic pu(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->lr:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic qp(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->qp:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic qy(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->rl:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/t/DownloadInfo$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/DownloadInfo$c;->m:I

    return p0
.end method

.method public static synthetic rl(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->my:Z

    return p0
.end method

.method public static synthetic sl(Lcom/byazt/t/DownloadInfo$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/DownloadInfo$c;->i:I

    return p0
.end method

.method public static synthetic sp(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->tk:Z

    return p0
.end method

.method public static synthetic sv(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->bx:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic t(Lcom/byazt/t/DownloadInfo$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/DownloadInfo$c;->t:I

    return p0
.end method

.method public static synthetic tk(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->lt:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic to(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->pu:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic u(Lcom/byazt/t/DownloadInfo$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/t/DownloadInfo$c;->u:I

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic yp(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->yp:Z

    return p0
.end method

.method public static synthetic yv(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->gu:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic z(Lcom/byazt/t/DownloadInfo$c;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->da:[Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic zb(Lcom/byazt/t/DownloadInfo$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/t/DownloadInfo$c;->zb:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic zm(Lcom/byazt/t/DownloadInfo$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/t/DownloadInfo$c;->eo:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public a(I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/t/DownloadInfo$c;->lo:I

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->n:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->gu:Z

    return-object p0
.end method

.method public c(I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/t/DownloadInfo$c;->i:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 8
    iput-wide p1, p0, Lcom/byazt/t/DownloadInfo$c;->h:J

    return-object p0
.end method

.method public c(Lcom/byazt/ev/EnqueueType;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->cu:Lcom/byazt/ev/EnqueueType;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/List;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/byazt/t/ve;",
            ">;)",
            "Lcom/byazt/t/DownloadInfo$c;"
        }
    .end annotation

    .line 4
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->x:Ljava/util/List;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->hd:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->a:Z

    return-object p0
.end method

.method public c([I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->sl:[I

    return-object p0
.end method

.method public c([Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->da:[Ljava/lang/String;

    return-object p0
.end method

.method public c()Lcom/byazt/t/DownloadInfo;
    .locals 2

    .line 11
    new-instance v0, Lcom/byazt/t/DownloadInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/t/DownloadInfo;-><init>(Lcom/byazt/t/DownloadInfo$c;Lcom/byazt/t/DownloadInfo$1;)V

    return-object v0
.end method

.method public da(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->md:Ljava/lang/String;

    return-object p0
.end method

.method public da(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->d:Z

    return-object p0
.end method

.method public gt(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->lt:Z

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->p:Ljava/lang/String;

    return-object p0
.end method

.method public i(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->yv:Z

    return-object p0
.end method

.method public m(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->ic:Z

    return-object p0
.end method

.method public my(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->pu:Z

    return-object p0
.end method

.method public n(I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/t/DownloadInfo$c;->nu:I

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->uj:Ljava/lang/String;

    return-object p0
.end method

.method public n(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->my:Z

    return-object p0
.end method

.method public nu(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->bm:Z

    return-object p0
.end method

.method public qy(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->gt:Z

    return-object p0
.end method

.method public rh(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->aw:Z

    return-object p0
.end method

.method public rl(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->tk:Z

    return-object p0
.end method

.method public sl(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->eo:Ljava/lang/String;

    return-object p0
.end method

.method public sl(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->zb:Z

    return-object p0
.end method

.method public sp(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public sp(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->gr:Z

    return-object p0
.end method

.method public t(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->lr:Ljava/lang/String;

    return-object p0
.end method

.method public t(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->or:Z

    return-object p0
.end method

.method public tt(I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/t/DownloadInfo$c;->t:I

    return-object p0
.end method

.method public tt(J)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 7
    iput-wide p1, p0, Lcom/byazt/t/DownloadInfo$c;->sv:J

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->tt:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Ljava/util/List;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/t/DownloadInfo$c;"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->rh:Ljava/util/List;

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->yp:Z

    return-object p0
.end method

.method public tt([I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->l:[I

    return-object p0
.end method

.method public u(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->bx:Ljava/lang/String;

    return-object p0
.end method

.method public u(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->qp:Z

    return-object p0
.end method

.method public uj(I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/t/DownloadInfo$c;->m:I

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->kp:Ljava/lang/String;

    return-object p0
.end method

.method public uj(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->qy:Z

    return-object p0
.end method

.method public ve(I)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/t/DownloadInfo$c;->u:I

    return-object p0
.end method

.method public ve(J)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 5
    iput-wide p1, p0, Lcom/byazt/t/DownloadInfo$c;->to:J

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public ve(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->z:Z

    return-object p0
.end method

.method public x(Ljava/lang/String;)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/t/DownloadInfo$c;->rl:Ljava/lang/String;

    return-object p0
.end method

.method public x(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->zm:Z

    return-object p0
.end method

.method public yp(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->nb:Z

    return-object p0
.end method

.method public z(Z)Lcom/byazt/t/DownloadInfo$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/t/DownloadInfo$c;->pf:Z

    return-object p0
.end method
