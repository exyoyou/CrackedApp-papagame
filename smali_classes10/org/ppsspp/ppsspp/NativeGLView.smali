.class public Lorg/ppsspp/ppsspp/NativeGLView;
.super Landroid/opengl/GLSurfaceView;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Lcom/bda/controller/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/ppsspp/ppsspp/NativeGLView$b;,
        Lorg/ppsspp/ppsspp/NativeGLView$a;
    }
.end annotation


# static fields
.field private static n:Ljava/lang/String; = "NativeGLView"

.field public static final o:I = 0x0

.field public static final p:I = 0x1

.field public static final q:I = 0x2

.field public static final r:I = 0x3

.field public static final s:I = 0x4

.field public static final t:I = 0x5

.field public static final u:I = 0x6

.field public static final v:I = 0x7

.field public static final w:I = 0x8

.field private static final x:F = 15.0f


# instance fields
.field private b:Landroid/hardware/SensorManager;

.field private c:Landroid/hardware/Sensor;

.field private d:Lcom/bda/controller/Controller;

.field private e:Z

.field f:Lorg/ppsspp/ppsspp/NativeActivity;

.field private g:I

.field private h:F

.field private i:F

.field private j:J

.field private k:F

.field private l:Landroid/view/GestureDetector;

.field m:Lorg/ppsspp/ppsspp/NativeGLView$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/ppsspp/ppsspp/NativeActivity;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->d:Lcom/bda/controller/Controller;

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->e:Z

    .line 9
    .line 10
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->f:Lorg/ppsspp/ppsspp/NativeActivity;

    .line 11
    .line 12
    const-string v0, "sensor"

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Landroid/hardware/SensorManager;

    .line 19
    .line 20
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->b:Landroid/hardware/SensorManager;

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->c:Landroid/hardware/Sensor;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/bda/controller/Controller;->getInstance(Landroid/content/Context;)Lcom/bda/controller/Controller;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->d:Lcom/bda/controller/Controller;

    .line 34
    .line 35
    :try_start_0
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/g;->a(Lcom/bda/controller/Controller;Landroid/content/Context;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->d:Lcom/bda/controller/Controller;

    .line 39
    .line 40
    new-instance v0, Landroid/os/Handler;

    .line 41
    .line 42
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p0, v0}, Lcom/bda/controller/Controller;->setListener(Lcom/bda/controller/b;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    :catch_0
    invoke-direct {p0}, Lorg/ppsspp/ppsspp/NativeGLView;->e()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method static synthetic a(Lorg/ppsspp/ppsspp/NativeGLView;)I
    .locals 0

    .line 1
    iget p0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic b(Lorg/ppsspp/ppsspp/NativeGLView;I)I
    .locals 0

    .line 1
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 2
    .line 3
    return p1
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-wide/16 v1, 0x32

    .line 6
    .line 7
    const/high16 v3, 0x41700000    # 15.0f

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x2

    .line 11
    if-lt v0, v5, :cond_3

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, 0x1

    .line 19
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    sub-float/2addr v6, v8

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    .line 29
    .line 30
    .line 31
    move-result v7

    .line 32
    sub-float/2addr v0, v7

    .line 33
    mul-float v6, v6, v6

    .line 34
    .line 35
    mul-float v0, v0, v0

    .line 36
    .line 37
    add-float/2addr v6, v0

    .line 38
    float-to-double v6, v6

    .line 39
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    .line 40
    .line 41
    .line 42
    move-result-wide v6

    .line 43
    double-to-float v0, v6

    .line 44
    iget v6, p0, Lorg/ppsspp/ppsspp/NativeGLView;->k:F

    .line 45
    .line 46
    cmpl-float v6, v6, v4

    .line 47
    .line 48
    if-nez v6, :cond_0

    .line 49
    .line 50
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->k:F

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4

    .line 57
    iget-wide v6, p0, Lorg/ppsspp/ppsspp/NativeGLView;->j:J

    .line 58
    .line 59
    sub-long/2addr v4, v6

    .line 60
    cmp-long v6, v4, v1

    .line 61
    .line 62
    if-lez v6, :cond_2

    .line 63
    .line 64
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->k:F

    .line 65
    .line 66
    sub-float v1, v0, v1

    .line 67
    .line 68
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    cmpl-float v1, v1, v3

    .line 73
    .line 74
    if-lez v1, :cond_2

    .line 75
    .line 76
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->k:F

    .line 77
    .line 78
    div-float v1, v0, v1

    .line 79
    .line 80
    const/high16 v2, 0x3f800000    # 1.0f

    .line 81
    .line 82
    cmpl-float v1, v1, v2

    .line 83
    .line 84
    if-lez v1, :cond_1

    .line 85
    .line 86
    const/4 v1, 0x7

    .line 87
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    const/16 v1, 0x8

    .line 91
    .line 92
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 93
    .line 94
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    .line 96
    .line 97
    move-result-wide v1

    .line 98
    iput-wide v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->j:J

    .line 99
    .line 100
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->h:F

    .line 105
    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 107
    .line 108
    .line 109
    move-result p1

    .line 110
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->i:F

    .line 111
    .line 112
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->k:F

    .line 113
    .line 114
    :cond_2
    return-void

    .line 115
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    iget v6, p0, Lorg/ppsspp/ppsspp/NativeGLView;->h:F

    .line 120
    .line 121
    sub-float/2addr v0, v6

    .line 122
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 127
    .line 128
    .line 129
    move-result v6

    .line 130
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 131
    .line 132
    .line 133
    move-result v7

    .line 134
    sub-float/2addr v6, v7

    .line 135
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 136
    .line 137
    .line 138
    move-result v6

    .line 139
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 140
    .line 141
    .line 142
    move-result-wide v7

    .line 143
    iget-wide v9, p0, Lorg/ppsspp/ppsspp/NativeGLView;->j:J

    .line 144
    .line 145
    sub-long/2addr v7, v9

    .line 146
    const-wide/16 v9, 0x5dc

    .line 147
    .line 148
    cmp-long v11, v7, v9

    .line 149
    .line 150
    if-lez v11, :cond_4

    .line 151
    .line 152
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 153
    .line 154
    .line 155
    move-result v0

    .line 156
    cmpg-float v0, v0, v3

    .line 157
    .line 158
    if-gez v0, :cond_4

    .line 159
    .line 160
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 161
    .line 162
    .line 163
    move-result v0

    .line 164
    cmpg-float v0, v0, v3

    .line 165
    .line 166
    if-gez v0, :cond_4

    .line 167
    .line 168
    const/4 p1, 0x6

    .line 169
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 170
    .line 171
    return-void

    .line 172
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 173
    .line 174
    .line 175
    move-result-wide v6

    .line 176
    iget-wide v8, p0, Lorg/ppsspp/ppsspp/NativeGLView;->j:J

    .line 177
    .line 178
    sub-long/2addr v6, v8

    .line 179
    cmp-long v0, v6, v1

    .line 180
    .line 181
    if-lez v0, :cond_8

    .line 182
    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    iget v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->h:F

    .line 188
    .line 189
    sub-float/2addr v0, v1

    .line 190
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    iget v2, p0, Lorg/ppsspp/ppsspp/NativeGLView;->i:F

    .line 195
    .line 196
    sub-float/2addr v1, v2

    .line 197
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 198
    .line 199
    .line 200
    move-result v2

    .line 201
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 202
    .line 203
    .line 204
    move-result v3

    .line 205
    cmpl-float v2, v2, v3

    .line 206
    .line 207
    if-lez v2, :cond_6

    .line 208
    .line 209
    cmpl-float v0, v0, v4

    .line 210
    .line 211
    if-lez v0, :cond_5

    .line 212
    .line 213
    const/4 v0, 0x3

    .line 214
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 215
    .line 216
    goto :goto_2

    .line 217
    :cond_5
    iput v5, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_6
    cmpl-float v0, v1, v4

    .line 221
    .line 222
    if-lez v0, :cond_7

    .line 223
    .line 224
    const/4 v0, 0x5

    .line 225
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 226
    .line 227
    goto :goto_2

    .line 228
    :cond_7
    const/4 v0, 0x4

    .line 229
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 230
    .line 231
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 232
    .line 233
    .line 234
    move-result-wide v0

    .line 235
    iput-wide v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->j:J

    .line 236
    .line 237
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 238
    .line 239
    .line 240
    move-result v0

    .line 241
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->h:F

    .line 242
    .line 243
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 244
    .line 245
    .line 246
    move-result p1

    .line 247
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->i:F

    .line 248
    .line 249
    :cond_8
    return-void
.end method

.method private d(Landroid/view/MotionEvent;I)I
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xe
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getToolType(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method private e()V
    .locals 3

    .line 1
    new-instance v0, Landroid/view/GestureDetector;

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lorg/ppsspp/ppsspp/NativeGLView$b;

    .line 8
    .line 9
    invoke-direct {v2, p0}, Lorg/ppsspp/ppsspp/NativeGLView$b;-><init>(Lorg/ppsspp/ppsspp/NativeGLView;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->l:Landroid/view/GestureDetector;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public f()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->d:Lcom/bda/controller/Controller;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/bda/controller/Controller;->exit()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public g(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    if-eq v0, v1, :cond_2

    .line 12
    .line 13
    const/4 v3, 0x2

    .line 14
    if-eq v0, v3, :cond_1

    .line 15
    .line 16
    const/4 p1, 0x3

    .line 17
    if-eq v0, p1, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x6

    .line 20
    if-eq v0, p1, :cond_2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 24
    .line 25
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->m:Lorg/ppsspp/ppsspp/NativeGLView$a;

    .line 26
    .line 27
    if-eqz p1, :cond_4

    .line 28
    .line 29
    invoke-interface {p1, v2}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    invoke-direct {p0, p1}, Lorg/ppsspp/ppsspp/NativeGLView;->c(Landroid/view/MotionEvent;)V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->m:Lorg/ppsspp/ppsspp/NativeGLView$a;

    .line 37
    .line 38
    if-eqz p1, :cond_4

    .line 39
    .line 40
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 41
    .line 42
    invoke-interface {p1, v0}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    iput v2, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 47
    .line 48
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->m:Lorg/ppsspp/ppsspp/NativeGLView$a;

    .line 49
    .line 50
    if-eqz p1, :cond_4

    .line 51
    .line 52
    invoke-interface {p1, v2}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->l:Landroid/view/GestureDetector;

    .line 57
    .line 58
    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 59
    .line 60
    .line 61
    iput v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 62
    .line 63
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    iput v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->h:F

    .line 68
    .line 69
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->i:F

    .line 74
    .line 75
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 76
    .line 77
    .line 78
    move-result-wide v2

    .line 79
    iput-wide v2, p0, Lorg/ppsspp/ppsspp/NativeGLView;->j:J

    .line 80
    .line 81
    const/4 p1, 0x0

    .line 82
    iput p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->k:F

    .line 83
    .line 84
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->m:Lorg/ppsspp/ppsspp/NativeGLView$a;

    .line 85
    .line 86
    if-eqz p1, :cond_4

    .line 87
    .line 88
    iget v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->g:I

    .line 89
    .line 90
    invoke-interface {p1, v0}, Lorg/ppsspp/ppsspp/NativeGLView$a;->getMode(I)V

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_0
    return v1
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onKeyEvent(Lcom/bda/controller/KeyEvent;)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->w()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :pswitch_0
    return-void

    .line 14
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->f()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/16 v1, 0xa

    .line 19
    .line 20
    if-eqz v0, :cond_2

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v0, v2, :cond_1

    .line 24
    .line 25
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->w()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    invoke-static {v1, p1}, Lorg/ppsspp/ppsspp/NativeApp;->keyUp(II)Z

    .line 31
    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_2
    invoke-virtual {p1}, Lcom/bda/controller/KeyEvent;->w()I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    const/4 v0, 0x0

    .line 39
    invoke-static {v1, p1, v0}, Lorg/ppsspp/ppsspp/NativeApp;->keyDown(IIZ)Z

    .line 40
    .line 41
    .line 42
    :goto_1
    return-void

    .line 43
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onMotionEvent(Lcom/bda/controller/MotionEvent;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->m(I)F

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    const/16 v2, 0xa

    .line 7
    .line 8
    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->m(I)F

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    .line 17
    .line 18
    .line 19
    const/16 v0, 0xb

    .line 20
    .line 21
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->m(I)F

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    .line 26
    .line 27
    .line 28
    const/16 v0, 0xe

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->m(I)F

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    .line 35
    .line 36
    .line 37
    const/16 v0, 0x11

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->m(I)F

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    invoke-static {v2, v0, v1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    .line 44
    .line 45
    .line 46
    const/16 v0, 0x12

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Lcom/bda/controller/MotionEvent;->m(I)F

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    invoke-static {v2, v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->joystickAxis(IIF)V

    .line 53
    .line 54
    .line 55
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->b:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->d:Lcom/bda/controller/Controller;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onPause()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->b:Landroid/hardware/SensorManager;

    .line 5
    .line 6
    iget-object v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->c:Landroid/hardware/Sensor;

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lorg/ppsspp/ppsspp/NativeGLView;->d:Lcom/bda/controller/Controller;

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/bda/controller/Controller;->onResume()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 1
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    aget v0, p1, v0

    .line 15
    .line 16
    aget v1, p1, v1

    .line 17
    .line 18
    const/4 v2, 0x2

    .line 19
    aget p1, p1, v2

    .line 20
    .line 21
    invoke-static {v0, v1, p1}, Lorg/ppsspp/ppsspp/NativeApp;->accelerometer(FFF)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onStateEvent(Lcom/bda/controller/StateEvent;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->w()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_1

    .line 7
    .line 8
    const/4 v1, 0x2

    .line 9
    if-eq v0, v1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->f()I

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_1
    invoke-virtual {p1}, Lcom/bda/controller/StateEvent;->f()I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    const-string v0, "moga"

    .line 21
    .line 22
    if-eqz p1, :cond_4

    .line 23
    .line 24
    if-eq p1, v1, :cond_2

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    iget-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->d:Lcom/bda/controller/Controller;

    .line 28
    .line 29
    const/4 v2, 0x4

    .line 30
    invoke-virtual {p1, v2}, Lcom/bda/controller/Controller;->getState(I)I

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_3

    .line 35
    .line 36
    const-string p1, "Moga"

    .line 37
    .line 38
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    iput-boolean v1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->e:Z

    .line 43
    .line 44
    const-string p1, "MogaPro"

    .line 45
    .line 46
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_4
    const-string p1, ""

    .line 51
    .line 52
    invoke-static {v0, p1}, Lorg/ppsspp/ppsspp/NativeApp;->sendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    .line 4
    .line 5
    .line 6
    move-result v2

    .line 7
    const/4 v3, 0x1

    .line 8
    if-ge v1, v2, :cond_6

    .line 9
    .line 10
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 15
    .line 16
    .line 17
    move-result v4

    .line 18
    const/4 v5, 0x2

    .line 19
    if-eqz v4, :cond_2

    .line 20
    .line 21
    const/4 v6, 0x3

    .line 22
    if-eq v4, v3, :cond_0

    .line 23
    .line 24
    if-eq v4, v5, :cond_4

    .line 25
    .line 26
    if-eq v4, v6, :cond_0

    .line 27
    .line 28
    const/4 v3, 0x5

    .line 29
    if-eq v4, v3, :cond_2

    .line 30
    .line 31
    const/4 v3, 0x6

    .line 32
    if-eq v4, v3, :cond_0

    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    if-eq v4, v6, :cond_1

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v3, v1, :cond_3

    .line 42
    .line 43
    :cond_1
    const/4 v3, 0x4

    .line 44
    goto :goto_2

    .line 45
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ne v3, v1, :cond_3

    .line 50
    .line 51
    const/4 v3, 0x2

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    :goto_1
    const/4 v3, 0x0

    .line 54
    :cond_4
    :goto_2
    if-eqz v3, :cond_5

    .line 55
    .line 56
    invoke-direct {p0, p1, v1}, Lorg/ppsspp/ppsspp/NativeGLView;->d(Landroid/view/MotionEvent;I)I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    shl-int/lit8 v4, v4, 0xa

    .line 61
    .line 62
    or-int/2addr v3, v4

    .line 63
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    .line 64
    .line 65
    .line 66
    move-result v4

    .line 67
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    invoke-static {v4, v5, v3, v2}, Lorg/ppsspp/ppsspp/NativeApp;->touch(FFII)Z

    .line 72
    .line 73
    .line 74
    :cond_5
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_6
    return v3
.end method

.method public setListener(Lorg/ppsspp/ppsspp/NativeGLView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/ppsspp/ppsspp/NativeGLView;->m:Lorg/ppsspp/ppsspp/NativeGLView$a;

    .line 2
    .line 3
    return-void
.end method
