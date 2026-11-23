.class Lcom/beizi/fusion/work/c/a$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/work/c/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/work/c/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->y(Lcom/beizi/fusion/work/c/a;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->z(Lcom/beizi/fusion/work/c/a;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_8

    .line 17
    .line 18
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->s(Lcom/beizi/fusion/work/c/a;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 29
    .line 30
    .line 31
    move-result-wide v0

    .line 32
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 33
    .line 34
    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->A(Lcom/beizi/fusion/work/c/a;)J

    .line 35
    .line 36
    .line 37
    move-result-wide v2

    .line 38
    sub-long/2addr v0, v2

    .line 39
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->B(Lcom/beizi/fusion/work/c/a;)J

    .line 42
    .line 43
    .line 44
    move-result-wide v2

    .line 45
    cmp-long v4, v0, v2

    .line 46
    .line 47
    if-gez v4, :cond_2

    .line 48
    .line 49
    return-void

    .line 50
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 51
    .line 52
    .line 53
    move-result-wide v0

    .line 54
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 55
    .line 56
    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->C(Lcom/beizi/fusion/work/c/a;)J

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    sub-long/2addr v0, v2

    .line 61
    const-wide/16 v2, 0x32

    .line 62
    .line 63
    cmp-long v4, v0, v2

    .line 64
    .line 65
    if-gez v4, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 69
    .line 70
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 71
    .line 72
    .line 73
    move-result-wide v1

    .line 74
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/work/c/a;->c(Lcom/beizi/fusion/work/c/a;J)J

    .line 75
    .line 76
    .line 77
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 80
    .line 81
    const-wide v1, 0x3fe999999999999aL    # 0.8

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    invoke-static {v0, v1, v2}, Lcom/beizi/fusion/tool/aw;->a(Landroid/view/View;D)Z

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-nez v0, :cond_4

    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    const/4 v0, 0x2

    .line 94
    new-array v0, v0, [I

    .line 95
    .line 96
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 97
    .line 98
    iget-object v1, v1, Lcom/beizi/fusion/work/c/a;->u:Landroid/view/View;

    .line 99
    .line 100
    if-eqz v1, :cond_5

    .line 101
    .line 102
    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 103
    .line 104
    .line 105
    :cond_5
    const/4 v1, 0x1

    .line 106
    aget v2, v0, v1

    .line 107
    .line 108
    if-lez v2, :cond_6

    .line 109
    .line 110
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 111
    .line 112
    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->D(Lcom/beizi/fusion/work/c/a;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_6

    .line 117
    .line 118
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 119
    .line 120
    aget v3, v0, v1

    .line 121
    .line 122
    invoke-static {v2, v3}, Lcom/beizi/fusion/work/c/a;->b(Lcom/beizi/fusion/work/c/a;I)I

    .line 123
    .line 124
    .line 125
    :cond_6
    iget-object v2, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 126
    .line 127
    invoke-static {v2}, Lcom/beizi/fusion/work/c/a;->D(Lcom/beizi/fusion/work/c/a;)I

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    aget v0, v0, v1

    .line 132
    .line 133
    sub-int/2addr v2, v0

    .line 134
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    .line 135
    .line 136
    .line 137
    move-result v0

    .line 138
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 139
    .line 140
    invoke-static {v1}, Lcom/beizi/fusion/work/c/a;->E(Lcom/beizi/fusion/work/c/a;)I

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-ge v0, v1, :cond_7

    .line 145
    .line 146
    return-void

    .line 147
    :cond_7
    iget-object v0, p0, Lcom/beizi/fusion/work/c/a$3;->a:Lcom/beizi/fusion/work/c/a;

    .line 148
    .line 149
    invoke-static {v0}, Lcom/beizi/fusion/work/c/a;->x(Lcom/beizi/fusion/work/c/a;)[Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    const/4 v2, 0x0

    .line 154
    invoke-virtual {v0, v1, v2}, Lcom/beizi/fusion/work/c/a;->a([Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    .line 156
    .line 157
    goto :goto_1

    .line 158
    :cond_8
    :goto_0
    return-void

    .line 159
    :catchall_0
    move-exception v0

    .line 160
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 161
    .line 162
    .line 163
    :goto_1
    return-void
.end method
