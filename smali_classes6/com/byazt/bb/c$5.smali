.class public Lcom/byazt/bb/c$5;
.super Lcom/byazt/wrq/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x64
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/c;->ve(Lcom/byazt/ete/uj;Ljava/util/Map;)Lcom/byazt/wrq/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ete/uj;

.field public final synthetic tt:Ljava/util/Map;

.field public final synthetic ve:Lcom/byazt/bb/c;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/c;Lcom/byazt/ete/uj;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/c$5;->ve:Lcom/byazt/bb/c;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/bb/c$5;->c:Lcom/byazt/ete/uj;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/byazt/bb/c$5;->tt:Ljava/util/Map;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/byazt/wrq/c;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    iget-object p1, p0, Lcom/byazt/bb/c$5;->ve:Lcom/byazt/bb/c;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/byazt/bb/c$5;->c:Lcom/byazt/ete/uj;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/byazt/bb/c$5;->tt:Ljava/util/Map;

    .line 9
    .line 10
    invoke-virtual {p1, v1, v0, v2}, Lcom/byazt/bb/c;->c(Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    iget-object p1, p0, Lcom/byazt/bb/c$5;->ve:Lcom/byazt/bb/c;

    .line 18
    .line 19
    iget-object v1, p0, Lcom/byazt/bb/c$5;->tt:Ljava/util/Map;

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1}, Lcom/byazt/bb/c;->c(Lcom/byazt/wrq/c;Ljava/util/Map;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 0

    return-void
.end method
