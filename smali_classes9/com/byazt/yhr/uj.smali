.class public Lcom/byazt/yhr/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/lz/da;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x28d,
        0xf
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/je/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/je/tt;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/yhr/uj;->c:Lcom/byazt/je/tt;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCustomAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/uj;->c:Lcom/byazt/je/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/tt;->c()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getCustomDevImeis()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/uj;->c:Lcom/byazt/je/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/tt;->tt()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public isCanUseOaid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/uj;->c:Lcom/byazt/je/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/tt;->ve()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isLimitPersonalAds()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/uj;->c:Lcom/byazt/je/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/tt;->uj()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public isProgrammaticRecommend()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/yhr/uj;->c:Lcom/byazt/je/tt;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/je/tt;->n()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
