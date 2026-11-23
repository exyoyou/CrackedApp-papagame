.class Lcom/join/mgps/control/RhythmLayout$b$a;
.super Ljava/util/TimerTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/control/RhythmLayout$b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/control/RhythmLayout$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/control/RhythmLayout$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 8
    .line 9
    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->c(Lcom/join/mgps/control/RhythmLayout;)J

    .line 10
    .line 11
    .line 12
    move-result-wide v2

    .line 13
    sub-long/2addr v0, v2

    .line 14
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 15
    .line 16
    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout$b;->a(Lcom/join/mgps/control/RhythmLayout$b;)Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-eqz v2, :cond_3

    .line 21
    .line 22
    const-wide/16 v2, 0x3e8

    .line 23
    .line 24
    cmp-long v4, v0, v2

    .line 25
    .line 26
    if-lez v4, :cond_3

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 31
    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/control/RhythmLayout;->getFirstVisibleItemPosition()I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 37
    .line 38
    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout$b;->b(Lcom/join/mgps/control/RhythmLayout$b;)F

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 43
    .line 44
    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 45
    .line 46
    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    .line 47
    .line 48
    .line 49
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    const/4 v3, 0x1

    .line 52
    const/4 v4, 0x0

    .line 53
    cmpg-float v1, v1, v2

    .line 54
    .line 55
    if-gtz v1, :cond_0

    .line 56
    .line 57
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 58
    .line 59
    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout$b;->b(Lcom/join/mgps/control/RhythmLayout$b;)F

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    const/4 v2, 0x0

    .line 64
    cmpl-float v1, v1, v2

    .line 65
    .line 66
    if-ltz v1, :cond_0

    .line 67
    .line 68
    sub-int/2addr v0, v3

    .line 69
    if-ltz v0, :cond_1

    .line 70
    .line 71
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 72
    .line 73
    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 74
    .line 75
    invoke-static {v1, v4}, Lcom/join/mgps/control/RhythmLayout;->f(Lcom/join/mgps/control/RhythmLayout;I)I

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 80
    .line 81
    invoke-static {v1}, Lcom/join/mgps/control/RhythmLayout$b;->b(Lcom/join/mgps/control/RhythmLayout$b;)F

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 86
    .line 87
    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 88
    .line 89
    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->b(Lcom/join/mgps/control/RhythmLayout;)I

    .line 90
    .line 91
    .line 92
    move-result v2

    .line 93
    iget-object v5, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 94
    .line 95
    iget-object v5, v5, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 96
    .line 97
    invoke-static {v5}, Lcom/join/mgps/control/RhythmLayout;->a(Lcom/join/mgps/control/RhythmLayout;)I

    .line 98
    .line 99
    .line 100
    move-result v5

    .line 101
    sub-int/2addr v2, v5

    .line 102
    int-to-float v2, v2

    .line 103
    cmpl-float v1, v1, v2

    .line 104
    .line 105
    if-lez v1, :cond_1

    .line 106
    .line 107
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 108
    .line 109
    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/join/mgps/control/RhythmLayout;->getSize()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    add-int/lit8 v2, v0, 0x7

    .line 116
    .line 117
    add-int/2addr v2, v3

    .line 118
    if-lt v1, v2, :cond_1

    .line 119
    .line 120
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 121
    .line 122
    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 123
    .line 124
    const/4 v2, 0x7

    .line 125
    invoke-static {v1, v2}, Lcom/join/mgps/control/RhythmLayout;->f(Lcom/join/mgps/control/RhythmLayout;I)I

    .line 126
    .line 127
    .line 128
    add-int/2addr v0, v3

    .line 129
    const/4 v3, 0x0

    .line 130
    const/4 v4, 0x1

    .line 131
    goto :goto_0

    .line 132
    :cond_1
    const/4 v0, 0x0

    .line 133
    const/4 v3, 0x0

    .line 134
    :goto_0
    if-nez v3, :cond_2

    .line 135
    .line 136
    if-eqz v4, :cond_3

    .line 137
    .line 138
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 139
    .line 140
    iget-object v1, v1, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 141
    .line 142
    invoke-static {v1, v3, v4}, Lcom/join/mgps/control/RhythmLayout;->g(Lcom/join/mgps/control/RhythmLayout;ZZ)Ljava/util/List;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/join/mgps/control/RhythmLayout$b$a;->b:Lcom/join/mgps/control/RhythmLayout$b;

    .line 147
    .line 148
    iget-object v2, v2, Lcom/join/mgps/control/RhythmLayout$b;->e:Lcom/join/mgps/control/RhythmLayout;

    .line 149
    .line 150
    invoke-static {v2}, Lcom/join/mgps/control/RhythmLayout;->j(Lcom/join/mgps/control/RhythmLayout;)Landroid/os/Handler;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    new-instance v3, Lcom/join/mgps/control/RhythmLayout$b$a$a;

    .line 155
    .line 156
    invoke-direct {v3, p0, v1, v0}, Lcom/join/mgps/control/RhythmLayout$b$a$a;-><init>(Lcom/join/mgps/control/RhythmLayout$b$a;Ljava/util/List;I)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 160
    .line 161
    .line 162
    :cond_3
    return-void
.end method
