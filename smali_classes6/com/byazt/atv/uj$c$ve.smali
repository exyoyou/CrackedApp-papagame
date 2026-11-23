.class public Lcom/byazt/atv/uj$c$ve;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x86,
        0x22b
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/atv/uj$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ve"
.end annotation


# instance fields
.field public c:F

.field public tt:F

.field public ve:Z


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/atv/uj$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$ve;-><init>()V

    return-void
.end method

.method private c()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/byazt/atv/uj$c$ve;->c:F

    return v0
.end method

.method private c(FF)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/byazt/atv/uj$c$ve;->c:F

    .line 4
    iput p2, p0, Lcom/byazt/atv/uj$c$ve;->tt:F

    return-void
.end method

.method public static synthetic c(Lcom/byazt/atv/uj$c$ve;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/byazt/atv/uj$c$ve;->c(FF)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/atv/uj$c$ve;)Z
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$ve;->ve()Z

    move-result p0

    return p0
.end method

.method private tt()F
    .locals 1

    .line 2
    iget v0, p0, Lcom/byazt/atv/uj$c$ve;->tt:F

    return v0
.end method

.method public static synthetic tt(Lcom/byazt/atv/uj$c$ve;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$ve;->c()F

    move-result p0

    return p0
.end method

.method private uj()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/byazt/atv/uj$c$ve;->ve:Z

    return-void
.end method

.method public static synthetic uj(Lcom/byazt/atv/uj$c$ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$ve;->uj()V

    return-void
.end method

.method public static synthetic ve(Lcom/byazt/atv/uj$c$ve;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/atv/uj$c$ve;->tt()F

    move-result p0

    return p0
.end method

.method private ve()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/atv/uj$c$ve;->ve:Z

    return v0
.end method
