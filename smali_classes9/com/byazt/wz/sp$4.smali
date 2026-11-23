.class public Lcom/byazt/wz/sp$4;
.super Lcom/byazt/wrq/c;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x41,
        0x253
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/wz/sp;->my()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/wz/sp;


# direct methods
.method public constructor <init>(Lcom/byazt/wz/sp;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/wz/sp$4;->tt:Lcom/byazt/wz/sp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/wz/sp$4;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0}, Lcom/byazt/wrq/c;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public handleComplianceDialog(Z)V
    .locals 0

    return-void
.end method

.method public handleMarketFailedComplianceDialog()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/wz/sp$4;->c:Ljava/util/Map;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/byazt/wz/sp$4;->tt:Lcom/byazt/wz/sp;

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
    iget-object v0, p0, Lcom/byazt/wz/sp$4;->tt:Lcom/byazt/wz/sp;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/byazt/wz/sp;->x()Lcom/byazt/yzg/ve;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iget-object v1, p0, Lcom/byazt/wz/sp$4;->tt:Lcom/byazt/wz/sp;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/byazt/wz/sp;->a(Lcom/byazt/wz/sp;)Lcom/byazt/yzg/c;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Lcom/byazt/yzg/ve;->c(Lcom/byazt/yzg/c;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/byazt/wz/sp$4;->c:Ljava/util/Map;

    .line 32
    .line 33
    const-string v1, "downloadButtonClickListener"

    .line 34
    .line 35
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/byazt/wz/sp$4;->tt:Lcom/byazt/wz/sp;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/byazt/wz/sp;->sp(Lcom/byazt/wz/sp;)Z

    .line 41
    .line 42
    .line 43
    move-result v0

    .line 44
    if-eqz v0, :cond_1

    .line 45
    .line 46
    return-void

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/byazt/wz/sp$4;->tt:Lcom/byazt/wz/sp;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-static {v0, v1}, Lcom/byazt/wz/sp;->c(Lcom/byazt/wz/sp;Lcom/byazt/ete/uj;)V

    .line 51
    .line 52
    .line 53
    return-void
.end method
