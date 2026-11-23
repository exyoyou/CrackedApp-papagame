.class public final Lcom/kwad/components/core/innerEc/live/widget/g$d;
.super Lcom/kwad/components/core/innerEc/live/widget/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kwad/components/core/innerEc/live/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field private final Za:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/l;",
            ">;"
        }
    .end annotation
.end field

.field private volatile Zb:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/k;",
            ">;"
        }
    .end annotation
.end field

.field private volatile Zc:Z

.field private final context:Landroid/content/Context;


# direct methods
.method private o(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/l;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-eqz v4, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v4

    .line 22
    check-cast v4, Lcom/kwad/components/core/innerEc/live/widget/l;

    .line 23
    .line 24
    iget v4, v4, Lcom/kwad/components/core/innerEc/live/widget/l;->aad:I

    .line 25
    .line 26
    add-int/2addr v3, v4

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 34
    .line 35
    .line 36
    move-result-object v4

    .line 37
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v5

    .line 41
    const/high16 v6, 0x3f800000    # 1.0f

    .line 42
    .line 43
    if-eqz v5, :cond_1

    .line 44
    .line 45
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v5

    .line 49
    check-cast v5, Lcom/kwad/components/core/innerEc/live/widget/l;

    .line 50
    .line 51
    iget v7, v5, Lcom/kwad/components/core/innerEc/live/widget/l;->aad:I

    .line 52
    .line 53
    int-to-float v7, v7

    .line 54
    mul-float v7, v7, v6

    .line 55
    .line 56
    int-to-float v6, v3

    .line 57
    div-float/2addr v7, v6

    .line 58
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 59
    .line 60
    mul-float v8, v7, v6

    .line 61
    .line 62
    mul-float v8, v8, v6

    .line 63
    .line 64
    iget-object v6, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->context:Landroid/content/Context;

    .line 65
    .line 66
    iget v5, v5, Lcom/kwad/components/core/innerEc/live/widget/l;->aae:I

    .line 67
    .line 68
    int-to-float v5, v5

    .line 69
    invoke-static {v6, v5}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    int-to-float v5, v5

    .line 74
    div-float/2addr v8, v5

    .line 75
    float-to-int v5, v8

    .line 76
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v5

    .line 80
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    new-instance v5, Lcom/kwad/components/core/innerEc/live/widget/k;

    .line 84
    .line 85
    invoke-direct {v5}, Lcom/kwad/components/core/innerEc/live/widget/k;-><init>()V

    .line 86
    .line 87
    .line 88
    iput v7, v5, Lcom/kwad/components/core/innerEc/live/widget/k;->aac:F

    .line 89
    .line 90
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    const/4 v4, 0x0

    .line 99
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 100
    .line 101
    .line 102
    move-result v5

    .line 103
    if-eqz v5, :cond_2

    .line 104
    .line 105
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v5

    .line 109
    check-cast v5, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v5

    .line 115
    add-int/2addr v4, v5

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    :goto_3
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v3

    .line 121
    if-ge v2, v3, :cond_3

    .line 122
    .line 123
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 124
    .line 125
    .line 126
    move-result-object v3

    .line 127
    check-cast v3, Lcom/kwad/components/core/innerEc/live/widget/k;

    .line 128
    .line 129
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object v5

    .line 133
    check-cast v5, Ljava/lang/Integer;

    .line 134
    .line 135
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 136
    .line 137
    .line 138
    move-result v5

    .line 139
    int-to-float v5, v5

    .line 140
    mul-float v5, v5, v6

    .line 141
    .line 142
    int-to-float v7, v4

    .line 143
    div-float/2addr v5, v7

    .line 144
    iput v5, v3, Lcom/kwad/components/core/innerEc/live/widget/k;->aab:F

    .line 145
    .line 146
    add-int/lit8 v2, v2, 0x1

    .line 147
    .line 148
    goto :goto_3

    .line 149
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    const-string v2, "covertSegmentsToPercentDataListsegments "

    .line 152
    .line 153
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    const-string p1, "percentDataList"

    .line 160
    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p1

    .line 171
    const-string v0, "LiveCommentScrollSpeedStrategy"

    .line 172
    .line 173
    invoke-static {v0, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    .line 175
    .line 176
    return-object v1
.end method


# virtual methods
.method public final bi(I)I
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Za:Ljava/util/List;

    .line 3
    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-eqz v3, :cond_0

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    check-cast v3, Lcom/kwad/components/core/innerEc/live/widget/l;

    .line 20
    .line 21
    iget v3, v3, Lcom/kwad/components/core/innerEc/live/widget/l;->aad:I

    .line 22
    .line 23
    add-int/2addr v2, v3

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    if-lez v2, :cond_2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Za:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    if-eqz v4, :cond_1

    .line 39
    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v4

    .line 44
    check-cast v4, Lcom/kwad/components/core/innerEc/live/widget/l;

    .line 45
    .line 46
    iget v5, v4, Lcom/kwad/components/core/innerEc/live/widget/l;->aad:I

    .line 47
    .line 48
    const/high16 v6, 0x3f800000    # 1.0f

    .line 49
    .line 50
    int-to-float v5, v5

    .line 51
    mul-float v5, v5, v6

    .line 52
    .line 53
    int-to-float v6, v2

    .line 54
    div-float/2addr v5, v6

    .line 55
    int-to-float v6, p1

    .line 56
    mul-float v6, v6, v5

    .line 57
    .line 58
    const/high16 v5, 0x447a0000    # 1000.0f

    .line 59
    .line 60
    mul-float v6, v6, v5

    .line 61
    .line 62
    iget-object v5, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->context:Landroid/content/Context;

    .line 63
    .line 64
    iget v4, v4, Lcom/kwad/components/core/innerEc/live/widget/l;->aae:I

    .line 65
    .line 66
    int-to-float v4, v4

    .line 67
    invoke-static {v5, v4}, Lcom/kwad/sdk/c/a/a;->a(Landroid/content/Context;F)I

    .line 68
    .line 69
    .line 70
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    int-to-float v4, v4

    .line 72
    div-float/2addr v6, v4

    .line 73
    float-to-int v4, v6

    .line 74
    add-int/2addr v3, v4

    .line 75
    goto :goto_1

    .line 76
    :cond_1
    move v0, v3

    .line 77
    :cond_2
    return v0

    .line 78
    :catch_0
    move-exception p1

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v2, "SegmentsSpeed calculateScrollTime error"

    .line 82
    .line 83
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const-string v1, "LiveCommentScrollSpeedStrategy"

    .line 94
    .line 95
    invoke-static {v1, p1}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    return v0
.end method

.method public final sV()Ljava/util/List;
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/kwad/components/core/innerEc/live/widget/k;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Zc:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    monitor-enter p0

    .line 6
    :try_start_0
    iget-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Zc:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    :try_start_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Za:Ljava/util/List;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/kwad/components/core/innerEc/live/widget/g$d;->o(Ljava/util/List;)Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Zb:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception v0

    .line 20
    :try_start_2
    const-string v1, "LiveCommentScrollSpeedStrategy"

    .line 21
    .line 22
    new-instance v2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v3, "covertSegmentsToPercentDataList error"

    .line 25
    .line 26
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v1, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Zb:Ljava/util/List;

    .line 41
    .line 42
    :goto_0
    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Zc:Z

    .line 44
    .line 45
    :cond_0
    monitor-exit p0

    .line 46
    goto :goto_1

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 49
    throw v0

    .line 50
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Zb:Ljava/util/List;

    .line 51
    .line 52
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "SegmentsSpeed(segments="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/kwad/components/core/innerEc/live/widget/g$d;->Za:Ljava/util/List;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ")"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
