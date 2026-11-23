.class Lcom/beizi/fusion/tool/an$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/tool/an;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/an;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/an;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/an$1;->a:Lcom/beizi/fusion/tool/an;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$1;->a:Lcom/beizi/fusion/tool/an;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/tool/an$1;->a:Lcom/beizi/fusion/tool/an;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/tool/an;->b(Lcom/beizi/fusion/tool/an;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    int-to-double v0, v0

    .line 17
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 18
    .line 19
    .line 20
    .line 21
    .line 22
    mul-double v0, v0, v2

    .line 23
    .line 24
    double-to-int v0, v0

    .line 25
    div-int/lit8 v0, v0, 0x2

    .line 26
    .line 27
    iget-object v1, p0, Lcom/beizi/fusion/tool/an$1;->a:Lcom/beizi/fusion/tool/an;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/beizi/fusion/tool/an;->c(Lcom/beizi/fusion/tool/an;)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    int-to-double v1, v1

    .line 34
    const-wide v3, 0x3fe999999999999aL    # 0.8

    .line 35
    .line 36
    .line 37
    .line 38
    .line 39
    mul-double v1, v1, v3

    .line 40
    .line 41
    double-to-int v1, v1

    .line 42
    filled-new-array {v0, v1}, [I

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/beizi/fusion/tool/an$1;->a:Lcom/beizi/fusion/tool/an;

    .line 47
    .line 48
    invoke-static {v1}, Lcom/beizi/fusion/tool/an;->b(Lcom/beizi/fusion/tool/an;)I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    int-to-double v1, v1

    .line 53
    const-wide v3, 0x3feccccccccccccdL    # 0.9

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    mul-double v1, v1, v3

    .line 59
    .line 60
    double-to-int v1, v1

    .line 61
    div-int/lit8 v1, v1, 0x2

    .line 62
    .line 63
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$1;->a:Lcom/beizi/fusion/tool/an;

    .line 64
    .line 65
    invoke-static {v2}, Lcom/beizi/fusion/tool/an;->d(Lcom/beizi/fusion/tool/an;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    const/high16 v3, 0x42820000    # 65.0f

    .line 70
    .line 71
    invoke-static {v2, v3}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    div-int/lit8 v2, v2, 0x2

    .line 76
    .line 77
    invoke-static {v1, v2}, Lcom/beizi/fusion/tool/ai;->a(II)[I

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    iget-object v2, p0, Lcom/beizi/fusion/tool/an$1;->a:Lcom/beizi/fusion/tool/an;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    aget v4, v1, v3

    .line 85
    .line 86
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    const/4 v5, 0x1

    .line 91
    aget v6, v1, v5

    .line 92
    .line 93
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    aget v7, v1, v3

    .line 98
    .line 99
    aget v8, v0, v3

    .line 100
    .line 101
    add-int/2addr v7, v8

    .line 102
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    aget v8, v1, v5

    .line 107
    .line 108
    aget v9, v0, v5

    .line 109
    .line 110
    add-int/2addr v8, v9

    .line 111
    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v8

    .line 115
    aget v9, v1, v3

    .line 116
    .line 117
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v9

    .line 121
    aget v10, v1, v5

    .line 122
    .line 123
    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v10

    .line 127
    aget v11, v1, v3

    .line 128
    .line 129
    aget v3, v0, v3

    .line 130
    .line 131
    add-int/2addr v11, v3

    .line 132
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v11

    .line 136
    aget v1, v1, v5

    .line 137
    .line 138
    aget v0, v0, v5

    .line 139
    .line 140
    add-int/2addr v1, v0

    .line 141
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    move-object v3, v4

    .line 146
    move-object v4, v6

    .line 147
    move-object v5, v7

    .line 148
    move-object v6, v8

    .line 149
    move-object v7, v9

    .line 150
    move-object v8, v10

    .line 151
    move-object v9, v11

    .line 152
    move-object v10, v0

    .line 153
    invoke-static/range {v2 .. v10}, Lcom/beizi/fusion/tool/an;->a(Lcom/beizi/fusion/tool/an;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .line 155
    .line 156
    return-void
.end method
