.class Lcom/beizi/fusion/work/c/d$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/d;->aL()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:Lcom/beizi/fusion/work/c/d;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x4

    .line 7
    new-array p1, p1, [Ljava/lang/String;

    .line 8
    .line 9
    iput-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->a:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    const-string p1, ""

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->ak(Lcom/beizi/fusion/work/c/d;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->am(Lcom/beizi/fusion/work/c/d;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 36
    .line 37
    invoke-static {v1}, Lcom/beizi/fusion/work/c/d;->l(Lcom/beizi/fusion/work/c/d;)Landroid/view/ViewGroup;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    if-eqz v1, :cond_1

    .line 46
    .line 47
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 48
    .line 49
    .line 50
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->a:[Ljava/lang/String;

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    aput-object v3, v1, v0

    .line 72
    .line 73
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->a:[Ljava/lang/String;

    .line 74
    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 76
    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 81
    .line 82
    .line 83
    move-result v4

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v3

    .line 94
    aput-object v3, v1, v2

    .line 95
    .line 96
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->a:[Ljava/lang/String;

    .line 97
    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    .line 99
    .line 100
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v3

    .line 117
    const/4 v4, 0x2

    .line 118
    aput-object v3, v1, v4

    .line 119
    .line 120
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->a:[Ljava/lang/String;

    .line 121
    .line 122
    new-instance v3, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    const/4 v3, 0x3

    .line 142
    aput-object p1, v1, v3

    .line 143
    .line 144
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 145
    .line 146
    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->ak(Lcom/beizi/fusion/work/c/d;)Z

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    if-eqz p1, :cond_2

    .line 151
    .line 152
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 153
    .line 154
    iget-object v1, p0, Lcom/beizi/fusion/work/c/d$8;->a:[Ljava/lang/String;

    .line 155
    .line 156
    invoke-static {p1, v1}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;[Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-ne p1, v2, :cond_3

    .line 164
    .line 165
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 166
    .line 167
    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->am(Lcom/beizi/fusion/work/c/d;)Z

    .line 168
    .line 169
    .line 170
    move-result p1

    .line 171
    if-eqz p1, :cond_3

    .line 172
    .line 173
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 174
    .line 175
    iget-object p2, p0, Lcom/beizi/fusion/work/c/d$8;->a:[Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {p1, p2}, Lcom/beizi/fusion/work/c/d;->a(Lcom/beizi/fusion/work/c/d;[Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->ak(Lcom/beizi/fusion/work/c/d;)Z

    .line 183
    .line 184
    .line 185
    move-result p1

    .line 186
    if-nez p1, :cond_4

    .line 187
    .line 188
    iget-object p1, p0, Lcom/beizi/fusion/work/c/d$8;->b:Lcom/beizi/fusion/work/c/d;

    .line 189
    .line 190
    invoke-static {p1}, Lcom/beizi/fusion/work/c/d;->am(Lcom/beizi/fusion/work/c/d;)Z

    .line 191
    .line 192
    .line 193
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    if-eqz p1, :cond_5

    .line 195
    .line 196
    :cond_4
    return v2

    .line 197
    :catch_0
    move-exception p1

    .line 198
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 199
    .line 200
    .line 201
    :cond_5
    return v0
.end method
