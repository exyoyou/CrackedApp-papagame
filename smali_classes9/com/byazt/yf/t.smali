.class public Lcom/byazt/yf/t;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1fc,
        0x42
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/yf/t$c;
    }
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

.field public x:Ljava/util/Map;
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
.method private constructor <init>(Lcom/byazt/yf/t$c;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/byazt/yf/t$c;->c(Lcom/byazt/yf/t$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/t;->c:Z

    .line 4
    invoke-static {p1}, Lcom/byazt/yf/t$c;->tt(Lcom/byazt/yf/t$c;)I

    move-result v0

    iput v0, p0, Lcom/byazt/yf/t;->tt:I

    .line 5
    invoke-static {p1}, Lcom/byazt/yf/t$c;->ve(Lcom/byazt/yf/t$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/t;->ve:Z

    .line 6
    invoke-static {p1}, Lcom/byazt/yf/t$c;->uj(Lcom/byazt/yf/t$c;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/byazt/yf/t;->uj:Z

    .line 7
    invoke-static {p1}, Lcom/byazt/yf/t$c;->n(Lcom/byazt/yf/t$c;)[I

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/t;->n:[I

    .line 8
    invoke-static {p1}, Lcom/byazt/yf/t$c;->a(Lcom/byazt/yf/t$c;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/t;->a:[Ljava/lang/String;

    .line 9
    invoke-static {p1}, Lcom/byazt/yf/t$c;->sp(Lcom/byazt/yf/t$c;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/t;->sp:Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcom/byazt/yf/t$c;->x(Lcom/byazt/yf/t$c;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/byazt/yf/t;->x:Ljava/util/Map;

    .line 11
    invoke-static {p1}, Lcom/byazt/yf/t$c;->i(Lcom/byazt/yf/t$c;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/yf/t;->i:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/yf/t$c;Lcom/byazt/yf/t$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/yf/t;-><init>(Lcom/byazt/yf/t$c;)V

    return-void
.end method


# virtual methods
.method public a()[Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/t;->a:[Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/t;->c:Z

    .line 2
    .line 3
    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/t;->i:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/t;->n:[I

    .line 2
    .line 3
    return-object v0
.end method

.method public sp()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/t;->sp:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public tt()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/yf/t;->tt:I

    .line 2
    .line 3
    return v0
.end method

.method public uj()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/t;->uj:Z

    .line 2
    .line 3
    return v0
.end method

.method public ve()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/byazt/yf/t;->ve:Z

    .line 2
    .line 3
    return v0
.end method

.method public x()Ljava/util/Map;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yf/t;->x:Ljava/util/Map;

    .line 2
    .line 3
    return-object v0
.end method
