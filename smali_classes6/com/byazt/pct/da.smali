.class public Lcom/byazt/pct/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x48
    }
.end annotation


# instance fields
.field public a:Z

.field public c:Lcom/byazt/nl/uj;

.field public da:Lcom/byazt/pct/yp;

.field public i:Lcom/byazt/pct/u;

.field public m:Lcom/byazt/pct/sl$tt;

.field public n:Landroid/content/Context;

.field public nu:Landroid/os/Looper;

.field public sl:Ljava/lang/String;

.field public sp:Z

.field public final t:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/pct/c;

.field public final u:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public uj:Lcom/byazt/pct/x;

.field public ve:Ljava/lang/String;

.field public x:Z

.field public yp:Z

.field public z:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    .line 8
    iput-object v0, p0, Lcom/byazt/pct/da;->ve:Ljava/lang/String;

    const-string v0, "host"

    .line 9
    iput-object v0, p0, Lcom/byazt/pct/da;->sl:Ljava/lang/String;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/byazt/pct/da;->t:Ljava/util/Set;

    .line 11
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/byazt/pct/da;->u:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Lcom/byazt/nl/uj;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "IESJSBridge"

    .line 2
    iput-object v0, p0, Lcom/byazt/pct/da;->ve:Ljava/lang/String;

    const-string v0, "host"

    .line 3
    iput-object v0, p0, Lcom/byazt/pct/da;->sl:Ljava/lang/String;

    .line 4
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/byazt/pct/da;->t:Ljava/util/Set;

    .line 5
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/byazt/pct/da;->u:Ljava/util/Set;

    .line 6
    iput-object p1, p0, Lcom/byazt/pct/da;->c:Lcom/byazt/nl/uj;

    return-void
.end method

.method private uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/pct/da;->c:Lcom/byazt/nl/uj;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-boolean v0, p0, Lcom/byazt/pct/da;->yp:Z

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/pct/da;->tt:Lcom/byazt/pct/c;

    .line 10
    .line 11
    if-eqz v0, :cond_2

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/byazt/pct/da;->ve:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/byazt/pct/da;->c:Lcom/byazt/nl/uj;

    .line 22
    .line 23
    if-nez v0, :cond_2

    .line 24
    .line 25
    :cond_1
    iget-object v0, p0, Lcom/byazt/pct/da;->uj:Lcom/byazt/pct/x;

    .line 26
    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    return-void

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 31
    .line 32
    const-string v1, "Requested arguments aren\'t set properly when building JsBridge."

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method


# virtual methods
.method public c()Lcom/byazt/pct/da;
    .locals 1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/byazt/pct/da;->z:Z

    return-object p0
.end method

.method public c(Lcom/byazt/pct/c;)Lcom/byazt/pct/da;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/pct/da;->tt:Lcom/byazt/pct/c;

    return-object p0
.end method

.method public c(Lcom/byazt/pct/t;)Lcom/byazt/pct/da;
    .locals 0

    .line 3
    invoke-static {p1}, Lcom/byazt/pct/x;->c(Lcom/byazt/pct/t;)Lcom/byazt/pct/x;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/pct/da;->uj:Lcom/byazt/pct/x;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/pct/da;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/pct/da;->ve:Ljava/lang/String;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/pct/da;
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/byazt/pct/da;->a:Z

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pct/da;->n:Landroid/content/Context;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt(Z)Lcom/byazt/pct/da;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/byazt/pct/da;->sp:Z

    return-object p0
.end method

.method public tt()Lcom/byazt/pct/nu;
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/byazt/pct/da;->uj()V

    .line 3
    new-instance v0, Lcom/byazt/pct/nu;

    invoke-direct {v0, p0}, Lcom/byazt/pct/nu;-><init>(Lcom/byazt/pct/da;)V

    return-object v0
.end method

.method public ve()Landroid/os/Looper;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/pct/da;->nu:Landroid/os/Looper;

    .line 2
    .line 3
    return-object v0
.end method
