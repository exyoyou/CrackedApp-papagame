.class public Lcom/byazt/eh/ve;
.super Lcom/byazt/eh/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x378,
        0x36
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/byazt/eh/c<",
        "Lcom/byazt/vb/tt;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/byazt/rz/c;Ljava/util/Queue;Lcom/byazt/vb/n;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/rz/c;",
            "Ljava/util/Queue<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/byazt/vb/n;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "HighAd"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/byazt/eh/c;-><init>(Lcom/byazt/rz/c;Ljava/util/Queue;Ljava/lang/String;Lcom/byazt/vb/n;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/vb/tt;)Z
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/byazt/ml/c;->ve(Lcom/byazt/vb/tt;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
