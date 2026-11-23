.class public Lcom/facebook/fresco/animation/drawable/a;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Ln3/a;


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->LOCAL:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/fresco/animation/drawable/a$b;
    }
.end annotation


# static fields
.field private static final s:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final t:Lcom/facebook/fresco/animation/drawable/c;

.field private static final u:I = 0x8

.field private static final v:I


# instance fields
.field private b:Lcom/facebook/fresco/animation/backend/a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private c:Lcom/facebook/fresco/animation/frame/b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private volatile d:Z

.field private e:J

.field private f:J

.field private g:J

.field private h:I

.field private i:J

.field private j:J

.field private k:I

.field private l:J

.field private m:J

.field private n:I

.field private volatile o:Lcom/facebook/fresco/animation/drawable/c;

.field private volatile p:Lcom/facebook/fresco/animation/drawable/a$b;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/facebook/drawee/drawable/e;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final r:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/facebook/fresco/animation/drawable/a;

    .line 2
    .line 3
    sput-object v0, Lcom/facebook/fresco/animation/drawable/a;->s:Ljava/lang/Class;

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/fresco/animation/drawable/d;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/facebook/fresco/animation/drawable/d;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object v0, Lcom/facebook/fresco/animation/drawable/a;->t:Lcom/facebook/fresco/animation/drawable/c;

    .line 11
    .line 12
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/facebook/fresco/animation/drawable/a;-><init>(Lcom/facebook/fresco/animation/backend/a;)V

    return-void
.end method

.method public constructor <init>(Lcom/facebook/fresco/animation/backend/a;)V
    .locals 2
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationBackend"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x8

    .line 3
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->l:J

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->m:J

    .line 5
    sget-object v0, Lcom/facebook/fresco/animation/drawable/a;->t:Lcom/facebook/fresco/animation/drawable/c;

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/fresco/animation/drawable/a$b;

    .line 7
    new-instance v0, Lcom/facebook/fresco/animation/drawable/a$a;

    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/drawable/a$a;-><init>(Lcom/facebook/fresco/animation/drawable/a;)V

    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->r:Ljava/lang/Runnable;

    .line 8
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 9
    invoke-static {p1}, Lcom/facebook/fresco/animation/drawable/a;->c(Lcom/facebook/fresco/animation/backend/a;)Lcom/facebook/fresco/animation/frame/b;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    return-void
.end method

.method static synthetic b(Lcom/facebook/fresco/animation/drawable/a;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/facebook/fresco/animation/drawable/a;->r:Ljava/lang/Runnable;

    .line 2
    .line 3
    return-object p0
.end method

.method private static c(Lcom/facebook/fresco/animation/backend/a;)Lcom/facebook/fresco/animation/frame/b;
    .locals 1
    .param p0    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationBackend"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/facebook/fresco/animation/frame/a;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Lcom/facebook/fresco/animation/frame/a;-><init>(Lcom/facebook/fresco/animation/backend/d;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method private l()J
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    return-wide v0
.end method

.method private m()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->n:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->n:I

    .line 6
    .line 7
    const/4 v0, 0x2

    .line 8
    invoke-static {v0}, Li3/a;->R(I)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    sget-object v0, Lcom/facebook/fresco/animation/drawable/a;->s:Ljava/lang/Class;

    .line 15
    .line 16
    iget v1, p0, Lcom/facebook/fresco/animation/drawable/a;->n:I

    .line 17
    .line 18
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    const-string v2, "Dropped a frame. Count: %s"

    .line 23
    .line 24
    invoke-static {v0, v2, v1}, Li3/a;->V(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method

.method private n(J)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetAnimationTimeMs"
        }
    .end annotation

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 2
    .line 3
    add-long/2addr v0, p1

    .line 4
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->g:J

    .line 5
    .line 6
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->r:Ljava/lang/Runnable;

    .line 7
    .line 8
    invoke-virtual {p0, p1, v0, v1}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public d()Lcom/facebook/fresco/animation/backend/a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 23
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    .line 1
    move-object/from16 v14, p0

    .line 2
    .line 3
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 4
    .line 5
    if-eqz v0, :cond_9

    .line 6
    .line 7
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_5

    .line 12
    .line 13
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    .line 14
    .line 15
    .line 16
    move-result-wide v12

    .line 17
    iget-boolean v0, v14, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-wide v0, v14, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 22
    .line 23
    sub-long v0, v12, v0

    .line 24
    .line 25
    iget-wide v2, v14, Lcom/facebook/fresco/animation/drawable/a;->m:J

    .line 26
    .line 27
    add-long/2addr v0, v2

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-wide v0, v14, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 30
    .line 31
    const-wide/16 v2, 0x0

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    .line 34
    .line 35
    .line 36
    move-result-wide v0

    .line 37
    :goto_0
    move-wide v8, v0

    .line 38
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 39
    .line 40
    iget-wide v1, v14, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 41
    .line 42
    invoke-interface {v0, v8, v9, v1, v2}, Lcom/facebook/fresco/animation/frame/b;->c(JJ)I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    const/4 v1, 0x0

    .line 47
    const/4 v2, -0x1

    .line 48
    if-ne v0, v2, :cond_2

    .line 49
    .line 50
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 51
    .line 52
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->c()I

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    .line 57
    .line 58
    iget-object v2, v14, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    .line 59
    .line 60
    invoke-interface {v2, v14}, Lcom/facebook/fresco/animation/drawable/c;->b(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 61
    .line 62
    .line 63
    iput-boolean v1, v14, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    if-nez v0, :cond_3

    .line 67
    .line 68
    iget v3, v14, Lcom/facebook/fresco/animation/drawable/a;->h:I

    .line 69
    .line 70
    if-eq v3, v2, :cond_3

    .line 71
    .line 72
    iget-wide v2, v14, Lcom/facebook/fresco/animation/drawable/a;->g:J

    .line 73
    .line 74
    cmp-long v4, v12, v2

    .line 75
    .line 76
    if-ltz v4, :cond_3

    .line 77
    .line 78
    iget-object v2, v14, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    .line 79
    .line 80
    invoke-interface {v2, v14}, Lcom/facebook/fresco/animation/drawable/c;->e(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 81
    .line 82
    .line 83
    :cond_3
    :goto_1
    move v3, v0

    .line 84
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 85
    .line 86
    move-object/from16 v2, p1

    .line 87
    .line 88
    invoke-interface {v0, v14, v2, v3}, Lcom/facebook/fresco/animation/backend/a;->j(Landroid/graphics/drawable/Drawable;Landroid/graphics/Canvas;I)Z

    .line 89
    .line 90
    .line 91
    move-result v4

    .line 92
    if-eqz v4, :cond_4

    .line 93
    .line 94
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    .line 95
    .line 96
    invoke-interface {v0, v14, v3}, Lcom/facebook/fresco/animation/drawable/c;->c(Lcom/facebook/fresco/animation/drawable/a;I)V

    .line 97
    .line 98
    .line 99
    iput v3, v14, Lcom/facebook/fresco/animation/drawable/a;->h:I

    .line 100
    .line 101
    :cond_4
    if-nez v4, :cond_5

    .line 102
    .line 103
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/a;->m()V

    .line 104
    .line 105
    .line 106
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    .line 107
    .line 108
    .line 109
    move-result-wide v15

    .line 110
    iget-boolean v0, v14, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 111
    .line 112
    const-wide/16 v5, -0x1

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 117
    .line 118
    iget-wide v10, v14, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 119
    .line 120
    sub-long v10, v15, v10

    .line 121
    .line 122
    invoke-interface {v0, v10, v11}, Lcom/facebook/fresco/animation/frame/b;->b(J)J

    .line 123
    .line 124
    .line 125
    move-result-wide v10

    .line 126
    cmp-long v0, v10, v5

    .line 127
    .line 128
    if-eqz v0, :cond_6

    .line 129
    .line 130
    iget-wide v0, v14, Lcom/facebook/fresco/animation/drawable/a;->l:J

    .line 131
    .line 132
    add-long/2addr v0, v10

    .line 133
    invoke-direct {v14, v0, v1}, Lcom/facebook/fresco/animation/drawable/a;->n(J)V

    .line 134
    .line 135
    .line 136
    move-wide/from16 v19, v0

    .line 137
    .line 138
    goto :goto_2

    .line 139
    :cond_6
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    .line 140
    .line 141
    invoke-interface {v0, v14}, Lcom/facebook/fresco/animation/drawable/c;->b(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 142
    .line 143
    .line 144
    iput-boolean v1, v14, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 145
    .line 146
    move-wide/from16 v19, v5

    .line 147
    .line 148
    :goto_2
    move-wide/from16 v17, v10

    .line 149
    .line 150
    goto :goto_3

    .line 151
    :cond_7
    move-wide/from16 v17, v5

    .line 152
    .line 153
    move-wide/from16 v19, v17

    .line 154
    .line 155
    :goto_3
    iget-object v0, v14, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/fresco/animation/drawable/a$b;

    .line 156
    .line 157
    if-eqz v0, :cond_8

    .line 158
    .line 159
    iget-object v2, v14, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 160
    .line 161
    iget-boolean v5, v14, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 162
    .line 163
    iget-wide v6, v14, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 164
    .line 165
    iget-wide v10, v14, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 166
    .line 167
    move-object/from16 v1, p0

    .line 168
    .line 169
    move-wide/from16 v21, v8

    .line 170
    .line 171
    move-wide v14, v15

    .line 172
    move-wide/from16 v16, v17

    .line 173
    .line 174
    move-wide/from16 v18, v19

    .line 175
    .line 176
    invoke-interface/range {v0 .. v19}, Lcom/facebook/fresco/animation/drawable/a$b;->a(Lcom/facebook/fresco/animation/drawable/a;Lcom/facebook/fresco/animation/frame/b;IZZJJJJJJJ)V

    .line 177
    .line 178
    .line 179
    move-object/from16 v0, p0

    .line 180
    .line 181
    move-wide/from16 v1, v21

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    move-object/from16 v0, p0

    .line 185
    .line 186
    move-wide v1, v8

    .line 187
    :goto_4
    iput-wide v1, v0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 188
    .line 189
    return-void

    .line 190
    :cond_9
    :goto_5
    move-object v0, v14

    .line 191
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->n:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    return-wide v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->c()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public g()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->b()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->e()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/a;->d()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public h()J
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x0

    .line 6
    .line 7
    return-wide v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/b;->d()J

    .line 13
    .line 14
    .line 15
    move-result-wide v0

    .line 16
    return-wide v0

    .line 17
    :cond_1
    const/4 v0, 0x0

    .line 18
    const/4 v1, 0x0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 20
    .line 21
    invoke-interface {v2}, Lcom/facebook/fresco/animation/backend/d;->c()I

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-ge v0, v2, :cond_2

    .line 26
    .line 27
    iget-object v2, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 28
    .line 29
    invoke-interface {v2, v0}, Lcom/facebook/fresco/animation/backend/d;->h(I)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    add-int/2addr v1, v2

    .line 34
    add-int/lit8 v0, v0, 0x1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_2
    int-to-long v0, v1

    .line 38
    return-wide v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 2
    .line 3
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/facebook/fresco/animation/frame/b;->e()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method public k(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetFrameNumber"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/frame/b;->a(I)J

    .line 11
    .line 12
    .line 13
    move-result-wide v0

    .line 14
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 21
    .line 22
    sub-long/2addr v0, v2

    .line 23
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 24
    .line 25
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->g:J

    .line 26
    .line 27
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method public o(Lcom/facebook/fresco/animation/backend/a;)V
    .locals 1
    .param p1    # Lcom/facebook/fresco/animation/backend/a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationBackend"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/fresco/animation/frame/a;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/facebook/fresco/animation/frame/a;-><init>(Lcom/facebook/fresco/animation/backend/d;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 11
    .line 12
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 13
    .line 14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-interface {p1, v0}, Lcom/facebook/fresco/animation/backend/a;->f(Landroid/graphics/Rect;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Lcom/facebook/drawee/drawable/e;

    .line 22
    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lcom/facebook/drawee/drawable/e;->a(Landroid/graphics/drawable/Drawable;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/facebook/fresco/animation/drawable/a;->c(Lcom/facebook/fresco/animation/backend/a;)Lcom/facebook/fresco/animation/frame/b;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->c:Lcom/facebook/fresco/animation/frame/b;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/facebook/fresco/animation/drawable/a;->stop()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bounds"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 5
    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->f(Landroid/graphics/Rect;)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "level"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 8
    .line 9
    int-to-long v4, p1

    .line 10
    cmp-long p1, v2, v4

    .line 11
    .line 12
    if-eqz p1, :cond_1

    .line 13
    .line 14
    iput-wide v4, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x1

    .line 20
    return p1

    .line 21
    :cond_1
    return v1
.end method

.method public p(Lcom/facebook/fresco/animation/drawable/c;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/drawable/c;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animationListener"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/facebook/fresco/animation/drawable/a;->t:Lcom/facebook/fresco/animation/drawable/c;

    .line 5
    .line 6
    :goto_0
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    .line 7
    .line 8
    return-void
.end method

.method public q(Lcom/facebook/fresco/animation/drawable/a$b;)V
    .locals 0
    .param p1    # Lcom/facebook/fresco/animation/drawable/a$b;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "drawListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/facebook/fresco/animation/drawable/a;->p:Lcom/facebook/fresco/animation/drawable/a$b;

    .line 2
    .line 3
    return-void
.end method

.method public r(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameSchedulingDelayMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/a;->l:J

    .line 2
    .line 3
    return-void
.end method

.method public s(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "frameSchedulingOffsetMs"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/facebook/fresco/animation/drawable/a;->m:J

    .line 2
    .line 3
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "alpha"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Lcom/facebook/drawee/drawable/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/drawee/drawable/e;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/facebook/drawee/drawable/e;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Lcom/facebook/drawee/drawable/e;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Lcom/facebook/drawee/drawable/e;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/e;->b(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->i(I)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1    # Landroid/graphics/ColorFilter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "colorFilter"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Lcom/facebook/drawee/drawable/e;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/facebook/drawee/drawable/e;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/facebook/drawee/drawable/e;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Lcom/facebook/drawee/drawable/e;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->q:Lcom/facebook/drawee/drawable/e;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/facebook/drawee/drawable/e;->c(Landroid/graphics/ColorFilter;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    invoke-interface {v0, p1}, Lcom/facebook/fresco/animation/backend/a;->g(Landroid/graphics/ColorFilter;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->b:Lcom/facebook/fresco/animation/backend/a;

    .line 6
    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/facebook/fresco/animation/backend/d;->c()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-gt v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iput-boolean v1, p0, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 18
    .line 19
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    .line 20
    .line 21
    .line 22
    move-result-wide v0

    .line 23
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->i:J

    .line 24
    .line 25
    sub-long v2, v0, v2

    .line 26
    .line 27
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 28
    .line 29
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->g:J

    .line 30
    .line 31
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->j:J

    .line 32
    .line 33
    sub-long/2addr v0, v2

    .line 34
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 35
    .line 36
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->k:I

    .line 37
    .line 38
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->h:I

    .line 39
    .line 40
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    .line 44
    .line 45
    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/c;->a(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 46
    .line 47
    .line 48
    :cond_1
    :goto_0
    return-void
.end method

.method public stop()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/facebook/fresco/animation/drawable/a;->l()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 11
    .line 12
    sub-long v2, v0, v2

    .line 13
    .line 14
    iput-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->i:J

    .line 15
    .line 16
    iget-wide v2, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 17
    .line 18
    sub-long/2addr v0, v2

    .line 19
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->j:J

    .line 20
    .line 21
    iget v0, p0, Lcom/facebook/fresco/animation/drawable/a;->h:I

    .line 22
    .line 23
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->k:I

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/facebook/fresco/animation/drawable/a;->d:Z

    .line 27
    .line 28
    const-wide/16 v0, 0x0

    .line 29
    .line 30
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->e:J

    .line 31
    .line 32
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->g:J

    .line 33
    .line 34
    const-wide/16 v0, -0x1

    .line 35
    .line 36
    iput-wide v0, p0, Lcom/facebook/fresco/animation/drawable/a;->f:J

    .line 37
    .line 38
    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/facebook/fresco/animation/drawable/a;->h:I

    .line 40
    .line 41
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->r:Ljava/lang/Runnable;

    .line 42
    .line 43
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/facebook/fresco/animation/drawable/a;->o:Lcom/facebook/fresco/animation/drawable/c;

    .line 47
    .line 48
    invoke-interface {v0, p0}, Lcom/facebook/fresco/animation/drawable/c;->b(Lcom/facebook/fresco/animation/drawable/a;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method
