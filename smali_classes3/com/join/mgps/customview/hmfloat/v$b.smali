.class public final Lcom/join/mgps/customview/hmfloat/v$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/hmfloat/v;->S()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHMFloatingBall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall$initBallTouchListener$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,357:1\n254#2:358\n*S KotlinDebug\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall$initBallTouchListener$1\n*L\n169#1:358\n*E\n"
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nHMFloatingBall.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall$initBallTouchListener$1\n+ 2 View.kt\nandroidx/core/view/ViewKt\n*L\n1#1,357:1\n254#2:358\n*S KotlinDebug\n*F\n+ 1 HMFloatingBall.kt\ncom/join/mgps/customview/hmfloat/HMFloatingBall$initBallTouchListener$1\n*L\n169#1:358\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/hmfloat/v;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/hmfloat/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    const/4 p1, 0x0

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-eqz v0, :cond_6

    .line 11
    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    .line 14
    const/4 v2, 0x2

    .line 15
    if-eq v0, v2, :cond_1

    .line 16
    .line 17
    goto/16 :goto_1

    .line 18
    .line 19
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/customview/hmfloat/v;->r(Lcom/join/mgps/customview/hmfloat/v;)F

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sub-float/2addr p1, v0

    .line 30
    float-to-int p1, p1

    .line 31
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 36
    .line 37
    invoke-static {v2}, Lcom/join/mgps/customview/hmfloat/v;->s(Lcom/join/mgps/customview/hmfloat/v;)F

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    sub-float/2addr v0, v2

    .line 42
    float-to-int v0, v0

    .line 43
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 44
    .line 45
    invoke-static {v2}, Lcom/join/mgps/customview/hmfloat/v;->t(Lcom/join/mgps/customview/hmfloat/v;)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    add-int/2addr v3, p1

    .line 50
    invoke-static {v2, v3}, Lcom/join/mgps/customview/hmfloat/v;->z(Lcom/join/mgps/customview/hmfloat/v;I)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 54
    .line 55
    invoke-static {p1}, Lcom/join/mgps/customview/hmfloat/v;->u(Lcom/join/mgps/customview/hmfloat/v;)I

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    add-int/2addr v2, v0

    .line 60
    invoke-static {p1, v2}, Lcom/join/mgps/customview/hmfloat/v;->A(Lcom/join/mgps/customview/hmfloat/v;I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 64
    .line 65
    invoke-static {p1}, Lcom/join/mgps/customview/hmfloat/v;->l(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 66
    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 69
    .line 70
    invoke-static {p1}, Lcom/join/mgps/customview/hmfloat/v;->C(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 74
    .line 75
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    invoke-static {p1, v0}, Lcom/join/mgps/customview/hmfloat/v;->x(Lcom/join/mgps/customview/hmfloat/v;F)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 83
    .line 84
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    invoke-static {p1, p2}, Lcom/join/mgps/customview/hmfloat/v;->y(Lcom/join/mgps/customview/hmfloat/v;F)V

    .line 89
    .line 90
    .line 91
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 92
    goto :goto_1

    .line 93
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 94
    .line 95
    invoke-static {p2}, Lcom/join/mgps/customview/hmfloat/v;->B(Lcom/join/mgps/customview/hmfloat/v;)V

    .line 96
    .line 97
    .line 98
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 99
    .line 100
    invoke-static {p2}, Lcom/join/mgps/customview/hmfloat/v;->q(Lcom/join/mgps/customview/hmfloat/v;)Lcom/join/mgps/customview/hmfloat/HMFloatMenuView;

    .line 101
    .line 102
    .line 103
    move-result-object p2

    .line 104
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 105
    .line 106
    .line 107
    move-result p2

    .line 108
    if-nez p2, :cond_4

    .line 109
    .line 110
    const/4 p1, 0x1

    .line 111
    :cond_4
    if-eqz p1, :cond_5

    .line 112
    .line 113
    return v1

    .line 114
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 115
    .line 116
    invoke-static {p1}, Lcom/join/mgps/customview/hmfloat/v;->p(Lcom/join/mgps/customview/hmfloat/v;)Landroid/os/Handler;

    .line 117
    .line 118
    .line 119
    move-result-object p1

    .line 120
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 121
    .line 122
    invoke-static {p2}, Lcom/join/mgps/customview/hmfloat/v;->n(Lcom/join/mgps/customview/hmfloat/v;)Ljava/lang/Runnable;

    .line 123
    .line 124
    .line 125
    move-result-object p2

    .line 126
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/join/mgps/customview/hmfloat/v;->m(Lcom/join/mgps/customview/hmfloat/v;)J

    .line 129
    .line 130
    .line 131
    move-result-wide v2

    .line 132
    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 133
    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_6
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 137
    .line 138
    invoke-static {v0}, Lcom/join/mgps/customview/hmfloat/v;->p(Lcom/join/mgps/customview/hmfloat/v;)Landroid/os/Handler;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    iget-object v2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 143
    .line 144
    invoke-static {v2}, Lcom/join/mgps/customview/hmfloat/v;->n(Lcom/join/mgps/customview/hmfloat/v;)Ljava/lang/Runnable;

    .line 145
    .line 146
    .line 147
    move-result-object v2

    .line 148
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 152
    .line 153
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 154
    .line 155
    .line 156
    move-result v2

    .line 157
    invoke-static {v0, v2}, Lcom/join/mgps/customview/hmfloat/v;->x(Lcom/join/mgps/customview/hmfloat/v;F)V

    .line 158
    .line 159
    .line 160
    iget-object v0, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 161
    .line 162
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 163
    .line 164
    .line 165
    move-result p2

    .line 166
    invoke-static {v0, p2}, Lcom/join/mgps/customview/hmfloat/v;->y(Lcom/join/mgps/customview/hmfloat/v;F)V

    .line 167
    .line 168
    .line 169
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 170
    .line 171
    invoke-static {p2}, Lcom/join/mgps/customview/hmfloat/v;->v(Lcom/join/mgps/customview/hmfloat/v;)Z

    .line 172
    .line 173
    .line 174
    move-result p2

    .line 175
    if-eqz p2, :cond_2

    .line 176
    .line 177
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 178
    .line 179
    invoke-static {p2}, Lcom/join/mgps/customview/hmfloat/v;->o(Lcom/join/mgps/customview/hmfloat/v;)Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;

    .line 180
    .line 181
    .line 182
    move-result-object p2

    .line 183
    sget-object v0, Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;->CIRCLE:Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;

    .line 184
    .line 185
    invoke-virtual {p2, v0}, Lcom/join/mgps/customview/hmfloat/HMFloatingBallView;->g(Lcom/join/mgps/customview/hmfloat/HMBallView$Shape;)V

    .line 186
    .line 187
    .line 188
    iget-object p2, p0, Lcom/join/mgps/customview/hmfloat/v$b;->b:Lcom/join/mgps/customview/hmfloat/v;

    .line 189
    .line 190
    invoke-static {p2, p1}, Lcom/join/mgps/customview/hmfloat/v;->w(Lcom/join/mgps/customview/hmfloat/v;Z)V

    .line 191
    .line 192
    .line 193
    goto :goto_0

    .line 194
    :goto_1
    return p1
.end method
