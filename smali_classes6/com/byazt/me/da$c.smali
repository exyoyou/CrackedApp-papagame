.class public Lcom/byazt/me/da$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x58b,
        0x2d
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/me/da;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public c:I

.field public da:I

.field public i:I

.field public n:I

.field public sl:I

.field public sp:I

.field public t:I

.field public tt:I

.field public u:I

.field public uj:I

.field public ve:I

.field public x:I

.field public yp:Ljava/util/Map;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/byazt/me/da$c;->yp:Ljava/util/Map;

    .line 9
    .line 10
    iput p1, p0, Lcom/byazt/me/da$c;->c:I

    .line 11
    .line 12
    new-instance p1, Ljava/util/HashMap;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/byazt/me/da$c;->yp:Ljava/util/Map;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public a(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->a:I

    .line 2
    .line 3
    return-object p0
.end method

.method public c(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->tt:I

    return-object p0
.end method

.method public c(Ljava/util/Map;)Lcom/byazt/me/da$c;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/byazt/me/da$c;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/byazt/me/da$c;->yp:Ljava/util/Map;

    :cond_0
    return-object p0
.end method

.method public c()Lcom/byazt/me/da;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    new-instance v0, Lcom/byazt/me/da;

    invoke-direct {v0, p0}, Lcom/byazt/me/da;-><init>(Lcom/byazt/me/da$c;)V

    return-object v0
.end method

.method public da(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->uj:I

    .line 2
    .line 3
    return-object p0
.end method

.method public i(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->ve:I

    .line 2
    .line 3
    return-object p0
.end method

.method public n(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->t:I

    .line 2
    .line 3
    return-object p0
.end method

.method public sl(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->n:I

    .line 2
    .line 3
    return-object p0
.end method

.method public sp(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->x:I

    .line 2
    .line 3
    return-object p0
.end method

.method public tt(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->i:I

    .line 2
    .line 3
    return-object p0
.end method

.method public uj(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->sl:I

    .line 2
    .line 3
    return-object p0
.end method

.method public ve(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->da:I

    .line 2
    .line 3
    return-object p0
.end method

.method public x(I)Lcom/byazt/me/da$c;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iput p1, p0, Lcom/byazt/me/da$c;->sp:I

    .line 2
    .line 3
    return-object p0
.end method
