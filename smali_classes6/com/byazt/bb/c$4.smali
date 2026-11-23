.class public Lcom/byazt/bb/c$4;
.super Lcom/byazt/bwm/sp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x93,
        0x62
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/bb/c;->ve(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Ljava/util/Map;

.field public final synthetic tt:Lcom/byazt/bb/c;


# direct methods
.method public constructor <init>(Lcom/byazt/bb/c;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/byazt/bb/c$4;->c:Ljava/util/Map;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/byazt/bwm/sp;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->c()Lcom/byazt/omf/gu;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 12
    .line 13
    iget-object v2, v2, Lcom/byazt/bb/c;->a:Ljava/lang/String;

    .line 14
    .line 15
    invoke-interface {v0, v1, v2}, Lcom/byazt/omf/gu;->c(Lcom/byazt/ete/ic;Ljava/lang/String;)Lcom/byazt/ete/uj;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/byazt/ete/uj;->sp()Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 28
    .line 29
    iget-boolean v2, v1, Lcom/byazt/bb/c;->sl:Z

    .line 30
    .line 31
    if-eqz v2, :cond_0

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/bb/c$4;->c:Ljava/util/Map;

    .line 34
    .line 35
    invoke-static {v1, v0, v2}, Lcom/byazt/bb/c;->c(Lcom/byazt/bb/c;Lcom/byazt/ete/uj;Ljava/util/Map;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    iget-object v1, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/byazt/bb/c$4;->c:Ljava/util/Map;

    .line 41
    .line 42
    invoke-static {v1, v0, v2}, Lcom/byazt/bb/c;->tt(Lcom/byazt/bb/c;Lcom/byazt/ete/uj;Ljava/util/Map;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_1
    iget-object v0, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/byazt/bb/c;->c(Lcom/byazt/bb/c;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const/4 v1, 0x2

    .line 53
    invoke-static {v0, v1}, Lcom/byazt/rgb/c;->uj(Ljava/lang/String;I)V

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 57
    .line 58
    iget-object v0, v0, Lcom/byazt/bb/c;->tt:Ljava/util/Map;

    .line 59
    .line 60
    sget-object v1, Lcom/byazt/cr/tt;->uj:Lcom/byazt/cr/tt;

    .line 61
    .line 62
    invoke-static {v0, v1}, Lcom/byazt/ppf/ve;->c(Ljava/util/Map;Lcom/byazt/cr/c;)V

    .line 63
    .line 64
    .line 65
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/byazt/bb/c$4;->tt:Lcom/byazt/bb/c;

    .line 70
    .line 71
    invoke-virtual {v1}, Lcom/byazt/bb/c;->tt()Lcom/byazt/ete/ic;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    const-string v2, "uchain_2"

    .line 76
    .line 77
    invoke-static {v0, v1, v2}, Lcom/byazt/wz/x;->c(Landroid/content/Context;Lcom/byazt/ete/ic;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method
