.class public Lcom/byazt/ky/a$1;
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
        0xff
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ky/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ky/a;


# direct methods
.method public constructor <init>(Lcom/byazt/ky/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

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
    iget-object v0, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/byazt/ky/a;->c:Z

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

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
    const-string v1, "lifecycle_id"

    .line 41
    .line 42
    iget-object v2, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 43
    .line 44
    invoke-static {v2}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    .line 54
    .line 55
    const-string v1, "container_rect"

    .line 56
    .line 57
    iget-object v2, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 58
    .line 59
    invoke-static {v2}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    iget-object v2, v2, Lcom/byazt/ha/n;->c:Lorg/json/JSONObject;

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 66
    .line 67
    .line 68
    const-string v1, "image_rect"

    .line 69
    .line 70
    iget-object v2, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 71
    .line 72
    invoke-static {v2}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    iget-object v2, v2, Lcom/byazt/ha/n;->tt:Lorg/json/JSONObject;

    .line 77
    .line 78
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 79
    .line 80
    .line 81
    const-string v1, "video_rect"

    .line 82
    .line 83
    iget-object v2, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 84
    .line 85
    invoke-static {v2}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    iget-object v2, v2, Lcom/byazt/ha/n;->ve:Lorg/json/JSONObject;

    .line 90
    .line 91
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    .line 93
    .line 94
    iget-object v1, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 95
    .line 96
    invoke-static {v1}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    iget v1, v1, Lcom/byazt/ha/n;->uj:I

    .line 101
    .line 102
    if-lez v1, :cond_2

    .line 103
    .line 104
    const-string v1, "image_mode"

    .line 105
    .line 106
    iget-object v2, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 107
    .line 108
    invoke-static {v2}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    iget v2, v2, Lcom/byazt/ha/n;->uj:I

    .line 113
    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 119
    .line 120
    .line 121
    :cond_2
    const-string v1, "node_line_name"

    .line 122
    .line 123
    const-string v2, "view_node_line"

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    iget-object v1, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 129
    .line 130
    invoke-static {v1}, Lcom/byazt/ky/a;->c(Lcom/byazt/ky/a;)Lcom/byazt/ha/n;

    .line 131
    .line 132
    .line 133
    move-result-object v1

    .line 134
    iget-object v2, p0, Lcom/byazt/ky/a$1;->c:Lcom/byazt/ky/a;

    .line 135
    .line 136
    invoke-static {v2}, Lcom/byazt/ky/a;->tt(Lcom/byazt/ky/a;)Ljava/util/List;

    .line 137
    .line 138
    .line 139
    move-result-object v2

    .line 140
    const-string v3, "view"

    .line 141
    .line 142
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/qcl/uj;->c(Lorg/json/JSONObject;Lcom/byazt/ip/c;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    .line 144
    .line 145
    :catchall_0
    :cond_3
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
