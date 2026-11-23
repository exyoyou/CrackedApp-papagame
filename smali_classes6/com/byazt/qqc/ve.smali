.class public Lcom/byazt/qqc/ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x147,
        0x36
    }
.end annotation


# static fields
.field public static final c:Lcom/byazt/qqc/ve;


# instance fields
.field public volatile a:Z

.field public da:Ljava/util/concurrent/atomic/AtomicInteger;

.field public i:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile n:Z

.field public volatile sl:Z

.field public sp:Lcom/byazt/ete/ic;

.field public t:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/view/Window;",
            "Lcom/byazt/cb/tt;",
            ">;"
        }
    .end annotation
.end field

.field public tt:F

.field public u:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroid/view/Window;",
            "Lcom/byazt/wee/tt;",
            ">;"
        }
    .end annotation
.end field

.field public uj:D

.field public ve:F

.field public x:Lcom/byazt/wee/tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/qqc/ve;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/qqc/ve;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/byazt/qqc/ve;->c:Lcom/byazt/qqc/ve;

    .line 7
    .line 8
    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/high16 v0, -0x40000000    # -2.0f

    .line 5
    .line 6
    iput v0, p0, Lcom/byazt/qqc/ve;->tt:F

    .line 7
    .line 8
    iput v0, p0, Lcom/byazt/qqc/ve;->ve:F

    .line 9
    .line 10
    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    .line 11
    .line 12
    iput-wide v0, p0, Lcom/byazt/qqc/ve;->uj:D

    .line 13
    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/byazt/qqc/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 20
    .line 21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/byazt/qqc/ve;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 27
    .line 28
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/byazt/qqc/ve;->t:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/byazt/qqc/ve;->u:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Lcom/byazt/omf/x;->ve()Lcom/byazt/aas/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-nez v0, :cond_0

    .line 51
    .line 52
    return-void

    .line 53
    :cond_0
    new-instance v1, Lcom/byazt/qqc/ve$1;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/byazt/qqc/ve$1;-><init>(Lcom/byazt/qqc/ve;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/byazt/aas/c;->tt(Lcom/byazt/aas/c$c;)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method private c(Landroid/content/Context;)Landroid/view/Window;
    .locals 1

    .line 35
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 36
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public static synthetic c(Lcom/byazt/qqc/ve;)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/qqc/ve;->sp:Lcom/byazt/ete/ic;

    return-object p0
.end method

.method public static c()Lcom/byazt/qqc/ve;
    .locals 1

    .line 2
    sget-object v0, Lcom/byazt/qqc/ve;->c:Lcom/byazt/qqc/ve;

    return-object v0
.end method

.method private c(Landroid/view/Window;Lcom/byazt/ete/ic;)V
    .locals 1

    .line 17
    invoke-static {p2}, Lcom/byazt/aas/nb;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    iput-object p2, p0, Lcom/byazt/qqc/ve;->sp:Lcom/byazt/ete/ic;

    .line 19
    new-instance v0, Lcom/byazt/cb/tt;

    invoke-direct {v0, p1}, Lcom/byazt/cb/tt;-><init>(Landroid/view/Window;)V

    .line 20
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p2

    .line 21
    invoke-virtual {v0, p2}, Lcom/byazt/qqc/c;->ve(I)Z

    move-result p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/byazt/qqc/ve;->i()V

    .line 23
    iget-object p2, p0, Lcom/byazt/qqc/ve;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private c(ZLcom/byazt/ete/ic;Landroid/view/Window;)V
    .locals 2

    if-eqz p1, :cond_0

    return-void

    .line 24
    :cond_0
    invoke-static {p2}, Lcom/byazt/aas/nb;->n(Lcom/byazt/ete/ic;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 25
    iput-object p2, p0, Lcom/byazt/qqc/ve;->sp:Lcom/byazt/ete/ic;

    .line 26
    new-instance p1, Lcom/byazt/wee/tt;

    invoke-direct {p1}, Lcom/byazt/wee/tt;-><init>()V

    iput-object p1, p0, Lcom/byazt/qqc/ve;->x:Lcom/byazt/wee/tt;

    .line 27
    invoke-static {p2}, Lcom/byazt/ete/xd;->sp(Lcom/byazt/ete/ic;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/byazt/wee/tt;->c(D)V

    .line 28
    iget-object p1, p0, Lcom/byazt/qqc/ve;->x:Lcom/byazt/wee/tt;

    invoke-static {p2}, Lcom/byazt/aas/nb;->p(Lcom/byazt/ete/ic;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/byazt/wee/tt;->c(Ljava/lang/String;)V

    .line 29
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p1

    .line 30
    iget-object p2, p0, Lcom/byazt/qqc/ve;->x:Lcom/byazt/wee/tt;

    invoke-virtual {p2, p1}, Lcom/byazt/qqc/c;->ve(I)Z

    move-result p1

    if-eqz p3, :cond_1

    if-eqz p1, :cond_1

    .line 31
    invoke-direct {p0}, Lcom/byazt/qqc/ve;->sp()V

    .line 32
    iget-object p1, p0, Lcom/byazt/qqc/ve;->u:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object p2, p0, Lcom/byazt/qqc/ve;->x:Lcom/byazt/wee/tt;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private da()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qqc/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/qqc/ve;->sp:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/qqc/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private i()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qqc/ve;->sp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/qqc/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private sp()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qqc/ve;->sp:Lcom/byazt/ete/ic;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/qqc/ve;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method private tt(Landroid/view/Window;Lcom/byazt/ete/ic;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/qqc/ve;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/cb/tt;

    if-eqz v0, :cond_2

    .line 11
    invoke-static {p2}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result v1

    .line 12
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p2

    if-eqz v1, :cond_1

    .line 13
    invoke-direct {p0}, Lcom/byazt/qqc/ve;->da()V

    .line 14
    iget-object v1, p0, Lcom/byazt/qqc/ve;->i:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 15
    :cond_1
    invoke-virtual {v0, p2}, Lcom/byazt/qqc/c;->n(I)V

    :cond_2
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_3

    .line 16
    iget-object p2, p0, Lcom/byazt/qqc/ve;->t:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public static synthetic tt(Lcom/byazt/qqc/ve;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/qqc/ve;->sl:Z

    return p0
.end method

.method private ve(Landroid/view/Window;Lcom/byazt/ete/ic;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/byazt/qqc/ve;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/byazt/wee/tt;

    if-eqz v0, :cond_2

    .line 3
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result v1

    .line 4
    invoke-static {p2}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/byazt/qqc/ve;->x()V

    .line 6
    iget-object p2, p0, Lcom/byazt/qqc/ve;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, v1}, Lcom/byazt/qqc/c;->n(I)V

    :cond_2
    const/4 p2, 0x1

    :goto_0
    if-eqz p2, :cond_3

    .line 8
    iget-object p2, p0, Lcom/byazt/qqc/ve;->u:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method private x()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/qqc/ve;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/qqc/ve;->sp:Lcom/byazt/ete/ic;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/byazt/aas/nb;->ve(Lcom/byazt/ete/ic;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    iget-object v0, p0, Lcom/byazt/qqc/ve;->da:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method


# virtual methods
.method public a()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/byazt/qqc/ve;->ve:F

    .line 2
    .line 3
    const/high16 v1, -0x40000000    # -2.0f

    .line 4
    .line 5
    cmpl-float v0, v0, v1

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "audio"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Landroid/media/AudioManager;

    .line 20
    .line 21
    if-nez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v1, 0x3

    .line 26
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    iput v0, p0, Lcom/byazt/qqc/ve;->ve:F

    .line 32
    .line 33
    :cond_1
    iget v0, p0, Lcom/byazt/qqc/ve;->ve:F

    .line 34
    .line 35
    return v0
.end method

.method public c(ILcom/byazt/ete/ic;)I
    .locals 7

    .line 37
    invoke-static {p2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    move-result p2

    const/16 v0, 0x9

    if-eq p2, v0, :cond_0

    const/4 v0, 0x5

    if-eq p2, v0, :cond_0

    return p1

    .line 38
    :cond_0
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->yo()Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string v1, "enable"

    .line 39
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "value"

    .line 40
    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v2

    const/4 v4, 0x1

    if-ne v1, v4, :cond_4

    const-string v1, "valid_type"

    .line 41
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 43
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_2

    .line 44
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v6

    if-ne p2, v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v5, :cond_3

    return p1

    :cond_3
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v0

    double-to-int p2, v2

    if-ltz p2, :cond_4

    const/16 v0, 0x64

    if-gt p2, v0, :cond_4

    return p2

    :cond_4
    return p1
.end method

.method public c(F)V
    .locals 0

    .line 12
    iput p1, p0, Lcom/byazt/qqc/ve;->tt:F

    return-void
.end method

.method public c(I)V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/byazt/qqc/ve;->x:Lcom/byazt/wee/tt;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 46
    invoke-virtual {v0}, Lcom/byazt/wee/tt;->n()I

    move-result v0

    .line 47
    iget-boolean v2, p0, Lcom/byazt/qqc/ve;->a:Z

    if-nez v2, :cond_1

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 48
    :goto_0
    iput-boolean v1, p0, Lcom/byazt/qqc/ve;->a:Z

    :cond_1
    return-void

    .line 49
    :cond_2
    iput-boolean v1, p0, Lcom/byazt/qqc/ve;->a:Z

    return-void
.end method

.method public c(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V
    .locals 1

    .line 13
    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 14
    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 15
    :goto_0
    iput-boolean p3, p0, Lcom/byazt/qqc/ve;->sl:Z

    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/qqc/ve;->c(Landroid/view/Window;Lcom/byazt/ete/ic;Z)V

    return-void
.end method

.method public c(Landroid/view/Window;Lcom/byazt/ete/ic;Z)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 33
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/byazt/qqc/ve;->c(Landroid/view/Window;Lcom/byazt/ete/ic;)V

    .line 34
    invoke-direct {p0, p3, p2, p1}, Lcom/byazt/qqc/ve;->c(ZLcom/byazt/ete/ic;Landroid/view/Window;)V

    return-void
.end method

.method public c(Lorg/json/JSONObject;)V
    .locals 14

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "day_factor"

    const-wide/16 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v3

    const-string v0, "week_factor"

    .line 4
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v5

    const-string v0, "battery_factor"

    .line 5
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v7

    const-string v0, "factor"

    .line 6
    invoke-virtual {p1, v0, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 7
    invoke-static {}, Lcom/byazt/qqc/tt;->c()Z

    move-result v2

    .line 8
    invoke-static {}, Lcom/byazt/qqc/tt;->ve()Z

    move-result v9

    .line 9
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/byazt/aas/DeviceUtils$c;->tt(Landroid/content/Context;)F

    move-result v10

    const/4 v11, 0x1

    const/4 v12, -0x1

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_0
    if-eqz v9, :cond_2

    const/4 v9, 0x1

    goto :goto_1

    :cond_2
    const/4 v9, -0x1

    :goto_1
    const/high16 v13, 0x42480000    # 50.0f

    cmpl-float v10, v10, v13

    if-ltz v10, :cond_3

    goto :goto_2

    :cond_3
    const/4 v11, -0x1

    :goto_2
    int-to-double v12, v2

    mul-double v12, v12, v5

    int-to-double v5, v9

    mul-double v5, v5, v3

    add-double/2addr v12, v5

    int-to-double v2, v11

    mul-double v2, v2, v7

    add-double/2addr v12, v2

    mul-double v12, v12, v0

    .line 10
    invoke-static {v12, v13, p1}, Lcom/byazt/qqc/c;->c(DLorg/json/JSONObject;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/qqc/ve;->uj:D

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 11
    iput-boolean p1, p0, Lcom/byazt/qqc/ve;->n:Z

    return-void
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/qqc/ve;->tt:F

    .line 2
    .line 3
    return v0
.end method

.method public tt()D
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/qqc/ve;->uj:D

    return-wide v0
.end method

.method public tt(F)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/qqc/ve;->ve:F

    return-void
.end method

.method public tt(Landroid/content/Context;Lcom/byazt/ete/ic;Z)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Lcom/bytedance/pangle/annotations/ForbidWrapParam;
        .end annotation
    .end param

    .line 4
    invoke-direct {p0, p1}, Lcom/byazt/qqc/ve;->c(Landroid/content/Context;)Landroid/view/Window;

    move-result-object p1

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lcom/byazt/qqc/ve;->tt(Landroid/view/Window;Lcom/byazt/ete/ic;Z)V

    return-void
.end method

.method public tt(Landroid/view/Window;Lcom/byazt/ete/ic;Z)V
    .locals 1

    .line 6
    invoke-static {p2}, Lcom/byazt/aas/nb;->a(Lcom/byazt/ete/ic;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/byazt/qqc/ve;->tt(Landroid/view/Window;Lcom/byazt/ete/ic;)V

    .line 8
    :cond_0
    invoke-static {p2}, Lcom/byazt/aas/nb;->n(Lcom/byazt/ete/ic;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/byazt/qqc/ve;->ve(Landroid/view/Window;Lcom/byazt/ete/ic;)V

    :cond_1
    return-void
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/qqc/ve;->a:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/qqc/ve;->n:Z

    return v0
.end method
