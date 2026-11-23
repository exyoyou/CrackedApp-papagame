.class public Lcom/byazt/nhd/tt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/nhd/n;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x153,
        0xd
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Ljava/lang/String;J)Lcom/byazt/ete/ic;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public c(Ljava/lang/String;JID)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JID)",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;"
        }
    .end annotation

    .line 8
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 2
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Lcom/byazt/ete/ic;Ljava/lang/Object;Z)V
    .locals 0

    .line 3
    return-void
.end method

.method public c(Lcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 4
    return-void
.end method

.method public c(Lcom/byazt/ete/ic;)V
    .locals 0

    .line 5
    return-void
.end method

.method public c(Ljava/lang/String;Lcom/byazt/ete/ic;)V
    .locals 0

    .line 6
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 0

    .line 7
    const/4 p1, 0x0

    return p1
.end method

.method public tt(Lcom/byazt/dj/tt;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/byazt/dj/tt;",
            "Ljava/util/List<",
            "Lcom/byazt/ete/ic;",
            ">;)V"
        }
    .end annotation

    .line 1
    return-void
.end method

.method public tt(Ljava/lang/String;)V
    .locals 0

    .line 2
    return-void
.end method
