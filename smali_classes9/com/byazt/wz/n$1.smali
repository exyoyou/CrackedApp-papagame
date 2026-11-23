.class public Lcom/byazt/wz/n$1;
.super Lcom/byazt/wrq/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0xdb
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/n;->a(Lorg/json/JSONObject;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/aas/zb;

.field public final synthetic tt:Z

.field public final synthetic ve:Lcom/byazt/wz/n;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/n;Lcom/byazt/aas/zb;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/n$1;->ve:Lcom/byazt/wz/n;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/n$1;->c:Lcom/byazt/aas/zb;

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/byazt/wz/n$1;->tt:Z

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
    .locals 0

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/n$1;->c:Lcom/byazt/aas/zb;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/n$1;->ve:Lcom/byazt/wz/n;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/byazt/wz/uj;->gt()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    invoke-static {v1, v0}, Lcom/byazt/qt/ve;->c(II)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/byazt/wz/n$1;->ve:Lcom/byazt/wz/n;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/wz/c;->x()Lcom/byazt/yzg/ve;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/byazt/wz/n$1;->ve:Lcom/byazt/wz/n;

    .line 23
    .line 24
    invoke-virtual {v1}, Lcom/byazt/wz/c;->m()Lcom/byazt/yzg/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/c;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/wz/n$1;->c:Lcom/byazt/aas/zb;

    .line 32
    .line 33
    const-string v1, "downloadButtonClickListener"

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/wz/n$1;->ve:Lcom/byazt/wz/n;

    .line 39
    .line 40
    iget-object v1, p0, Lcom/byazt/wz/n$1;->c:Lcom/byazt/aas/zb;

    .line 41
    .line 42
    iget-boolean v2, p0, Lcom/byazt/wz/n$1;->tt:Z

    .line 43
    .line 44
    const/4 v3, 0x0

    .line 45
    invoke-static {v0, v3, v3, v1, v2}, Lcom/byazt/wz/n;->c(Lcom/byazt/wz/n;Lcom/byazt/ete/uj;Lcom/byazt/wrq/c;Ljava/util/Map;Z)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/n$1;->ve:Lcom/byazt/wz/n;

    .line 53
    .line 54
    iget-object v1, p0, Lcom/byazt/wz/n$1;->c:Lcom/byazt/aas/zb;

    .line 55
    .line 56
    invoke-static {v0, v1}, Lcom/byazt/wz/n;->c(Lcom/byazt/wz/n;Ljava/util/Map;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
