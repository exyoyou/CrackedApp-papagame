.class public Lcom/byazt/ky/x$1;
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
        0x1e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/ky/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/ky/x;


# direct methods
.method public constructor <init>(Lcom/byazt/ky/x;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

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
    iget-object v0, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 13
    .line 14
    iget-boolean v1, v0, Lcom/byazt/ky/x;->c:Z

    .line 15
    .line 16
    if-nez v1, :cond_3

    .line 17
    .line 18
    invoke-static {v0}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_3

    .line 23
    .line 24
    iget-object v0, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 25
    .line 26
    invoke-static {v0}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

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
    goto/16 :goto_0

    .line 35
    .line 36
    :cond_1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 37
    .line 38
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .line 40
    .line 41
    const-string v1, "lifecycle_id"

    .line 42
    .line 43
    iget-object v2, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v2}, Lcom/byazt/ip/c;->c()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    iget-object v1, v1, Lcom/byazt/ha/x;->tt:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-nez v1, :cond_2

    .line 69
    .line 70
    const-string v1, "style_id"

    .line 71
    .line 72
    iget-object v2, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 73
    .line 74
    invoke-static {v2}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    iget-object v2, v2, Lcom/byazt/ha/x;->tt:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    :cond_2
    const-string v1, "style_category"

    .line 84
    .line 85
    iget-object v2, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 86
    .line 87
    invoke-static {v2}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    iget v2, v2, Lcom/byazt/ha/x;->ve:I

    .line 92
    .line 93
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    .line 99
    .line 100
    const-string v1, "component_type"

    .line 101
    .line 102
    iget-object v2, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 103
    .line 104
    invoke-static {v2}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    iget v2, v2, Lcom/byazt/ha/x;->c:I

    .line 109
    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    .line 116
    .line 117
    const-string v1, "render_sequence"

    .line 118
    .line 119
    iget-object v2, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 120
    .line 121
    invoke-static {v2}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    iget v2, v2, Lcom/byazt/ha/x;->uj:I

    .line 126
    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    .line 133
    .line 134
    const-string v1, "display_area"

    .line 135
    .line 136
    iget-object v2, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 137
    .line 138
    invoke-static {v2}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    iget v2, v2, Lcom/byazt/ha/x;->n:I

    .line 143
    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    const-string v1, "node_line_name"

    .line 152
    .line 153
    const-string v2, "easy_play_node_line"

    .line 154
    .line 155
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 156
    .line 157
    .line 158
    iget-object v1, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 159
    .line 160
    invoke-static {v1}, Lcom/byazt/ky/x;->c(Lcom/byazt/ky/x;)Lcom/byazt/ha/x;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    iget-object v2, p0, Lcom/byazt/ky/x$1;->c:Lcom/byazt/ky/x;

    .line 165
    .line 166
    invoke-static {v2}, Lcom/byazt/ky/x;->tt(Lcom/byazt/ky/x;)Ljava/util/List;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    const-string v3, "easy_play"

    .line 171
    .line 172
    invoke-static {v0, v1, v2, v3}, Lcom/byazt/qcl/uj;->c(Lorg/json/JSONObject;Lcom/byazt/ip/c;Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .line 174
    .line 175
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
