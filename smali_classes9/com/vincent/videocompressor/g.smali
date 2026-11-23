.class public Lcom/vincent/videocompressor/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation


# static fields
.field private static q:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:J

.field private b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/vincent/videocompressor/e;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Lcom/coremedia/iso/boxes/a;

.field private f:Lcom/coremedia/iso/boxes/s0;

.field private g:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:I

.field private i:Ljava/util/Date;

.field private j:I

.field private k:I

.field private l:F

.field private m:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private n:Z

.field private o:J

.field private p:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 7
    .line 8
    const v1, 0x17700

    .line 9
    .line 10
    .line 11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 24
    .line 25
    const v1, 0x15888

    .line 26
    .line 27
    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 41
    .line 42
    const v1, 0xfa00

    .line 43
    .line 44
    .line 45
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const/4 v2, 0x2

    .line 50
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 58
    .line 59
    const v1, 0xbb80

    .line 60
    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const/4 v2, 0x3

    .line 67
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 75
    .line 76
    const v1, 0xac44

    .line 77
    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    const/4 v2, 0x4

    .line 84
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 92
    .line 93
    const/16 v1, 0x7d00

    .line 94
    .line 95
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    const/4 v2, 0x5

    .line 100
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 108
    .line 109
    const/16 v1, 0x5dc0

    .line 110
    .line 111
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x6

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 124
    .line 125
    const/16 v1, 0x5622

    .line 126
    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    const/4 v2, 0x7

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 140
    .line 141
    const/16 v1, 0x3e80

    .line 142
    .line 143
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const/16 v2, 0x8

    .line 148
    .line 149
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 150
    .line 151
    .line 152
    move-result-object v2

    .line 153
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 157
    .line 158
    const/16 v1, 0x2ee0

    .line 159
    .line 160
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v1

    .line 164
    const/16 v2, 0x9

    .line 165
    .line 166
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    .line 172
    .line 173
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 174
    .line 175
    const/16 v1, 0x2b11

    .line 176
    .line 177
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 178
    .line 179
    .line 180
    move-result-object v1

    .line 181
    const/16 v2, 0xa

    .line 182
    .line 183
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    sget-object v0, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 191
    .line 192
    const/16 v1, 0x1f40

    .line 193
    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const/16 v2, 0xb

    .line 199
    .line 200
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    return-void
.end method

.method public constructor <init>(ILandroid/media/MediaFormat;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "format",
            "isAudio"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/vincent/videocompressor/g;->a:J

    .line 7
    .line 8
    new-instance v2, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v2, p0, Lcom/vincent/videocompressor/g;->b:Ljava/util/ArrayList;

    .line 14
    .line 15
    iput-wide v0, p0, Lcom/vincent/videocompressor/g;->c:J

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    iput-object v2, p0, Lcom/vincent/videocompressor/g;->e:Lcom/coremedia/iso/boxes/a;

    .line 19
    .line 20
    iput-object v2, p0, Lcom/vincent/videocompressor/g;->f:Lcom/coremedia/iso/boxes/s0;

    .line 21
    .line 22
    iput-object v2, p0, Lcom/vincent/videocompressor/g;->g:Ljava/util/LinkedList;

    .line 23
    .line 24
    new-instance v2, Ljava/util/Date;

    .line 25
    .line 26
    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object v2, p0, Lcom/vincent/videocompressor/g;->i:Ljava/util/Date;

    .line 30
    .line 31
    const/4 v2, 0x0

    .line 32
    iput v2, p0, Lcom/vincent/videocompressor/g;->l:F

    .line 33
    .line 34
    new-instance v2, Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .line 38
    .line 39
    iput-object v2, p0, Lcom/vincent/videocompressor/g;->m:Ljava/util/ArrayList;

    .line 40
    .line 41
    const/4 v3, 0x0

    .line 42
    iput-boolean v3, p0, Lcom/vincent/videocompressor/g;->n:Z

    .line 43
    .line 44
    iput-wide v0, p0, Lcom/vincent/videocompressor/g;->o:J

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/vincent/videocompressor/g;->p:Z

    .line 48
    .line 49
    int-to-long v4, p1

    .line 50
    iput-wide v4, p0, Lcom/vincent/videocompressor/g;->a:J

    .line 51
    .line 52
    if-nez p3, :cond_2

    .line 53
    .line 54
    const-wide/16 v4, 0xbc7

    .line 55
    .line 56
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    iput-wide v4, p0, Lcom/vincent/videocompressor/g;->c:J

    .line 64
    .line 65
    const-string p1, "width"

    .line 66
    .line 67
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    iput p1, p0, Lcom/vincent/videocompressor/g;->k:I

    .line 72
    .line 73
    const-string p1, "height"

    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    iput p1, p0, Lcom/vincent/videocompressor/g;->j:I

    .line 80
    .line 81
    const p1, 0x15f90

    .line 82
    .line 83
    .line 84
    iput p1, p0, Lcom/vincent/videocompressor/g;->h:I

    .line 85
    .line 86
    new-instance p1, Ljava/util/LinkedList;

    .line 87
    .line 88
    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    .line 89
    .line 90
    .line 91
    iput-object p1, p0, Lcom/vincent/videocompressor/g;->g:Ljava/util/LinkedList;

    .line 92
    .line 93
    const-string p1, "vide"

    .line 94
    .line 95
    iput-object p1, p0, Lcom/vincent/videocompressor/g;->d:Ljava/lang/String;

    .line 96
    .line 97
    new-instance p1, Lcom/coremedia/iso/boxes/m1;

    .line 98
    .line 99
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/m1;-><init>()V

    .line 100
    .line 101
    .line 102
    iput-object p1, p0, Lcom/vincent/videocompressor/g;->e:Lcom/coremedia/iso/boxes/a;

    .line 103
    .line 104
    new-instance p1, Lcom/coremedia/iso/boxes/s0;

    .line 105
    .line 106
    invoke-direct {p1}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    .line 107
    .line 108
    .line 109
    iput-object p1, p0, Lcom/vincent/videocompressor/g;->f:Lcom/coremedia/iso/boxes/s0;

    .line 110
    .line 111
    const-string p1, "mime"

    .line 112
    .line 113
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    const-string p3, "video/avc"

    .line 118
    .line 119
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    .line 121
    .line 122
    move-result p3

    .line 123
    const/16 v1, 0x18

    .line 124
    .line 125
    const-wide/high16 v4, 0x4052000000000000L    # 72.0

    .line 126
    .line 127
    if-eqz p3, :cond_1

    .line 128
    .line 129
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/h;

    .line 130
    .line 131
    const-string p3, "avc1"

    .line 132
    .line 133
    invoke-direct {p1, p3}, Lcom/coremedia/iso/boxes/sampleentry/h;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/h;->O(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/h;->P(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/h;->R(D)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/h;->c0(D)V

    .line 149
    .line 150
    .line 151
    iget p3, p0, Lcom/vincent/videocompressor/g;->k:I

    .line 152
    .line 153
    invoke-virtual {p1, p3}, Lcom/coremedia/iso/boxes/sampleentry/h;->d0(I)V

    .line 154
    .line 155
    .line 156
    iget p3, p0, Lcom/vincent/videocompressor/g;->j:I

    .line 157
    .line 158
    invoke-virtual {p1, p3}, Lcom/coremedia/iso/boxes/sampleentry/h;->Q(I)V

    .line 159
    .line 160
    .line 161
    new-instance p3, Lcom/mp4parser/iso14496/part15/a;

    .line 162
    .line 163
    invoke-direct {p3}, Lcom/mp4parser/iso14496/part15/a;-><init>()V

    .line 164
    .line 165
    .line 166
    const-string v1, "csd-0"

    .line 167
    .line 168
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    if-eqz v2, :cond_0

    .line 173
    .line 174
    new-instance v2, Ljava/util/ArrayList;

    .line 175
    .line 176
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 177
    .line 178
    .line 179
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 180
    .line 181
    .line 182
    move-result-object v1

    .line 183
    const/4 v4, 0x4

    .line 184
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1}, Ljava/nio/Buffer;->remaining()I

    .line 188
    .line 189
    .line 190
    move-result v5

    .line 191
    new-array v5, v5, [B

    .line 192
    .line 193
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    .line 198
    .line 199
    new-instance v1, Ljava/util/ArrayList;

    .line 200
    .line 201
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 202
    .line 203
    .line 204
    const-string v5, "csd-1"

    .line 205
    .line 206
    invoke-virtual {p2, v5}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    .line 207
    .line 208
    .line 209
    move-result-object p2

    .line 210
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    new-array v4, v4, [B

    .line 218
    .line 219
    invoke-virtual {p2, v4}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 220
    .line 221
    .line 222
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 223
    .line 224
    .line 225
    invoke-virtual {p3, v2}, Lcom/mp4parser/iso14496/part15/a;->T(Ljava/util/List;)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {p3, v1}, Lcom/mp4parser/iso14496/part15/a;->Q(Ljava/util/List;)V

    .line 229
    .line 230
    .line 231
    :cond_0
    const/16 p2, 0xd

    .line 232
    .line 233
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/a;->I(I)V

    .line 234
    .line 235
    .line 236
    const/16 p2, 0x64

    .line 237
    .line 238
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/a;->J(I)V

    .line 239
    .line 240
    .line 241
    const/4 p2, -0x1

    .line 242
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/a;->L(I)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/a;->K(I)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/a;->M(I)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {p3, v0}, Lcom/mp4parser/iso14496/part15/a;->N(I)V

    .line 252
    .line 253
    .line 254
    const/4 p2, 0x3

    .line 255
    invoke-virtual {p3, p2}, Lcom/mp4parser/iso14496/part15/a;->P(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {p3, v3}, Lcom/mp4parser/iso14496/part15/a;->R(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, p3}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 262
    .line 263
    .line 264
    iget-object p2, p0, Lcom/vincent/videocompressor/g;->f:Lcom/coremedia/iso/boxes/s0;

    .line 265
    .line 266
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_1
    const-string p2, "video/mp4v"

    .line 272
    .line 273
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 274
    .line 275
    .line 276
    move-result p1

    .line 277
    if-eqz p1, :cond_3

    .line 278
    .line 279
    new-instance p1, Lcom/coremedia/iso/boxes/sampleentry/h;

    .line 280
    .line 281
    const-string p2, "mp4v"

    .line 282
    .line 283
    invoke-direct {p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/h;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p1, v1}, Lcom/coremedia/iso/boxes/sampleentry/h;->O(I)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {p1, v0}, Lcom/coremedia/iso/boxes/sampleentry/h;->P(I)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/h;->R(D)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1, v4, v5}, Lcom/coremedia/iso/boxes/sampleentry/h;->c0(D)V

    .line 299
    .line 300
    .line 301
    iget p2, p0, Lcom/vincent/videocompressor/g;->k:I

    .line 302
    .line 303
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/h;->d0(I)V

    .line 304
    .line 305
    .line 306
    iget p2, p0, Lcom/vincent/videocompressor/g;->j:I

    .line 307
    .line 308
    invoke-virtual {p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/h;->Q(I)V

    .line 309
    .line 310
    .line 311
    iget-object p2, p0, Lcom/vincent/videocompressor/g;->f:Lcom/coremedia/iso/boxes/s0;

    .line 312
    .line 313
    invoke-virtual {p2, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 314
    .line 315
    .line 316
    goto/16 :goto_0

    .line 317
    .line 318
    :cond_2
    const-wide/16 v4, 0x400

    .line 319
    .line 320
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 321
    .line 322
    .line 323
    move-result-object p1

    .line 324
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    .line 326
    .line 327
    iput-wide v4, p0, Lcom/vincent/videocompressor/g;->c:J

    .line 328
    .line 329
    const/high16 p1, 0x3f800000    # 1.0f

    .line 330
    .line 331
    iput p1, p0, Lcom/vincent/videocompressor/g;->l:F

    .line 332
    .line 333
    const-string p1, "sample-rate"

    .line 334
    .line 335
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 336
    .line 337
    .line 338
    move-result p3

    .line 339
    iput p3, p0, Lcom/vincent/videocompressor/g;->h:I

    .line 340
    .line 341
    const-string p3, "soun"

    .line 342
    .line 343
    iput-object p3, p0, Lcom/vincent/videocompressor/g;->d:Ljava/lang/String;

    .line 344
    .line 345
    new-instance p3, Lcom/coremedia/iso/boxes/y0;

    .line 346
    .line 347
    invoke-direct {p3}, Lcom/coremedia/iso/boxes/y0;-><init>()V

    .line 348
    .line 349
    .line 350
    iput-object p3, p0, Lcom/vincent/videocompressor/g;->e:Lcom/coremedia/iso/boxes/a;

    .line 351
    .line 352
    new-instance p3, Lcom/coremedia/iso/boxes/s0;

    .line 353
    .line 354
    invoke-direct {p3}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    .line 355
    .line 356
    .line 357
    iput-object p3, p0, Lcom/vincent/videocompressor/g;->f:Lcom/coremedia/iso/boxes/s0;

    .line 358
    .line 359
    new-instance p3, Lcom/coremedia/iso/boxes/sampleentry/c;

    .line 360
    .line 361
    const-string v1, "mp4a"

    .line 362
    .line 363
    invoke-direct {p3, v1}, Lcom/coremedia/iso/boxes/sampleentry/c;-><init>(Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    const-string v1, "channel-count"

    .line 367
    .line 368
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 369
    .line 370
    .line 371
    move-result v1

    .line 372
    invoke-virtual {p3, v1}, Lcom/coremedia/iso/boxes/sampleentry/c;->f0(I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p2, p1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    .line 376
    .line 377
    .line 378
    move-result p1

    .line 379
    int-to-long p1, p1

    .line 380
    invoke-virtual {p3, p1, p2}, Lcom/coremedia/iso/boxes/sampleentry/c;->l0(J)V

    .line 381
    .line 382
    .line 383
    invoke-virtual {p3, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    .line 384
    .line 385
    .line 386
    const/16 p1, 0x10

    .line 387
    .line 388
    invoke-virtual {p3, p1}, Lcom/coremedia/iso/boxes/sampleentry/c;->m0(I)V

    .line 389
    .line 390
    .line 391
    new-instance p1, Lcom/googlecode/mp4parser/boxes/mp4/b;

    .line 392
    .line 393
    invoke-direct {p1}, Lcom/googlecode/mp4parser/boxes/mp4/b;-><init>()V

    .line 394
    .line 395
    .line 396
    new-instance p2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;

    .line 397
    .line 398
    invoke-direct {p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;-><init>()V

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->x(I)V

    .line 402
    .line 403
    .line 404
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;

    .line 405
    .line 406
    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;-><init>()V

    .line 407
    .line 408
    .line 409
    const/4 v1, 0x2

    .line 410
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;->j(I)V

    .line 411
    .line 412
    .line 413
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->z(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/n;)V

    .line 414
    .line 415
    .line 416
    new-instance v0, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;

    .line 417
    .line 418
    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;-><init>()V

    .line 419
    .line 420
    .line 421
    const/16 v2, 0x40

    .line 422
    .line 423
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->v(I)V

    .line 424
    .line 425
    .line 426
    const/4 v2, 0x5

    .line 427
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->w(I)V

    .line 428
    .line 429
    .line 430
    const/16 v2, 0x600

    .line 431
    .line 432
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->t(I)V

    .line 433
    .line 434
    .line 435
    const-wide/32 v2, 0x17700

    .line 436
    .line 437
    .line 438
    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->u(J)V

    .line 439
    .line 440
    .line 441
    invoke-virtual {v0, v2, v3}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->s(J)V

    .line 442
    .line 443
    .line 444
    new-instance v2, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;

    .line 445
    .line 446
    invoke-direct {v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->v(I)V

    .line 450
    .line 451
    .line 452
    sget-object v1, Lcom/vincent/videocompressor/g;->q:Ljava/util/Map;

    .line 453
    .line 454
    invoke-virtual {p3}, Lcom/coremedia/iso/boxes/sampleentry/c;->O()J

    .line 455
    .line 456
    .line 457
    move-result-wide v3

    .line 458
    long-to-int v4, v3

    .line 459
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 460
    .line 461
    .line 462
    move-result-object v3

    .line 463
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    check-cast v1, Ljava/lang/Integer;

    .line 468
    .line 469
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 470
    .line 471
    .line 472
    move-result v1

    .line 473
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->y(I)V

    .line 474
    .line 475
    .line 476
    invoke-virtual {p3}, Lcom/coremedia/iso/boxes/sampleentry/c;->I()I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    invoke-virtual {v2, v1}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;->w(I)V

    .line 481
    .line 482
    .line 483
    invoke-virtual {v0, v2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;->r(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/a;)V

    .line 484
    .line 485
    .line 486
    invoke-virtual {p2, v0}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->v(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/e;)V

    .line 487
    .line 488
    .line 489
    invoke-virtual {p2}, Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;->t()Ljava/nio/ByteBuffer;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    invoke-virtual {p1, p2}, Lcom/googlecode/mp4parser/boxes/mp4/b;->B(Lcom/googlecode/mp4parser/boxes/mp4/objectdescriptors/g;)V

    .line 494
    .line 495
    .line 496
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/boxes/mp4/a;->y(Ljava/nio/ByteBuffer;)V

    .line 497
    .line 498
    .line 499
    invoke-virtual {p3, p1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 500
    .line 501
    .line 502
    iget-object p1, p0, Lcom/vincent/videocompressor/g;->f:Lcom/coremedia/iso/boxes/s0;

    .line 503
    .line 504
    invoke-virtual {p1, p3}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 505
    .line 506
    .line 507
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public a(JLandroid/media/MediaCodec$BufferInfo;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "offset",
            "bufferInfo"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/vincent/videocompressor/g;->n:Z

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    .line 8
    .line 9
    and-int/2addr v0, v2

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget-object v3, p0, Lcom/vincent/videocompressor/g;->b:Ljava/util/ArrayList;

    .line 16
    .line 17
    new-instance v4, Lcom/vincent/videocompressor/e;

    .line 18
    .line 19
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    .line 20
    .line 21
    int-to-long v5, v5

    .line 22
    invoke-direct {v4, p1, p2, v5, v6}, Lcom/vincent/videocompressor/e;-><init>(JJ)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    iget-object p1, p0, Lcom/vincent/videocompressor/g;->g:Ljava/util/LinkedList;

    .line 29
    .line 30
    if-eqz p1, :cond_1

    .line 31
    .line 32
    if-eqz v0, :cond_1

    .line 33
    .line 34
    iget-object p2, p0, Lcom/vincent/videocompressor/g;->b:Ljava/util/ArrayList;

    .line 35
    .line 36
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 37
    .line 38
    .line 39
    move-result p2

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    :cond_1
    iget-wide p1, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 48
    .line 49
    iget-wide v3, p0, Lcom/vincent/videocompressor/g;->o:J

    .line 50
    .line 51
    sub-long v3, p1, v3

    .line 52
    .line 53
    iput-wide p1, p0, Lcom/vincent/videocompressor/g;->o:J

    .line 54
    .line 55
    iget p1, p0, Lcom/vincent/videocompressor/g;->h:I

    .line 56
    .line 57
    int-to-long p1, p1

    .line 58
    mul-long v3, v3, p1

    .line 59
    .line 60
    const-wide/32 p1, 0x7a120

    .line 61
    .line 62
    .line 63
    add-long/2addr v3, p1

    .line 64
    const-wide/32 p1, 0xf4240

    .line 65
    .line 66
    .line 67
    div-long/2addr v3, p1

    .line 68
    iget-boolean p1, p0, Lcom/vincent/videocompressor/g;->p:Z

    .line 69
    .line 70
    if-nez p1, :cond_2

    .line 71
    .line 72
    iget-object p1, p0, Lcom/vincent/videocompressor/g;->m:Ljava/util/ArrayList;

    .line 73
    .line 74
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    sub-int/2addr p2, v2

    .line 79
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 80
    .line 81
    .line 82
    move-result-object p3

    .line 83
    invoke-virtual {p1, p2, p3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    iget-wide p1, p0, Lcom/vincent/videocompressor/g;->c:J

    .line 87
    .line 88
    add-long/2addr p1, v3

    .line 89
    iput-wide p1, p0, Lcom/vincent/videocompressor/g;->c:J

    .line 90
    .line 91
    :cond_2
    iput-boolean v1, p0, Lcom/vincent/videocompressor/g;->p:Z

    .line 92
    .line 93
    return-void
.end method

.method public b()Ljava/util/Date;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->i:Ljava/util/Date;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vincent/videocompressor/g;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->d:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vincent/videocompressor/g;->j:I

    .line 2
    .line 3
    return v0
.end method

.method public f()Lcom/coremedia/iso/boxes/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->e:Lcom/coremedia/iso/boxes/a;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->f:Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->m:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public i()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/vincent/videocompressor/e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public j()[J
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->g:Ljava/util/LinkedList;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/vincent/videocompressor/g;->g:Ljava/util/LinkedList;

    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    new-array v0, v0, [J

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/vincent/videocompressor/g;->g:Ljava/util/LinkedList;

    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    if-ge v1, v2, :cond_1

    .line 28
    .line 29
    iget-object v2, p0, Lcom/vincent/videocompressor/g;->g:Ljava/util/LinkedList;

    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    int-to-long v2, v2

    .line 42
    aput-wide v2, v0, v1

    .line 43
    .line 44
    add-int/lit8 v1, v1, 0x1

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_1
    return-object v0

    .line 48
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 49
    return-object v0
.end method

.method public k()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vincent/videocompressor/g;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public l()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/vincent/videocompressor/g;->a:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public m()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/vincent/videocompressor/g;->l:F

    .line 2
    .line 3
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/vincent/videocompressor/g;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public o()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/vincent/videocompressor/g;->n:Z

    .line 2
    .line 3
    return v0
.end method
