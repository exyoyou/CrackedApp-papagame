.class public Lcom/byazt/kyz/ve$8;
.super Lcom/byazt/nc/n;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x222,
        0x292
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/kyz/ve;->getDownloadStatusController()Lcom/byazt/nc/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/kyz/ve;


# direct methods
.method public constructor <init>(Lcom/byazt/kyz/ve;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/byazt/nc/n;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kyz/ve;->da(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/kyz/ve;->sp(Lcom/byazt/kyz/ve;)Lcom/byazt/omf/my;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/omf/my;->c()Lcom/byazt/pop/ve;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    invoke-interface {v0}, Lcom/byazt/pop/ve;->n()V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method

.method public changeDownloadStatus()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/byazt/kyz/ve;->da(Lcom/byazt/kyz/ve;)Lcom/byazt/lsp/c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    iget-object v0, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/byazt/kyz/ve;->sp(Lcom/byazt/kyz/ve;)Lcom/byazt/omf/my;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/byazt/omf/my;->c()Lcom/byazt/pop/ve;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    instance-of v1, v0, Lcom/byazt/wz/c;

    .line 20
    .line 21
    const/4 v2, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    move-object v1, v0

    .line 25
    check-cast v1, Lcom/byazt/wz/c;

    .line 26
    .line 27
    invoke-virtual {v1}, Lcom/byazt/wz/c;->yp()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-eq v2, v1, :cond_0

    .line 32
    .line 33
    const/4 v3, 0x4

    .line 34
    if-eq v3, v1, :cond_0

    .line 35
    .line 36
    const/4 v3, 0x6

    .line 37
    if-eq v3, v1, :cond_0

    .line 38
    .line 39
    const/4 v3, 0x7

    .line 40
    if-ne v3, v1, :cond_1

    .line 41
    .line 42
    :cond_0
    new-instance v9, Ljava/util/HashMap;

    .line 43
    .line 44
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v1, "downloadstatuscontroller_type"

    .line 48
    .line 49
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-interface {v9, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v1, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 57
    .line 58
    invoke-static {v1}, Lcom/byazt/kyz/ve;->i(Lcom/byazt/kyz/ve;)I

    .line 59
    .line 60
    .line 61
    move-result v3

    .line 62
    invoke-static {v1, v3}, Lcom/byazt/kyz/ve;->c(Lcom/byazt/kyz/ve;I)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v7

    .line 66
    new-instance v1, Lcom/byazt/ete/i$c;

    .line 67
    .line 68
    invoke-direct {v1}, Lcom/byazt/ete/i$c;-><init>()V

    .line 69
    .line 70
    .line 71
    iget-object v3, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 72
    .line 73
    invoke-static {v3}, Lcom/byazt/kyz/ve;->x(Lcom/byazt/kyz/ve;)Landroid/content/Context;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    invoke-static {v3}, Lcom/byazt/aas/pf;->a(Landroid/content/Context;)F

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    const-string v4, "device_info_new"

    .line 82
    .line 83
    invoke-static {v4}, Lcom/byazt/ut/uj;->getService(Ljava/lang/String;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v4

    .line 87
    check-cast v4, Lcom/byazt/dna/u;

    .line 88
    .line 89
    invoke-interface {v4}, Lcom/byazt/dna/u;->getDisplayDpi()I

    .line 90
    .line 91
    .line 92
    move-result v4

    .line 93
    iget-object v5, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 94
    .line 95
    invoke-static {v5}, Lcom/byazt/kyz/ve;->x(Lcom/byazt/kyz/ve;)Landroid/content/Context;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    invoke-static {v5}, Lcom/byazt/aas/pf;->sp(Landroid/content/Context;)F

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    invoke-virtual {v1, v3}, Lcom/byazt/ete/i$c;->c(F)Lcom/byazt/ete/i$c;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v1, v4}, Lcom/byazt/ete/i$c;->tt(I)Lcom/byazt/ete/i$c;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {v1, v5}, Lcom/byazt/ete/i$c;->tt(F)Lcom/byazt/ete/i$c;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    iget-object v3, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 116
    .line 117
    invoke-static {v3}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 118
    .line 119
    .line 120
    move-result-object v3

    .line 121
    invoke-static {v3}, Lcom/byazt/wz/x;->tt(Lcom/byazt/ete/ic;)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    invoke-virtual {v1, v3}, Lcom/byazt/ete/i$c;->c(I)Lcom/byazt/ete/i$c;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v1}, Lcom/byazt/ete/i$c;->c()Lcom/byazt/ete/i;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const-string v4, "click"

    .line 134
    .line 135
    iget-object v1, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 136
    .line 137
    invoke-static {v1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    const/4 v8, 0x1

    .line 142
    const/4 v10, 0x1

    .line 143
    const/4 v11, 0x0

    .line 144
    const/4 v12, 0x0

    .line 145
    invoke-static/range {v4 .. v12}, Lcom/byazt/ddx/uj;->c(Ljava/lang/String;Lcom/byazt/ete/ic;Lcom/byazt/ete/i;Ljava/lang/String;ZLjava/util/Map;IZZ)V

    .line 146
    .line 147
    .line 148
    :cond_1
    if-eqz v0, :cond_2

    .line 149
    .line 150
    invoke-interface {v0, v2}, Lcom/byazt/pop/ve;->ve(Z)V

    .line 151
    .line 152
    .line 153
    iget-object v1, p0, Lcom/byazt/kyz/ve$8;->c:Lcom/byazt/kyz/ve;

    .line 154
    .line 155
    invoke-static {v1}, Lcom/byazt/kyz/ve;->n(Lcom/byazt/kyz/ve;)Lcom/byazt/ete/ic;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v1}, Lcom/byazt/aas/nb;->qy(Lcom/byazt/ete/ic;)Lorg/json/JSONObject;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    const/4 v2, 0x0

    .line 164
    invoke-interface {v0, v1, v2}, Lcom/byazt/pop/ve;->c(Lorg/json/JSONObject;Z)V

    .line 165
    .line 166
    .line 167
    :cond_2
    return-void
.end method
