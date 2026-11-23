.class public Lcom/byazt/ete/gr;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sr/ve;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0xc4
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/ete/gr$c;
    }
.end annotation


# instance fields
.field public final a:J

.field public final c:F

.field public final da:I

.field public gt:Lorg/json/JSONObject;

.field public final i:I

.field public final m:B

.field public my:I

.field public final n:J

.field public nu:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/hkv/uj$c;",
            ">;"
        }
    .end annotation
.end field

.field public rh:Ljava/lang/String;

.field public final sl:Ljava/lang/String;

.field public final sp:I

.field public final t:Ljava/lang/String;

.field public final tt:F

.field public final u:Ljava/lang/String;

.field public final uj:F

.field public final ve:F

.field public final x:I

.field public final yp:Ljava/lang/String;

.field public final z:Z


# direct methods
.method private constructor <init>(Lcom/byazt/ete/gr$c;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcom/byazt/ete/gr;->my:I

    .line 4
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->c(Lcom/byazt/ete/gr$c;)F

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->c:F

    .line 5
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->tt(Lcom/byazt/ete/gr$c;)F

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->tt:F

    .line 6
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->ve(Lcom/byazt/ete/gr$c;)F

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->ve:F

    .line 7
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->uj(Lcom/byazt/ete/gr$c;)F

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->uj:F

    .line 8
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->n(Lcom/byazt/ete/gr$c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ete/gr;->n:J

    .line 9
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->a(Lcom/byazt/ete/gr$c;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/ete/gr;->a:J

    .line 10
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->sp(Lcom/byazt/ete/gr$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->sp:I

    .line 11
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->x(Lcom/byazt/ete/gr$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->x:I

    .line 12
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->i(Lcom/byazt/ete/gr$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->i:I

    .line 13
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->da(Lcom/byazt/ete/gr$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->da:I

    .line 14
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->sl(Lcom/byazt/ete/gr$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/gr;->sl:Ljava/lang/String;

    .line 15
    iget-object v0, p1, Lcom/byazt/ete/gr$c;->c:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/byazt/ete/gr;->nu:Landroid/util/SparseArray;

    .line 16
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->t(Lcom/byazt/ete/gr$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/ete/gr;->z:Z

    .line 17
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->u(Lcom/byazt/ete/gr$c;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/gr;->gt:Lorg/json/JSONObject;

    .line 18
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->yp(Lcom/byazt/ete/gr$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/gr;->t:Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->z(Lcom/byazt/ete/gr$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/gr;->u:Ljava/lang/String;

    .line 20
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->m(Lcom/byazt/ete/gr$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/gr;->yp:Ljava/lang/String;

    .line 21
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->nu(Lcom/byazt/ete/gr$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/ete/gr;->rh:Ljava/lang/String;

    .line 22
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->rh(Lcom/byazt/ete/gr$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/ete/gr;->my:I

    .line 23
    invoke-static {p1}, Lcom/byazt/ete/gr$c;->my(Lcom/byazt/ete/gr$c;)B

    move-result p1

    iput-byte p1, p0, Lcom/byazt/ete/gr;->m:B

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/ete/gr$c;Lcom/byazt/ete/gr$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ete/gr;-><init>(Lcom/byazt/ete/gr$c;)V

    return-void
.end method


# virtual methods
.method public c()Lorg/json/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ete/gr;->gt:Lorg/json/JSONObject;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lorg/json/JSONObject;

    .line 6
    .line 7
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/byazt/ete/gr;->gt:Lorg/json/JSONObject;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ete/gr;->gt:Lorg/json/JSONObject;

    .line 13
    .line 14
    return-object v0
.end method
