.class public Lcom/byazt/ky/tt$1;
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
        0x1c
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ky/tt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ky/tt;


# direct methods
.method public constructor <init>(Lcom/byazt/ky/tt;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

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
    iget-object v0, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/byazt/ky/tt;->c(Lcom/byazt/ky/tt;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

    .line 21
    .line 22
    iget-boolean v1, v0, Lcom/byazt/ky/tt;->c:Z

    .line 23
    .line 24
    if-nez v1, :cond_2

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ky/tt;->tt(Lcom/byazt/ky/tt;)Lcom/byazt/ha/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_2

    .line 31
    .line 32
    iget-object v0, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/byazt/ky/tt;->tt(Lcom/byazt/ky/tt;)Lcom/byazt/ha/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v0, v0, Lcom/byazt/ip/c;->i:Lcom/byazt/ete/ic;

    .line 39
    .line 40
    if-nez v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 44
    .line 45
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v1, "lifecycle_id"

    .line 49
    .line 50
    iget-object v2, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

    .line 51
    .line 52
    invoke-static {v2}, Lcom/byazt/ky/tt;->tt(Lcom/byazt/ky/tt;)Lcom/byazt/ha/c;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    invoke-virtual {v2}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    const-string v1, "download_type"

    .line 64
    .line 65
    iget-object v2, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

    .line 66
    .line 67
    invoke-static {v2}, Lcom/byazt/ky/tt;->tt(Lcom/byazt/ky/tt;)Lcom/byazt/ha/c;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v2, v2, Lcom/byazt/ha/c;->c:I

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    .line 79
    .line 80
    const-string v1, "node_line_name"

    .line 81
    .line 82
    const-string v2, "download_node_line"

    .line 83
    .line 84
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    iget-object v1, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

    .line 88
    .line 89
    invoke-static {v1}, Lcom/byazt/ky/tt;->tt(Lcom/byazt/ky/tt;)Lcom/byazt/ha/c;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/byazt/ky/tt$1;->c:Lcom/byazt/ky/tt;

    .line 94
    .line 95
    invoke-static {v2}, Lcom/byazt/ky/tt;->ve(Lcom/byazt/ky/tt;)Ljava/util/List;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    const-string v3, "download"

    .line 100
    .line 101
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/qcl/uj;->c(Lorg/json/JSONObject;Lcom/byazt/ip/c;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 102
    .line 103
    .line 104
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
