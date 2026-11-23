.class public Lcom/byazt/xyr/a;
.super Lcom/byazt/ji/tt;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x219,
        0x22
    }
.end annotation


# instance fields
.field public sl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/ji/tt;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public varargs c([Ljava/lang/Object;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_8

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_3

    .line 13
    .line 14
    :cond_0
    array-length v0, p1

    .line 15
    const/4 v2, -0x1

    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    aget-object v0, p1, v1

    .line 19
    .line 20
    instance-of v3, v0, Ljava/lang/Integer;

    .line 21
    .line 22
    if-eqz v3, :cond_1

    .line 23
    .line 24
    check-cast v0, Ljava/lang/Integer;

    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v0, -0x1

    .line 32
    :goto_0
    array-length v3, p1

    .line 33
    const/4 v4, 0x1

    .line 34
    if-le v3, v4, :cond_2

    .line 35
    .line 36
    aget-object p1, p1, v4

    .line 37
    .line 38
    instance-of v3, p1, Ljava/lang/Integer;

    .line 39
    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    check-cast p1, Ljava/lang/Integer;

    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    const/4 p1, -0x1

    .line 50
    :goto_1
    if-gtz v0, :cond_3

    .line 51
    .line 52
    iput-boolean v1, p0, Lcom/byazt/xyr/a;->sl:Z

    .line 53
    .line 54
    :cond_3
    iget-object v1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    .line 55
    .line 56
    const-string v3, "percent"

    .line 57
    .line 58
    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const-string v5, ""

    .line 63
    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    iget-object v1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    .line 67
    .line 68
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    if-eqz v1, :cond_4

    .line 73
    .line 74
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object v5

    .line 78
    :cond_4
    const/high16 v1, -0x40800000    # -1.0f

    .line 79
    .line 80
    invoke-static {v5, v1}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;F)F

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    const/4 v2, 0x0

    .line 85
    cmpl-float v2, v1, v2

    .line 86
    .line 87
    if-ltz v2, :cond_7

    .line 88
    .line 89
    const/high16 v2, 0x42c80000    # 100.0f

    .line 90
    .line 91
    div-float/2addr v1, v2

    .line 92
    int-to-float p1, p1

    .line 93
    mul-float v1, v1, p1

    .line 94
    .line 95
    int-to-float p1, v0

    .line 96
    cmpl-float p1, p1, v1

    .line 97
    .line 98
    if-ltz p1, :cond_7

    .line 99
    .line 100
    iget-boolean p1, p0, Lcom/byazt/xyr/a;->sl:Z

    .line 101
    .line 102
    if-nez p1, :cond_7

    .line 103
    .line 104
    iput-boolean v4, p0, Lcom/byazt/xyr/a;->sl:Z

    .line 105
    .line 106
    iget-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    .line 107
    .line 108
    if-eqz p1, :cond_7

    .line 109
    .line 110
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    .line 111
    .line 112
    iget-object v1, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    .line 113
    .line 114
    iget-object v2, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    .line 115
    .line 116
    invoke-virtual {v2}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    iget-object v3, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    .line 121
    .line 122
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :cond_5
    iget-object p1, p0, Lcom/byazt/ji/tt;->n:Ljava/util/Map;

    .line 127
    .line 128
    const-string v1, "interval"

    .line 129
    .line 130
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    if-eqz p1, :cond_6

    .line 135
    .line 136
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v5

    .line 140
    :cond_6
    invoke-static {v5, v2}, Lcom/byazt/cd/ve;->c(Ljava/lang/String;I)I

    .line 141
    .line 142
    .line 143
    move-result p1

    .line 144
    if-lt v0, p1, :cond_7

    .line 145
    .line 146
    iget-boolean p1, p0, Lcom/byazt/xyr/a;->sl:Z

    .line 147
    .line 148
    if-nez p1, :cond_7

    .line 149
    .line 150
    iput-boolean v4, p0, Lcom/byazt/xyr/a;->sl:Z

    .line 151
    .line 152
    iget-object p1, p0, Lcom/byazt/ji/tt;->c:Lcom/byazt/pm/sl;

    .line 153
    .line 154
    if-eqz p1, :cond_7

    .line 155
    .line 156
    iget-object v0, p0, Lcom/byazt/ji/tt;->tt:Lcom/byazt/xj/ve;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/byazt/ji/tt;->a:Ljava/lang/String;

    .line 159
    .line 160
    iget-object v2, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    .line 161
    .line 162
    invoke-virtual {v2}, Lcom/byazt/pm/a;->tt()Ljava/util/List;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    iget-object v3, p0, Lcom/byazt/ji/tt;->ve:Lcom/byazt/pm/a;

    .line 167
    .line 168
    invoke-interface {p1, v0, v1, v2, v3}, Lcom/byazt/pm/sl;->c(Lcom/byazt/xj/ve;Ljava/lang/String;Ljava/util/List;Lcom/byazt/pm/a;)V

    .line 169
    .line 170
    .line 171
    :cond_7
    :goto_2
    return v4

    .line 172
    :cond_8
    :goto_3
    return v1
.end method
