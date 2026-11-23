.class public Lcom/byazt/yf/t$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x7d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/yf/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:[Ljava/lang/String;

.field public c:Z

.field public i:Ljava/lang/String;

.field public n:[I

.field public sp:Ljava/lang/String;

.field public tt:I

.field public uj:Z

.field public ve:Z

.field public final x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/yf/t$c;->c:Z

    .line 6
    .line 7
    iput v0, p0, Lcom/byazt/yf/t$c;->tt:I

    .line 8
    .line 9
    const/4 v1, 0x1

    .line 10
    iput-boolean v1, p0, Lcom/byazt/yf/t$c;->ve:Z

    .line 11
    .line 12
    iput-boolean v0, p0, Lcom/byazt/yf/t$c;->uj:Z

    .line 13
    .line 14
    const/4 v1, 0x3

    .line 15
    const/4 v2, 0x5

    .line 16
    const/4 v3, 0x4

    .line 17
    filled-new-array {v3, v1, v2}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/byazt/yf/t$c;->n:[I

    .line 22
    .line 23
    new-array v0, v0, [Ljava/lang/String;

    .line 24
    .line 25
    iput-object v0, p0, Lcom/byazt/yf/t$c;->a:[Ljava/lang/String;

    .line 26
    .line 27
    const-string v0, ""

    .line 28
    .line 29
    iput-object v0, p0, Lcom/byazt/yf/t$c;->sp:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v1, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 34
    .line 35
    .line 36
    iput-object v1, p0, Lcom/byazt/yf/t$c;->x:Ljava/util/Map;

    .line 37
    .line 38
    iput-object v0, p0, Lcom/byazt/yf/t$c;->i:Ljava/lang/String;

    .line 39
    .line 40
    return-void
.end method

.method public static synthetic a(Lcom/byazt/yf/t$c;)[Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yf/t$c;->a:[Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/yf/t$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/yf/t$c;->c:Z

    return p0
.end method

.method public static synthetic i(Lcom/byazt/yf/t$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yf/t$c;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic n(Lcom/byazt/yf/t$c;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yf/t$c;->n:[I

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic sp(Lcom/byazt/yf/t$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yf/t$c;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic tt(Lcom/byazt/yf/t$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/byazt/yf/t$c;->tt:I

    return p0
.end method

.method public static synthetic uj(Lcom/byazt/yf/t$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/yf/t$c;->uj:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic ve(Lcom/byazt/yf/t$c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/byazt/yf/t$c;->ve:Z

    .line 2
    .line 3
    return p0
.end method

.method public static synthetic x(Lcom/byazt/yf/t$c;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/yf/t$c;->x:Ljava/util/Map;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public c(I)Lcom/byazt/yf/t$c;
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/yf/t$c;->tt:I

    return-object p0
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/yf/t$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 5
    iput-object p1, p0, Lcom/byazt/yf/t$c;->sp:Ljava/lang/String;

    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/byazt/yf/t$c;
    .locals 1
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/byazt/yf/t$c;"
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/byazt/yf/t$c;->x:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    return-object p0
.end method

.method public c(Z)Lcom/byazt/yf/t$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/yf/t$c;->c:Z

    return-object p0
.end method

.method public varargs c([I)Lcom/byazt/yf/t$c;
    .locals 0
    .param p1    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 4
    iput-object p1, p0, Lcom/byazt/yf/t$c;->n:[I

    return-object p0
.end method

.method public c()Lcom/byazt/yf/t;
    .locals 2

    .line 7
    new-instance v0, Lcom/byazt/yf/t;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/byazt/yf/t;-><init>(Lcom/byazt/yf/t$c;Lcom/byazt/yf/t$1;)V

    return-object v0
.end method

.method public tt(Ljava/lang/String;)Lcom/byazt/yf/t$c;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 3
    iput-object p1, p0, Lcom/byazt/yf/t$c;->i:Ljava/lang/String;

    return-object p0
.end method

.method public tt(Z)Lcom/byazt/yf/t$c;
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/byazt/yf/t$c;->ve:Z

    return-object p0
.end method
