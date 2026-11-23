.class public Lcom/byazt/ete/gr$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x8,
        0x5d1
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ete/gr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:F

.field public c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/byazt/hkv/uj$c;",
            ">;"
        }
    .end annotation
.end field

.field public da:I

.field public gt:B

.field public i:I

.field public m:Z

.field public my:I

.field public n:F

.field public nu:Lorg/json/JSONObject;

.field public rh:Ljava/lang/String;

.field public sl:I

.field public sp:F

.field public t:Ljava/lang/String;

.field public tt:J

.field public u:Ljava/lang/String;

.field public uj:F

.field public ve:J

.field public x:I

.field public yp:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/byazt/ete/gr$c;->c:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/4 v0, -0x1

    .line 12
    iput v0, p0, Lcom/byazt/ete/gr$c;->my:I

    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    iput-byte v0, p0, Lcom/byazt/ete/gr$c;->gt:B

    .line 16
    .line 17
    return-void
.end method

.method public static synthetic a(Lcom/byazt/ete/gr$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/gr$c;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public static synthetic c(Lcom/byazt/ete/gr$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->sp:F

    return p0
.end method

.method public static synthetic da(Lcom/byazt/ete/gr$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->sl:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic i(Lcom/byazt/ete/gr$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->da:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic m(Lcom/byazt/ete/gr$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/gr$c;->z:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic my(Lcom/byazt/ete/gr$c;)B
    .locals 0

    .line 1
    iget-byte p0, p0, Lcom/byazt/ete/gr$c;->gt:B

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic n(Lcom/byazt/ete/gr$c;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/ete/gr$c;->ve:J

    return-wide v0
.end method

.method public static synthetic nu(Lcom/byazt/ete/gr$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/gr$c;->rh:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic rh(Lcom/byazt/ete/gr$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->my:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic sl(Lcom/byazt/ete/gr$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/gr$c;->t:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/ete/gr$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->x:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic t(Lcom/byazt/ete/gr$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/ete/gr$c;->m:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic tt(Lcom/byazt/ete/gr$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->a:F

    return p0
.end method

.method public static synthetic u(Lcom/byazt/ete/gr$c;)Lorg/json/JSONObject;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/gr$c;->nu:Lorg/json/JSONObject;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/ete/gr$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->uj:F

    return p0
.end method

.method public static synthetic ve(Lcom/byazt/ete/gr$c;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->n:F

    return p0
.end method

.method public static synthetic x(Lcom/byazt/ete/gr$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/ete/gr$c;->i:I

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic yp(Lcom/byazt/ete/gr$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/gr$c;->u:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic z(Lcom/byazt/ete/gr$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/ete/gr$c;->yp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(B)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 2
    iput-byte p1, p0, Lcom/byazt/ete/gr$c;->gt:B

    return-object p0
.end method

.method public c(F)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 5
    iput p1, p0, Lcom/byazt/ete/gr$c;->uj:F

    return-object p0
.end method

.method public c(I)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 6
    iput p1, p0, Lcom/byazt/ete/gr$c;->x:I

    return-object p0
.end method

.method public c(J)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/byazt/ete/gr$c;->tt:J

    return-object p0
.end method

.method public c(Landroid/util/SparseArray;)Lcom/byazt/ete/gr$c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/byazt/hkv/uj$c;",
            ">;)",
            "Lcom/byazt/ete/gr$c;"
        }
    .end annotation

    .line 8
    iput-object p1, p0, Lcom/byazt/ete/gr$c;->c:Landroid/util/SparseArray;

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/byazt/ete/gr$c;->t:Ljava/lang/String;

    return-object p0
.end method

.method public c(Lorg/json/JSONObject;)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 9
    iput-object p1, p0, Lcom/byazt/ete/gr$c;->nu:Lorg/json/JSONObject;

    return-object p0
.end method

.method public c(Z)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/ete/gr$c;->m:Z

    return-object p0
.end method

.method public c()Lcom/byazt/ete/gr;
    .locals 2

    .line 10
    new-instance v0, Lcom/byazt/ete/gr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/ete/gr;-><init>(Lcom/byazt/ete/gr$c;Lcom/byazt/ete/gr$1;)V

    return-object v0
.end method

.method public n(I)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/gr$c;->my:I

    return-object p0
.end method

.method public n(Ljava/lang/String;)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ete/gr$c;->rh:Ljava/lang/String;

    return-object p0
.end method

.method public tt(F)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/gr$c;->n:F

    return-object p0
.end method

.method public tt(I)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 4
    iput p1, p0, Lcom/byazt/ete/gr$c;->i:I

    return-object p0
.end method

.method public tt(J)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 2
    iput-wide p1, p0, Lcom/byazt/ete/gr$c;->ve:J

    return-object p0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/byazt/ete/gr$c;->u:Ljava/lang/String;

    return-object p0
.end method

.method public uj(F)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/gr$c;->sp:F

    return-object p0
.end method

.method public uj(I)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/gr$c;->sl:I

    return-object p0
.end method

.method public uj(Ljava/lang/String;)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ete/gr$c;->z:Ljava/lang/String;

    return-object p0
.end method

.method public ve(F)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/ete/gr$c;->a:F

    return-object p0
.end method

.method public ve(I)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/ete/gr$c;->da:I

    return-object p0
.end method

.method public ve(Ljava/lang/String;)Lcom/byazt/ete/gr$c;
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ete/gr$c;->yp:Ljava/lang/String;

    return-object p0
.end method
