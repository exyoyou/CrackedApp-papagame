.class public Lcom/byazt/ky/uj$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/aas/c$tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2a5,
        0x63
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ky/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ky/uj;


# direct methods
.method public constructor <init>(Lcom/byazt/ky/uj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAppBackground()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/omf/x;->d()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/byazt/ky/uj;->uj:Z

    .line 15
    .line 16
    if-nez v1, :cond_2

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    iget-object v0, v0, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 36
    .line 37
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v1, "ad_load_id"

    .line 41
    .line 42
    iget-object v2, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    iget-object v2, v2, Lcom/byazt/ha/ve;->c:Ljava/lang/String;

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    .line 52
    .line 53
    const-string v1, "ad_show_id"

    .line 54
    .line 55
    iget-object v2, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 56
    .line 57
    invoke-static {v2}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    invoke-virtual {v2}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v1, "node_line_name"

    .line 69
    .line 70
    const-string v2, "ad_node_line"

    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    .line 74
    .line 75
    iget-object v1, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 76
    .line 77
    invoke-static {v1}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1, v2, v0}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 89
    .line 90
    invoke-static {v1}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    iget-object v2, p0, Lcom/byazt/ky/uj$1;->c:Lcom/byazt/ky/uj;

    .line 95
    .line 96
    invoke-static {v2}, Lcom/byazt/ky/uj;->c(Lcom/byazt/ky/uj;)Lcom/byazt/ha/ve;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v2, v2, Lcom/byazt/ha/ve;->a:Ljava/util/List;

    .line 101
    .line 102
    const-string v3, "ad_show"

    .line 103
    .line 104
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/qcl/uj;->c(Lorg/json/JSONObject;Lcom/byazt/ip/c;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method public onAppExit()V
    .locals 0

    return-void
.end method

.method public onAppForeground()V
    .locals 0

    return-void
.end method

.method public onAppStart()V
    .locals 0

    return-void
.end method
