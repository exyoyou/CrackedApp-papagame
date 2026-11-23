.class public Lcom/byazt/ouz/da$2;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1b,
        0x1ee
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ouz/da;->da()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ouz/da;


# direct methods
.method public constructor <init>(Lcom/byazt/ouz/da;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ouz/da$2;->c:Lcom/byazt/ouz/da;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/ouz/da$2;->c:Lcom/byazt/ouz/da;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/ouz/da;->tt(Lcom/byazt/ouz/da;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/byazt/ouz/da$2;->c:Lcom/byazt/ouz/da;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/byazt/ouz/da;->ve(Lcom/byazt/ouz/da;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/byazt/ouz/da$2;->c:Lcom/byazt/ouz/da;

    .line 14
    .line 15
    invoke-static {v2}, Lcom/byazt/ouz/da;->c(Lcom/byazt/ouz/da;)Lcom/byazt/ete/ic;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    invoke-static {v0, v1, v2}, Lcom/byazt/ouz/i;->c(Ljava/lang/String;Ljava/lang/String;Lcom/byazt/ete/ic;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/byazt/ouz/da$2;->c:Lcom/byazt/ouz/da;

    .line 23
    .line 24
    invoke-static {v0}, Lcom/byazt/ouz/da;->c(Lcom/byazt/ouz/da;)Lcom/byazt/ete/ic;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v1, p0, Lcom/byazt/ouz/da$2;->c:Lcom/byazt/ouz/da;

    .line 29
    .line 30
    invoke-static {v1}, Lcom/byazt/ouz/da;->tt(Lcom/byazt/ouz/da;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    const-string v2, "dynamic_backup_render"

    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/ddx/uj;->sp(Lcom/byazt/ete/ic;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    return-void
.end method
