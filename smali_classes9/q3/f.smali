.class public Lq3/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lcom/facebook/infer/annotation/Nullsafe;
    value = .enum Lcom/facebook/infer/annotation/Nullsafe$Mode;->STRICT:Lcom/facebook/infer/annotation/Nullsafe$Mode;
.end annotation


# static fields
.field public static final C:I = -0x1


# instance fields
.field private final A:Lb4/d;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private B:Lb4/c$a;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final a:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final b:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final c:Ljava/lang/Object;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final d:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final e:Lcom/facebook/imagepipeline/image/g;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final f:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final g:Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final h:[Lcom/facebook/imagepipeline/request/ImageRequest;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final i:J

.field private final j:J

.field private final k:J

.field private final l:J

.field private final m:J

.field private final n:J

.field private final o:J

.field private final p:I

.field private final q:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final r:Z

.field private final s:I

.field private final t:I

.field private final u:Ljava/lang/Throwable;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final v:I

.field private final w:J

.field private final x:J

.field private final y:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final z:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/facebook/imagepipeline/request/ImageRequest;Ljava/lang/Object;Lcom/facebook/imagepipeline/image/g;Lcom/facebook/imagepipeline/request/ImageRequest;Lcom/facebook/imagepipeline/request/ImageRequest;[Lcom/facebook/imagepipeline/request/ImageRequest;JJJJJJJILjava/lang/String;ZIILjava/lang/Throwable;IJJLjava/lang/String;JLb4/d;Lb4/c$a;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/facebook/imagepipeline/image/g;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # [Lcom/facebook/imagepipeline/request/ImageRequest;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p24    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p28    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p34    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p37    # Lb4/d;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p38    # Lb4/c$a;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "controllerId",
            "requestId",
            "imageRequest",
            "callerContext",
            "imageInfo",
            "controllerImageRequest",
            "controllerLowResImageRequest",
            "controllerFirstAvailableImageRequests",
            "controllerSubmitTimeMs",
            "controllerIntermediateImageSetTimeMs",
            "controllerFinalImageSetTimeMs",
            "controllerFailureTimeMs",
            "controllerCancelTimeMs",
            "imageRequestStartTimeMs",
            "imageRequestEndTimeMs",
            "imageOrigin",
            "ultimateProducerName",
            "isPrefetch",
            "onScreenWidthPx",
            "onScreenHeightPx",
            "errorThrowable",
            "visibilityState",
            "visibilityEventTimeMs",
            "invisibilityEventTime",
            "componentTag",
            "imageDrawTimeMs",
            "dimensionsInfo",
            "extraData"
        }
    .end annotation

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lq3/f;->a:Ljava/lang/String;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lq3/f;->b:Ljava/lang/String;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lq3/f;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lq3/f;->c:Ljava/lang/Object;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lq3/f;->e:Lcom/facebook/imagepipeline/image/g;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lq3/f;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lq3/f;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lq3/f;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    move-wide v1, p9

    .line 10
    iput-wide v1, v0, Lq3/f;->i:J

    move-wide v1, p11

    .line 11
    iput-wide v1, v0, Lq3/f;->j:J

    move-wide/from16 v1, p13

    .line 12
    iput-wide v1, v0, Lq3/f;->k:J

    move-wide/from16 v1, p15

    .line 13
    iput-wide v1, v0, Lq3/f;->l:J

    move-wide/from16 v1, p17

    .line 14
    iput-wide v1, v0, Lq3/f;->m:J

    move-wide/from16 v1, p19

    .line 15
    iput-wide v1, v0, Lq3/f;->n:J

    move-wide/from16 v1, p21

    .line 16
    iput-wide v1, v0, Lq3/f;->o:J

    move/from16 v1, p23

    .line 17
    iput v1, v0, Lq3/f;->p:I

    move-object/from16 v1, p24

    .line 18
    iput-object v1, v0, Lq3/f;->q:Ljava/lang/String;

    move/from16 v1, p25

    .line 19
    iput-boolean v1, v0, Lq3/f;->r:Z

    move/from16 v1, p26

    .line 20
    iput v1, v0, Lq3/f;->s:I

    move/from16 v1, p27

    .line 21
    iput v1, v0, Lq3/f;->t:I

    move-object/from16 v1, p28

    .line 22
    iput-object v1, v0, Lq3/f;->u:Ljava/lang/Throwable;

    move/from16 v1, p29

    .line 23
    iput v1, v0, Lq3/f;->v:I

    move-wide/from16 v1, p30

    .line 24
    iput-wide v1, v0, Lq3/f;->w:J

    move-wide/from16 v1, p32

    .line 25
    iput-wide v1, v0, Lq3/f;->x:J

    move-object/from16 v1, p34

    .line 26
    iput-object v1, v0, Lq3/f;->y:Ljava/lang/String;

    move-wide/from16 v1, p35

    .line 27
    iput-wide v1, v0, Lq3/f;->z:J

    move-object/from16 v1, p37

    .line 28
    iput-object v1, v0, Lq3/f;->A:Lb4/d;

    move-object/from16 v1, p38

    .line 29
    iput-object v1, v0, Lq3/f;->B:Lb4/c$a;

    return-void
.end method


# virtual methods
.method public A()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->q:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public B()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->w:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public C()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->v:I

    .line 2
    .line 3
    return v0
.end method

.method public D()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lq3/f;->r:Z

    .line 2
    .line 3
    return v0
.end method

.method public E(Lb4/c$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "extraData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lq3/f;->B:Lb4/c$a;

    .line 2
    .line 3
    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/facebook/common/internal/h;->e(Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "controller ID"

    .line 6
    .line 7
    iget-object v2, p0, Lq3/f;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    const-string v1, "request ID"

    .line 14
    .line 15
    iget-object v2, p0, Lq3/f;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const-string v1, "controller image request"

    .line 22
    .line 23
    iget-object v2, p0, Lq3/f;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 24
    .line 25
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "controller low res image request"

    .line 30
    .line 31
    iget-object v2, p0, Lq3/f;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 32
    .line 33
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const-string v1, "controller first available image requests"

    .line 38
    .line 39
    iget-object v2, p0, Lq3/f;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 40
    .line 41
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v1, "controller submit"

    .line 46
    .line 47
    iget-wide v2, p0, Lq3/f;->i:J

    .line 48
    .line 49
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "controller final image"

    .line 54
    .line 55
    iget-wide v2, p0, Lq3/f;->k:J

    .line 56
    .line 57
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    const-string v1, "controller failure"

    .line 62
    .line 63
    iget-wide v2, p0, Lq3/f;->l:J

    .line 64
    .line 65
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    const-string v1, "controller cancel"

    .line 70
    .line 71
    iget-wide v2, p0, Lq3/f;->m:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    const-string v1, "start time"

    .line 78
    .line 79
    iget-wide v2, p0, Lq3/f;->n:J

    .line 80
    .line 81
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    const-string v1, "end time"

    .line 86
    .line 87
    iget-wide v2, p0, Lq3/f;->o:J

    .line 88
    .line 89
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget v1, p0, Lq3/f;->p:I

    .line 94
    .line 95
    invoke-static {v1}, Lq3/e;->b(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const-string v2, "origin"

    .line 100
    .line 101
    invoke-virtual {v0, v2, v1}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    const-string v1, "ultimateProducerName"

    .line 106
    .line 107
    iget-object v2, p0, Lq3/f;->q:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "prefetch"

    .line 114
    .line 115
    iget-boolean v2, p0, Lq3/f;->r:Z

    .line 116
    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->g(Ljava/lang/String;Z)Lcom/facebook/common/internal/h$b;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    const-string v1, "caller context"

    .line 122
    .line 123
    iget-object v2, p0, Lq3/f;->c:Ljava/lang/Object;

    .line 124
    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    const-string v1, "image request"

    .line 130
    .line 131
    iget-object v2, p0, Lq3/f;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 132
    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    const-string v1, "image info"

    .line 138
    .line 139
    iget-object v2, p0, Lq3/f;->e:Lcom/facebook/imagepipeline/image/g;

    .line 140
    .line 141
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 142
    .line 143
    .line 144
    move-result-object v0

    .line 145
    const-string v1, "on-screen width"

    .line 146
    .line 147
    iget v2, p0, Lq3/f;->s:I

    .line 148
    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    const-string v1, "on-screen height"

    .line 154
    .line 155
    iget v2, p0, Lq3/f;->t:I

    .line 156
    .line 157
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    const-string v1, "visibility state"

    .line 162
    .line 163
    iget v2, p0, Lq3/f;->v:I

    .line 164
    .line 165
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->d(Ljava/lang/String;I)Lcom/facebook/common/internal/h$b;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    const-string v1, "component tag"

    .line 170
    .line 171
    iget-object v2, p0, Lq3/f;->y:Ljava/lang/String;

    .line 172
    .line 173
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v1, "visibility event"

    .line 178
    .line 179
    iget-wide v2, p0, Lq3/f;->w:J

    .line 180
    .line 181
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    const-string v1, "invisibility event"

    .line 186
    .line 187
    iget-wide v2, p0, Lq3/f;->x:J

    .line 188
    .line 189
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    const-string v1, "image draw event"

    .line 194
    .line 195
    iget-wide v2, p0, Lq3/f;->z:J

    .line 196
    .line 197
    invoke-virtual {v0, v1, v2, v3}, Lcom/facebook/common/internal/h$b;->e(Ljava/lang/String;J)Lcom/facebook/common/internal/h$b;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    const-string v1, "dimensions info"

    .line 202
    .line 203
    iget-object v2, p0, Lq3/f;->A:Lb4/d;

    .line 204
    .line 205
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    const-string v1, "extra data"

    .line 210
    .line 211
    iget-object v2, p0, Lq3/f;->B:Lb4/c$a;

    .line 212
    .line 213
    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/internal/h$b;->f(Ljava/lang/String;Ljava/lang/Object;)Lcom/facebook/common/internal/h$b;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/facebook/common/internal/h$b;->toString()Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->c:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->l:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->k:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f()[Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->h:[Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->f:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->j:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public j()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->g:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public k()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->i:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public l()Lb4/d;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->A:Lb4/d;

    .line 2
    .line 3
    return-object v0
.end method

.method public m()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->u:Ljava/lang/Throwable;

    .line 2
    .line 3
    return-object v0
.end method

.method public n()Lb4/c$a;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->B:Lb4/c$a;

    .line 2
    .line 3
    return-object v0
.end method

.method public o()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq3/f;->t()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-eqz v4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lq3/f;->u()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lq3/f;->t()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p0}, Lq3/f;->u()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    sub-long/2addr v0, v2

    .line 29
    return-wide v0

    .line 30
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public p()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->z:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public q()Lcom/facebook/imagepipeline/image/g;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->e:Lcom/facebook/imagepipeline/image/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public r()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->p:I

    .line 2
    .line 3
    return v0
.end method

.method public s()Lcom/facebook/imagepipeline/request/ImageRequest;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->d:Lcom/facebook/imagepipeline/request/ImageRequest;

    .line 2
    .line 3
    return-object v0
.end method

.method public t()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->o:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public u()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->n:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public v()J
    .locals 5

    .line 1
    invoke-virtual {p0}, Lq3/f;->i()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    cmp-long v4, v0, v2

    .line 8
    .line 9
    if-eqz v4, :cond_1

    .line 10
    .line 11
    invoke-virtual {p0}, Lq3/f;->k()J

    .line 12
    .line 13
    .line 14
    move-result-wide v0

    .line 15
    cmp-long v4, v0, v2

    .line 16
    .line 17
    if-nez v4, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    invoke-virtual {p0}, Lq3/f;->i()J

    .line 21
    .line 22
    .line 23
    move-result-wide v0

    .line 24
    invoke-virtual {p0}, Lq3/f;->k()J

    .line 25
    .line 26
    .line 27
    move-result-wide v2

    .line 28
    sub-long/2addr v0, v2

    .line 29
    return-wide v0

    .line 30
    :cond_1
    :goto_0
    return-wide v2
.end method

.method public w()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lq3/f;->x:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public x()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->t:I

    .line 2
    .line 3
    return v0
.end method

.method public y()I
    .locals 1

    .line 1
    iget v0, p0, Lq3/f;->s:I

    .line 2
    .line 3
    return v0
.end method

.method public z()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/f;->b:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
