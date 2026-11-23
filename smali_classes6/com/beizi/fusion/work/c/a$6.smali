.class Lcom/beizi/fusion/work/c/a$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/c/a;->aN()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:[Ljava/lang/String;

.field final synthetic b:Lcom/beizi/fusion/work/c/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

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
    iput-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->a:[Ljava/lang/String;

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
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/beizi/fusion/work/c/a;->F(Lcom/beizi/fusion/work/c/a;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 20
    .line 21
    invoke-static {v1}, Lcom/beizi/fusion/work/c/a;->H(Lcom/beizi/fusion/work/c/a;)Z

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    .line 27
    :cond_0
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 28
    .line 29
    iget-object v1, v1, Lcom/beizi/fusion/work/c/a;->t:Landroid/view/ViewGroup;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    .line 39
    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 40
    .line 41
    .line 42
    :cond_1
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->a:[Ljava/lang/String;

    .line 43
    .line 44
    new-instance v3, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 50
    .line 51
    .line 52
    move-result v4

    .line 53
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    aput-object v3, v1, v0

    .line 64
    .line 65
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->a:[Ljava/lang/String;

    .line 66
    .line 67
    new-instance v3, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 73
    .line 74
    .line 75
    move-result v4

    .line 76
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v3

    .line 86
    aput-object v3, v1, v2

    .line 87
    .line 88
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->a:[Ljava/lang/String;

    .line 89
    .line 90
    new-instance v3, Ljava/lang/StringBuilder;

    .line 91
    .line 92
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v3

    .line 109
    const/4 v4, 0x2

    .line 110
    aput-object v3, v1, v4

    .line 111
    .line 112
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->a:[Ljava/lang/String;

    .line 113
    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 115
    .line 116
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 120
    .line 121
    .line 122
    move-result v4

    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    const/4 v3, 0x3

    .line 134
    aput-object p1, v1, v3

    .line 135
    .line 136
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 137
    .line 138
    invoke-static {p1}, Lcom/beizi/fusion/work/c/a;->F(Lcom/beizi/fusion/work/c/a;)Z

    .line 139
    .line 140
    .line 141
    move-result p1

    .line 142
    if-eqz p1, :cond_2

    .line 143
    .line 144
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 145
    .line 146
    iget-object v1, p0, Lcom/beizi/fusion/work/c/a$6;->a:[Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p1, v1}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;[Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-ne p1, v2, :cond_3

    .line 156
    .line 157
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 158
    .line 159
    invoke-static {p1}, Lcom/beizi/fusion/work/c/a;->H(Lcom/beizi/fusion/work/c/a;)Z

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    if-eqz p1, :cond_3

    .line 164
    .line 165
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 166
    .line 167
    iget-object p2, p0, Lcom/beizi/fusion/work/c/a$6;->a:[Ljava/lang/String;

    .line 168
    .line 169
    invoke-static {p1, p2}, Lcom/beizi/fusion/work/c/a;->a(Lcom/beizi/fusion/work/c/a;[Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    :cond_3
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 173
    .line 174
    invoke-static {p1}, Lcom/beizi/fusion/work/c/a;->F(Lcom/beizi/fusion/work/c/a;)Z

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-nez p1, :cond_4

    .line 179
    .line 180
    iget-object p1, p0, Lcom/beizi/fusion/work/c/a$6;->b:Lcom/beizi/fusion/work/c/a;

    .line 181
    .line 182
    invoke-static {p1}, Lcom/beizi/fusion/work/c/a;->H(Lcom/beizi/fusion/work/c/a;)Z

    .line 183
    .line 184
    .line 185
    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    if-eqz p1, :cond_5

    .line 187
    .line 188
    :cond_4
    return v2

    .line 189
    :catch_0
    move-exception p1

    .line 190
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 191
    .line 192
    .line 193
    :cond_5
    return v0
.end method
