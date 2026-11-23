.class final Lio/netty/handler/codec/compression/Bzip2DivSufSort;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;,
        Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;,
        Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;
    }
.end annotation


# static fields
.field private static final BUCKET_A_SIZE:I = 0x100

.field private static final BUCKET_B_SIZE:I = 0x10000

.field private static final INSERTIONSORT_THRESHOLD:I = 0x8

.field private static final LOG_2_TABLE:[I

.field private static final SS_BLOCKSIZE:I = 0x400

.field private static final STACK_SIZE:I = 0x40


# instance fields
.field private final SA:[I

.field private final T:[B

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x100

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    .line 9
    .line 10
    return-void

    .line 11
    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x6
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
        0x7
    .end array-data
.end method

.method constructor <init>([B[II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 5
    .line 6
    iput-object p2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 7
    .line 8
    iput p3, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 9
    .line 10
    return-void
.end method

.method private static BUCKET_B(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method private static BUCKET_BSTAR(II)I
    .locals 0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, p1

    return p0
.end method

.method private constructBWT([I[I)I
    .locals 12

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 4
    .line 5
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    const/16 v4, 0xfe

    .line 9
    .line 10
    const/4 v5, 0x0

    .line 11
    const/4 v6, 0x0

    .line 12
    :goto_0
    const/4 v7, -0x1

    .line 13
    if-ltz v4, :cond_7

    .line 14
    .line 15
    add-int/lit8 v5, v4, 0x1

    .line 16
    .line 17
    invoke-static {v4, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 18
    .line 19
    .line 20
    move-result v6

    .line 21
    aget v6, p2, v6

    .line 22
    .line 23
    aget v5, p1, v5

    .line 24
    .line 25
    const/4 v7, 0x0

    .line 26
    const/4 v8, -0x1

    .line 27
    :goto_1
    if-gt v6, v5, :cond_6

    .line 28
    .line 29
    aget v9, v1, v5

    .line 30
    .line 31
    if-ltz v9, :cond_4

    .line 32
    .line 33
    add-int/lit8 v10, v9, -0x1

    .line 34
    .line 35
    if-gez v10, :cond_0

    .line 36
    .line 37
    add-int/lit8 v10, v2, -0x1

    .line 38
    .line 39
    :cond_0
    aget-byte v11, v0, v10

    .line 40
    .line 41
    and-int/lit16 v11, v11, 0xff

    .line 42
    .line 43
    if-gt v11, v4, :cond_5

    .line 44
    .line 45
    not-int v9, v9

    .line 46
    aput v9, v1, v5

    .line 47
    .line 48
    if-lez v10, :cond_1

    .line 49
    .line 50
    add-int/lit8 v9, v10, -0x1

    .line 51
    .line 52
    aget-byte v9, v0, v9

    .line 53
    .line 54
    and-int/lit16 v9, v9, 0xff

    .line 55
    .line 56
    if-le v9, v11, :cond_1

    .line 57
    .line 58
    not-int v10, v10

    .line 59
    :cond_1
    if-ne v8, v11, :cond_2

    .line 60
    .line 61
    add-int/lit8 v7, v7, -0x1

    .line 62
    .line 63
    aput v10, v1, v7

    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    if-ltz v8, :cond_3

    .line 67
    .line 68
    invoke-static {v8, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    aput v7, p2, v8

    .line 73
    .line 74
    :cond_3
    invoke-static {v11, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 75
    .line 76
    .line 77
    move-result v7

    .line 78
    aget v7, p2, v7

    .line 79
    .line 80
    add-int/lit8 v7, v7, -0x1

    .line 81
    .line 82
    aput v10, v1, v7

    .line 83
    .line 84
    move v8, v11

    .line 85
    goto :goto_2

    .line 86
    :cond_4
    not-int v9, v9

    .line 87
    aput v9, v1, v5

    .line 88
    .line 89
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, -0x1

    .line 90
    .line 91
    goto :goto_1

    .line 92
    :cond_6
    add-int/lit8 v4, v4, -0x1

    .line 93
    .line 94
    move v5, v7

    .line 95
    move v6, v8

    .line 96
    goto :goto_0

    .line 97
    :cond_7
    const/4 p2, -0x1

    .line 98
    :goto_3
    if-ge v3, v2, :cond_f

    .line 99
    .line 100
    aget v4, v1, v3

    .line 101
    .line 102
    if-ltz v4, :cond_c

    .line 103
    .line 104
    add-int/lit8 v8, v4, -0x1

    .line 105
    .line 106
    if-gez v8, :cond_8

    .line 107
    .line 108
    add-int/lit8 v8, v2, -0x1

    .line 109
    .line 110
    :cond_8
    aget-byte v9, v0, v8

    .line 111
    .line 112
    and-int/lit16 v9, v9, 0xff

    .line 113
    .line 114
    add-int/lit8 v10, v8, 0x1

    .line 115
    .line 116
    aget-byte v10, v0, v10

    .line 117
    .line 118
    and-int/lit16 v10, v10, 0xff

    .line 119
    .line 120
    if-lt v9, v10, :cond_d

    .line 121
    .line 122
    if-lez v8, :cond_9

    .line 123
    .line 124
    add-int/lit8 v10, v8, -0x1

    .line 125
    .line 126
    aget-byte v10, v0, v10

    .line 127
    .line 128
    and-int/lit16 v10, v10, 0xff

    .line 129
    .line 130
    if-ge v10, v9, :cond_9

    .line 131
    .line 132
    not-int v8, v8

    .line 133
    :cond_9
    if-ne v9, v6, :cond_a

    .line 134
    .line 135
    add-int/lit8 v5, v5, 0x1

    .line 136
    .line 137
    aput v8, v1, v5

    .line 138
    .line 139
    goto :goto_4

    .line 140
    :cond_a
    if-eq v6, v7, :cond_b

    .line 141
    .line 142
    aput v5, p1, v6

    .line 143
    .line 144
    :cond_b
    aget v5, p1, v9

    .line 145
    .line 146
    add-int/lit8 v5, v5, 0x1

    .line 147
    .line 148
    aput v8, v1, v5

    .line 149
    .line 150
    move v6, v9

    .line 151
    goto :goto_4

    .line 152
    :cond_c
    not-int v4, v4

    .line 153
    :cond_d
    :goto_4
    if-nez v4, :cond_e

    .line 154
    .line 155
    add-int/lit8 p2, v2, -0x1

    .line 156
    .line 157
    aget-byte p2, v0, p2

    .line 158
    .line 159
    aput p2, v1, v3

    .line 160
    .line 161
    move p2, v3

    .line 162
    goto :goto_5

    .line 163
    :cond_e
    add-int/lit8 v4, v4, -0x1

    .line 164
    .line 165
    aget-byte v4, v0, v4

    .line 166
    .line 167
    aput v4, v1, v3

    .line 168
    .line 169
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_f
    return p2
.end method

.method private static getIDX(I)I
    .locals 0

    if-ltz p0, :cond_0

    goto :goto_0

    :cond_0
    not-int p0, p0

    :goto_0
    return p0
.end method

.method private lsIntroSort(IIIII)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    move/from16 v7, p1

    .line 4
    .line 5
    move/from16 v8, p2

    .line 6
    .line 7
    move/from16 v9, p3

    .line 8
    .line 9
    iget-object v10, v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 10
    .line 11
    const/16 v0, 0x40

    .line 12
    .line 13
    new-array v11, v0, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 14
    .line 15
    sub-int v0, p5, p4

    .line 16
    .line 17
    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    move/from16 v13, p4

    .line 22
    .line 23
    move/from16 v14, p5

    .line 24
    .line 25
    const/4 v15, 0x0

    .line 26
    const/16 v16, 0x0

    .line 27
    .line 28
    :goto_0
    sub-int v5, v14, v13

    .line 29
    .line 30
    const/16 v1, 0x8

    .line 31
    .line 32
    const/16 v17, -0x1

    .line 33
    .line 34
    const/4 v4, 0x1

    .line 35
    if-gt v5, v1, :cond_3

    .line 36
    .line 37
    if-ge v4, v5, :cond_0

    .line 38
    .line 39
    move-object/from16 v0, p0

    .line 40
    .line 41
    move/from16 v1, p1

    .line 42
    .line 43
    move/from16 v2, p2

    .line 44
    .line 45
    move/from16 v3, p3

    .line 46
    .line 47
    move v4, v13

    .line 48
    move v5, v14

    .line 49
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trInsertionSort(IIIII)V

    .line 50
    .line 51
    .line 52
    invoke-direct {v6, v7, v13, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsUpdateGroup(III)V

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_0
    if-ne v5, v4, :cond_1

    .line 57
    .line 58
    aput v17, v10, v13

    .line 59
    .line 60
    :cond_1
    :goto_1
    if-nez v15, :cond_2

    .line 61
    .line 62
    return-void

    .line 63
    :cond_2
    add-int/lit8 v15, v15, -0x1

    .line 64
    .line 65
    aget-object v0, v11, v15

    .line 66
    .line 67
    iget v13, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 68
    .line 69
    iget v14, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 70
    .line 71
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    add-int/lit8 v3, v0, -0x1

    .line 75
    .line 76
    if-nez v0, :cond_7

    .line 77
    .line 78
    move-object/from16 v0, p0

    .line 79
    .line 80
    move/from16 v1, p1

    .line 81
    .line 82
    move/from16 v2, p2

    .line 83
    .line 84
    move/from16 v3, p3

    .line 85
    .line 86
    move v4, v13

    .line 87
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trHeapSort(IIIII)V

    .line 88
    .line 89
    .line 90
    add-int/lit8 v0, v14, -0x1

    .line 91
    .line 92
    :goto_2
    if-ge v13, v0, :cond_5

    .line 93
    .line 94
    aget v1, v10, v0

    .line 95
    .line 96
    invoke-direct {v6, v7, v8, v9, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    add-int/lit8 v0, v0, -0x1

    .line 101
    .line 102
    :goto_3
    if-gt v13, v0, :cond_4

    .line 103
    .line 104
    aget v2, v10, v0

    .line 105
    .line 106
    invoke-direct {v6, v7, v8, v9, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 107
    .line 108
    .line 109
    move-result v2

    .line 110
    if-ne v2, v1, :cond_4

    .line 111
    .line 112
    aget v2, v10, v0

    .line 113
    .line 114
    not-int v2, v2

    .line 115
    aput v2, v10, v0

    .line 116
    .line 117
    add-int/lit8 v0, v0, -0x1

    .line 118
    .line 119
    goto :goto_3

    .line 120
    :cond_4
    move/from16 v16, v1

    .line 121
    .line 122
    goto :goto_2

    .line 123
    :cond_5
    invoke-direct {v6, v7, v13, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsUpdateGroup(III)V

    .line 124
    .line 125
    .line 126
    if-nez v15, :cond_6

    .line 127
    .line 128
    return-void

    .line 129
    :cond_6
    add-int/lit8 v15, v15, -0x1

    .line 130
    .line 131
    aget-object v0, v11, v15

    .line 132
    .line 133
    iget v13, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 134
    .line 135
    iget v14, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 136
    .line 137
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_7
    move-object/from16 v0, p0

    .line 141
    .line 142
    move/from16 v1, p1

    .line 143
    .line 144
    move/from16 v2, p2

    .line 145
    .line 146
    move v5, v3

    .line 147
    move/from16 v3, p3

    .line 148
    .line 149
    const/4 v12, 0x1

    .line 150
    move v4, v13

    .line 151
    move/from16 v18, v5

    .line 152
    .line 153
    move v5, v14

    .line 154
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trPivot(IIIII)I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-static {v10, v13, v10, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 159
    .line 160
    .line 161
    aget v0, v10, v13

    .line 162
    .line 163
    invoke-direct {v6, v7, v8, v9, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    add-int/lit8 v1, v13, 0x1

    .line 168
    .line 169
    :goto_4
    if-ge v1, v14, :cond_8

    .line 170
    .line 171
    aget v2, v10, v1

    .line 172
    .line 173
    invoke-direct {v6, v7, v8, v9, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-ne v2, v0, :cond_9

    .line 178
    .line 179
    add-int/lit8 v1, v1, 0x1

    .line 180
    .line 181
    move/from16 v16, v2

    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_8
    move/from16 v2, v16

    .line 185
    .line 186
    :cond_9
    if-ge v1, v14, :cond_b

    .line 187
    .line 188
    if-ge v2, v0, :cond_b

    .line 189
    .line 190
    move v3, v2

    .line 191
    move v2, v1

    .line 192
    :cond_a
    :goto_5
    add-int/2addr v1, v12

    .line 193
    if-ge v1, v14, :cond_c

    .line 194
    .line 195
    aget v3, v10, v1

    .line 196
    .line 197
    invoke-direct {v6, v7, v8, v9, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 198
    .line 199
    .line 200
    move-result v3

    .line 201
    if-gt v3, v0, :cond_c

    .line 202
    .line 203
    if-ne v3, v0, :cond_a

    .line 204
    .line 205
    invoke-static {v10, v1, v10, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v2, v2, 0x1

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :cond_b
    move v3, v2

    .line 212
    move v2, v1

    .line 213
    :cond_c
    add-int/lit8 v4, v14, -0x1

    .line 214
    .line 215
    :goto_6
    if-ge v1, v4, :cond_d

    .line 216
    .line 217
    aget v3, v10, v4

    .line 218
    .line 219
    invoke-direct {v6, v7, v8, v9, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    if-ne v3, v0, :cond_d

    .line 224
    .line 225
    add-int/lit8 v4, v4, -0x1

    .line 226
    .line 227
    goto :goto_6

    .line 228
    :cond_d
    if-ge v1, v4, :cond_10

    .line 229
    .line 230
    if-le v3, v0, :cond_10

    .line 231
    .line 232
    move v5, v4

    .line 233
    :cond_e
    :goto_7
    add-int/lit8 v4, v4, -0x1

    .line 234
    .line 235
    if-ge v1, v4, :cond_f

    .line 236
    .line 237
    aget v3, v10, v4

    .line 238
    .line 239
    invoke-direct {v6, v7, v8, v9, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 240
    .line 241
    .line 242
    move-result v3

    .line 243
    if-lt v3, v0, :cond_f

    .line 244
    .line 245
    if-ne v3, v0, :cond_e

    .line 246
    .line 247
    invoke-static {v10, v4, v10, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 248
    .line 249
    .line 250
    add-int/lit8 v5, v5, -0x1

    .line 251
    .line 252
    goto :goto_7

    .line 253
    :cond_f
    move/from16 v16, v3

    .line 254
    .line 255
    goto :goto_8

    .line 256
    :cond_10
    move/from16 v16, v3

    .line 257
    .line 258
    move v5, v4

    .line 259
    :cond_11
    :goto_8
    if-ge v1, v4, :cond_15

    .line 260
    .line 261
    invoke-static {v10, v1, v10, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 262
    .line 263
    .line 264
    :goto_9
    add-int/2addr v1, v12

    .line 265
    if-ge v1, v4, :cond_14

    .line 266
    .line 267
    aget v3, v10, v1

    .line 268
    .line 269
    invoke-direct {v6, v7, v8, v9, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 270
    .line 271
    .line 272
    move-result v3

    .line 273
    if-gt v3, v0, :cond_13

    .line 274
    .line 275
    if-ne v3, v0, :cond_12

    .line 276
    .line 277
    invoke-static {v10, v1, v10, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 278
    .line 279
    .line 280
    add-int/lit8 v2, v2, 0x1

    .line 281
    .line 282
    :cond_12
    move/from16 v16, v3

    .line 283
    .line 284
    goto :goto_9

    .line 285
    :cond_13
    :goto_a
    move/from16 v16, v3

    .line 286
    .line 287
    :cond_14
    add-int/lit8 v4, v4, -0x1

    .line 288
    .line 289
    if-ge v1, v4, :cond_11

    .line 290
    .line 291
    aget v3, v10, v4

    .line 292
    .line 293
    invoke-direct {v6, v7, v8, v9, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 294
    .line 295
    .line 296
    move-result v3

    .line 297
    if-lt v3, v0, :cond_f

    .line 298
    .line 299
    if-ne v3, v0, :cond_13

    .line 300
    .line 301
    invoke-static {v10, v4, v10, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 302
    .line 303
    .line 304
    add-int/lit8 v5, v5, -0x1

    .line 305
    .line 306
    goto :goto_a

    .line 307
    :cond_15
    if-gt v2, v5, :cond_20

    .line 308
    .line 309
    add-int/lit8 v0, v1, -0x1

    .line 310
    .line 311
    sub-int v3, v2, v13

    .line 312
    .line 313
    sub-int v2, v1, v2

    .line 314
    .line 315
    if-le v3, v2, :cond_16

    .line 316
    .line 317
    move v3, v2

    .line 318
    :cond_16
    sub-int v4, v1, v3

    .line 319
    .line 320
    move v12, v13

    .line 321
    :goto_b
    if-lez v3, :cond_17

    .line 322
    .line 323
    invoke-static {v10, v12, v10, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 324
    .line 325
    .line 326
    add-int/lit8 v3, v3, -0x1

    .line 327
    .line 328
    const/16 v19, 0x1

    .line 329
    .line 330
    add-int/lit8 v12, v12, 0x1

    .line 331
    .line 332
    add-int/lit8 v4, v4, 0x1

    .line 333
    .line 334
    goto :goto_b

    .line 335
    :cond_17
    const/16 v19, 0x1

    .line 336
    .line 337
    sub-int v0, v5, v0

    .line 338
    .line 339
    sub-int v3, v14, v5

    .line 340
    .line 341
    add-int/lit8 v3, v3, -0x1

    .line 342
    .line 343
    if-le v0, v3, :cond_18

    .line 344
    .line 345
    goto :goto_c

    .line 346
    :cond_18
    move v3, v0

    .line 347
    :goto_c
    sub-int v4, v14, v3

    .line 348
    .line 349
    :goto_d
    if-lez v3, :cond_19

    .line 350
    .line 351
    invoke-static {v10, v1, v10, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 352
    .line 353
    .line 354
    add-int/lit8 v3, v3, -0x1

    .line 355
    .line 356
    add-int/lit8 v1, v1, 0x1

    .line 357
    .line 358
    add-int/lit8 v4, v4, 0x1

    .line 359
    .line 360
    goto :goto_d

    .line 361
    :cond_19
    add-int v1, v13, v2

    .line 362
    .line 363
    sub-int v0, v14, v0

    .line 364
    .line 365
    add-int/lit8 v2, v1, -0x1

    .line 366
    .line 367
    move v3, v13

    .line 368
    :goto_e
    if-ge v3, v1, :cond_1a

    .line 369
    .line 370
    aget v4, v10, v3

    .line 371
    .line 372
    add-int/2addr v4, v7

    .line 373
    aput v2, v10, v4

    .line 374
    .line 375
    add-int/lit8 v3, v3, 0x1

    .line 376
    .line 377
    goto :goto_e

    .line 378
    :cond_1a
    if-ge v0, v14, :cond_1b

    .line 379
    .line 380
    add-int/lit8 v2, v0, -0x1

    .line 381
    .line 382
    move v3, v1

    .line 383
    :goto_f
    if-ge v3, v0, :cond_1b

    .line 384
    .line 385
    aget v4, v10, v3

    .line 386
    .line 387
    add-int/2addr v4, v7

    .line 388
    aput v2, v10, v4

    .line 389
    .line 390
    add-int/lit8 v3, v3, 0x1

    .line 391
    .line 392
    goto :goto_f

    .line 393
    :cond_1b
    sub-int v2, v0, v1

    .line 394
    .line 395
    const/4 v3, 0x1

    .line 396
    if-ne v2, v3, :cond_1c

    .line 397
    .line 398
    aput v17, v10, v1

    .line 399
    .line 400
    :cond_1c
    sub-int v2, v1, v13

    .line 401
    .line 402
    sub-int v3, v14, v0

    .line 403
    .line 404
    if-gt v2, v3, :cond_1e

    .line 405
    .line 406
    if-ge v13, v1, :cond_1d

    .line 407
    .line 408
    add-int/lit8 v2, v15, 0x1

    .line 409
    .line 410
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 411
    .line 412
    move/from16 v4, v18

    .line 413
    .line 414
    const/4 v5, 0x0

    .line 415
    invoke-direct {v3, v0, v14, v4, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 416
    .line 417
    .line 418
    aput-object v3, v11, v15

    .line 419
    .line 420
    move v14, v1

    .line 421
    goto :goto_10

    .line 422
    :cond_1d
    move/from16 v4, v18

    .line 423
    .line 424
    move v13, v0

    .line 425
    goto :goto_11

    .line 426
    :cond_1e
    move/from16 v4, v18

    .line 427
    .line 428
    const/4 v5, 0x0

    .line 429
    if-ge v0, v14, :cond_1f

    .line 430
    .line 431
    add-int/lit8 v2, v15, 0x1

    .line 432
    .line 433
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 434
    .line 435
    invoke-direct {v3, v13, v1, v4, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 436
    .line 437
    .line 438
    aput-object v3, v11, v15

    .line 439
    .line 440
    move v13, v0

    .line 441
    :goto_10
    move v15, v2

    .line 442
    goto :goto_11

    .line 443
    :cond_1f
    move v14, v1

    .line 444
    :goto_11
    move v0, v4

    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_20
    const/4 v5, 0x0

    .line 448
    if-nez v15, :cond_21

    .line 449
    .line 450
    return-void

    .line 451
    :cond_21
    add-int/lit8 v15, v15, -0x1

    .line 452
    .line 453
    aget-object v0, v11, v15

    .line 454
    .line 455
    iget v13, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 456
    .line 457
    iget v14, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 458
    .line 459
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 460
    .line 461
    goto/16 :goto_0
.end method

.method private lsSort(III)V
    .locals 10

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    add-int/2addr p3, p1

    .line 4
    :goto_0
    neg-int v1, p2

    .line 5
    const/4 v7, 0x0

    .line 6
    aget v2, v0, v7

    .line 7
    .line 8
    if-ge v1, v2, :cond_8

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v5, 0x0

    .line 12
    :cond_0
    aget v2, v0, v5

    .line 13
    .line 14
    if-gez v2, :cond_1

    .line 15
    .line 16
    sub-int/2addr v5, v2

    .line 17
    add-int/2addr v1, v2

    .line 18
    goto :goto_2

    .line 19
    :cond_1
    if-eqz v1, :cond_2

    .line 20
    .line 21
    add-int v3, v5, v1

    .line 22
    .line 23
    aput v1, v0, v3

    .line 24
    .line 25
    const/4 v8, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    move v8, v1

    .line 28
    :goto_1
    add-int/2addr v2, p1

    .line 29
    aget v1, v0, v2

    .line 30
    .line 31
    add-int/lit8 v9, v1, 0x1

    .line 32
    .line 33
    add-int v4, p1, p2

    .line 34
    .line 35
    move-object v1, p0

    .line 36
    move v2, p1

    .line 37
    move v3, p3

    .line 38
    move v6, v9

    .line 39
    invoke-direct/range {v1 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsIntroSort(IIIII)V

    .line 40
    .line 41
    .line 42
    move v1, v8

    .line 43
    move v5, v9

    .line 44
    :goto_2
    if-lt v5, p2, :cond_0

    .line 45
    .line 46
    if-eqz v1, :cond_3

    .line 47
    .line 48
    add-int/2addr v5, v1

    .line 49
    aput v1, v0, v5

    .line 50
    .line 51
    :cond_3
    sub-int v1, p3, p1

    .line 52
    .line 53
    if-ge p2, v1, :cond_7

    .line 54
    .line 55
    :cond_4
    aget p3, v0, v7

    .line 56
    .line 57
    if-gez p3, :cond_5

    .line 58
    .line 59
    sub-int/2addr v7, p3

    .line 60
    goto :goto_4

    .line 61
    :cond_5
    add-int/2addr p3, p1

    .line 62
    aget p3, v0, p3

    .line 63
    .line 64
    add-int/lit8 p3, p3, 0x1

    .line 65
    .line 66
    :goto_3
    if-ge v7, p3, :cond_6

    .line 67
    .line 68
    aget v1, v0, v7

    .line 69
    .line 70
    add-int/2addr v1, p1

    .line 71
    aput v7, v0, v1

    .line 72
    .line 73
    add-int/lit8 v7, v7, 0x1

    .line 74
    .line 75
    goto :goto_3

    .line 76
    :cond_6
    move v7, p3

    .line 77
    :goto_4
    if-lt v7, p2, :cond_4

    .line 78
    .line 79
    goto :goto_5

    .line 80
    :cond_7
    add-int/2addr p3, v1

    .line 81
    goto :goto_0

    .line 82
    :cond_8
    :goto_5
    return-void
.end method

.method private lsUpdateGroup(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    :goto_0
    if-ge p2, p3, :cond_6

    .line 4
    .line 5
    aget v1, v0, p2

    .line 6
    .line 7
    if-ltz v1, :cond_3

    .line 8
    .line 9
    move v1, p2

    .line 10
    :cond_0
    aget v2, v0, v1

    .line 11
    .line 12
    add-int/2addr v2, p1

    .line 13
    aput v1, v0, v2

    .line 14
    .line 15
    add-int/lit8 v1, v1, 0x1

    .line 16
    .line 17
    if-ge v1, p3, :cond_1

    .line 18
    .line 19
    aget v2, v0, v1

    .line 20
    .line 21
    if-gez v2, :cond_0

    .line 22
    .line 23
    :cond_1
    sub-int v2, p2, v1

    .line 24
    .line 25
    aput v2, v0, p2

    .line 26
    .line 27
    if-gt p3, v1, :cond_2

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_2
    move p2, v1

    .line 31
    :cond_3
    move v1, p2

    .line 32
    :cond_4
    aget v2, v0, v1

    .line 33
    .line 34
    not-int v2, v2

    .line 35
    aput v2, v0, v1

    .line 36
    .line 37
    add-int/lit8 v1, v1, 0x1

    .line 38
    .line 39
    aget v2, v0, v1

    .line 40
    .line 41
    if-ltz v2, :cond_4

    .line 42
    .line 43
    :cond_5
    aget v2, v0, p2

    .line 44
    .line 45
    add-int/2addr v2, p1

    .line 46
    aput v1, v0, v2

    .line 47
    .line 48
    add-int/lit8 p2, p2, 0x1

    .line 49
    .line 50
    if-le p2, v1, :cond_5

    .line 51
    .line 52
    add-int/lit8 p2, v1, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_6
    :goto_1
    return-void
.end method

.method private sortTypeBstar([I[I)I
    .locals 29

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    iget-object v11, v10, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 4
    .line 5
    iget-object v12, v10, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 6
    .line 7
    iget v13, v10, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 8
    .line 9
    const/16 v0, 0x100

    .line 10
    .line 11
    new-array v1, v0, [I

    .line 12
    .line 13
    const/4 v14, 0x1

    .line 14
    const/4 v2, 0x1

    .line 15
    :goto_0
    const/4 v15, 0x0

    .line 16
    const/16 v9, 0xff

    .line 17
    .line 18
    if-ge v2, v13, :cond_1

    .line 19
    .line 20
    add-int/lit8 v3, v2, -0x1

    .line 21
    .line 22
    aget-byte v3, v11, v3

    .line 23
    .line 24
    aget-byte v4, v11, v2

    .line 25
    .line 26
    if-eq v3, v4, :cond_0

    .line 27
    .line 28
    and-int/lit16 v2, v3, 0xff

    .line 29
    .line 30
    and-int/lit16 v3, v4, 0xff

    .line 31
    .line 32
    if-le v2, v3, :cond_1

    .line 33
    .line 34
    const/16 v16, 0x0

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/16 v16, 0x1

    .line 41
    .line 42
    :goto_1
    add-int/lit8 v17, v13, -0x1

    .line 43
    .line 44
    aget-byte v2, v11, v17

    .line 45
    .line 46
    and-int/lit16 v3, v2, 0xff

    .line 47
    .line 48
    aget-byte v4, v11, v15

    .line 49
    .line 50
    and-int/lit16 v5, v4, 0xff

    .line 51
    .line 52
    if-lt v3, v5, :cond_3

    .line 53
    .line 54
    if-ne v2, v4, :cond_2

    .line 55
    .line 56
    if-eqz v16, :cond_2

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_2
    move v2, v13

    .line 60
    move/from16 v3, v17

    .line 61
    .line 62
    goto :goto_5

    .line 63
    :cond_3
    :goto_2
    if-nez v16, :cond_4

    .line 64
    .line 65
    invoke-static {v3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    aget v3, p2, v2

    .line 70
    .line 71
    add-int/2addr v3, v14

    .line 72
    aput v3, p2, v2

    .line 73
    .line 74
    add-int/lit8 v2, v13, -0x1

    .line 75
    .line 76
    aput v17, v12, v2

    .line 77
    .line 78
    goto :goto_3

    .line 79
    :cond_4
    invoke-static {v3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    aget v3, p2, v2

    .line 84
    .line 85
    add-int/2addr v3, v14

    .line 86
    aput v3, p2, v2

    .line 87
    .line 88
    move v2, v13

    .line 89
    :goto_3
    add-int/lit8 v3, v17, -0x1

    .line 90
    .line 91
    :goto_4
    if-ltz v3, :cond_5

    .line 92
    .line 93
    aget-byte v4, v11, v3

    .line 94
    .line 95
    and-int/2addr v4, v9

    .line 96
    add-int/lit8 v5, v3, 0x1

    .line 97
    .line 98
    aget-byte v5, v11, v5

    .line 99
    .line 100
    and-int/2addr v5, v9

    .line 101
    if-gt v4, v5, :cond_5

    .line 102
    .line 103
    invoke-static {v4, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    aget v5, p2, v4

    .line 108
    .line 109
    add-int/2addr v5, v14

    .line 110
    aput v5, p2, v4

    .line 111
    .line 112
    add-int/lit8 v3, v3, -0x1

    .line 113
    .line 114
    goto :goto_4

    .line 115
    :cond_5
    :goto_5
    const/16 v18, -0x1

    .line 116
    .line 117
    if-ltz v3, :cond_8

    .line 118
    .line 119
    :cond_6
    aget-byte v4, v11, v3

    .line 120
    .line 121
    and-int/2addr v4, v9

    .line 122
    aget v5, p1, v4

    .line 123
    .line 124
    add-int/2addr v5, v14

    .line 125
    aput v5, p1, v4

    .line 126
    .line 127
    add-int/lit8 v3, v3, -0x1

    .line 128
    .line 129
    if-ltz v3, :cond_7

    .line 130
    .line 131
    aget-byte v4, v11, v3

    .line 132
    .line 133
    and-int/2addr v4, v9

    .line 134
    add-int/lit8 v5, v3, 0x1

    .line 135
    .line 136
    aget-byte v5, v11, v5

    .line 137
    .line 138
    and-int/2addr v5, v9

    .line 139
    if-ge v4, v5, :cond_6

    .line 140
    .line 141
    :cond_7
    if-ltz v3, :cond_5

    .line 142
    .line 143
    aget-byte v4, v11, v3

    .line 144
    .line 145
    and-int/2addr v4, v9

    .line 146
    add-int/lit8 v5, v3, 0x1

    .line 147
    .line 148
    aget-byte v5, v11, v5

    .line 149
    .line 150
    and-int/2addr v5, v9

    .line 151
    invoke-static {v4, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    aget v5, p2, v4

    .line 156
    .line 157
    add-int/2addr v5, v14

    .line 158
    aput v5, p2, v4

    .line 159
    .line 160
    add-int/lit8 v2, v2, -0x1

    .line 161
    .line 162
    aput v3, v12, v2

    .line 163
    .line 164
    :goto_6
    add-int/lit8 v3, v3, -0x1

    .line 165
    .line 166
    if-ltz v3, :cond_5

    .line 167
    .line 168
    aget-byte v4, v11, v3

    .line 169
    .line 170
    and-int/2addr v4, v9

    .line 171
    add-int/lit8 v5, v3, 0x1

    .line 172
    .line 173
    aget-byte v5, v11, v5

    .line 174
    .line 175
    and-int/2addr v5, v9

    .line 176
    if-gt v4, v5, :cond_5

    .line 177
    .line 178
    invoke-static {v4, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 179
    .line 180
    .line 181
    move-result v4

    .line 182
    aget v5, p2, v4

    .line 183
    .line 184
    add-int/2addr v5, v14

    .line 185
    aput v5, p2, v4

    .line 186
    .line 187
    goto :goto_6

    .line 188
    :cond_8
    sub-int v8, v13, v2

    .line 189
    .line 190
    if-nez v8, :cond_a

    .line 191
    .line 192
    const/4 v0, 0x0

    .line 193
    :goto_7
    if-ge v0, v13, :cond_9

    .line 194
    .line 195
    aput v0, v12, v0

    .line 196
    .line 197
    add-int/lit8 v0, v0, 0x1

    .line 198
    .line 199
    goto :goto_7

    .line 200
    :cond_9
    return v15

    .line 201
    :cond_a
    const/4 v2, 0x0

    .line 202
    const/4 v3, -0x1

    .line 203
    const/4 v4, 0x0

    .line 204
    :goto_8
    if-ge v2, v0, :cond_c

    .line 205
    .line 206
    aget v5, p1, v2

    .line 207
    .line 208
    add-int/2addr v5, v3

    .line 209
    add-int/2addr v3, v4

    .line 210
    aput v3, p1, v2

    .line 211
    .line 212
    invoke-static {v2, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 213
    .line 214
    .line 215
    move-result v3

    .line 216
    aget v3, p2, v3

    .line 217
    .line 218
    add-int/2addr v5, v3

    .line 219
    add-int/lit8 v3, v2, 0x1

    .line 220
    .line 221
    move v6, v3

    .line 222
    :goto_9
    if-ge v6, v0, :cond_b

    .line 223
    .line 224
    invoke-static {v2, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 225
    .line 226
    .line 227
    move-result v7

    .line 228
    aget v7, p2, v7

    .line 229
    .line 230
    add-int/2addr v4, v7

    .line 231
    shl-int/lit8 v7, v2, 0x8

    .line 232
    .line 233
    or-int/2addr v7, v6

    .line 234
    aput v4, p2, v7

    .line 235
    .line 236
    invoke-static {v2, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 237
    .line 238
    .line 239
    move-result v7

    .line 240
    aget v7, p2, v7

    .line 241
    .line 242
    add-int/2addr v5, v7

    .line 243
    add-int/lit8 v6, v6, 0x1

    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_b
    move v2, v3

    .line 247
    move v3, v5

    .line 248
    goto :goto_8

    .line 249
    :cond_c
    sub-int v19, v13, v8

    .line 250
    .line 251
    add-int/lit8 v2, v8, -0x2

    .line 252
    .line 253
    :goto_a
    if-ltz v2, :cond_d

    .line 254
    .line 255
    add-int v3, v19, v2

    .line 256
    .line 257
    aget v3, v12, v3

    .line 258
    .line 259
    aget-byte v4, v11, v3

    .line 260
    .line 261
    and-int/2addr v4, v9

    .line 262
    add-int/2addr v3, v14

    .line 263
    aget-byte v3, v11, v3

    .line 264
    .line 265
    and-int/2addr v3, v9

    .line 266
    invoke-static {v4, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 267
    .line 268
    .line 269
    move-result v3

    .line 270
    aget v4, p2, v3

    .line 271
    .line 272
    sub-int/2addr v4, v14

    .line 273
    aput v4, p2, v3

    .line 274
    .line 275
    aput v2, v12, v4

    .line 276
    .line 277
    add-int/lit8 v2, v2, -0x1

    .line 278
    .line 279
    goto :goto_a

    .line 280
    :cond_d
    add-int v2, v19, v8

    .line 281
    .line 282
    sub-int/2addr v2, v14

    .line 283
    aget v2, v12, v2

    .line 284
    .line 285
    aget-byte v3, v11, v2

    .line 286
    .line 287
    and-int/2addr v3, v9

    .line 288
    add-int/2addr v2, v14

    .line 289
    aget-byte v2, v11, v2

    .line 290
    .line 291
    and-int/2addr v2, v9

    .line 292
    invoke-static {v3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    aget v3, p2, v2

    .line 297
    .line 298
    sub-int/2addr v3, v14

    .line 299
    aput v3, p2, v2

    .line 300
    .line 301
    add-int/lit8 v7, v8, -0x1

    .line 302
    .line 303
    aput v7, v12, v3

    .line 304
    .line 305
    mul-int/lit8 v2, v8, 0x2

    .line 306
    .line 307
    sub-int v2, v13, v2

    .line 308
    .line 309
    if-gt v2, v0, :cond_e

    .line 310
    .line 311
    move-object/from16 v21, v1

    .line 312
    .line 313
    const/16 v20, 0x100

    .line 314
    .line 315
    const/16 v22, 0x0

    .line 316
    .line 317
    goto :goto_b

    .line 318
    :cond_e
    move/from16 v20, v2

    .line 319
    .line 320
    move/from16 v22, v8

    .line 321
    .line 322
    move-object/from16 v21, v12

    .line 323
    .line 324
    :goto_b
    move v0, v8

    .line 325
    const/16 v6, 0xff

    .line 326
    .line 327
    :goto_c
    if-lez v0, :cond_12

    .line 328
    .line 329
    move v3, v0

    .line 330
    const/16 v5, 0xff

    .line 331
    .line 332
    :goto_d
    if-ge v6, v5, :cond_11

    .line 333
    .line 334
    invoke-static {v6, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 335
    .line 336
    .line 337
    move-result v0

    .line 338
    aget v23, p2, v0

    .line 339
    .line 340
    sub-int v0, v3, v23

    .line 341
    .line 342
    if-ge v14, v0, :cond_10

    .line 343
    .line 344
    const/16 v24, 0x2

    .line 345
    .line 346
    aget v0, v12, v23

    .line 347
    .line 348
    if-ne v0, v7, :cond_f

    .line 349
    .line 350
    const/16 v25, 0x1

    .line 351
    .line 352
    goto :goto_e

    .line 353
    :cond_f
    const/16 v25, 0x0

    .line 354
    .line 355
    :goto_e
    move-object/from16 v0, p0

    .line 356
    .line 357
    move/from16 v1, v19

    .line 358
    .line 359
    move/from16 v2, v23

    .line 360
    .line 361
    move-object/from16 v4, v21

    .line 362
    .line 363
    move/from16 v26, v5

    .line 364
    .line 365
    move/from16 v5, v22

    .line 366
    .line 367
    move/from16 v27, v6

    .line 368
    .line 369
    move/from16 v6, v20

    .line 370
    .line 371
    move/from16 v28, v7

    .line 372
    .line 373
    move/from16 v7, v24

    .line 374
    .line 375
    move v15, v8

    .line 376
    move/from16 v8, v25

    .line 377
    .line 378
    move v9, v13

    .line 379
    invoke-direct/range {v0 .. v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->subStringSort(III[IIIIZI)V

    .line 380
    .line 381
    .line 382
    goto :goto_f

    .line 383
    :cond_10
    move/from16 v26, v5

    .line 384
    .line 385
    move/from16 v27, v6

    .line 386
    .line 387
    move/from16 v28, v7

    .line 388
    .line 389
    move v15, v8

    .line 390
    :goto_f
    add-int/lit8 v5, v26, -0x1

    .line 391
    .line 392
    move v8, v15

    .line 393
    move/from16 v3, v23

    .line 394
    .line 395
    move/from16 v6, v27

    .line 396
    .line 397
    move/from16 v7, v28

    .line 398
    .line 399
    const/16 v9, 0xff

    .line 400
    .line 401
    const/4 v15, 0x0

    .line 402
    goto :goto_d

    .line 403
    :cond_11
    move/from16 v27, v6

    .line 404
    .line 405
    move/from16 v28, v7

    .line 406
    .line 407
    move v15, v8

    .line 408
    add-int/lit8 v6, v27, -0x1

    .line 409
    .line 410
    move v0, v3

    .line 411
    const/16 v9, 0xff

    .line 412
    .line 413
    const/4 v15, 0x0

    .line 414
    goto :goto_c

    .line 415
    :cond_12
    move/from16 v28, v7

    .line 416
    .line 417
    move v15, v8

    .line 418
    :goto_10
    if-ltz v7, :cond_18

    .line 419
    .line 420
    aget v0, v12, v7

    .line 421
    .line 422
    if-ltz v0, :cond_16

    .line 423
    .line 424
    move v0, v7

    .line 425
    :cond_13
    aget v1, v12, v0

    .line 426
    .line 427
    add-int v8, v15, v1

    .line 428
    .line 429
    aput v0, v12, v8

    .line 430
    .line 431
    add-int/lit8 v0, v0, -0x1

    .line 432
    .line 433
    if-ltz v0, :cond_14

    .line 434
    .line 435
    aget v1, v12, v0

    .line 436
    .line 437
    if-gez v1, :cond_13

    .line 438
    .line 439
    :cond_14
    add-int/lit8 v1, v0, 0x1

    .line 440
    .line 441
    sub-int v2, v0, v7

    .line 442
    .line 443
    aput v2, v12, v1

    .line 444
    .line 445
    if-gtz v0, :cond_15

    .line 446
    .line 447
    goto :goto_11

    .line 448
    :cond_15
    move v7, v0

    .line 449
    :cond_16
    move v0, v7

    .line 450
    :cond_17
    aget v1, v12, v0

    .line 451
    .line 452
    not-int v1, v1

    .line 453
    aput v1, v12, v0

    .line 454
    .line 455
    add-int v8, v15, v1

    .line 456
    .line 457
    aput v7, v12, v8

    .line 458
    .line 459
    add-int/lit8 v0, v0, -0x1

    .line 460
    .line 461
    aget v1, v12, v0

    .line 462
    .line 463
    if-ltz v1, :cond_17

    .line 464
    .line 465
    add-int v8, v15, v1

    .line 466
    .line 467
    aput v7, v12, v8

    .line 468
    .line 469
    add-int/lit8 v7, v0, -0x1

    .line 470
    .line 471
    goto :goto_10

    .line 472
    :cond_18
    :goto_11
    invoke-direct {v10, v15, v15, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trSort(III)V

    .line 473
    .line 474
    .line 475
    aget-byte v0, v11, v17

    .line 476
    .line 477
    and-int/lit16 v1, v0, 0xff

    .line 478
    .line 479
    const/4 v2, 0x0

    .line 480
    aget-byte v2, v11, v2

    .line 481
    .line 482
    and-int/lit16 v3, v2, 0xff

    .line 483
    .line 484
    if-lt v1, v3, :cond_1b

    .line 485
    .line 486
    if-ne v0, v2, :cond_19

    .line 487
    .line 488
    if-eqz v16, :cond_19

    .line 489
    .line 490
    goto :goto_12

    .line 491
    :cond_19
    move v8, v15

    .line 492
    move/from16 v0, v17

    .line 493
    .line 494
    :cond_1a
    const/16 v2, 0xff

    .line 495
    .line 496
    goto :goto_15

    .line 497
    :cond_1b
    :goto_12
    if-nez v16, :cond_1c

    .line 498
    .line 499
    add-int/lit8 v8, v15, -0x1

    .line 500
    .line 501
    add-int v0, v15, v8

    .line 502
    .line 503
    aget v0, v12, v0

    .line 504
    .line 505
    aput v17, v12, v0

    .line 506
    .line 507
    goto :goto_13

    .line 508
    :cond_1c
    move v8, v15

    .line 509
    :goto_13
    add-int/lit8 v0, v17, -0x1

    .line 510
    .line 511
    :goto_14
    if-ltz v0, :cond_1a

    .line 512
    .line 513
    aget-byte v1, v11, v0

    .line 514
    .line 515
    const/16 v2, 0xff

    .line 516
    .line 517
    and-int/2addr v1, v2

    .line 518
    add-int/lit8 v3, v0, 0x1

    .line 519
    .line 520
    aget-byte v3, v11, v3

    .line 521
    .line 522
    and-int/2addr v3, v2

    .line 523
    if-gt v1, v3, :cond_1d

    .line 524
    .line 525
    add-int/lit8 v0, v0, -0x1

    .line 526
    .line 527
    goto :goto_14

    .line 528
    :cond_1d
    :goto_15
    if-ltz v0, :cond_1f

    .line 529
    .line 530
    :goto_16
    add-int/lit8 v0, v0, -0x1

    .line 531
    .line 532
    if-ltz v0, :cond_1e

    .line 533
    .line 534
    aget-byte v1, v11, v0

    .line 535
    .line 536
    and-int/2addr v1, v2

    .line 537
    add-int/lit8 v3, v0, 0x1

    .line 538
    .line 539
    aget-byte v3, v11, v3

    .line 540
    .line 541
    and-int/2addr v3, v2

    .line 542
    if-lt v1, v3, :cond_1e

    .line 543
    .line 544
    goto :goto_16

    .line 545
    :cond_1e
    if-ltz v0, :cond_1d

    .line 546
    .line 547
    add-int/lit8 v8, v8, -0x1

    .line 548
    .line 549
    add-int v1, v15, v8

    .line 550
    .line 551
    aget v1, v12, v1

    .line 552
    .line 553
    aput v0, v12, v1

    .line 554
    .line 555
    :goto_17
    add-int/lit8 v0, v0, -0x1

    .line 556
    .line 557
    if-ltz v0, :cond_1d

    .line 558
    .line 559
    aget-byte v1, v11, v0

    .line 560
    .line 561
    and-int/2addr v1, v2

    .line 562
    add-int/lit8 v3, v0, 0x1

    .line 563
    .line 564
    aget-byte v3, v11, v3

    .line 565
    .line 566
    and-int/2addr v3, v2

    .line 567
    if-gt v1, v3, :cond_1d

    .line 568
    .line 569
    goto :goto_17

    .line 570
    :cond_1f
    move/from16 v7, v28

    .line 571
    .line 572
    const/16 v9, 0xff

    .line 573
    .line 574
    :goto_18
    if-ltz v9, :cond_23

    .line 575
    .line 576
    const/16 v0, 0xff

    .line 577
    .line 578
    :goto_19
    if-ge v9, v0, :cond_21

    .line 579
    .line 580
    invoke-static {v9, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 581
    .line 582
    .line 583
    move-result v1

    .line 584
    aget v1, p2, v1

    .line 585
    .line 586
    sub-int v1, v17, v1

    .line 587
    .line 588
    invoke-static {v9, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 589
    .line 590
    .line 591
    move-result v3

    .line 592
    add-int/lit8 v17, v17, 0x1

    .line 593
    .line 594
    aput v17, p2, v3

    .line 595
    .line 596
    invoke-static {v9, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 597
    .line 598
    .line 599
    move-result v3

    .line 600
    aget v3, p2, v3

    .line 601
    .line 602
    move/from16 v17, v1

    .line 603
    .line 604
    :goto_1a
    if-gt v3, v7, :cond_20

    .line 605
    .line 606
    aget v1, v12, v7

    .line 607
    .line 608
    aput v1, v12, v17

    .line 609
    .line 610
    add-int/lit8 v17, v17, -0x1

    .line 611
    .line 612
    add-int/lit8 v7, v7, -0x1

    .line 613
    .line 614
    goto :goto_1a

    .line 615
    :cond_20
    add-int/lit8 v0, v0, -0x1

    .line 616
    .line 617
    goto :goto_19

    .line 618
    :cond_21
    invoke-static {v9, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 619
    .line 620
    .line 621
    move-result v0

    .line 622
    aget v0, p2, v0

    .line 623
    .line 624
    sub-int v0, v17, v0

    .line 625
    .line 626
    invoke-static {v9, v9}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_B(II)I

    .line 627
    .line 628
    .line 629
    move-result v1

    .line 630
    add-int/lit8 v17, v17, 0x1

    .line 631
    .line 632
    aput v17, p2, v1

    .line 633
    .line 634
    if-ge v9, v2, :cond_22

    .line 635
    .line 636
    add-int/lit8 v1, v9, 0x1

    .line 637
    .line 638
    invoke-static {v9, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->BUCKET_BSTAR(II)I

    .line 639
    .line 640
    .line 641
    move-result v1

    .line 642
    add-int/2addr v0, v14

    .line 643
    aput v0, p2, v1

    .line 644
    .line 645
    :cond_22
    aget v17, p1, v9

    .line 646
    .line 647
    add-int/lit8 v9, v9, -0x1

    .line 648
    .line 649
    goto :goto_18

    .line 650
    :cond_23
    return v15
.end method

.method private static ssBlockSwap([II[III)V
    .locals 0

    .line 1
    :goto_0
    if-lez p4, :cond_0

    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 4
    .line 5
    .line 6
    add-int/lit8 p4, p4, -0x1

    .line 7
    .line 8
    add-int/lit8 p1, p1, 0x1

    .line 9
    .line 10
    add-int/lit8 p3, p3, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-void
.end method

.method private ssCompare(III)I
    .locals 4

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 4
    .line 5
    add-int/lit8 v2, p1, 0x1

    .line 6
    .line 7
    aget v2, v0, v2

    .line 8
    .line 9
    add-int/lit8 v2, v2, 0x2

    .line 10
    .line 11
    add-int/lit8 v3, p2, 0x1

    .line 12
    .line 13
    aget v3, v0, v3

    .line 14
    .line 15
    add-int/lit8 v3, v3, 0x2

    .line 16
    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    add-int/2addr p1, p3

    .line 20
    aget p2, v0, p2

    .line 21
    .line 22
    add-int/2addr p3, p2

    .line 23
    :goto_0
    if-ge p1, v2, :cond_0

    .line 24
    .line 25
    if-ge p3, v3, :cond_0

    .line 26
    .line 27
    aget-byte p2, v1, p1

    .line 28
    .line 29
    aget-byte v0, v1, p3

    .line 30
    .line 31
    if-ne p2, v0, :cond_0

    .line 32
    .line 33
    add-int/lit8 p1, p1, 0x1

    .line 34
    .line 35
    add-int/lit8 p3, p3, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    if-ge p1, v2, :cond_2

    .line 39
    .line 40
    if-ge p3, v3, :cond_1

    .line 41
    .line 42
    aget-byte p1, v1, p1

    .line 43
    .line 44
    and-int/lit16 p1, p1, 0xff

    .line 45
    .line 46
    aget-byte p2, v1, p3

    .line 47
    .line 48
    and-int/lit16 p2, p2, 0xff

    .line 49
    .line 50
    sub-int/2addr p1, p2

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    const/4 p1, 0x1

    .line 53
    goto :goto_1

    .line 54
    :cond_2
    if-ge p3, v3, :cond_3

    .line 55
    .line 56
    const/4 p1, -0x1

    .line 57
    goto :goto_1

    .line 58
    :cond_3
    const/4 p1, 0x0

    .line 59
    :goto_1
    return p1
.end method

.method private ssCompareLast(IIIII)I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 4
    .line 5
    aget p2, v0, p2

    .line 6
    .line 7
    add-int/2addr p2, p4

    .line 8
    aget v2, v0, p3

    .line 9
    .line 10
    add-int/2addr p4, v2

    .line 11
    const/4 v2, 0x1

    .line 12
    add-int/2addr p3, v2

    .line 13
    aget p3, v0, p3

    .line 14
    .line 15
    add-int/lit8 p3, p3, 0x2

    .line 16
    .line 17
    :goto_0
    if-ge p2, p5, :cond_0

    .line 18
    .line 19
    if-ge p4, p3, :cond_0

    .line 20
    .line 21
    aget-byte v3, v1, p2

    .line 22
    .line 23
    aget-byte v4, v1, p4

    .line 24
    .line 25
    if-ne v3, v4, :cond_0

    .line 26
    .line 27
    add-int/lit8 p2, p2, 0x1

    .line 28
    .line 29
    add-int/lit8 p4, p4, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    if-ge p2, p5, :cond_2

    .line 33
    .line 34
    if-ge p4, p3, :cond_1

    .line 35
    .line 36
    aget-byte p1, v1, p2

    .line 37
    .line 38
    and-int/lit16 p1, p1, 0xff

    .line 39
    .line 40
    aget-byte p2, v1, p4

    .line 41
    .line 42
    and-int/lit16 p2, p2, 0xff

    .line 43
    .line 44
    sub-int v2, p1, p2

    .line 45
    .line 46
    :cond_1
    return v2

    .line 47
    :cond_2
    if-ne p4, p3, :cond_3

    .line 48
    .line 49
    return v2

    .line 50
    :cond_3
    rem-int/2addr p2, p5

    .line 51
    aget p1, v0, p1

    .line 52
    .line 53
    add-int/lit8 p1, p1, 0x2

    .line 54
    .line 55
    :goto_1
    if-ge p2, p1, :cond_4

    .line 56
    .line 57
    if-ge p4, p3, :cond_4

    .line 58
    .line 59
    aget-byte p5, v1, p2

    .line 60
    .line 61
    aget-byte v0, v1, p4

    .line 62
    .line 63
    if-ne p5, v0, :cond_4

    .line 64
    .line 65
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    add-int/lit8 p4, p4, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_4
    if-ge p2, p1, :cond_5

    .line 71
    .line 72
    if-ge p4, p3, :cond_7

    .line 73
    .line 74
    aget-byte p1, v1, p2

    .line 75
    .line 76
    and-int/lit16 p1, p1, 0xff

    .line 77
    .line 78
    aget-byte p2, v1, p4

    .line 79
    .line 80
    and-int/lit16 p2, p2, 0xff

    .line 81
    .line 82
    sub-int v2, p1, p2

    .line 83
    .line 84
    goto :goto_2

    .line 85
    :cond_5
    if-ge p4, p3, :cond_6

    .line 86
    .line 87
    const/4 v2, -0x1

    .line 88
    goto :goto_2

    .line 89
    :cond_6
    const/4 v2, 0x0

    .line 90
    :cond_7
    :goto_2
    return v2
.end method

.method private ssFixdown(IIIII)V
    .locals 8

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 4
    .line 5
    add-int v2, p3, p4

    .line 6
    .line 7
    aget v2, v0, v2

    .line 8
    .line 9
    add-int v3, p2, v2

    .line 10
    .line 11
    aget v3, v0, v3

    .line 12
    .line 13
    add-int/2addr v3, p1

    .line 14
    aget-byte v3, v1, v3

    .line 15
    .line 16
    and-int/lit16 v3, v3, 0xff

    .line 17
    .line 18
    :goto_0
    mul-int/lit8 v4, p4, 0x2

    .line 19
    .line 20
    add-int/lit8 v4, v4, 0x1

    .line 21
    .line 22
    if-ge v4, p5, :cond_2

    .line 23
    .line 24
    add-int/lit8 v5, v4, 0x1

    .line 25
    .line 26
    add-int v6, p3, v4

    .line 27
    .line 28
    aget v6, v0, v6

    .line 29
    .line 30
    add-int/2addr v6, p2

    .line 31
    aget v6, v0, v6

    .line 32
    .line 33
    add-int/2addr v6, p1

    .line 34
    aget-byte v6, v1, v6

    .line 35
    .line 36
    and-int/lit16 v6, v6, 0xff

    .line 37
    .line 38
    add-int v7, p3, v5

    .line 39
    .line 40
    aget v7, v0, v7

    .line 41
    .line 42
    add-int/2addr v7, p2

    .line 43
    aget v7, v0, v7

    .line 44
    .line 45
    add-int/2addr v7, p1

    .line 46
    aget-byte v7, v1, v7

    .line 47
    .line 48
    and-int/lit16 v7, v7, 0xff

    .line 49
    .line 50
    if-ge v6, v7, :cond_0

    .line 51
    .line 52
    move v4, v5

    .line 53
    move v6, v7

    .line 54
    :cond_0
    if-gt v6, v3, :cond_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    add-int/2addr p4, p3

    .line 58
    add-int v5, p3, v4

    .line 59
    .line 60
    aget v5, v0, v5

    .line 61
    .line 62
    aput v5, v0, p4

    .line 63
    .line 64
    move p4, v4

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    :goto_1
    add-int/2addr p3, p4

    .line 67
    aput v2, v0, p3

    .line 68
    .line 69
    return-void
.end method

.method private ssHeapSort(IIII)V
    .locals 12

    .line 1
    move-object v6, p0

    .line 2
    move v7, p3

    .line 3
    iget-object v8, v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 4
    .line 5
    iget-object v0, v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 6
    .line 7
    rem-int/lit8 v9, p4, 0x2

    .line 8
    .line 9
    if-nez v9, :cond_1

    .line 10
    .line 11
    add-int/lit8 v1, p4, -0x1

    .line 12
    .line 13
    div-int/lit8 v2, v1, 0x2

    .line 14
    .line 15
    add-int/2addr v2, v7

    .line 16
    aget v3, v8, v2

    .line 17
    .line 18
    add-int/2addr v3, p2

    .line 19
    aget v3, v8, v3

    .line 20
    .line 21
    add-int/2addr v3, p1

    .line 22
    aget-byte v3, v0, v3

    .line 23
    .line 24
    and-int/lit16 v3, v3, 0xff

    .line 25
    .line 26
    add-int v4, v7, v1

    .line 27
    .line 28
    aget v5, v8, v4

    .line 29
    .line 30
    add-int/2addr v5, p2

    .line 31
    aget v5, v8, v5

    .line 32
    .line 33
    add-int/2addr v5, p1

    .line 34
    aget-byte v0, v0, v5

    .line 35
    .line 36
    and-int/lit16 v0, v0, 0xff

    .line 37
    .line 38
    if-ge v3, v0, :cond_0

    .line 39
    .line 40
    invoke-static {v8, v4, v8, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 41
    .line 42
    .line 43
    :cond_0
    move v10, v1

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move/from16 v10, p4

    .line 46
    .line 47
    :goto_0
    div-int/lit8 v0, v10, 0x2

    .line 48
    .line 49
    add-int/lit8 v0, v0, -0x1

    .line 50
    .line 51
    move v11, v0

    .line 52
    :goto_1
    if-ltz v11, :cond_2

    .line 53
    .line 54
    move-object v0, p0

    .line 55
    move v1, p1

    .line 56
    move v2, p2

    .line 57
    move v3, p3

    .line 58
    move v4, v11

    .line 59
    move v5, v10

    .line 60
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssFixdown(IIIII)V

    .line 61
    .line 62
    .line 63
    add-int/lit8 v11, v11, -0x1

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_2
    if-nez v9, :cond_3

    .line 67
    .line 68
    add-int v0, v7, v10

    .line 69
    .line 70
    invoke-static {v8, p3, v8, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 71
    .line 72
    .line 73
    const/4 v4, 0x0

    .line 74
    move-object v0, p0

    .line 75
    move v1, p1

    .line 76
    move v2, p2

    .line 77
    move v3, p3

    .line 78
    move v5, v10

    .line 79
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssFixdown(IIIII)V

    .line 80
    .line 81
    .line 82
    :cond_3
    add-int/lit8 v10, v10, -0x1

    .line 83
    .line 84
    :goto_2
    if-lez v10, :cond_4

    .line 85
    .line 86
    aget v9, v8, v7

    .line 87
    .line 88
    add-int v11, v7, v10

    .line 89
    .line 90
    aget v0, v8, v11

    .line 91
    .line 92
    aput v0, v8, v7

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    move-object v0, p0

    .line 96
    move v1, p1

    .line 97
    move v2, p2

    .line 98
    move v3, p3

    .line 99
    move v5, v10

    .line 100
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssFixdown(IIIII)V

    .line 101
    .line 102
    .line 103
    aput v9, v8, v11

    .line 104
    .line 105
    add-int/lit8 v10, v10, -0x1

    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_4
    return-void
.end method

.method private ssInsertionSort(IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    add-int/lit8 v1, p3, -0x2

    .line 4
    .line 5
    :goto_0
    if-gt p2, v1, :cond_5

    .line 6
    .line 7
    aget v2, v0, v1

    .line 8
    .line 9
    add-int/lit8 v3, v1, 0x1

    .line 10
    .line 11
    :cond_0
    add-int v4, p1, v2

    .line 12
    .line 13
    aget v5, v0, v3

    .line 14
    .line 15
    add-int/2addr v5, p1

    .line 16
    invoke-direct {p0, v4, v5, p4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-lez v4, :cond_3

    .line 21
    .line 22
    :cond_1
    add-int/lit8 v5, v3, -0x1

    .line 23
    .line 24
    aget v6, v0, v3

    .line 25
    .line 26
    aput v6, v0, v5

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    if-ge v3, p3, :cond_2

    .line 31
    .line 32
    aget v5, v0, v3

    .line 33
    .line 34
    if-ltz v5, :cond_1

    .line 35
    .line 36
    :cond_2
    if-gt p3, v3, :cond_0

    .line 37
    .line 38
    :cond_3
    if-nez v4, :cond_4

    .line 39
    .line 40
    aget v4, v0, v3

    .line 41
    .line 42
    not-int v4, v4

    .line 43
    aput v4, v0, v3

    .line 44
    .line 45
    :cond_4
    add-int/lit8 v3, v3, -0x1

    .line 46
    .line 47
    aput v2, v0, v3

    .line 48
    .line 49
    add-int/lit8 v1, v1, -0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_5
    return-void
.end method

.method private static ssLog(I)I
    .locals 1

    .line 1
    const v0, 0xff00

    .line 2
    .line 3
    .line 4
    and-int/2addr v0, p0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    .line 8
    .line 9
    shr-int/lit8 p0, p0, 0x8

    .line 10
    .line 11
    and-int/lit16 p0, p0, 0xff

    .line 12
    .line 13
    aget p0, v0, p0

    .line 14
    .line 15
    add-int/lit8 p0, p0, 0x8

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    .line 19
    .line 20
    and-int/lit16 p0, p0, 0xff

    .line 21
    .line 22
    aget p0, v0, p0

    .line 23
    .line 24
    :goto_0
    return p0
.end method

.method private ssMedian3(IIIII)I
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 4
    .line 5
    aget v2, v0, p3

    .line 6
    .line 7
    add-int/2addr v2, p2

    .line 8
    aget v2, v0, v2

    .line 9
    .line 10
    add-int/2addr v2, p1

    .line 11
    aget-byte v2, v1, v2

    .line 12
    .line 13
    and-int/lit16 v2, v2, 0xff

    .line 14
    .line 15
    aget v3, v0, p4

    .line 16
    .line 17
    add-int/2addr v3, p2

    .line 18
    aget v3, v0, v3

    .line 19
    .line 20
    add-int/2addr v3, p1

    .line 21
    aget-byte v3, v1, v3

    .line 22
    .line 23
    and-int/lit16 v3, v3, 0xff

    .line 24
    .line 25
    aget v4, v0, p5

    .line 26
    .line 27
    add-int/2addr p2, v4

    .line 28
    aget p2, v0, p2

    .line 29
    .line 30
    add-int/2addr p1, p2

    .line 31
    aget-byte p1, v1, p1

    .line 32
    .line 33
    and-int/lit16 p1, p1, 0xff

    .line 34
    .line 35
    if-le v2, v3, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    move v5, p4

    .line 39
    move p4, p3

    .line 40
    move p3, v5

    .line 41
    move v6, v3

    .line 42
    move v3, v2

    .line 43
    move v2, v6

    .line 44
    :goto_0
    if-le v2, p1, :cond_2

    .line 45
    .line 46
    if-le v3, p1, :cond_1

    .line 47
    .line 48
    return p4

    .line 49
    :cond_1
    return p5

    .line 50
    :cond_2
    return p3
.end method

.method private ssMedian5(IIIIIII)I
    .locals 12

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 3
    .line 4
    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 5
    .line 6
    aget v3, v1, p3

    .line 7
    .line 8
    add-int/2addr v3, p2

    .line 9
    aget v3, v1, v3

    .line 10
    .line 11
    add-int/2addr v3, p1

    .line 12
    aget-byte v3, v2, v3

    .line 13
    .line 14
    and-int/lit16 v3, v3, 0xff

    .line 15
    .line 16
    aget v4, v1, p4

    .line 17
    .line 18
    add-int/2addr v4, p2

    .line 19
    aget v4, v1, v4

    .line 20
    .line 21
    add-int/2addr v4, p1

    .line 22
    aget-byte v4, v2, v4

    .line 23
    .line 24
    and-int/lit16 v4, v4, 0xff

    .line 25
    .line 26
    aget v5, v1, p5

    .line 27
    .line 28
    add-int/2addr v5, p2

    .line 29
    aget v5, v1, v5

    .line 30
    .line 31
    add-int/2addr v5, p1

    .line 32
    aget-byte v5, v2, v5

    .line 33
    .line 34
    and-int/lit16 v5, v5, 0xff

    .line 35
    .line 36
    aget v6, v1, p6

    .line 37
    .line 38
    add-int/2addr v6, p2

    .line 39
    aget v6, v1, v6

    .line 40
    .line 41
    add-int/2addr v6, p1

    .line 42
    aget-byte v6, v2, v6

    .line 43
    .line 44
    and-int/lit16 v6, v6, 0xff

    .line 45
    .line 46
    aget v7, v1, p7

    .line 47
    .line 48
    add-int/2addr v7, p2

    .line 49
    aget v1, v1, v7

    .line 50
    .line 51
    add-int/2addr v1, p1

    .line 52
    aget-byte v1, v2, v1

    .line 53
    .line 54
    and-int/lit16 v1, v1, 0xff

    .line 55
    .line 56
    if-le v4, v5, :cond_0

    .line 57
    .line 58
    move/from16 v2, p5

    .line 59
    .line 60
    move v7, v4

    .line 61
    move/from16 v4, p4

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move/from16 v2, p4

    .line 65
    .line 66
    move v7, v5

    .line 67
    move v5, v4

    .line 68
    move/from16 v4, p5

    .line 69
    .line 70
    :goto_0
    if-le v6, v1, :cond_1

    .line 71
    .line 72
    move v8, v1

    .line 73
    move v9, v6

    .line 74
    move/from16 v1, p6

    .line 75
    .line 76
    move/from16 v6, p7

    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_1
    move v9, v1

    .line 80
    move v8, v6

    .line 81
    move/from16 v6, p6

    .line 82
    .line 83
    move/from16 v1, p7

    .line 84
    .line 85
    :goto_1
    if-le v5, v8, :cond_2

    .line 86
    .line 87
    move v10, v4

    .line 88
    move v4, v1

    .line 89
    move v1, v10

    .line 90
    move v11, v9

    .line 91
    move v9, v7

    .line 92
    move v7, v11

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    move v2, v6

    .line 95
    move v5, v8

    .line 96
    :goto_2
    if-le v3, v7, :cond_3

    .line 97
    .line 98
    move v6, v3

    .line 99
    move v3, p3

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    move v6, v7

    .line 102
    move v7, v3

    .line 103
    move v3, v4

    .line 104
    move v4, p3

    .line 105
    :goto_3
    if-le v7, v5, :cond_4

    .line 106
    .line 107
    move v2, v4

    .line 108
    move v5, v7

    .line 109
    goto :goto_4

    .line 110
    :cond_4
    move v1, v3

    .line 111
    move v9, v6

    .line 112
    :goto_4
    if-le v9, v5, :cond_5

    .line 113
    .line 114
    return v2

    .line 115
    :cond_5
    return v1
.end method

.method private ssMerge(IIII[IIII)V
    .locals 19

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p7

    .line 6
    .line 7
    move/from16 v11, p8

    .line 8
    .line 9
    iget-object v12, v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 10
    .line 11
    const/16 v0, 0x40

    .line 12
    .line 13
    new-array v13, v0, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 14
    .line 15
    move/from16 v15, p2

    .line 16
    .line 17
    move/from16 v5, p3

    .line 18
    .line 19
    move/from16 v7, p4

    .line 20
    .line 21
    const/16 v16, 0x0

    .line 22
    .line 23
    const/16 v17, 0x0

    .line 24
    .line 25
    :goto_0
    sub-int v0, v7, v5

    .line 26
    .line 27
    if-gt v0, v10, :cond_4

    .line 28
    .line 29
    if-ge v15, v5, :cond_0

    .line 30
    .line 31
    if-ge v5, v7, :cond_0

    .line 32
    .line 33
    move-object/from16 v0, p0

    .line 34
    .line 35
    move/from16 v1, p1

    .line 36
    .line 37
    move-object/from16 v2, p5

    .line 38
    .line 39
    move/from16 v3, p6

    .line 40
    .line 41
    move v4, v15

    .line 42
    move v6, v7

    .line 43
    move v14, v7

    .line 44
    move/from16 v7, p8

    .line 45
    .line 46
    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeBackward(I[IIIIII)V

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_0
    move v14, v7

    .line 51
    :goto_1
    and-int/lit8 v0, v16, 0x1

    .line 52
    .line 53
    if-eqz v0, :cond_1

    .line 54
    .line 55
    invoke-direct {v8, v9, v11, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 56
    .line 57
    .line 58
    :cond_1
    and-int/lit8 v0, v16, 0x2

    .line 59
    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    invoke-direct {v8, v9, v11, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 63
    .line 64
    .line 65
    :cond_2
    if-nez v17, :cond_3

    .line 66
    .line 67
    return-void

    .line 68
    :cond_3
    add-int/lit8 v17, v17, -0x1

    .line 69
    .line 70
    aget-object v0, v13, v17

    .line 71
    .line 72
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 73
    .line 74
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 75
    .line 76
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 77
    .line 78
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 79
    .line 80
    :goto_2
    move/from16 v16, v0

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_4
    move v14, v7

    .line 84
    sub-int v1, v5, v15

    .line 85
    .line 86
    if-gt v1, v10, :cond_9

    .line 87
    .line 88
    if-ge v15, v5, :cond_5

    .line 89
    .line 90
    move-object/from16 v0, p0

    .line 91
    .line 92
    move/from16 v1, p1

    .line 93
    .line 94
    move-object/from16 v2, p5

    .line 95
    .line 96
    move/from16 v3, p6

    .line 97
    .line 98
    move v4, v15

    .line 99
    move v6, v14

    .line 100
    move/from16 v7, p8

    .line 101
    .line 102
    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeForward(I[IIIIII)V

    .line 103
    .line 104
    .line 105
    :cond_5
    and-int/lit8 v0, v16, 0x1

    .line 106
    .line 107
    if-eqz v0, :cond_6

    .line 108
    .line 109
    invoke-direct {v8, v9, v11, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 110
    .line 111
    .line 112
    :cond_6
    and-int/lit8 v0, v16, 0x2

    .line 113
    .line 114
    if-eqz v0, :cond_7

    .line 115
    .line 116
    invoke-direct {v8, v9, v11, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 117
    .line 118
    .line 119
    :cond_7
    if-nez v17, :cond_8

    .line 120
    .line 121
    return-void

    .line 122
    :cond_8
    add-int/lit8 v17, v17, -0x1

    .line 123
    .line 124
    aget-object v0, v13, v17

    .line 125
    .line 126
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 127
    .line 128
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 129
    .line 130
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 131
    .line 132
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 133
    .line 134
    goto :goto_2

    .line 135
    :cond_9
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    shr-int/lit8 v1, v0, 0x1

    .line 140
    .line 141
    const/4 v2, 0x0

    .line 142
    :goto_3
    const/4 v3, 0x1

    .line 143
    if-lez v0, :cond_b

    .line 144
    .line 145
    add-int v4, v5, v2

    .line 146
    .line 147
    add-int/2addr v4, v1

    .line 148
    aget v4, v12, v4

    .line 149
    .line 150
    invoke-static {v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->getIDX(I)I

    .line 151
    .line 152
    .line 153
    move-result v4

    .line 154
    add-int/2addr v4, v9

    .line 155
    sub-int v6, v5, v2

    .line 156
    .line 157
    sub-int/2addr v6, v1

    .line 158
    sub-int/2addr v6, v3

    .line 159
    aget v6, v12, v6

    .line 160
    .line 161
    invoke-static {v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->getIDX(I)I

    .line 162
    .line 163
    .line 164
    move-result v6

    .line 165
    add-int/2addr v6, v9

    .line 166
    invoke-direct {v8, v4, v6, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    .line 167
    .line 168
    .line 169
    move-result v4

    .line 170
    if-gez v4, :cond_a

    .line 171
    .line 172
    add-int/lit8 v4, v1, 0x1

    .line 173
    .line 174
    add-int/2addr v2, v4

    .line 175
    and-int/lit8 v0, v0, 0x1

    .line 176
    .line 177
    xor-int/2addr v0, v3

    .line 178
    sub-int/2addr v1, v0

    .line 179
    :cond_a
    move v0, v1

    .line 180
    shr-int/lit8 v1, v0, 0x1

    .line 181
    .line 182
    goto :goto_3

    .line 183
    :cond_b
    if-lez v2, :cond_12

    .line 184
    .line 185
    sub-int v0, v5, v2

    .line 186
    .line 187
    invoke-static {v12, v0, v12, v5, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssBlockSwap([II[III)V

    .line 188
    .line 189
    .line 190
    add-int v1, v5, v2

    .line 191
    .line 192
    if-ge v1, v14, :cond_f

    .line 193
    .line 194
    aget v2, v12, v1

    .line 195
    .line 196
    if-gez v2, :cond_d

    .line 197
    .line 198
    move v2, v5

    .line 199
    :goto_4
    add-int/lit8 v4, v2, -0x1

    .line 200
    .line 201
    aget v4, v12, v4

    .line 202
    .line 203
    if-gez v4, :cond_c

    .line 204
    .line 205
    add-int/lit8 v2, v2, -0x1

    .line 206
    .line 207
    goto :goto_4

    .line 208
    :cond_c
    aget v4, v12, v1

    .line 209
    .line 210
    not-int v4, v4

    .line 211
    aput v4, v12, v1

    .line 212
    .line 213
    goto :goto_5

    .line 214
    :cond_d
    move v2, v5

    .line 215
    :goto_5
    move v4, v5

    .line 216
    :goto_6
    aget v6, v12, v4

    .line 217
    .line 218
    if-gez v6, :cond_e

    .line 219
    .line 220
    add-int/lit8 v4, v4, 0x1

    .line 221
    .line 222
    goto :goto_6

    .line 223
    :cond_e
    move v7, v2

    .line 224
    const/4 v2, 0x1

    .line 225
    goto :goto_7

    .line 226
    :cond_f
    move v4, v5

    .line 227
    move v7, v4

    .line 228
    const/4 v2, 0x0

    .line 229
    :goto_7
    sub-int v6, v7, v15

    .line 230
    .line 231
    sub-int v3, v14, v4

    .line 232
    .line 233
    if-gt v6, v3, :cond_10

    .line 234
    .line 235
    add-int/lit8 v3, v17, 0x1

    .line 236
    .line 237
    new-instance v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 238
    .line 239
    and-int/lit8 v6, v16, 0x2

    .line 240
    .line 241
    and-int/lit8 v2, v2, 0x1

    .line 242
    .line 243
    or-int/2addr v2, v6

    .line 244
    invoke-direct {v5, v4, v1, v14, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 245
    .line 246
    .line 247
    aput-object v5, v13, v17

    .line 248
    .line 249
    and-int/lit8 v16, v16, 0x1

    .line 250
    .line 251
    move v5, v0

    .line 252
    move/from16 v17, v3

    .line 253
    .line 254
    goto/16 :goto_0

    .line 255
    .line 256
    :cond_10
    if-ne v7, v5, :cond_11

    .line 257
    .line 258
    if-ne v5, v4, :cond_11

    .line 259
    .line 260
    shl-int/lit8 v2, v2, 0x1

    .line 261
    .line 262
    :cond_11
    add-int/lit8 v3, v17, 0x1

    .line 263
    .line 264
    new-instance v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 265
    .line 266
    and-int/lit8 v6, v16, 0x1

    .line 267
    .line 268
    and-int/lit8 v18, v2, 0x2

    .line 269
    .line 270
    or-int v6, v6, v18

    .line 271
    .line 272
    invoke-direct {v5, v15, v0, v7, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 273
    .line 274
    .line 275
    aput-object v5, v13, v17

    .line 276
    .line 277
    and-int/lit8 v0, v16, 0x2

    .line 278
    .line 279
    const/4 v5, 0x1

    .line 280
    and-int/2addr v2, v5

    .line 281
    or-int v16, v0, v2

    .line 282
    .line 283
    move v5, v1

    .line 284
    move/from16 v17, v3

    .line 285
    .line 286
    move v15, v4

    .line 287
    move v7, v14

    .line 288
    goto/16 :goto_0

    .line 289
    .line 290
    :cond_12
    and-int/lit8 v0, v16, 0x1

    .line 291
    .line 292
    if-eqz v0, :cond_13

    .line 293
    .line 294
    invoke-direct {v8, v9, v11, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 295
    .line 296
    .line 297
    :cond_13
    invoke-direct {v8, v9, v11, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 298
    .line 299
    .line 300
    and-int/lit8 v0, v16, 0x2

    .line 301
    .line 302
    if-eqz v0, :cond_14

    .line 303
    .line 304
    invoke-direct {v8, v9, v11, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMergeCheckEqual(III)V

    .line 305
    .line 306
    .line 307
    :cond_14
    if-nez v17, :cond_15

    .line 308
    .line 309
    return-void

    .line 310
    :cond_15
    add-int/lit8 v17, v17, -0x1

    .line 311
    .line 312
    aget-object v0, v13, v17

    .line 313
    .line 314
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 315
    .line 316
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 317
    .line 318
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 319
    .line 320
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 321
    .line 322
    goto/16 :goto_2
.end method

.method private ssMergeBackward(I[IIIIII)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p2

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    move/from16 v3, p4

    .line 8
    .line 9
    move/from16 v4, p5

    .line 10
    .line 11
    iget-object v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 12
    .line 13
    sub-int v6, p6, v4

    .line 14
    .line 15
    add-int v7, v2, v6

    .line 16
    .line 17
    invoke-static {v1, v2, v5, v4, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssBlockSwap([II[III)V

    .line 18
    .line 19
    .line 20
    const/4 v6, 0x1

    .line 21
    sub-int/2addr v7, v6

    .line 22
    aget v8, v1, v7

    .line 23
    .line 24
    if-gez v8, :cond_0

    .line 25
    .line 26
    not-int v8, v8

    .line 27
    add-int v8, p1, v8

    .line 28
    .line 29
    const/4 v9, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    add-int v8, p1, v8

    .line 32
    .line 33
    const/4 v9, 0x0

    .line 34
    :goto_0
    sub-int/2addr v4, v6

    .line 35
    aget v10, v5, v4

    .line 36
    .line 37
    if-gez v10, :cond_1

    .line 38
    .line 39
    or-int/lit8 v9, v9, 0x2

    .line 40
    .line 41
    not-int v10, v10

    .line 42
    :cond_1
    add-int v10, p1, v10

    .line 43
    .line 44
    add-int/lit8 v6, p6, -0x1

    .line 45
    .line 46
    aget v11, v5, v6

    .line 47
    .line 48
    move/from16 v12, p7

    .line 49
    .line 50
    :goto_1
    invoke-direct {v0, v8, v10, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    .line 51
    .line 52
    .line 53
    move-result v13

    .line 54
    if-lez v13, :cond_6

    .line 55
    .line 56
    and-int/lit8 v8, v9, 0x1

    .line 57
    .line 58
    if-eqz v8, :cond_3

    .line 59
    .line 60
    :goto_2
    add-int/lit8 v8, v6, -0x1

    .line 61
    .line 62
    aget v13, v1, v7

    .line 63
    .line 64
    aput v13, v5, v6

    .line 65
    .line 66
    add-int/lit8 v6, v7, -0x1

    .line 67
    .line 68
    aget v13, v5, v8

    .line 69
    .line 70
    aput v13, v1, v7

    .line 71
    .line 72
    aget v7, v1, v6

    .line 73
    .line 74
    if-ltz v7, :cond_2

    .line 75
    .line 76
    xor-int/lit8 v7, v9, 0x1

    .line 77
    .line 78
    move v9, v7

    .line 79
    move v7, v6

    .line 80
    move v6, v8

    .line 81
    goto :goto_3

    .line 82
    :cond_2
    move v7, v6

    .line 83
    move v6, v8

    .line 84
    goto :goto_2

    .line 85
    :cond_3
    :goto_3
    add-int/lit8 v8, v6, -0x1

    .line 86
    .line 87
    aget v13, v1, v7

    .line 88
    .line 89
    aput v13, v5, v6

    .line 90
    .line 91
    if-gt v7, v2, :cond_4

    .line 92
    .line 93
    aput v11, v1, v7

    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    add-int/lit8 v6, v7, -0x1

    .line 97
    .line 98
    aget v13, v5, v8

    .line 99
    .line 100
    aput v13, v1, v7

    .line 101
    .line 102
    aget v7, v1, v6

    .line 103
    .line 104
    if-gez v7, :cond_5

    .line 105
    .line 106
    or-int/lit8 v9, v9, 0x1

    .line 107
    .line 108
    not-int v7, v7

    .line 109
    :cond_5
    add-int v7, p1, v7

    .line 110
    .line 111
    move v14, v7

    .line 112
    move v7, v6

    .line 113
    move v6, v8

    .line 114
    move v8, v14

    .line 115
    goto :goto_1

    .line 116
    :cond_6
    if-gez v13, :cond_c

    .line 117
    .line 118
    and-int/lit8 v10, v9, 0x2

    .line 119
    .line 120
    if-eqz v10, :cond_8

    .line 121
    .line 122
    :goto_4
    add-int/lit8 v10, v6, -0x1

    .line 123
    .line 124
    aget v13, v5, v4

    .line 125
    .line 126
    aput v13, v5, v6

    .line 127
    .line 128
    add-int/lit8 v6, v4, -0x1

    .line 129
    .line 130
    aget v13, v5, v10

    .line 131
    .line 132
    aput v13, v5, v4

    .line 133
    .line 134
    aget v4, v5, v6

    .line 135
    .line 136
    if-ltz v4, :cond_7

    .line 137
    .line 138
    xor-int/lit8 v4, v9, 0x2

    .line 139
    .line 140
    move v9, v4

    .line 141
    move v4, v6

    .line 142
    move v6, v10

    .line 143
    goto :goto_5

    .line 144
    :cond_7
    move v4, v6

    .line 145
    move v6, v10

    .line 146
    goto :goto_4

    .line 147
    :cond_8
    :goto_5
    add-int/lit8 v10, v6, -0x1

    .line 148
    .line 149
    aget v13, v5, v4

    .line 150
    .line 151
    aput v13, v5, v6

    .line 152
    .line 153
    add-int/lit8 v6, v4, -0x1

    .line 154
    .line 155
    aget v13, v5, v10

    .line 156
    .line 157
    aput v13, v5, v4

    .line 158
    .line 159
    if-ge v6, v3, :cond_a

    .line 160
    .line 161
    :goto_6
    if-ge v2, v7, :cond_9

    .line 162
    .line 163
    add-int/lit8 v3, v10, -0x1

    .line 164
    .line 165
    aget v4, v1, v7

    .line 166
    .line 167
    aput v4, v5, v10

    .line 168
    .line 169
    add-int/lit8 v4, v7, -0x1

    .line 170
    .line 171
    aget v6, v5, v3

    .line 172
    .line 173
    aput v6, v1, v7

    .line 174
    .line 175
    move v10, v3

    .line 176
    move v7, v4

    .line 177
    goto :goto_6

    .line 178
    :cond_9
    aget v2, v1, v7

    .line 179
    .line 180
    aput v2, v5, v10

    .line 181
    .line 182
    aput v11, v1, v7

    .line 183
    .line 184
    return-void

    .line 185
    :cond_a
    aget v4, v5, v6

    .line 186
    .line 187
    if-gez v4, :cond_b

    .line 188
    .line 189
    or-int/lit8 v9, v9, 0x2

    .line 190
    .line 191
    not-int v4, v4

    .line 192
    :cond_b
    add-int v4, p1, v4

    .line 193
    .line 194
    move v14, v10

    .line 195
    move v10, v4

    .line 196
    move v4, v6

    .line 197
    move v6, v14

    .line 198
    goto/16 :goto_1

    .line 199
    .line 200
    :cond_c
    and-int/lit8 v8, v9, 0x1

    .line 201
    .line 202
    if-eqz v8, :cond_e

    .line 203
    .line 204
    :goto_7
    add-int/lit8 v8, v6, -0x1

    .line 205
    .line 206
    aget v10, v1, v7

    .line 207
    .line 208
    aput v10, v5, v6

    .line 209
    .line 210
    add-int/lit8 v6, v7, -0x1

    .line 211
    .line 212
    aget v10, v5, v8

    .line 213
    .line 214
    aput v10, v1, v7

    .line 215
    .line 216
    aget v7, v1, v6

    .line 217
    .line 218
    if-ltz v7, :cond_d

    .line 219
    .line 220
    xor-int/lit8 v9, v9, 0x1

    .line 221
    .line 222
    move v7, v6

    .line 223
    move v6, v8

    .line 224
    goto :goto_8

    .line 225
    :cond_d
    move v7, v6

    .line 226
    move v6, v8

    .line 227
    goto :goto_7

    .line 228
    :cond_e
    :goto_8
    add-int/lit8 v8, v6, -0x1

    .line 229
    .line 230
    aget v10, v1, v7

    .line 231
    .line 232
    not-int v10, v10

    .line 233
    aput v10, v5, v6

    .line 234
    .line 235
    if-gt v7, v2, :cond_f

    .line 236
    .line 237
    aput v11, v1, v7

    .line 238
    .line 239
    return-void

    .line 240
    :cond_f
    add-int/lit8 v6, v7, -0x1

    .line 241
    .line 242
    aget v10, v5, v8

    .line 243
    .line 244
    aput v10, v1, v7

    .line 245
    .line 246
    and-int/lit8 v7, v9, 0x2

    .line 247
    .line 248
    if-eqz v7, :cond_11

    .line 249
    .line 250
    :goto_9
    add-int/lit8 v7, v8, -0x1

    .line 251
    .line 252
    aget v10, v5, v4

    .line 253
    .line 254
    aput v10, v5, v8

    .line 255
    .line 256
    add-int/lit8 v8, v4, -0x1

    .line 257
    .line 258
    aget v10, v5, v7

    .line 259
    .line 260
    aput v10, v5, v4

    .line 261
    .line 262
    aget v4, v5, v8

    .line 263
    .line 264
    if-ltz v4, :cond_10

    .line 265
    .line 266
    xor-int/lit8 v9, v9, 0x2

    .line 267
    .line 268
    move v4, v8

    .line 269
    move v8, v7

    .line 270
    goto :goto_a

    .line 271
    :cond_10
    move v4, v8

    .line 272
    move v8, v7

    .line 273
    goto :goto_9

    .line 274
    :cond_11
    :goto_a
    add-int/lit8 v7, v8, -0x1

    .line 275
    .line 276
    aget v10, v5, v4

    .line 277
    .line 278
    aput v10, v5, v8

    .line 279
    .line 280
    add-int/lit8 v8, v4, -0x1

    .line 281
    .line 282
    aget v10, v5, v7

    .line 283
    .line 284
    aput v10, v5, v4

    .line 285
    .line 286
    if-ge v8, v3, :cond_13

    .line 287
    .line 288
    :goto_b
    if-ge v2, v6, :cond_12

    .line 289
    .line 290
    add-int/lit8 v3, v7, -0x1

    .line 291
    .line 292
    aget v4, v1, v6

    .line 293
    .line 294
    aput v4, v5, v7

    .line 295
    .line 296
    add-int/lit8 v4, v6, -0x1

    .line 297
    .line 298
    aget v7, v5, v3

    .line 299
    .line 300
    aput v7, v1, v6

    .line 301
    .line 302
    move v7, v3

    .line 303
    move v6, v4

    .line 304
    goto :goto_b

    .line 305
    :cond_12
    aget v2, v1, v6

    .line 306
    .line 307
    aput v2, v5, v7

    .line 308
    .line 309
    aput v11, v1, v6

    .line 310
    .line 311
    return-void

    .line 312
    :cond_13
    aget v4, v1, v6

    .line 313
    .line 314
    if-gez v4, :cond_14

    .line 315
    .line 316
    or-int/lit8 v9, v9, 0x1

    .line 317
    .line 318
    not-int v4, v4

    .line 319
    :cond_14
    add-int v4, p1, v4

    .line 320
    .line 321
    aget v10, v5, v8

    .line 322
    .line 323
    if-gez v10, :cond_15

    .line 324
    .line 325
    or-int/lit8 v9, v9, 0x2

    .line 326
    .line 327
    not-int v10, v10

    .line 328
    :cond_15
    add-int v10, p1, v10

    .line 329
    .line 330
    move v14, v8

    .line 331
    move v8, v4

    .line 332
    move v4, v14

    .line 333
    move v15, v7

    .line 334
    move v7, v6

    .line 335
    move v6, v15

    .line 336
    goto/16 :goto_1
.end method

.method private ssMergeCheckEqual(III)V
    .locals 3

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    aget v1, v0, p3

    .line 4
    .line 5
    if-ltz v1, :cond_0

    .line 6
    .line 7
    add-int/lit8 v1, p3, -0x1

    .line 8
    .line 9
    aget v1, v0, v1

    .line 10
    .line 11
    invoke-static {v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->getIDX(I)I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v1, p1

    .line 16
    aget v2, v0, p3

    .line 17
    .line 18
    add-int/2addr p1, v2

    .line 19
    invoke-direct {p0, v1, p1, p2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    aget p1, v0, p3

    .line 26
    .line 27
    not-int p1, p1

    .line 28
    aput p1, v0, p3

    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method private ssMergeForward(I[IIIIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    sub-int v1, p5, p4

    .line 4
    .line 5
    add-int v2, p3, v1

    .line 6
    .line 7
    add-int/lit8 v2, v2, -0x1

    .line 8
    .line 9
    invoke-static {p2, p3, v0, p4, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssBlockSwap([II[III)V

    .line 10
    .line 11
    .line 12
    aget v1, v0, p4

    .line 13
    .line 14
    :goto_0
    aget v3, p2, p3

    .line 15
    .line 16
    add-int/2addr v3, p1

    .line 17
    aget v4, v0, p5

    .line 18
    .line 19
    add-int/2addr v4, p1

    .line 20
    invoke-direct {p0, v3, v4, p7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompare(III)I

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-gez v3, :cond_2

    .line 25
    .line 26
    :goto_1
    add-int/lit8 v3, p4, 0x1

    .line 27
    .line 28
    aget v4, p2, p3

    .line 29
    .line 30
    aput v4, v0, p4

    .line 31
    .line 32
    if-gt v2, p3, :cond_0

    .line 33
    .line 34
    aput v1, p2, p3

    .line 35
    .line 36
    return-void

    .line 37
    :cond_0
    add-int/lit8 p4, p3, 0x1

    .line 38
    .line 39
    aget v4, v0, v3

    .line 40
    .line 41
    aput v4, p2, p3

    .line 42
    .line 43
    aget p3, p2, p4

    .line 44
    .line 45
    if-ltz p3, :cond_1

    .line 46
    .line 47
    move p3, p4

    .line 48
    :goto_2
    move p4, v3

    .line 49
    goto :goto_0

    .line 50
    :cond_1
    move p3, p4

    .line 51
    move p4, v3

    .line 52
    goto :goto_1

    .line 53
    :cond_2
    if-lez v3, :cond_6

    .line 54
    .line 55
    :goto_3
    add-int/lit8 v3, p4, 0x1

    .line 56
    .line 57
    aget v4, v0, p5

    .line 58
    .line 59
    aput v4, v0, p4

    .line 60
    .line 61
    add-int/lit8 p4, p5, 0x1

    .line 62
    .line 63
    aget v4, v0, v3

    .line 64
    .line 65
    aput v4, v0, p5

    .line 66
    .line 67
    if-gt p6, p4, :cond_4

    .line 68
    .line 69
    :goto_4
    if-ge p3, v2, :cond_3

    .line 70
    .line 71
    add-int/lit8 p1, v3, 0x1

    .line 72
    .line 73
    aget p4, p2, p3

    .line 74
    .line 75
    aput p4, v0, v3

    .line 76
    .line 77
    add-int/lit8 p4, p3, 0x1

    .line 78
    .line 79
    aget p5, v0, p1

    .line 80
    .line 81
    aput p5, p2, p3

    .line 82
    .line 83
    move v3, p1

    .line 84
    move p3, p4

    .line 85
    goto :goto_4

    .line 86
    :cond_3
    aget p1, p2, p3

    .line 87
    .line 88
    aput p1, v0, v3

    .line 89
    .line 90
    aput v1, p2, p3

    .line 91
    .line 92
    return-void

    .line 93
    :cond_4
    aget p5, v0, p4

    .line 94
    .line 95
    if-ltz p5, :cond_5

    .line 96
    .line 97
    move p5, p4

    .line 98
    goto :goto_2

    .line 99
    :cond_5
    move p5, p4

    .line 100
    move p4, v3

    .line 101
    goto :goto_3

    .line 102
    :cond_6
    aget v3, v0, p5

    .line 103
    .line 104
    not-int v3, v3

    .line 105
    aput v3, v0, p5

    .line 106
    .line 107
    :goto_5
    add-int/lit8 v3, p4, 0x1

    .line 108
    .line 109
    aget v4, p2, p3

    .line 110
    .line 111
    aput v4, v0, p4

    .line 112
    .line 113
    if-gt v2, p3, :cond_7

    .line 114
    .line 115
    aput v1, p2, p3

    .line 116
    .line 117
    return-void

    .line 118
    :cond_7
    add-int/lit8 p4, p3, 0x1

    .line 119
    .line 120
    aget v4, v0, v3

    .line 121
    .line 122
    aput v4, p2, p3

    .line 123
    .line 124
    aget p3, p2, p4

    .line 125
    .line 126
    if-ltz p3, :cond_b

    .line 127
    .line 128
    :goto_6
    add-int/lit8 p3, v3, 0x1

    .line 129
    .line 130
    aget v4, v0, p5

    .line 131
    .line 132
    aput v4, v0, v3

    .line 133
    .line 134
    add-int/lit8 v3, p5, 0x1

    .line 135
    .line 136
    aget v4, v0, p3

    .line 137
    .line 138
    aput v4, v0, p5

    .line 139
    .line 140
    if-gt p6, v3, :cond_9

    .line 141
    .line 142
    :goto_7
    if-ge p4, v2, :cond_8

    .line 143
    .line 144
    add-int/lit8 p1, p3, 0x1

    .line 145
    .line 146
    aget p5, p2, p4

    .line 147
    .line 148
    aput p5, v0, p3

    .line 149
    .line 150
    add-int/lit8 p3, p4, 0x1

    .line 151
    .line 152
    aget p5, v0, p1

    .line 153
    .line 154
    aput p5, p2, p4

    .line 155
    .line 156
    move p4, p3

    .line 157
    move p3, p1

    .line 158
    goto :goto_7

    .line 159
    :cond_8
    aget p1, p2, p4

    .line 160
    .line 161
    aput p1, v0, p3

    .line 162
    .line 163
    aput v1, p2, p4

    .line 164
    .line 165
    return-void

    .line 166
    :cond_9
    aget p5, v0, v3

    .line 167
    .line 168
    if-ltz p5, :cond_a

    .line 169
    .line 170
    move p5, v3

    .line 171
    move v5, p4

    .line 172
    move p4, p3

    .line 173
    move p3, v5

    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :cond_a
    move p5, v3

    .line 177
    move v3, p3

    .line 178
    goto :goto_6

    .line 179
    :cond_b
    move p3, p4

    .line 180
    move p4, v3

    .line 181
    goto :goto_5
.end method

.method private ssMultiKeyIntroSort(IIII)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 6
    .line 7
    iget-object v3, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 8
    .line 9
    const/16 v4, 0x40

    .line 10
    .line 11
    new-array v4, v4, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 12
    .line 13
    sub-int v5, p3, p2

    .line 14
    .line 15
    invoke-static {v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 16
    .line 17
    .line 18
    move-result v5

    .line 19
    const/4 v6, 0x0

    .line 20
    move/from16 v6, p3

    .line 21
    .line 22
    move/from16 v7, p4

    .line 23
    .line 24
    move v8, v5

    .line 25
    const/4 v9, 0x0

    .line 26
    const/4 v10, 0x0

    .line 27
    move/from16 v5, p2

    .line 28
    .line 29
    :goto_0
    sub-int v11, v6, v5

    .line 30
    .line 31
    const/16 v12, 0x8

    .line 32
    .line 33
    const/4 v13, 0x1

    .line 34
    if-gt v11, v12, :cond_2

    .line 35
    .line 36
    if-ge v13, v11, :cond_0

    .line 37
    .line 38
    invoke-direct {v0, v1, v5, v6, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssInsertionSort(IIII)V

    .line 39
    .line 40
    .line 41
    :cond_0
    if-nez v9, :cond_1

    .line 42
    .line 43
    return-void

    .line 44
    :cond_1
    add-int/lit8 v9, v9, -0x1

    .line 45
    .line 46
    aget-object v5, v4, v9

    .line 47
    .line 48
    iget v6, v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 49
    .line 50
    iget v7, v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 51
    .line 52
    iget v8, v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 53
    .line 54
    iget v5, v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 55
    .line 56
    move/from16 v18, v8

    .line 57
    .line 58
    move v8, v5

    .line 59
    move v5, v6

    .line 60
    move v6, v7

    .line 61
    move/from16 v7, v18

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    add-int/lit8 v12, v8, -0x1

    .line 65
    .line 66
    if-nez v8, :cond_3

    .line 67
    .line 68
    invoke-direct {v0, v7, v1, v5, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssHeapSort(IIII)V

    .line 69
    .line 70
    .line 71
    :cond_3
    const/4 v8, -0x1

    .line 72
    if-gez v12, :cond_b

    .line 73
    .line 74
    add-int/lit8 v11, v5, 0x1

    .line 75
    .line 76
    aget v12, v2, v5

    .line 77
    .line 78
    add-int/2addr v12, v1

    .line 79
    aget v12, v2, v12

    .line 80
    .line 81
    add-int/2addr v12, v7

    .line 82
    aget-byte v12, v3, v12

    .line 83
    .line 84
    and-int/lit16 v12, v12, 0xff

    .line 85
    .line 86
    move/from16 v18, v10

    .line 87
    .line 88
    move v10, v5

    .line 89
    move v5, v11

    .line 90
    move/from16 v11, v18

    .line 91
    .line 92
    :goto_1
    if-ge v5, v6, :cond_6

    .line 93
    .line 94
    aget v11, v2, v5

    .line 95
    .line 96
    add-int/2addr v11, v1

    .line 97
    aget v11, v2, v11

    .line 98
    .line 99
    add-int/2addr v11, v7

    .line 100
    aget-byte v11, v3, v11

    .line 101
    .line 102
    and-int/lit16 v11, v11, 0xff

    .line 103
    .line 104
    if-eq v11, v12, :cond_5

    .line 105
    .line 106
    sub-int v14, v5, v10

    .line 107
    .line 108
    if-ge v13, v14, :cond_4

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_4
    move v10, v5

    .line 112
    move v12, v11

    .line 113
    :cond_5
    add-int/lit8 v5, v5, 0x1

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_6
    :goto_2
    aget v14, v2, v10

    .line 117
    .line 118
    add-int/2addr v14, v1

    .line 119
    aget v14, v2, v14

    .line 120
    .line 121
    add-int/2addr v14, v7

    .line 122
    sub-int/2addr v14, v13

    .line 123
    aget-byte v14, v3, v14

    .line 124
    .line 125
    and-int/lit16 v14, v14, 0xff

    .line 126
    .line 127
    if-ge v14, v12, :cond_7

    .line 128
    .line 129
    invoke-direct {v0, v1, v10, v5, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssSubstringPartition(IIII)I

    .line 130
    .line 131
    .line 132
    move-result v10

    .line 133
    :cond_7
    sub-int v12, v5, v10

    .line 134
    .line 135
    sub-int v14, v6, v5

    .line 136
    .line 137
    if-gt v12, v14, :cond_8

    .line 138
    .line 139
    if-ge v13, v12, :cond_a

    .line 140
    .line 141
    add-int/lit8 v13, v9, 0x1

    .line 142
    .line 143
    new-instance v14, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 144
    .line 145
    invoke-direct {v14, v5, v6, v7, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 146
    .line 147
    .line 148
    aput-object v14, v4, v9

    .line 149
    .line 150
    add-int/lit8 v7, v7, 0x1

    .line 151
    .line 152
    invoke-static {v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    move v6, v5

    .line 157
    move v5, v10

    .line 158
    goto :goto_3

    .line 159
    :cond_8
    if-ge v13, v14, :cond_9

    .line 160
    .line 161
    add-int/lit8 v13, v9, 0x1

    .line 162
    .line 163
    new-instance v14, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 164
    .line 165
    add-int/lit8 v15, v7, 0x1

    .line 166
    .line 167
    invoke-static {v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 168
    .line 169
    .line 170
    move-result v12

    .line 171
    invoke-direct {v14, v10, v5, v15, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 172
    .line 173
    .line 174
    aput-object v14, v4, v9

    .line 175
    .line 176
    :goto_3
    move v10, v11

    .line 177
    move v9, v13

    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_9
    add-int/lit8 v7, v7, 0x1

    .line 181
    .line 182
    invoke-static {v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    move v6, v5

    .line 187
    move v5, v10

    .line 188
    :cond_a
    move v10, v11

    .line 189
    goto/16 :goto_0

    .line 190
    .line 191
    :cond_b
    invoke-direct {v0, v7, v1, v5, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssPivot(IIII)I

    .line 192
    .line 193
    .line 194
    move-result v11

    .line 195
    aget v14, v2, v11

    .line 196
    .line 197
    add-int/2addr v14, v1

    .line 198
    aget v14, v2, v14

    .line 199
    .line 200
    add-int/2addr v14, v7

    .line 201
    aget-byte v14, v3, v14

    .line 202
    .line 203
    and-int/lit16 v14, v14, 0xff

    .line 204
    .line 205
    invoke-static {v2, v5, v2, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 206
    .line 207
    .line 208
    add-int/lit8 v11, v5, 0x1

    .line 209
    .line 210
    :goto_4
    if-ge v11, v6, :cond_c

    .line 211
    .line 212
    aget v10, v2, v11

    .line 213
    .line 214
    add-int/2addr v10, v1

    .line 215
    aget v10, v2, v10

    .line 216
    .line 217
    add-int/2addr v10, v7

    .line 218
    aget-byte v10, v3, v10

    .line 219
    .line 220
    and-int/lit16 v10, v10, 0xff

    .line 221
    .line 222
    if-ne v10, v14, :cond_c

    .line 223
    .line 224
    add-int/lit8 v11, v11, 0x1

    .line 225
    .line 226
    goto :goto_4

    .line 227
    :cond_c
    if-ge v11, v6, :cond_e

    .line 228
    .line 229
    if-ge v10, v14, :cond_e

    .line 230
    .line 231
    move v15, v11

    .line 232
    :cond_d
    :goto_5
    add-int/2addr v11, v13

    .line 233
    if-ge v11, v6, :cond_f

    .line 234
    .line 235
    aget v10, v2, v11

    .line 236
    .line 237
    add-int/2addr v10, v1

    .line 238
    aget v10, v2, v10

    .line 239
    .line 240
    add-int/2addr v10, v7

    .line 241
    aget-byte v10, v3, v10

    .line 242
    .line 243
    and-int/lit16 v10, v10, 0xff

    .line 244
    .line 245
    if-gt v10, v14, :cond_f

    .line 246
    .line 247
    if-ne v10, v14, :cond_d

    .line 248
    .line 249
    invoke-static {v2, v11, v2, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 250
    .line 251
    .line 252
    add-int/lit8 v15, v15, 0x1

    .line 253
    .line 254
    goto :goto_5

    .line 255
    :cond_e
    move v15, v11

    .line 256
    :cond_f
    add-int/lit8 v16, v6, -0x1

    .line 257
    .line 258
    move/from16 v13, v16

    .line 259
    .line 260
    :goto_6
    if-ge v11, v13, :cond_10

    .line 261
    .line 262
    aget v10, v2, v13

    .line 263
    .line 264
    add-int/2addr v10, v1

    .line 265
    aget v10, v2, v10

    .line 266
    .line 267
    add-int/2addr v10, v7

    .line 268
    aget-byte v10, v3, v10

    .line 269
    .line 270
    and-int/lit16 v10, v10, 0xff

    .line 271
    .line 272
    if-ne v10, v14, :cond_10

    .line 273
    .line 274
    add-int/lit8 v13, v13, -0x1

    .line 275
    .line 276
    goto :goto_6

    .line 277
    :cond_10
    if-ge v11, v13, :cond_14

    .line 278
    .line 279
    if-le v10, v14, :cond_14

    .line 280
    .line 281
    move/from16 p3, v10

    .line 282
    .line 283
    move v10, v13

    .line 284
    :goto_7
    add-int/2addr v13, v8

    .line 285
    if-ge v11, v13, :cond_13

    .line 286
    .line 287
    aget v16, v2, v13

    .line 288
    .line 289
    add-int v16, v1, v16

    .line 290
    .line 291
    aget v16, v2, v16

    .line 292
    .line 293
    add-int v16, v7, v16

    .line 294
    .line 295
    aget-byte v8, v3, v16

    .line 296
    .line 297
    and-int/lit16 v8, v8, 0xff

    .line 298
    .line 299
    if-lt v8, v14, :cond_12

    .line 300
    .line 301
    if-ne v8, v14, :cond_11

    .line 302
    .line 303
    invoke-static {v2, v13, v2, v10}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 304
    .line 305
    .line 306
    add-int/lit8 v10, v10, -0x1

    .line 307
    .line 308
    :cond_11
    move/from16 p3, v8

    .line 309
    .line 310
    const/4 v8, -0x1

    .line 311
    goto :goto_7

    .line 312
    :cond_12
    move/from16 v18, v10

    .line 313
    .line 314
    move v10, v8

    .line 315
    move/from16 v8, v18

    .line 316
    .line 317
    goto :goto_8

    .line 318
    :cond_13
    move v8, v10

    .line 319
    move/from16 v10, p3

    .line 320
    .line 321
    goto :goto_8

    .line 322
    :cond_14
    move v8, v13

    .line 323
    :cond_15
    :goto_8
    if-ge v11, v13, :cond_19

    .line 324
    .line 325
    invoke-static {v2, v11, v2, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 326
    .line 327
    .line 328
    :cond_16
    :goto_9
    const/16 v16, 0x1

    .line 329
    .line 330
    add-int/lit8 v11, v11, 0x1

    .line 331
    .line 332
    if-ge v11, v13, :cond_17

    .line 333
    .line 334
    aget v10, v2, v11

    .line 335
    .line 336
    add-int/2addr v10, v1

    .line 337
    aget v10, v2, v10

    .line 338
    .line 339
    add-int/2addr v10, v7

    .line 340
    aget-byte v10, v3, v10

    .line 341
    .line 342
    and-int/lit16 v10, v10, 0xff

    .line 343
    .line 344
    if-gt v10, v14, :cond_17

    .line 345
    .line 346
    if-ne v10, v14, :cond_16

    .line 347
    .line 348
    invoke-static {v2, v11, v2, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 349
    .line 350
    .line 351
    add-int/lit8 v15, v15, 0x1

    .line 352
    .line 353
    goto :goto_9

    .line 354
    :cond_17
    const/16 v16, -0x1

    .line 355
    .line 356
    :cond_18
    :goto_a
    add-int/lit8 v13, v13, -0x1

    .line 357
    .line 358
    if-ge v11, v13, :cond_15

    .line 359
    .line 360
    aget v10, v2, v13

    .line 361
    .line 362
    add-int/2addr v10, v1

    .line 363
    aget v10, v2, v10

    .line 364
    .line 365
    add-int/2addr v10, v7

    .line 366
    aget-byte v10, v3, v10

    .line 367
    .line 368
    and-int/lit16 v10, v10, 0xff

    .line 369
    .line 370
    if-lt v10, v14, :cond_15

    .line 371
    .line 372
    if-ne v10, v14, :cond_18

    .line 373
    .line 374
    invoke-static {v2, v13, v2, v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 375
    .line 376
    .line 377
    add-int/lit8 v8, v8, -0x1

    .line 378
    .line 379
    goto :goto_a

    .line 380
    :cond_19
    if-gt v15, v8, :cond_24

    .line 381
    .line 382
    add-int/lit8 v13, v11, -0x1

    .line 383
    .line 384
    move/from16 p3, v10

    .line 385
    .line 386
    sub-int v10, v15, v5

    .line 387
    .line 388
    sub-int v15, v11, v15

    .line 389
    .line 390
    if-le v10, v15, :cond_1a

    .line 391
    .line 392
    move v10, v15

    .line 393
    :cond_1a
    sub-int v16, v11, v10

    .line 394
    .line 395
    move/from16 p4, v12

    .line 396
    .line 397
    move v12, v5

    .line 398
    move/from16 v18, v16

    .line 399
    .line 400
    move/from16 v16, v11

    .line 401
    .line 402
    move/from16 v11, v18

    .line 403
    .line 404
    :goto_b
    if-lez v10, :cond_1b

    .line 405
    .line 406
    invoke-static {v2, v12, v2, v11}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 407
    .line 408
    .line 409
    add-int/lit8 v10, v10, -0x1

    .line 410
    .line 411
    const/16 v17, 0x1

    .line 412
    .line 413
    add-int/lit8 v12, v12, 0x1

    .line 414
    .line 415
    add-int/lit8 v11, v11, 0x1

    .line 416
    .line 417
    goto :goto_b

    .line 418
    :cond_1b
    const/16 v17, 0x1

    .line 419
    .line 420
    sub-int v10, v8, v13

    .line 421
    .line 422
    sub-int v8, v6, v8

    .line 423
    .line 424
    add-int/lit8 v8, v8, -0x1

    .line 425
    .line 426
    if-le v10, v8, :cond_1c

    .line 427
    .line 428
    goto :goto_c

    .line 429
    :cond_1c
    move v8, v10

    .line 430
    :goto_c
    sub-int v11, v6, v8

    .line 431
    .line 432
    move v12, v11

    .line 433
    move/from16 v11, v16

    .line 434
    .line 435
    :goto_d
    if-lez v8, :cond_1d

    .line 436
    .line 437
    invoke-static {v2, v11, v2, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 438
    .line 439
    .line 440
    add-int/lit8 v8, v8, -0x1

    .line 441
    .line 442
    add-int/lit8 v11, v11, 0x1

    .line 443
    .line 444
    add-int/lit8 v12, v12, 0x1

    .line 445
    .line 446
    goto :goto_d

    .line 447
    :cond_1d
    add-int v8, v5, v15

    .line 448
    .line 449
    sub-int v10, v6, v10

    .line 450
    .line 451
    aget v11, v2, v8

    .line 452
    .line 453
    add-int/2addr v11, v1

    .line 454
    aget v11, v2, v11

    .line 455
    .line 456
    add-int/2addr v11, v7

    .line 457
    add-int/lit8 v11, v11, -0x1

    .line 458
    .line 459
    aget-byte v11, v3, v11

    .line 460
    .line 461
    and-int/lit16 v11, v11, 0xff

    .line 462
    .line 463
    if-gt v14, v11, :cond_1e

    .line 464
    .line 465
    move v11, v8

    .line 466
    goto :goto_e

    .line 467
    :cond_1e
    invoke-direct {v0, v1, v8, v10, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssSubstringPartition(IIII)I

    .line 468
    .line 469
    .line 470
    move-result v11

    .line 471
    :goto_e
    sub-int v12, v8, v5

    .line 472
    .line 473
    sub-int v13, v6, v10

    .line 474
    .line 475
    if-gt v12, v13, :cond_21

    .line 476
    .line 477
    sub-int v14, v10, v11

    .line 478
    .line 479
    if-gt v13, v14, :cond_1f

    .line 480
    .line 481
    add-int/lit8 v12, v9, 0x1

    .line 482
    .line 483
    new-instance v13, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 484
    .line 485
    add-int/lit8 v15, v7, 0x1

    .line 486
    .line 487
    invoke-static {v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 488
    .line 489
    .line 490
    move-result v14

    .line 491
    invoke-direct {v13, v11, v10, v15, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 492
    .line 493
    .line 494
    aput-object v13, v4, v9

    .line 495
    .line 496
    add-int/lit8 v9, v12, 0x1

    .line 497
    .line 498
    new-instance v11, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 499
    .line 500
    move/from16 v15, p4

    .line 501
    .line 502
    invoke-direct {v11, v10, v6, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 503
    .line 504
    .line 505
    aput-object v11, v4, v12

    .line 506
    .line 507
    :goto_f
    move/from16 v10, p3

    .line 508
    .line 509
    move v6, v8

    .line 510
    move v8, v15

    .line 511
    goto/16 :goto_0

    .line 512
    .line 513
    :cond_1f
    move/from16 v15, p4

    .line 514
    .line 515
    if-gt v12, v14, :cond_20

    .line 516
    .line 517
    add-int/lit8 v12, v9, 0x1

    .line 518
    .line 519
    new-instance v13, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 520
    .line 521
    invoke-direct {v13, v10, v6, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 522
    .line 523
    .line 524
    aput-object v13, v4, v9

    .line 525
    .line 526
    add-int/lit8 v9, v12, 0x1

    .line 527
    .line 528
    new-instance v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 529
    .line 530
    add-int/lit8 v13, v7, 0x1

    .line 531
    .line 532
    invoke-static {v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 533
    .line 534
    .line 535
    move-result v14

    .line 536
    invoke-direct {v6, v11, v10, v13, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 537
    .line 538
    .line 539
    aput-object v6, v4, v12

    .line 540
    .line 541
    goto :goto_f

    .line 542
    :cond_20
    add-int/lit8 v12, v9, 0x1

    .line 543
    .line 544
    new-instance v13, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 545
    .line 546
    invoke-direct {v13, v10, v6, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 547
    .line 548
    .line 549
    aput-object v13, v4, v9

    .line 550
    .line 551
    add-int/lit8 v9, v12, 0x1

    .line 552
    .line 553
    new-instance v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 554
    .line 555
    invoke-direct {v6, v5, v8, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 556
    .line 557
    .line 558
    aput-object v6, v4, v12

    .line 559
    .line 560
    add-int/lit8 v7, v7, 0x1

    .line 561
    .line 562
    invoke-static {v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 563
    .line 564
    .line 565
    move-result v8

    .line 566
    goto :goto_11

    .line 567
    :cond_21
    move/from16 v15, p4

    .line 568
    .line 569
    sub-int v14, v10, v11

    .line 570
    .line 571
    if-gt v12, v14, :cond_22

    .line 572
    .line 573
    add-int/lit8 v12, v9, 0x1

    .line 574
    .line 575
    new-instance v13, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 576
    .line 577
    add-int/lit8 v0, v7, 0x1

    .line 578
    .line 579
    invoke-static {v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 580
    .line 581
    .line 582
    move-result v14

    .line 583
    invoke-direct {v13, v11, v10, v0, v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 584
    .line 585
    .line 586
    aput-object v13, v4, v9

    .line 587
    .line 588
    add-int/lit8 v9, v12, 0x1

    .line 589
    .line 590
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 591
    .line 592
    invoke-direct {v0, v5, v8, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 593
    .line 594
    .line 595
    aput-object v0, v4, v12

    .line 596
    .line 597
    :goto_10
    move-object/from16 v0, p0

    .line 598
    .line 599
    move v5, v10

    .line 600
    move v8, v15

    .line 601
    goto :goto_13

    .line 602
    :cond_22
    if-gt v13, v14, :cond_23

    .line 603
    .line 604
    add-int/lit8 v0, v9, 0x1

    .line 605
    .line 606
    new-instance v12, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 607
    .line 608
    invoke-direct {v12, v5, v8, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 609
    .line 610
    .line 611
    aput-object v12, v4, v9

    .line 612
    .line 613
    add-int/lit8 v9, v0, 0x1

    .line 614
    .line 615
    new-instance v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 616
    .line 617
    add-int/lit8 v8, v7, 0x1

    .line 618
    .line 619
    invoke-static {v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 620
    .line 621
    .line 622
    move-result v12

    .line 623
    invoke-direct {v5, v11, v10, v8, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 624
    .line 625
    .line 626
    aput-object v5, v4, v0

    .line 627
    .line 628
    goto :goto_10

    .line 629
    :cond_23
    add-int/lit8 v0, v9, 0x1

    .line 630
    .line 631
    new-instance v12, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 632
    .line 633
    invoke-direct {v12, v5, v8, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 634
    .line 635
    .line 636
    aput-object v12, v4, v9

    .line 637
    .line 638
    add-int/lit8 v9, v0, 0x1

    .line 639
    .line 640
    new-instance v5, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 641
    .line 642
    invoke-direct {v5, v10, v6, v7, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 643
    .line 644
    .line 645
    aput-object v5, v4, v0

    .line 646
    .line 647
    add-int/lit8 v7, v7, 0x1

    .line 648
    .line 649
    invoke-static {v14}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 650
    .line 651
    .line 652
    move-result v8

    .line 653
    move-object/from16 v0, p0

    .line 654
    .line 655
    :goto_11
    move v6, v10

    .line 656
    move v5, v11

    .line 657
    goto :goto_13

    .line 658
    :cond_24
    move/from16 p3, v10

    .line 659
    .line 660
    move v15, v12

    .line 661
    add-int/lit8 v12, v15, 0x1

    .line 662
    .line 663
    aget v0, v2, v5

    .line 664
    .line 665
    add-int/2addr v0, v1

    .line 666
    aget v0, v2, v0

    .line 667
    .line 668
    add-int/2addr v0, v7

    .line 669
    const/4 v8, 0x1

    .line 670
    sub-int/2addr v0, v8

    .line 671
    aget-byte v0, v3, v0

    .line 672
    .line 673
    and-int/lit16 v0, v0, 0xff

    .line 674
    .line 675
    if-ge v0, v14, :cond_25

    .line 676
    .line 677
    move-object/from16 v0, p0

    .line 678
    .line 679
    invoke-direct {v0, v1, v5, v6, v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssSubstringPartition(IIII)I

    .line 680
    .line 681
    .line 682
    move-result v5

    .line 683
    sub-int v8, v6, v5

    .line 684
    .line 685
    invoke-static {v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssLog(I)I

    .line 686
    .line 687
    .line 688
    move-result v8

    .line 689
    goto :goto_12

    .line 690
    :cond_25
    move-object/from16 v0, p0

    .line 691
    .line 692
    move v8, v12

    .line 693
    :goto_12
    add-int/lit8 v7, v7, 0x1

    .line 694
    .line 695
    :goto_13
    move/from16 v10, p3

    .line 696
    .line 697
    goto/16 :goto_0
.end method

.method private ssPivot(IIII)I
    .locals 16

    .line 1
    sub-int v0, p4, p3

    .line 2
    .line 3
    div-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    add-int v6, p3, v1

    .line 6
    .line 7
    const/16 v1, 0x200

    .line 8
    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v5, p4, -0x1

    .line 16
    .line 17
    move-object/from16 v0, p0

    .line 18
    .line 19
    move/from16 v1, p1

    .line 20
    .line 21
    move/from16 v2, p2

    .line 22
    .line 23
    move/from16 v3, p3

    .line 24
    .line 25
    move v4, v6

    .line 26
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    return v0

    .line 31
    :cond_0
    shr-int/lit8 v0, v0, 0x2

    .line 32
    .line 33
    add-int v4, p3, v0

    .line 34
    .line 35
    add-int/lit8 v7, p4, -0x1

    .line 36
    .line 37
    sub-int v8, v7, v0

    .line 38
    .line 39
    move-object/from16 v0, p0

    .line 40
    .line 41
    move/from16 v1, p1

    .line 42
    .line 43
    move/from16 v2, p2

    .line 44
    .line 45
    move/from16 v3, p3

    .line 46
    .line 47
    move v5, v6

    .line 48
    move v6, v8

    .line 49
    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian5(IIIIIII)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0

    .line 54
    :cond_1
    shr-int/lit8 v8, v0, 0x3

    .line 55
    .line 56
    add-int v4, p3, v8

    .line 57
    .line 58
    shl-int/lit8 v9, v8, 0x1

    .line 59
    .line 60
    add-int v5, p3, v9

    .line 61
    .line 62
    move-object/from16 v0, p0

    .line 63
    .line 64
    move/from16 v1, p1

    .line 65
    .line 66
    move/from16 v2, p2

    .line 67
    .line 68
    move/from16 v3, p3

    .line 69
    .line 70
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    .line 71
    .line 72
    .line 73
    move-result v13

    .line 74
    sub-int v5, v6, v8

    .line 75
    .line 76
    add-int v7, v6, v8

    .line 77
    .line 78
    move-object/from16 v2, p0

    .line 79
    .line 80
    move/from16 v3, p1

    .line 81
    .line 82
    move/from16 v4, p2

    .line 83
    .line 84
    invoke-direct/range {v2 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    .line 85
    .line 86
    .line 87
    move-result v14

    .line 88
    add-int/lit8 v5, p4, -0x1

    .line 89
    .line 90
    sub-int v3, v5, v9

    .line 91
    .line 92
    sub-int v4, v5, v8

    .line 93
    .line 94
    move/from16 v2, p2

    .line 95
    .line 96
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    .line 97
    .line 98
    .line 99
    move-result v15

    .line 100
    move-object/from16 v10, p0

    .line 101
    .line 102
    move/from16 v11, p1

    .line 103
    .line 104
    move/from16 v12, p2

    .line 105
    .line 106
    invoke-direct/range {v10 .. v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMedian3(IIIII)I

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    return v0
.end method

.method private ssSubstringPartition(IIII)I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    add-int/lit8 v1, p2, -0x1

    .line 4
    .line 5
    :goto_0
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    if-ge v1, p3, :cond_0

    .line 8
    .line 9
    aget v2, v0, v1

    .line 10
    .line 11
    add-int v3, p1, v2

    .line 12
    .line 13
    aget v3, v0, v3

    .line 14
    .line 15
    add-int/2addr v3, p4

    .line 16
    add-int v4, p1, v2

    .line 17
    .line 18
    add-int/lit8 v4, v4, 0x1

    .line 19
    .line 20
    aget v4, v0, v4

    .line 21
    .line 22
    add-int/lit8 v4, v4, 0x1

    .line 23
    .line 24
    if-lt v3, v4, :cond_0

    .line 25
    .line 26
    not-int v2, v2

    .line 27
    aput v2, v0, v1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    :goto_1
    add-int/lit8 p3, p3, -0x1

    .line 31
    .line 32
    if-ge v1, p3, :cond_1

    .line 33
    .line 34
    aget v2, v0, p3

    .line 35
    .line 36
    add-int v3, p1, v2

    .line 37
    .line 38
    aget v3, v0, v3

    .line 39
    .line 40
    add-int/2addr v3, p4

    .line 41
    add-int/2addr v2, p1

    .line 42
    add-int/lit8 v2, v2, 0x1

    .line 43
    .line 44
    aget v2, v0, v2

    .line 45
    .line 46
    add-int/lit8 v2, v2, 0x1

    .line 47
    .line 48
    if-ge v3, v2, :cond_1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    if-gt p3, v1, :cond_3

    .line 52
    .line 53
    if-ge p2, v1, :cond_2

    .line 54
    .line 55
    aget p1, v0, p2

    .line 56
    .line 57
    not-int p1, p1

    .line 58
    aput p1, v0, p2

    .line 59
    .line 60
    :cond_2
    return v1

    .line 61
    :cond_3
    aget v2, v0, p3

    .line 62
    .line 63
    not-int v2, v2

    .line 64
    aget v3, v0, v1

    .line 65
    .line 66
    aput v3, v0, p3

    .line 67
    .line 68
    aput v2, v0, v1

    .line 69
    .line 70
    goto :goto_0
.end method

.method private subStringSort(III[IIIIZI)V
    .locals 24

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    move/from16 v10, p1

    .line 4
    .line 5
    move/from16 v11, p3

    .line 6
    .line 7
    move/from16 v12, p7

    .line 8
    .line 9
    iget-object v13, v9, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 10
    .line 11
    if-eqz p8, :cond_0

    .line 12
    .line 13
    add-int/lit8 v0, p2, 0x1

    .line 14
    .line 15
    move v14, v0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move/from16 v14, p2

    .line 18
    .line 19
    :goto_0
    const/4 v0, 0x0

    .line 20
    move v0, v14

    .line 21
    const/4 v15, 0x0

    .line 22
    :goto_1
    add-int/lit16 v8, v0, 0x400

    .line 23
    .line 24
    const/16 v1, 0x400

    .line 25
    .line 26
    const/16 v16, 0x1

    .line 27
    .line 28
    if-ge v8, v11, :cond_3

    .line 29
    .line 30
    invoke-direct {v9, v10, v0, v8, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMultiKeyIntroSort(IIII)V

    .line 31
    .line 32
    .line 33
    sub-int v2, v11, v8

    .line 34
    .line 35
    move/from16 v7, p6

    .line 36
    .line 37
    if-gt v2, v7, :cond_1

    .line 38
    .line 39
    move-object/from16 v18, p4

    .line 40
    .line 41
    move/from16 v19, p5

    .line 42
    .line 43
    move/from16 v17, v7

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_1
    move/from16 v17, v2

    .line 47
    .line 48
    move/from16 v19, v8

    .line 49
    .line 50
    move-object/from16 v18, v13

    .line 51
    .line 52
    :goto_2
    move v3, v0

    .line 53
    move/from16 v21, v15

    .line 54
    .line 55
    const/16 v20, 0x400

    .line 56
    .line 57
    :goto_3
    and-int/lit8 v0, v21, 0x1

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    sub-int v22, v3, v20

    .line 62
    .line 63
    add-int v4, v3, v20

    .line 64
    .line 65
    move-object/from16 v0, p0

    .line 66
    .line 67
    move/from16 v1, p1

    .line 68
    .line 69
    move/from16 v2, v22

    .line 70
    .line 71
    move-object/from16 v5, v18

    .line 72
    .line 73
    move/from16 v6, v19

    .line 74
    .line 75
    move/from16 v7, v17

    .line 76
    .line 77
    move/from16 v23, v8

    .line 78
    .line 79
    move/from16 v8, p7

    .line 80
    .line 81
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMerge(IIII[IIII)V

    .line 82
    .line 83
    .line 84
    shl-int/lit8 v20, v20, 0x1

    .line 85
    .line 86
    ushr-int/lit8 v21, v21, 0x1

    .line 87
    .line 88
    move/from16 v7, p6

    .line 89
    .line 90
    move/from16 v3, v22

    .line 91
    .line 92
    move/from16 v8, v23

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_2
    move/from16 v23, v8

    .line 96
    .line 97
    add-int/lit8 v15, v15, 0x1

    .line 98
    .line 99
    move/from16 v0, v23

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    invoke-direct {v9, v10, v0, v11, v12}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMultiKeyIntroSort(IIII)V

    .line 103
    .line 104
    .line 105
    move v3, v0

    .line 106
    move/from16 v17, v15

    .line 107
    .line 108
    const/16 v15, 0x400

    .line 109
    .line 110
    :goto_4
    if-eqz v17, :cond_5

    .line 111
    .line 112
    and-int/lit8 v0, v17, 0x1

    .line 113
    .line 114
    if-eqz v0, :cond_4

    .line 115
    .line 116
    sub-int v18, v3, v15

    .line 117
    .line 118
    move-object/from16 v0, p0

    .line 119
    .line 120
    move/from16 v1, p1

    .line 121
    .line 122
    move/from16 v2, v18

    .line 123
    .line 124
    move/from16 v4, p3

    .line 125
    .line 126
    move-object/from16 v5, p4

    .line 127
    .line 128
    move/from16 v6, p5

    .line 129
    .line 130
    move/from16 v7, p6

    .line 131
    .line 132
    move/from16 v8, p7

    .line 133
    .line 134
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssMerge(IIII[IIII)V

    .line 135
    .line 136
    .line 137
    move/from16 v3, v18

    .line 138
    .line 139
    :cond_4
    shl-int/lit8 v15, v15, 0x1

    .line 140
    .line 141
    shr-int/lit8 v17, v17, 0x1

    .line 142
    .line 143
    goto :goto_4

    .line 144
    :cond_5
    if-eqz p8, :cond_9

    .line 145
    .line 146
    add-int/lit8 v0, v14, -0x1

    .line 147
    .line 148
    aget v6, v13, v0

    .line 149
    .line 150
    const/4 v0, 0x1

    .line 151
    :goto_5
    if-ge v14, v11, :cond_7

    .line 152
    .line 153
    aget v1, v13, v14

    .line 154
    .line 155
    if-ltz v1, :cond_6

    .line 156
    .line 157
    add-int v2, v10, v6

    .line 158
    .line 159
    add-int v3, v10, v1

    .line 160
    .line 161
    move-object/from16 v0, p0

    .line 162
    .line 163
    move/from16 v1, p1

    .line 164
    .line 165
    move/from16 v4, p7

    .line 166
    .line 167
    move/from16 v5, p9

    .line 168
    .line 169
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->ssCompareLast(IIIII)I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    if-lez v0, :cond_7

    .line 174
    .line 175
    :cond_6
    add-int/lit8 v1, v14, -0x1

    .line 176
    .line 177
    aget v2, v13, v14

    .line 178
    .line 179
    aput v2, v13, v1

    .line 180
    .line 181
    add-int/lit8 v14, v14, 0x1

    .line 182
    .line 183
    goto :goto_5

    .line 184
    :cond_7
    if-nez v0, :cond_8

    .line 185
    .line 186
    aget v0, v13, v14

    .line 187
    .line 188
    not-int v0, v0

    .line 189
    aput v0, v13, v14

    .line 190
    .line 191
    :cond_8
    add-int/lit8 v14, v14, -0x1

    .line 192
    .line 193
    aput v6, v13, v14

    .line 194
    .line 195
    :cond_9
    return-void
.end method

.method private static swapElements([II[II)V
    .locals 2

    .line 1
    aget v0, p0, p1

    .line 2
    .line 3
    aget v1, p2, p3

    .line 4
    .line 5
    aput v1, p0, p1

    .line 6
    .line 7
    aput v0, p2, p3

    .line 8
    .line 9
    return-void
.end method

.method private trCopy(IIIIIII)V
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    add-int/lit8 v1, p5, -0x1

    .line 4
    .line 5
    add-int/lit8 p4, p4, -0x1

    .line 6
    .line 7
    :goto_0
    if-gt p3, p4, :cond_2

    .line 8
    .line 9
    aget v2, v0, p3

    .line 10
    .line 11
    sub-int/2addr v2, p7

    .line 12
    if-gez v2, :cond_0

    .line 13
    .line 14
    sub-int v3, p2, p1

    .line 15
    .line 16
    add-int/2addr v2, v3

    .line 17
    :cond_0
    add-int v3, p1, v2

    .line 18
    .line 19
    aget v4, v0, v3

    .line 20
    .line 21
    if-ne v4, v1, :cond_1

    .line 22
    .line 23
    add-int/lit8 p4, p4, 0x1

    .line 24
    .line 25
    aput v2, v0, p4

    .line 26
    .line 27
    aput p4, v0, v3

    .line 28
    .line 29
    :cond_1
    add-int/lit8 p3, p3, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    add-int/lit8 p6, p6, -0x1

    .line 33
    .line 34
    add-int/lit8 p4, p4, 0x1

    .line 35
    .line 36
    :goto_1
    if-ge p4, p5, :cond_5

    .line 37
    .line 38
    aget p3, v0, p6

    .line 39
    .line 40
    sub-int/2addr p3, p7

    .line 41
    if-gez p3, :cond_3

    .line 42
    .line 43
    sub-int v2, p2, p1

    .line 44
    .line 45
    add-int/2addr p3, v2

    .line 46
    :cond_3
    add-int v2, p1, p3

    .line 47
    .line 48
    aget v3, v0, v2

    .line 49
    .line 50
    if-ne v3, v1, :cond_4

    .line 51
    .line 52
    add-int/lit8 p5, p5, -0x1

    .line 53
    .line 54
    aput p3, v0, p5

    .line 55
    .line 56
    aput p5, v0, v2

    .line 57
    .line 58
    :cond_4
    add-int/lit8 p6, p6, -0x1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_5
    return-void
.end method

.method private trFixdown(IIIIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    add-int v1, p4, p5

    .line 4
    .line 5
    aget v1, v0, v1

    .line 6
    .line 7
    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    :goto_0
    mul-int/lit8 v3, p5, 0x2

    .line 12
    .line 13
    add-int/lit8 v3, v3, 0x1

    .line 14
    .line 15
    if-ge v3, p6, :cond_2

    .line 16
    .line 17
    add-int/lit8 v4, v3, 0x1

    .line 18
    .line 19
    add-int v5, p4, v3

    .line 20
    .line 21
    aget v5, v0, v5

    .line 22
    .line 23
    invoke-direct {p0, p1, p2, p3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 24
    .line 25
    .line 26
    move-result v5

    .line 27
    add-int v6, p4, v4

    .line 28
    .line 29
    aget v6, v0, v6

    .line 30
    .line 31
    invoke-direct {p0, p1, p2, p3, v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 32
    .line 33
    .line 34
    move-result v6

    .line 35
    if-ge v5, v6, :cond_0

    .line 36
    .line 37
    move v3, v4

    .line 38
    move v5, v6

    .line 39
    :cond_0
    if-gt v5, v2, :cond_1

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_1
    add-int/2addr p5, p4

    .line 43
    add-int v4, p4, v3

    .line 44
    .line 45
    aget v4, v0, v4

    .line 46
    .line 47
    aput v4, v0, p5

    .line 48
    .line 49
    move p5, v3

    .line 50
    goto :goto_0

    .line 51
    :cond_2
    :goto_1
    add-int/2addr p4, p5

    .line 52
    aput v1, v0, p4

    .line 53
    .line 54
    return-void
.end method

.method private trGetC(IIII)I
    .locals 1

    .line 1
    add-int v0, p2, p4

    .line 2
    .line 3
    if-ge v0, p3, :cond_0

    .line 4
    .line 5
    iget-object p1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 6
    .line 7
    aget p1, p1, v0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 11
    .line 12
    sub-int/2addr p2, p1

    .line 13
    add-int/2addr p2, p4

    .line 14
    sub-int/2addr p3, p1

    .line 15
    rem-int/2addr p2, p3

    .line 16
    add-int/2addr p1, p2

    .line 17
    aget p1, v0, p1

    .line 18
    .line 19
    :goto_0
    return p1
.end method

.method private trHeapSort(IIIII)V
    .locals 16

    .line 1
    move-object/from16 v7, p0

    .line 2
    .line 3
    move/from16 v8, p1

    .line 4
    .line 5
    move/from16 v9, p2

    .line 6
    .line 7
    move/from16 v10, p3

    .line 8
    .line 9
    move/from16 v11, p4

    .line 10
    .line 11
    iget-object v12, v7, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 12
    .line 13
    rem-int/lit8 v13, p5, 0x2

    .line 14
    .line 15
    if-nez v13, :cond_1

    .line 16
    .line 17
    add-int/lit8 v0, p5, -0x1

    .line 18
    .line 19
    div-int/lit8 v1, v0, 0x2

    .line 20
    .line 21
    add-int/2addr v1, v11

    .line 22
    aget v2, v12, v1

    .line 23
    .line 24
    invoke-direct {v7, v8, v9, v10, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    add-int v3, v11, v0

    .line 29
    .line 30
    aget v4, v12, v3

    .line 31
    .line 32
    invoke-direct {v7, v8, v9, v10, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    if-ge v2, v4, :cond_0

    .line 37
    .line 38
    invoke-static {v12, v3, v12, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 39
    .line 40
    .line 41
    :cond_0
    move v14, v0

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move/from16 v14, p5

    .line 44
    .line 45
    :goto_0
    div-int/lit8 v0, v14, 0x2

    .line 46
    .line 47
    add-int/lit8 v0, v0, -0x1

    .line 48
    .line 49
    move v15, v0

    .line 50
    :goto_1
    if-ltz v15, :cond_2

    .line 51
    .line 52
    move-object/from16 v0, p0

    .line 53
    .line 54
    move/from16 v1, p1

    .line 55
    .line 56
    move/from16 v2, p2

    .line 57
    .line 58
    move/from16 v3, p3

    .line 59
    .line 60
    move/from16 v4, p4

    .line 61
    .line 62
    move v5, v15

    .line 63
    move v6, v14

    .line 64
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trFixdown(IIIIII)V

    .line 65
    .line 66
    .line 67
    add-int/lit8 v15, v15, -0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    if-nez v13, :cond_3

    .line 71
    .line 72
    add-int v0, v11, v14

    .line 73
    .line 74
    invoke-static {v12, v11, v12, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 75
    .line 76
    .line 77
    const/4 v5, 0x0

    .line 78
    move-object/from16 v0, p0

    .line 79
    .line 80
    move/from16 v1, p1

    .line 81
    .line 82
    move/from16 v2, p2

    .line 83
    .line 84
    move/from16 v3, p3

    .line 85
    .line 86
    move/from16 v4, p4

    .line 87
    .line 88
    move v6, v14

    .line 89
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trFixdown(IIIIII)V

    .line 90
    .line 91
    .line 92
    :cond_3
    add-int/lit8 v14, v14, -0x1

    .line 93
    .line 94
    :goto_2
    if-lez v14, :cond_4

    .line 95
    .line 96
    aget v13, v12, v11

    .line 97
    .line 98
    add-int v15, v11, v14

    .line 99
    .line 100
    aget v0, v12, v15

    .line 101
    .line 102
    aput v0, v12, v11

    .line 103
    .line 104
    const/4 v5, 0x0

    .line 105
    move-object/from16 v0, p0

    .line 106
    .line 107
    move/from16 v1, p1

    .line 108
    .line 109
    move/from16 v2, p2

    .line 110
    .line 111
    move/from16 v3, p3

    .line 112
    .line 113
    move/from16 v4, p4

    .line 114
    .line 115
    move v6, v14

    .line 116
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trFixdown(IIIIII)V

    .line 117
    .line 118
    .line 119
    aput v13, v12, v15

    .line 120
    .line 121
    add-int/lit8 v14, v14, -0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_4
    return-void
.end method

.method private trInsertionSort(IIIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    add-int/lit8 v1, p4, 0x1

    .line 4
    .line 5
    :goto_0
    if-ge v1, p5, :cond_5

    .line 6
    .line 7
    aget v2, v0, v1

    .line 8
    .line 9
    add-int/lit8 v3, v1, -0x1

    .line 10
    .line 11
    :cond_0
    invoke-direct {p0, p1, p2, p3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    aget v5, v0, v3

    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    sub-int/2addr v4, v5

    .line 22
    if-gez v4, :cond_3

    .line 23
    .line 24
    :cond_1
    add-int/lit8 v5, v3, 0x1

    .line 25
    .line 26
    aget v6, v0, v3

    .line 27
    .line 28
    aput v6, v0, v5

    .line 29
    .line 30
    add-int/lit8 v3, v3, -0x1

    .line 31
    .line 32
    if-gt p4, v3, :cond_2

    .line 33
    .line 34
    aget v5, v0, v3

    .line 35
    .line 36
    if-ltz v5, :cond_1

    .line 37
    .line 38
    :cond_2
    if-ge v3, p4, :cond_0

    .line 39
    .line 40
    :cond_3
    if-nez v4, :cond_4

    .line 41
    .line 42
    aget v4, v0, v3

    .line 43
    .line 44
    not-int v4, v4

    .line 45
    aput v4, v0, v3

    .line 46
    .line 47
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 48
    .line 49
    aput v2, v0, v3

    .line 50
    .line 51
    add-int/lit8 v1, v1, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_5
    return-void
.end method

.method private trIntroSort(IIIIILio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;I)V
    .locals 24

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move/from16 v9, p1

    .line 4
    .line 5
    move/from16 v10, p3

    .line 6
    .line 7
    move-object/from16 v11, p6

    .line 8
    .line 9
    move/from16 v12, p7

    .line 10
    .line 11
    iget-object v13, v8, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 12
    .line 13
    const/16 v0, 0x40

    .line 14
    .line 15
    new-array v14, v0, [Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 16
    .line 17
    sub-int v0, p5, p4

    .line 18
    .line 19
    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    move/from16 v7, p2

    .line 24
    .line 25
    move/from16 v6, p4

    .line 26
    .line 27
    move/from16 v5, p5

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/16 v16, 0x0

    .line 31
    .line 32
    :goto_0
    const/4 v3, -0x3

    .line 33
    const/4 v2, -0x1

    .line 34
    const/4 v1, 0x1

    .line 35
    if-gez v0, :cond_1a

    .line 36
    .line 37
    if-ne v0, v2, :cond_e

    .line 38
    .line 39
    sub-int v0, v5, v6

    .line 40
    .line 41
    invoke-virtual {v11, v12, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    move v15, v4

    .line 48
    move-object v10, v8

    .line 49
    const/16 v17, 0x0

    .line 50
    .line 51
    goto/16 :goto_27

    .line 52
    .line 53
    :cond_0
    add-int/lit8 v3, v7, -0x1

    .line 54
    .line 55
    add-int/lit8 v18, v5, -0x1

    .line 56
    .line 57
    move-object/from16 v0, p0

    .line 58
    .line 59
    const/4 v2, 0x1

    .line 60
    move/from16 v1, p1

    .line 61
    .line 62
    move v2, v3

    .line 63
    move v8, v3

    .line 64
    move/from16 v3, p3

    .line 65
    .line 66
    move v15, v4

    .line 67
    move v4, v6

    .line 68
    move/from16 p4, v5

    .line 69
    .line 70
    move v10, v6

    .line 71
    move/from16 v6, v18

    .line 72
    .line 73
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trPartition(IIIIII)Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;->first:I

    .line 78
    .line 79
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;->last:I

    .line 80
    .line 81
    move/from16 v6, p4

    .line 82
    .line 83
    if-lt v10, v1, :cond_4

    .line 84
    .line 85
    if-ge v0, v6, :cond_1

    .line 86
    .line 87
    goto :goto_2

    .line 88
    :cond_1
    :goto_1
    if-ge v10, v6, :cond_2

    .line 89
    .line 90
    aget v0, v13, v10

    .line 91
    .line 92
    add-int/2addr v0, v9

    .line 93
    aput v10, v13, v0

    .line 94
    .line 95
    add-int/lit8 v10, v10, 0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    if-nez v15, :cond_3

    .line 99
    .line 100
    return-void

    .line 101
    :cond_3
    add-int/lit8 v4, v15, -0x1

    .line 102
    .line 103
    aget-object v0, v14, v4

    .line 104
    .line 105
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 106
    .line 107
    iget v2, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 108
    .line 109
    iget v3, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 110
    .line 111
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 112
    .line 113
    move v7, v1

    .line 114
    move v6, v2

    .line 115
    move v1, v3

    .line 116
    const/4 v5, 0x0

    .line 117
    goto/16 :goto_8

    .line 118
    .line 119
    :cond_4
    :goto_2
    if-ge v1, v6, :cond_5

    .line 120
    .line 121
    add-int/lit8 v2, v1, -0x1

    .line 122
    .line 123
    move v3, v10

    .line 124
    :goto_3
    if-ge v3, v1, :cond_5

    .line 125
    .line 126
    aget v4, v13, v3

    .line 127
    .line 128
    add-int/2addr v4, v9

    .line 129
    aput v2, v13, v4

    .line 130
    .line 131
    add-int/lit8 v3, v3, 0x1

    .line 132
    .line 133
    goto :goto_3

    .line 134
    :cond_5
    if-ge v0, v6, :cond_6

    .line 135
    .line 136
    add-int/lit8 v2, v0, -0x1

    .line 137
    .line 138
    move v3, v1

    .line 139
    :goto_4
    if-ge v3, v0, :cond_6

    .line 140
    .line 141
    aget v4, v13, v3

    .line 142
    .line 143
    add-int/2addr v4, v9

    .line 144
    aput v2, v13, v4

    .line 145
    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    goto :goto_4

    .line 149
    :cond_6
    add-int/lit8 v4, v15, 0x1

    .line 150
    .line 151
    new-instance v2, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 152
    .line 153
    const/4 v5, 0x0

    .line 154
    invoke-direct {v2, v5, v1, v0, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 155
    .line 156
    .line 157
    aput-object v2, v14, v15

    .line 158
    .line 159
    add-int/lit8 v2, v4, 0x1

    .line 160
    .line 161
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 162
    .line 163
    const/4 v15, -0x2

    .line 164
    invoke-direct {v3, v8, v10, v6, v15}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 165
    .line 166
    .line 167
    aput-object v3, v14, v4

    .line 168
    .line 169
    sub-int v3, v1, v10

    .line 170
    .line 171
    sub-int v4, v6, v0

    .line 172
    .line 173
    if-gt v3, v4, :cond_a

    .line 174
    .line 175
    const/4 v8, 0x1

    .line 176
    if-ge v8, v3, :cond_7

    .line 177
    .line 178
    add-int/lit8 v8, v2, 0x1

    .line 179
    .line 180
    new-instance v15, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 181
    .line 182
    invoke-static {v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 183
    .line 184
    .line 185
    move-result v4

    .line 186
    invoke-direct {v15, v7, v0, v6, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 187
    .line 188
    .line 189
    aput-object v15, v14, v2

    .line 190
    .line 191
    invoke-static {v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 192
    .line 193
    .line 194
    move-result v0

    .line 195
    move v4, v8

    .line 196
    :goto_5
    move v6, v10

    .line 197
    goto :goto_8

    .line 198
    :cond_7
    if-ge v8, v4, :cond_8

    .line 199
    .line 200
    invoke-static {v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 201
    .line 202
    .line 203
    move-result v1

    .line 204
    move v4, v2

    .line 205
    goto :goto_6

    .line 206
    :cond_8
    if-nez v2, :cond_9

    .line 207
    .line 208
    return-void

    .line 209
    :cond_9
    add-int/lit8 v2, v2, -0x1

    .line 210
    .line 211
    aget-object v0, v14, v2

    .line 212
    .line 213
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 214
    .line 215
    iget v3, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 216
    .line 217
    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 218
    .line 219
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 220
    .line 221
    goto :goto_7

    .line 222
    :cond_a
    const/4 v8, 0x1

    .line 223
    if-ge v8, v4, :cond_b

    .line 224
    .line 225
    add-int/lit8 v8, v2, 0x1

    .line 226
    .line 227
    new-instance v15, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 228
    .line 229
    invoke-static {v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 230
    .line 231
    .line 232
    move-result v3

    .line 233
    invoke-direct {v15, v7, v10, v1, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 234
    .line 235
    .line 236
    aput-object v15, v14, v2

    .line 237
    .line 238
    invoke-static {v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    move v4, v8

    .line 243
    :goto_6
    move/from16 v23, v6

    .line 244
    .line 245
    move v6, v0

    .line 246
    move v0, v1

    .line 247
    move/from16 v1, v23

    .line 248
    .line 249
    goto :goto_8

    .line 250
    :cond_b
    if-ge v8, v3, :cond_c

    .line 251
    .line 252
    invoke-static {v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    move v4, v2

    .line 257
    goto :goto_5

    .line 258
    :cond_c
    if-nez v2, :cond_d

    .line 259
    .line 260
    return-void

    .line 261
    :cond_d
    add-int/lit8 v2, v2, -0x1

    .line 262
    .line 263
    aget-object v0, v14, v2

    .line 264
    .line 265
    iget v1, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 266
    .line 267
    iget v3, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 268
    .line 269
    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 270
    .line 271
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 272
    .line 273
    :goto_7
    move v7, v1

    .line 274
    move v6, v3

    .line 275
    move v1, v4

    .line 276
    move v4, v2

    .line 277
    :goto_8
    move-object/from16 v8, p0

    .line 278
    .line 279
    move/from16 v10, p3

    .line 280
    .line 281
    move v5, v1

    .line 282
    goto/16 :goto_0

    .line 283
    .line 284
    :cond_e
    move v15, v4

    .line 285
    move v10, v6

    .line 286
    const/4 v1, -0x2

    .line 287
    const/4 v8, 0x1

    .line 288
    move v6, v5

    .line 289
    const/4 v5, 0x0

    .line 290
    if-ne v0, v1, :cond_10

    .line 291
    .line 292
    add-int/lit8 v8, v15, -0x1

    .line 293
    .line 294
    aget-object v0, v14, v8

    .line 295
    .line 296
    iget v4, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 297
    .line 298
    iget v15, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 299
    .line 300
    sub-int/2addr v7, v9

    .line 301
    move-object/from16 v0, p0

    .line 302
    .line 303
    move/from16 v1, p1

    .line 304
    .line 305
    move/from16 v2, p3

    .line 306
    .line 307
    move v3, v10

    .line 308
    const/16 v17, 0x0

    .line 309
    .line 310
    move v5, v15

    .line 311
    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trCopy(IIIIIII)V

    .line 312
    .line 313
    .line 314
    if-nez v8, :cond_f

    .line 315
    .line 316
    return-void

    .line 317
    :cond_f
    add-int/lit8 v4, v8, -0x1

    .line 318
    .line 319
    aget-object v0, v14, v4

    .line 320
    .line 321
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 322
    .line 323
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 324
    .line 325
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 326
    .line 327
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 328
    .line 329
    :goto_9
    move-object/from16 v8, p0

    .line 330
    .line 331
    goto/16 :goto_e

    .line 332
    .line 333
    :cond_10
    const/16 v17, 0x0

    .line 334
    .line 335
    aget v0, v13, v10

    .line 336
    .line 337
    if-ltz v0, :cond_12

    .line 338
    .line 339
    :cond_11
    aget v0, v13, v10

    .line 340
    .line 341
    add-int/2addr v0, v9

    .line 342
    aput v10, v13, v0

    .line 343
    .line 344
    add-int/2addr v10, v8

    .line 345
    if-ge v10, v6, :cond_12

    .line 346
    .line 347
    aget v0, v13, v10

    .line 348
    .line 349
    if-gez v0, :cond_11

    .line 350
    .line 351
    :cond_12
    if-ge v10, v6, :cond_18

    .line 352
    .line 353
    move v0, v10

    .line 354
    :cond_13
    aget v1, v13, v0

    .line 355
    .line 356
    not-int v1, v1

    .line 357
    aput v1, v13, v0

    .line 358
    .line 359
    add-int/2addr v0, v8

    .line 360
    aget v1, v13, v0

    .line 361
    .line 362
    if-ltz v1, :cond_13

    .line 363
    .line 364
    add-int v4, v9, v1

    .line 365
    .line 366
    aget v4, v13, v4

    .line 367
    .line 368
    add-int/2addr v1, v7

    .line 369
    aget v1, v13, v1

    .line 370
    .line 371
    if-eq v4, v1, :cond_14

    .line 372
    .line 373
    sub-int v1, v0, v10

    .line 374
    .line 375
    add-int/2addr v1, v8

    .line 376
    invoke-static {v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 377
    .line 378
    .line 379
    move-result v1

    .line 380
    goto :goto_a

    .line 381
    :cond_14
    const/4 v1, -0x1

    .line 382
    :goto_a
    add-int/lit8 v5, v0, 0x1

    .line 383
    .line 384
    if-ge v5, v6, :cond_15

    .line 385
    .line 386
    add-int/lit8 v0, v5, -0x1

    .line 387
    .line 388
    move v2, v10

    .line 389
    :goto_b
    if-ge v2, v5, :cond_15

    .line 390
    .line 391
    aget v4, v13, v2

    .line 392
    .line 393
    add-int/2addr v4, v9

    .line 394
    aput v0, v13, v4

    .line 395
    .line 396
    add-int/lit8 v2, v2, 0x1

    .line 397
    .line 398
    goto :goto_b

    .line 399
    :cond_15
    sub-int v0, v5, v10

    .line 400
    .line 401
    sub-int v2, v6, v5

    .line 402
    .line 403
    if-gt v0, v2, :cond_16

    .line 404
    .line 405
    add-int/lit8 v4, v15, 0x1

    .line 406
    .line 407
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 408
    .line 409
    invoke-direct {v0, v7, v5, v6, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 410
    .line 411
    .line 412
    aput-object v0, v14, v15

    .line 413
    .line 414
    add-int/lit8 v7, v7, 0x1

    .line 415
    .line 416
    move-object/from16 v8, p0

    .line 417
    .line 418
    move v0, v1

    .line 419
    move v6, v10

    .line 420
    goto/16 :goto_e

    .line 421
    .line 422
    :cond_16
    if-ge v8, v2, :cond_17

    .line 423
    .line 424
    add-int/lit8 v4, v15, 0x1

    .line 425
    .line 426
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 427
    .line 428
    add-int/lit8 v2, v7, 0x1

    .line 429
    .line 430
    invoke-direct {v0, v2, v10, v5, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 431
    .line 432
    .line 433
    aput-object v0, v14, v15

    .line 434
    .line 435
    const/4 v0, -0x3

    .line 436
    move-object/from16 v8, p0

    .line 437
    .line 438
    move/from16 v10, p3

    .line 439
    .line 440
    move/from16 v23, v6

    .line 441
    .line 442
    move v6, v5

    .line 443
    move/from16 v5, v23

    .line 444
    .line 445
    goto/16 :goto_0

    .line 446
    .line 447
    :cond_17
    add-int/lit8 v7, v7, 0x1

    .line 448
    .line 449
    move-object/from16 v8, p0

    .line 450
    .line 451
    move v0, v1

    .line 452
    goto :goto_d

    .line 453
    :cond_18
    if-nez v15, :cond_19

    .line 454
    .line 455
    return-void

    .line 456
    :cond_19
    add-int/lit8 v4, v15, -0x1

    .line 457
    .line 458
    aget-object v0, v14, v4

    .line 459
    .line 460
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 461
    .line 462
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 463
    .line 464
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 465
    .line 466
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 467
    .line 468
    goto/16 :goto_9

    .line 469
    .line 470
    :cond_1a
    move v15, v4

    .line 471
    move v10, v6

    .line 472
    const/4 v8, 0x1

    .line 473
    const/16 v17, 0x0

    .line 474
    .line 475
    move v6, v5

    .line 476
    sub-int v5, v6, v10

    .line 477
    .line 478
    const/16 v1, 0x8

    .line 479
    .line 480
    if-gt v5, v1, :cond_1c

    .line 481
    .line 482
    invoke-virtual {v11, v12, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    .line 483
    .line 484
    .line 485
    move-result v0

    .line 486
    if-nez v0, :cond_1b

    .line 487
    .line 488
    :goto_c
    move-object/from16 v10, p0

    .line 489
    .line 490
    goto/16 :goto_27

    .line 491
    .line 492
    :cond_1b
    move-object/from16 v0, p0

    .line 493
    .line 494
    move/from16 v1, p1

    .line 495
    .line 496
    move v2, v7

    .line 497
    const/4 v8, -0x3

    .line 498
    move/from16 v3, p3

    .line 499
    .line 500
    move v4, v10

    .line 501
    move v5, v6

    .line 502
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trInsertionSort(IIIII)V

    .line 503
    .line 504
    .line 505
    const/4 v0, -0x3

    .line 506
    move-object/from16 v8, p0

    .line 507
    .line 508
    :goto_d
    move v6, v10

    .line 509
    move v4, v15

    .line 510
    :goto_e
    move/from16 v10, p3

    .line 511
    .line 512
    goto/16 :goto_0

    .line 513
    .line 514
    :cond_1c
    const/4 v4, -0x3

    .line 515
    add-int/lit8 v3, v0, -0x1

    .line 516
    .line 517
    if-nez v0, :cond_20

    .line 518
    .line 519
    invoke-virtual {v11, v12, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    .line 520
    .line 521
    .line 522
    move-result v0

    .line 523
    if-nez v0, :cond_1d

    .line 524
    .line 525
    goto :goto_c

    .line 526
    :cond_1d
    move-object/from16 v0, p0

    .line 527
    .line 528
    move/from16 v1, p1

    .line 529
    .line 530
    move v2, v7

    .line 531
    move/from16 v3, p3

    .line 532
    .line 533
    const/4 v8, -0x3

    .line 534
    move v4, v10

    .line 535
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trHeapSort(IIIII)V

    .line 536
    .line 537
    .line 538
    add-int/lit8 v5, v6, -0x1

    .line 539
    .line 540
    :goto_f
    if-ge v10, v5, :cond_1f

    .line 541
    .line 542
    aget v0, v13, v5

    .line 543
    .line 544
    move/from16 v4, p3

    .line 545
    .line 546
    move v1, v10

    .line 547
    move-object/from16 v10, p0

    .line 548
    .line 549
    invoke-direct {v10, v9, v7, v4, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 550
    .line 551
    .line 552
    move-result v0

    .line 553
    add-int/lit8 v5, v5, -0x1

    .line 554
    .line 555
    :goto_10
    if-gt v1, v5, :cond_1e

    .line 556
    .line 557
    aget v2, v13, v5

    .line 558
    .line 559
    invoke-direct {v10, v9, v7, v4, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 560
    .line 561
    .line 562
    move-result v2

    .line 563
    if-ne v2, v0, :cond_1e

    .line 564
    .line 565
    aget v2, v13, v5

    .line 566
    .line 567
    not-int v2, v2

    .line 568
    aput v2, v13, v5

    .line 569
    .line 570
    add-int/lit8 v5, v5, -0x1

    .line 571
    .line 572
    goto :goto_10

    .line 573
    :cond_1e
    move/from16 v16, v0

    .line 574
    .line 575
    move v10, v1

    .line 576
    goto :goto_f

    .line 577
    :cond_1f
    move v1, v10

    .line 578
    const/4 v0, -0x3

    .line 579
    move-object/from16 v8, p0

    .line 580
    .line 581
    move/from16 v10, p3

    .line 582
    .line 583
    move v5, v6

    .line 584
    move v4, v15

    .line 585
    :goto_11
    move v6, v1

    .line 586
    goto/16 :goto_0

    .line 587
    .line 588
    :cond_20
    move/from16 v4, p3

    .line 589
    .line 590
    move v1, v10

    .line 591
    move-object/from16 v10, p0

    .line 592
    .line 593
    move-object/from16 v0, p0

    .line 594
    .line 595
    move/from16 p2, v1

    .line 596
    .line 597
    move/from16 v1, p1

    .line 598
    .line 599
    const/16 v18, -0x1

    .line 600
    .line 601
    move v2, v7

    .line 602
    move/from16 v21, v3

    .line 603
    .line 604
    move/from16 v3, p3

    .line 605
    .line 606
    move v8, v4

    .line 607
    move/from16 v4, p2

    .line 608
    .line 609
    move/from16 v22, v5

    .line 610
    .line 611
    move v5, v6

    .line 612
    invoke-direct/range {v0 .. v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trPivot(IIIII)I

    .line 613
    .line 614
    .line 615
    move-result v0

    .line 616
    move/from16 v1, p2

    .line 617
    .line 618
    invoke-static {v13, v1, v13, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 619
    .line 620
    .line 621
    aget v0, v13, v1

    .line 622
    .line 623
    invoke-direct {v10, v9, v7, v8, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 624
    .line 625
    .line 626
    move-result v0

    .line 627
    add-int/lit8 v2, v1, 0x1

    .line 628
    .line 629
    :goto_12
    if-ge v2, v6, :cond_21

    .line 630
    .line 631
    aget v3, v13, v2

    .line 632
    .line 633
    invoke-direct {v10, v9, v7, v8, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 634
    .line 635
    .line 636
    move-result v3

    .line 637
    if-ne v3, v0, :cond_22

    .line 638
    .line 639
    add-int/lit8 v2, v2, 0x1

    .line 640
    .line 641
    move/from16 v16, v3

    .line 642
    .line 643
    goto :goto_12

    .line 644
    :cond_21
    move/from16 v3, v16

    .line 645
    .line 646
    :cond_22
    if-ge v2, v6, :cond_24

    .line 647
    .line 648
    if-ge v3, v0, :cond_24

    .line 649
    .line 650
    move v4, v3

    .line 651
    const/4 v5, 0x1

    .line 652
    move v3, v2

    .line 653
    :goto_13
    add-int/2addr v2, v5

    .line 654
    if-ge v2, v6, :cond_25

    .line 655
    .line 656
    aget v4, v13, v2

    .line 657
    .line 658
    invoke-direct {v10, v9, v7, v8, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 659
    .line 660
    .line 661
    move-result v4

    .line 662
    if-gt v4, v0, :cond_25

    .line 663
    .line 664
    if-ne v4, v0, :cond_23

    .line 665
    .line 666
    invoke-static {v13, v2, v13, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 667
    .line 668
    .line 669
    add-int/lit8 v3, v3, 0x1

    .line 670
    .line 671
    :cond_23
    const/4 v5, 0x1

    .line 672
    goto :goto_13

    .line 673
    :cond_24
    move v4, v3

    .line 674
    move v3, v2

    .line 675
    :cond_25
    add-int/lit8 v5, v6, -0x1

    .line 676
    .line 677
    :goto_14
    if-ge v2, v5, :cond_26

    .line 678
    .line 679
    aget v4, v13, v5

    .line 680
    .line 681
    invoke-direct {v10, v9, v7, v8, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 682
    .line 683
    .line 684
    move-result v4

    .line 685
    if-ne v4, v0, :cond_26

    .line 686
    .line 687
    add-int/lit8 v5, v5, -0x1

    .line 688
    .line 689
    goto :goto_14

    .line 690
    :cond_26
    if-ge v2, v5, :cond_29

    .line 691
    .line 692
    if-le v4, v0, :cond_29

    .line 693
    .line 694
    move/from16 p2, v3

    .line 695
    .line 696
    move v3, v5

    .line 697
    :cond_27
    :goto_15
    add-int/lit8 v5, v5, -0x1

    .line 698
    .line 699
    if-ge v2, v5, :cond_28

    .line 700
    .line 701
    aget v4, v13, v5

    .line 702
    .line 703
    invoke-direct {v10, v9, v7, v8, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 704
    .line 705
    .line 706
    move-result v4

    .line 707
    if-lt v4, v0, :cond_28

    .line 708
    .line 709
    if-ne v4, v0, :cond_27

    .line 710
    .line 711
    invoke-static {v13, v5, v13, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 712
    .line 713
    .line 714
    add-int/lit8 v3, v3, -0x1

    .line 715
    .line 716
    goto :goto_15

    .line 717
    :cond_28
    move/from16 v16, v4

    .line 718
    .line 719
    move v4, v3

    .line 720
    move/from16 v3, p2

    .line 721
    .line 722
    goto :goto_16

    .line 723
    :cond_29
    move/from16 p2, v3

    .line 724
    .line 725
    move/from16 v3, p2

    .line 726
    .line 727
    move/from16 v16, v4

    .line 728
    .line 729
    move v4, v5

    .line 730
    :cond_2a
    :goto_16
    if-ge v2, v5, :cond_30

    .line 731
    .line 732
    invoke-static {v13, v2, v13, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 733
    .line 734
    .line 735
    const/16 v19, 0x1

    .line 736
    .line 737
    :goto_17
    add-int/lit8 v2, v2, 0x1

    .line 738
    .line 739
    move/from16 p2, v5

    .line 740
    .line 741
    if-ge v2, v5, :cond_2d

    .line 742
    .line 743
    aget v5, v13, v2

    .line 744
    .line 745
    invoke-direct {v10, v9, v7, v8, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 746
    .line 747
    .line 748
    move-result v5

    .line 749
    if-gt v5, v0, :cond_2c

    .line 750
    .line 751
    if-ne v5, v0, :cond_2b

    .line 752
    .line 753
    invoke-static {v13, v2, v13, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 754
    .line 755
    .line 756
    add-int/lit8 v3, v3, 0x1

    .line 757
    .line 758
    :cond_2b
    move/from16 v16, v5

    .line 759
    .line 760
    const/16 v19, 0x1

    .line 761
    .line 762
    move/from16 v5, p2

    .line 763
    .line 764
    goto :goto_17

    .line 765
    :cond_2c
    move/from16 v16, v5

    .line 766
    .line 767
    move/from16 v5, p2

    .line 768
    .line 769
    :cond_2d
    :goto_18
    add-int/lit8 v5, v5, -0x1

    .line 770
    .line 771
    move/from16 p2, v2

    .line 772
    .line 773
    if-ge v2, v5, :cond_2a

    .line 774
    .line 775
    aget v2, v13, v5

    .line 776
    .line 777
    invoke-direct {v10, v9, v7, v8, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 778
    .line 779
    .line 780
    move-result v2

    .line 781
    if-lt v2, v0, :cond_2f

    .line 782
    .line 783
    if-ne v2, v0, :cond_2e

    .line 784
    .line 785
    invoke-static {v13, v5, v13, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 786
    .line 787
    .line 788
    add-int/lit8 v4, v4, -0x1

    .line 789
    .line 790
    :cond_2e
    move/from16 v16, v2

    .line 791
    .line 792
    move/from16 v2, p2

    .line 793
    .line 794
    goto :goto_18

    .line 795
    :cond_2f
    move/from16 v16, v2

    .line 796
    .line 797
    move/from16 v2, p2

    .line 798
    .line 799
    goto :goto_16

    .line 800
    :cond_30
    if-gt v3, v4, :cond_4a

    .line 801
    .line 802
    add-int/lit8 v5, v2, -0x1

    .line 803
    .line 804
    sub-int v8, v3, v1

    .line 805
    .line 806
    sub-int v3, v2, v3

    .line 807
    .line 808
    if-le v8, v3, :cond_31

    .line 809
    .line 810
    move v8, v3

    .line 811
    :cond_31
    sub-int v20, v2, v8

    .line 812
    .line 813
    move/from16 v22, v2

    .line 814
    .line 815
    move/from16 v2, v20

    .line 816
    .line 817
    move/from16 v20, v8

    .line 818
    .line 819
    move v8, v1

    .line 820
    :goto_19
    if-lez v20, :cond_32

    .line 821
    .line 822
    invoke-static {v13, v8, v13, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 823
    .line 824
    .line 825
    add-int/lit8 v20, v20, -0x1

    .line 826
    .line 827
    const/16 v19, 0x1

    .line 828
    .line 829
    add-int/lit8 v8, v8, 0x1

    .line 830
    .line 831
    add-int/lit8 v2, v2, 0x1

    .line 832
    .line 833
    goto :goto_19

    .line 834
    :cond_32
    const/16 v19, 0x1

    .line 835
    .line 836
    sub-int v2, v4, v5

    .line 837
    .line 838
    sub-int v5, v6, v4

    .line 839
    .line 840
    add-int/lit8 v5, v5, -0x1

    .line 841
    .line 842
    if-le v2, v5, :cond_33

    .line 843
    .line 844
    goto :goto_1a

    .line 845
    :cond_33
    move v5, v2

    .line 846
    :goto_1a
    sub-int v4, v6, v5

    .line 847
    .line 848
    move v8, v5

    .line 849
    move v5, v4

    .line 850
    move/from16 v4, v22

    .line 851
    .line 852
    :goto_1b
    if-lez v8, :cond_34

    .line 853
    .line 854
    invoke-static {v13, v4, v13, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 855
    .line 856
    .line 857
    add-int/lit8 v8, v8, -0x1

    .line 858
    .line 859
    add-int/lit8 v4, v4, 0x1

    .line 860
    .line 861
    add-int/lit8 v5, v5, 0x1

    .line 862
    .line 863
    const/16 v19, 0x1

    .line 864
    .line 865
    goto :goto_1b

    .line 866
    :cond_34
    add-int v5, v1, v3

    .line 867
    .line 868
    sub-int v2, v6, v2

    .line 869
    .line 870
    aget v3, v13, v5

    .line 871
    .line 872
    add-int/2addr v3, v9

    .line 873
    aget v3, v13, v3

    .line 874
    .line 875
    if-eq v3, v0, :cond_35

    .line 876
    .line 877
    sub-int v0, v2, v5

    .line 878
    .line 879
    invoke-static {v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 880
    .line 881
    .line 882
    move-result v0

    .line 883
    goto :goto_1c

    .line 884
    :cond_35
    const/4 v0, -0x1

    .line 885
    :goto_1c
    add-int/lit8 v3, v5, -0x1

    .line 886
    .line 887
    move v4, v1

    .line 888
    :goto_1d
    if-ge v4, v5, :cond_36

    .line 889
    .line 890
    aget v8, v13, v4

    .line 891
    .line 892
    add-int/2addr v8, v9

    .line 893
    aput v3, v13, v8

    .line 894
    .line 895
    add-int/lit8 v4, v4, 0x1

    .line 896
    .line 897
    goto :goto_1d

    .line 898
    :cond_36
    if-ge v2, v6, :cond_37

    .line 899
    .line 900
    add-int/lit8 v3, v2, -0x1

    .line 901
    .line 902
    move v4, v5

    .line 903
    :goto_1e
    if-ge v4, v2, :cond_37

    .line 904
    .line 905
    aget v8, v13, v4

    .line 906
    .line 907
    add-int/2addr v8, v9

    .line 908
    aput v3, v13, v8

    .line 909
    .line 910
    add-int/lit8 v4, v4, 0x1

    .line 911
    .line 912
    goto :goto_1e

    .line 913
    :cond_37
    sub-int v3, v5, v1

    .line 914
    .line 915
    sub-int v4, v6, v2

    .line 916
    .line 917
    if-gt v3, v4, :cond_41

    .line 918
    .line 919
    sub-int v8, v2, v5

    .line 920
    .line 921
    if-gt v4, v8, :cond_3c

    .line 922
    .line 923
    move-object/from16 v18, v13

    .line 924
    .line 925
    const/4 v13, 0x1

    .line 926
    if-ge v13, v3, :cond_38

    .line 927
    .line 928
    add-int/lit8 v4, v15, 0x1

    .line 929
    .line 930
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 931
    .line 932
    add-int/lit8 v8, v7, 0x1

    .line 933
    .line 934
    invoke-direct {v3, v8, v5, v2, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 935
    .line 936
    .line 937
    aput-object v3, v14, v15

    .line 938
    .line 939
    add-int/lit8 v0, v4, 0x1

    .line 940
    .line 941
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 942
    .line 943
    move/from16 v13, v21

    .line 944
    .line 945
    invoke-direct {v3, v7, v2, v6, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 946
    .line 947
    .line 948
    aput-object v3, v14, v4

    .line 949
    .line 950
    move v4, v0

    .line 951
    :goto_1f
    move v6, v1

    .line 952
    :goto_20
    move-object v8, v10

    .line 953
    move v0, v13

    .line 954
    :goto_21
    move-object/from16 v13, v18

    .line 955
    .line 956
    goto/16 :goto_e

    .line 957
    .line 958
    :cond_38
    move/from16 v13, v21

    .line 959
    .line 960
    const/4 v1, 0x1

    .line 961
    if-ge v1, v4, :cond_39

    .line 962
    .line 963
    add-int/lit8 v4, v15, 0x1

    .line 964
    .line 965
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 966
    .line 967
    add-int/lit8 v3, v7, 0x1

    .line 968
    .line 969
    invoke-direct {v1, v3, v5, v2, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 970
    .line 971
    .line 972
    aput-object v1, v14, v15

    .line 973
    .line 974
    goto/16 :goto_22

    .line 975
    .line 976
    :cond_39
    if-ge v1, v8, :cond_3a

    .line 977
    .line 978
    add-int/lit8 v7, v7, 0x1

    .line 979
    .line 980
    goto/16 :goto_24

    .line 981
    .line 982
    :cond_3a
    if-nez v15, :cond_3b

    .line 983
    .line 984
    return-void

    .line 985
    :cond_3b
    add-int/lit8 v4, v15, -0x1

    .line 986
    .line 987
    aget-object v0, v14, v4

    .line 988
    .line 989
    iget v7, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->a:I

    .line 990
    .line 991
    iget v6, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 992
    .line 993
    iget v5, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 994
    .line 995
    iget v0, v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 996
    .line 997
    move-object v8, v10

    .line 998
    goto :goto_21

    .line 999
    :cond_3c
    move-object/from16 v18, v13

    .line 1000
    .line 1001
    move/from16 v13, v21

    .line 1002
    .line 1003
    if-gt v3, v8, :cond_3f

    .line 1004
    .line 1005
    const/4 v4, 0x1

    .line 1006
    if-ge v4, v3, :cond_3d

    .line 1007
    .line 1008
    add-int/lit8 v4, v15, 0x1

    .line 1009
    .line 1010
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1011
    .line 1012
    invoke-direct {v3, v7, v2, v6, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1013
    .line 1014
    .line 1015
    aput-object v3, v14, v15

    .line 1016
    .line 1017
    add-int/lit8 v3, v4, 0x1

    .line 1018
    .line 1019
    new-instance v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1020
    .line 1021
    add-int/lit8 v8, v7, 0x1

    .line 1022
    .line 1023
    invoke-direct {v6, v8, v5, v2, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1024
    .line 1025
    .line 1026
    aput-object v6, v14, v4

    .line 1027
    .line 1028
    move v6, v1

    .line 1029
    move v4, v3

    .line 1030
    goto :goto_20

    .line 1031
    :cond_3d
    const/4 v3, 0x1

    .line 1032
    if-ge v3, v8, :cond_3e

    .line 1033
    .line 1034
    add-int/lit8 v4, v15, 0x1

    .line 1035
    .line 1036
    new-instance v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1037
    .line 1038
    invoke-direct {v1, v7, v2, v6, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1039
    .line 1040
    .line 1041
    aput-object v1, v14, v15

    .line 1042
    .line 1043
    add-int/lit8 v7, v7, 0x1

    .line 1044
    .line 1045
    goto/16 :goto_25

    .line 1046
    .line 1047
    :cond_3e
    move v5, v6

    .line 1048
    move-object v8, v10

    .line 1049
    move v0, v13

    .line 1050
    move v4, v15

    .line 1051
    goto :goto_23

    .line 1052
    :cond_3f
    const/4 v3, 0x1

    .line 1053
    if-ge v3, v8, :cond_40

    .line 1054
    .line 1055
    add-int/lit8 v4, v15, 0x1

    .line 1056
    .line 1057
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1058
    .line 1059
    invoke-direct {v3, v7, v2, v6, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1060
    .line 1061
    .line 1062
    aput-object v3, v14, v15

    .line 1063
    .line 1064
    add-int/lit8 v3, v4, 0x1

    .line 1065
    .line 1066
    new-instance v6, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1067
    .line 1068
    invoke-direct {v6, v7, v1, v5, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1069
    .line 1070
    .line 1071
    aput-object v6, v14, v4

    .line 1072
    .line 1073
    add-int/lit8 v7, v7, 0x1

    .line 1074
    .line 1075
    move v4, v3

    .line 1076
    goto/16 :goto_25

    .line 1077
    .line 1078
    :cond_40
    add-int/lit8 v4, v15, 0x1

    .line 1079
    .line 1080
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1081
    .line 1082
    invoke-direct {v0, v7, v2, v6, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1083
    .line 1084
    .line 1085
    aput-object v0, v14, v15

    .line 1086
    .line 1087
    goto/16 :goto_1f

    .line 1088
    .line 1089
    :cond_41
    move-object/from16 v18, v13

    .line 1090
    .line 1091
    move/from16 v13, v21

    .line 1092
    .line 1093
    sub-int v8, v2, v5

    .line 1094
    .line 1095
    if-gt v3, v8, :cond_45

    .line 1096
    .line 1097
    const/4 v9, 0x1

    .line 1098
    if-ge v9, v4, :cond_42

    .line 1099
    .line 1100
    add-int/lit8 v4, v15, 0x1

    .line 1101
    .line 1102
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1103
    .line 1104
    add-int/lit8 v8, v7, 0x1

    .line 1105
    .line 1106
    invoke-direct {v3, v8, v5, v2, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1107
    .line 1108
    .line 1109
    aput-object v3, v14, v15

    .line 1110
    .line 1111
    add-int/lit8 v0, v4, 0x1

    .line 1112
    .line 1113
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1114
    .line 1115
    invoke-direct {v3, v7, v1, v5, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1116
    .line 1117
    .line 1118
    aput-object v3, v14, v4

    .line 1119
    .line 1120
    move/from16 v9, p1

    .line 1121
    .line 1122
    move v4, v0

    .line 1123
    :goto_22
    move v5, v6

    .line 1124
    move-object v8, v10

    .line 1125
    move v0, v13

    .line 1126
    :goto_23
    move-object/from16 v13, v18

    .line 1127
    .line 1128
    move/from16 v10, p3

    .line 1129
    .line 1130
    move v6, v2

    .line 1131
    goto/16 :goto_0

    .line 1132
    .line 1133
    :cond_42
    if-ge v9, v3, :cond_43

    .line 1134
    .line 1135
    add-int/lit8 v4, v15, 0x1

    .line 1136
    .line 1137
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1138
    .line 1139
    add-int/lit8 v6, v7, 0x1

    .line 1140
    .line 1141
    invoke-direct {v3, v6, v5, v2, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1142
    .line 1143
    .line 1144
    aput-object v3, v14, v15

    .line 1145
    .line 1146
    move/from16 v9, p1

    .line 1147
    .line 1148
    goto/16 :goto_1f

    .line 1149
    .line 1150
    :cond_43
    if-ge v9, v8, :cond_44

    .line 1151
    .line 1152
    add-int/lit8 v7, v7, 0x1

    .line 1153
    .line 1154
    move/from16 v9, p1

    .line 1155
    .line 1156
    :goto_24
    move v6, v5

    .line 1157
    move-object v8, v10

    .line 1158
    move v4, v15

    .line 1159
    goto/16 :goto_26

    .line 1160
    .line 1161
    :cond_44
    add-int/lit8 v4, v15, 0x1

    .line 1162
    .line 1163
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1164
    .line 1165
    invoke-direct {v0, v7, v1, v6, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1166
    .line 1167
    .line 1168
    aput-object v0, v14, v15

    .line 1169
    .line 1170
    move/from16 v9, p1

    .line 1171
    .line 1172
    move v5, v6

    .line 1173
    move-object v8, v10

    .line 1174
    move v0, v13

    .line 1175
    goto/16 :goto_2a

    .line 1176
    .line 1177
    :cond_45
    const/4 v9, 0x1

    .line 1178
    if-gt v4, v8, :cond_48

    .line 1179
    .line 1180
    if-ge v9, v4, :cond_46

    .line 1181
    .line 1182
    add-int/lit8 v4, v15, 0x1

    .line 1183
    .line 1184
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1185
    .line 1186
    invoke-direct {v3, v7, v1, v5, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1187
    .line 1188
    .line 1189
    aput-object v3, v14, v15

    .line 1190
    .line 1191
    add-int/lit8 v1, v4, 0x1

    .line 1192
    .line 1193
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1194
    .line 1195
    add-int/lit8 v8, v7, 0x1

    .line 1196
    .line 1197
    invoke-direct {v3, v8, v5, v2, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1198
    .line 1199
    .line 1200
    aput-object v3, v14, v4

    .line 1201
    .line 1202
    move/from16 v9, p1

    .line 1203
    .line 1204
    move v4, v1

    .line 1205
    goto :goto_22

    .line 1206
    :cond_46
    const/4 v3, 0x1

    .line 1207
    if-ge v3, v8, :cond_47

    .line 1208
    .line 1209
    add-int/lit8 v4, v15, 0x1

    .line 1210
    .line 1211
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1212
    .line 1213
    invoke-direct {v3, v7, v1, v5, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1214
    .line 1215
    .line 1216
    aput-object v3, v14, v15

    .line 1217
    .line 1218
    add-int/lit8 v7, v7, 0x1

    .line 1219
    .line 1220
    move/from16 v9, p1

    .line 1221
    .line 1222
    goto :goto_25

    .line 1223
    :cond_47
    move/from16 v9, p1

    .line 1224
    .line 1225
    move v6, v1

    .line 1226
    move-object v8, v10

    .line 1227
    move v0, v13

    .line 1228
    move v4, v15

    .line 1229
    goto/16 :goto_21

    .line 1230
    .line 1231
    :cond_48
    const/4 v3, 0x1

    .line 1232
    if-ge v3, v8, :cond_49

    .line 1233
    .line 1234
    add-int/lit8 v4, v15, 0x1

    .line 1235
    .line 1236
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1237
    .line 1238
    invoke-direct {v3, v7, v1, v5, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1239
    .line 1240
    .line 1241
    aput-object v3, v14, v15

    .line 1242
    .line 1243
    add-int/lit8 v1, v4, 0x1

    .line 1244
    .line 1245
    new-instance v3, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1246
    .line 1247
    invoke-direct {v3, v7, v2, v6, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1248
    .line 1249
    .line 1250
    aput-object v3, v14, v4

    .line 1251
    .line 1252
    add-int/lit8 v7, v7, 0x1

    .line 1253
    .line 1254
    move/from16 v9, p1

    .line 1255
    .line 1256
    move v4, v1

    .line 1257
    :goto_25
    move v6, v5

    .line 1258
    move-object v8, v10

    .line 1259
    :goto_26
    move-object/from16 v13, v18

    .line 1260
    .line 1261
    move/from16 v10, p3

    .line 1262
    .line 1263
    move v5, v2

    .line 1264
    goto/16 :goto_0

    .line 1265
    .line 1266
    :cond_49
    add-int/lit8 v4, v15, 0x1

    .line 1267
    .line 1268
    new-instance v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;

    .line 1269
    .line 1270
    invoke-direct {v0, v7, v1, v5, v13}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;-><init>(IIII)V

    .line 1271
    .line 1272
    .line 1273
    aput-object v0, v14, v15

    .line 1274
    .line 1275
    move/from16 v9, p1

    .line 1276
    .line 1277
    goto/16 :goto_22

    .line 1278
    .line 1279
    :cond_4a
    move-object/from16 v18, v13

    .line 1280
    .line 1281
    move/from16 v13, v21

    .line 1282
    .line 1283
    move/from16 v5, v22

    .line 1284
    .line 1285
    invoke-virtual {v11, v12, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->update(II)Z

    .line 1286
    .line 1287
    .line 1288
    move-result v0

    .line 1289
    if-nez v0, :cond_4d

    .line 1290
    .line 1291
    :goto_27
    const/4 v0, 0x0

    .line 1292
    :goto_28
    if-ge v0, v15, :cond_4c

    .line 1293
    .line 1294
    aget-object v1, v14, v0

    .line 1295
    .line 1296
    iget v2, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->d:I

    .line 1297
    .line 1298
    const/4 v3, -0x3

    .line 1299
    if-ne v2, v3, :cond_4b

    .line 1300
    .line 1301
    iget v2, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->b:I

    .line 1302
    .line 1303
    iget v1, v1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$StackEntry;->c:I

    .line 1304
    .line 1305
    move/from16 v4, p1

    .line 1306
    .line 1307
    invoke-direct {v10, v4, v2, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsUpdateGroup(III)V

    .line 1308
    .line 1309
    .line 1310
    goto :goto_29

    .line 1311
    :cond_4b
    move/from16 v4, p1

    .line 1312
    .line 1313
    :goto_29
    add-int/lit8 v0, v0, 0x1

    .line 1314
    .line 1315
    goto :goto_28

    .line 1316
    :cond_4c
    return-void

    .line 1317
    :cond_4d
    move/from16 v4, p1

    .line 1318
    .line 1319
    add-int/lit8 v0, v13, 0x1

    .line 1320
    .line 1321
    add-int/lit8 v7, v7, 0x1

    .line 1322
    .line 1323
    move v9, v4

    .line 1324
    move v5, v6

    .line 1325
    move-object v8, v10

    .line 1326
    move v4, v15

    .line 1327
    :goto_2a
    move-object/from16 v13, v18

    .line 1328
    .line 1329
    move/from16 v10, p3

    .line 1330
    .line 1331
    goto/16 :goto_11
.end method

.method private static trLog(I)I
    .locals 1

    .line 1
    const/high16 v0, -0x10000

    .line 2
    .line 3
    and-int/2addr v0, p0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    .line 6
    const/high16 v0, -0x1000000

    .line 7
    .line 8
    and-int/2addr v0, p0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    .line 12
    .line 13
    shr-int/lit8 p0, p0, 0x18

    .line 14
    .line 15
    and-int/lit16 p0, p0, 0xff

    .line 16
    .line 17
    aget p0, v0, p0

    .line 18
    .line 19
    add-int/lit8 p0, p0, 0x18

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    .line 23
    .line 24
    shr-int/lit8 p0, p0, 0x10

    .line 25
    .line 26
    and-int/lit16 p0, p0, 0x10f

    .line 27
    .line 28
    aget p0, v0, p0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const v0, 0xff00

    .line 32
    .line 33
    .line 34
    and-int/2addr v0, p0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    .line 38
    .line 39
    shr-int/lit8 p0, p0, 0x8

    .line 40
    .line 41
    and-int/lit16 p0, p0, 0xff

    .line 42
    .line 43
    aget p0, v0, p0

    .line 44
    .line 45
    add-int/lit8 p0, p0, 0x8

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    sget-object v0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->LOG_2_TABLE:[I

    .line 49
    .line 50
    and-int/lit16 p0, p0, 0xff

    .line 51
    .line 52
    aget p0, v0, p0

    .line 53
    .line 54
    :goto_0
    return p0
.end method

.method private trMedian3(IIIIII)I
    .locals 5

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    aget v1, v0, p4

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v2, v0, p5

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aget v0, v0, p6

    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 18
    .line 19
    .line 20
    move-result p1

    .line 21
    if-le v1, v2, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v3, p5

    .line 25
    move p5, p4

    .line 26
    move p4, v3

    .line 27
    move v4, v2

    .line 28
    move v2, v1

    .line 29
    move v1, v4

    .line 30
    :goto_0
    if-le v1, p1, :cond_2

    .line 31
    .line 32
    if-le v2, p1, :cond_1

    .line 33
    .line 34
    return p5

    .line 35
    :cond_1
    return p6

    .line 36
    :cond_2
    return p4
.end method

.method private trMedian5(IIIIIIII)I
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    aget v1, v0, p4

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    aget v2, v0, p5

    .line 10
    .line 11
    invoke-direct {p0, p1, p2, p3, v2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    aget v3, v0, p6

    .line 16
    .line 17
    invoke-direct {p0, p1, p2, p3, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    aget v4, v0, p7

    .line 22
    .line 23
    invoke-direct {p0, p1, p2, p3, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    aget v0, v0, p8

    .line 28
    .line 29
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-le v2, v3, :cond_0

    .line 34
    .line 35
    move v5, p6

    .line 36
    move p6, p5

    .line 37
    move p5, v5

    .line 38
    move v6, v3

    .line 39
    move v3, v2

    .line 40
    move v2, v6

    .line 41
    :cond_0
    if-le v4, p1, :cond_1

    .line 42
    .line 43
    move v5, v4

    .line 44
    move v4, p1

    .line 45
    move p1, v5

    .line 46
    goto :goto_0

    .line 47
    :cond_1
    move v5, p8

    .line 48
    move p8, p7

    .line 49
    move p7, v5

    .line 50
    :goto_0
    if-le v2, v4, :cond_2

    .line 51
    .line 52
    move v5, v3

    .line 53
    move v3, p1

    .line 54
    move p1, v5

    .line 55
    move v6, p7

    .line 56
    move p7, p6

    .line 57
    move p6, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_2
    move p5, p8

    .line 60
    move v2, v4

    .line 61
    :goto_1
    if-le v1, v3, :cond_3

    .line 62
    .line 63
    move v5, p6

    .line 64
    move p6, p4

    .line 65
    move p4, v5

    .line 66
    move v6, v3

    .line 67
    move v3, v1

    .line 68
    move v1, v6

    .line 69
    :cond_3
    if-le v1, v2, :cond_4

    .line 70
    .line 71
    move p5, p4

    .line 72
    move v2, v1

    .line 73
    goto :goto_2

    .line 74
    :cond_4
    move p7, p6

    .line 75
    move p1, v3

    .line 76
    :goto_2
    if-le p1, v2, :cond_5

    .line 77
    .line 78
    return p5

    .line 79
    :cond_5
    return p7
.end method

.method private trPartition(IIIIII)Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;
    .locals 6

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move v2, p4

    .line 5
    :goto_0
    if-ge v2, p5, :cond_0

    .line 6
    .line 7
    aget v1, v0, v2

    .line 8
    .line 9
    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v1, p6, :cond_0

    .line 14
    .line 15
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    if-ge v2, p5, :cond_2

    .line 19
    .line 20
    if-ge v1, p6, :cond_2

    .line 21
    .line 22
    move v3, v2

    .line 23
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    if-ge v2, p5, :cond_3

    .line 26
    .line 27
    aget v1, v0, v2

    .line 28
    .line 29
    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    if-gt v1, p6, :cond_3

    .line 34
    .line 35
    if-ne v1, p6, :cond_1

    .line 36
    .line 37
    invoke-static {v0, v2, v0, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v3, v2

    .line 44
    :cond_3
    add-int/lit8 v4, p5, -0x1

    .line 45
    .line 46
    :goto_2
    if-ge v2, v4, :cond_4

    .line 47
    .line 48
    aget v1, v0, v4

    .line 49
    .line 50
    invoke-direct {p0, p1, p2, p3, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-ne v1, p6, :cond_4

    .line 55
    .line 56
    add-int/lit8 v4, v4, -0x1

    .line 57
    .line 58
    goto :goto_2

    .line 59
    :cond_4
    if-ge v2, v4, :cond_6

    .line 60
    .line 61
    if-le v1, p6, :cond_6

    .line 62
    .line 63
    move v1, v4

    .line 64
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, -0x1

    .line 65
    .line 66
    if-ge v2, v4, :cond_7

    .line 67
    .line 68
    aget v5, v0, v4

    .line 69
    .line 70
    invoke-direct {p0, p1, p2, p3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 71
    .line 72
    .line 73
    move-result v5

    .line 74
    if-lt v5, p6, :cond_7

    .line 75
    .line 76
    if-ne v5, p6, :cond_5

    .line 77
    .line 78
    invoke-static {v0, v4, v0, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 79
    .line 80
    .line 81
    add-int/lit8 v1, v1, -0x1

    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_6
    move v1, v4

    .line 85
    :cond_7
    if-ge v2, v4, :cond_a

    .line 86
    .line 87
    invoke-static {v0, v2, v0, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 88
    .line 89
    .line 90
    :cond_8
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 91
    .line 92
    if-ge v2, v4, :cond_9

    .line 93
    .line 94
    aget v5, v0, v2

    .line 95
    .line 96
    invoke-direct {p0, p1, p2, p3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-gt v5, p6, :cond_9

    .line 101
    .line 102
    if-ne v5, p6, :cond_8

    .line 103
    .line 104
    invoke-static {v0, v2, v0, v3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 105
    .line 106
    .line 107
    add-int/lit8 v3, v3, 0x1

    .line 108
    .line 109
    goto :goto_4

    .line 110
    :cond_9
    :goto_5
    add-int/lit8 v4, v4, -0x1

    .line 111
    .line 112
    if-ge v2, v4, :cond_7

    .line 113
    .line 114
    aget v5, v0, v4

    .line 115
    .line 116
    invoke-direct {p0, p1, p2, p3, v5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trGetC(IIII)I

    .line 117
    .line 118
    .line 119
    move-result v5

    .line 120
    if-lt v5, p6, :cond_7

    .line 121
    .line 122
    if-ne v5, p6, :cond_9

    .line 123
    .line 124
    invoke-static {v0, v4, v0, v1}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 125
    .line 126
    .line 127
    add-int/lit8 v1, v1, -0x1

    .line 128
    .line 129
    goto :goto_5

    .line 130
    :cond_a
    if-gt v3, v1, :cond_f

    .line 131
    .line 132
    add-int/lit8 p1, v2, -0x1

    .line 133
    .line 134
    sub-int p2, v3, p4

    .line 135
    .line 136
    sub-int p3, v2, v3

    .line 137
    .line 138
    if-le p2, p3, :cond_b

    .line 139
    .line 140
    move p2, p3

    .line 141
    :cond_b
    sub-int p6, v2, p2

    .line 142
    .line 143
    move v3, p4

    .line 144
    :goto_6
    if-lez p2, :cond_c

    .line 145
    .line 146
    invoke-static {v0, v3, v0, p6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 p2, p2, -0x1

    .line 150
    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 152
    .line 153
    add-int/lit8 p6, p6, 0x1

    .line 154
    .line 155
    goto :goto_6

    .line 156
    :cond_c
    sub-int p1, v1, p1

    .line 157
    .line 158
    sub-int p2, p5, v1

    .line 159
    .line 160
    add-int/lit8 p2, p2, -0x1

    .line 161
    .line 162
    if-le p1, p2, :cond_d

    .line 163
    .line 164
    goto :goto_7

    .line 165
    :cond_d
    move p2, p1

    .line 166
    :goto_7
    sub-int p6, p5, p2

    .line 167
    .line 168
    :goto_8
    if-lez p2, :cond_e

    .line 169
    .line 170
    invoke-static {v0, v2, v0, p6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->swapElements([II[II)V

    .line 171
    .line 172
    .line 173
    add-int/lit8 p2, p2, -0x1

    .line 174
    .line 175
    add-int/lit8 v2, v2, 0x1

    .line 176
    .line 177
    add-int/lit8 p6, p6, 0x1

    .line 178
    .line 179
    goto :goto_8

    .line 180
    :cond_e
    add-int/2addr p4, p3

    .line 181
    sub-int/2addr p5, p1

    .line 182
    :cond_f
    new-instance p1, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;

    .line 183
    .line 184
    invoke-direct {p1, p4, p5}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$PartitionResult;-><init>(II)V

    .line 185
    .line 186
    .line 187
    return-object p1
.end method

.method private trPivot(IIIII)I
    .locals 18

    .line 1
    sub-int v0, p5, p4

    .line 2
    .line 3
    div-int/lit8 v1, v0, 0x2

    .line 4
    .line 5
    add-int v7, p4, v1

    .line 6
    .line 7
    const/16 v1, 0x200

    .line 8
    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    .line 11
    const/16 v1, 0x20

    .line 12
    .line 13
    if-gt v0, v1, :cond_0

    .line 14
    .line 15
    add-int/lit8 v6, p5, -0x1

    .line 16
    .line 17
    move-object/from16 v0, p0

    .line 18
    .line 19
    move/from16 v1, p1

    .line 20
    .line 21
    move/from16 v2, p2

    .line 22
    .line 23
    move/from16 v3, p3

    .line 24
    .line 25
    move/from16 v4, p4

    .line 26
    .line 27
    move v5, v7

    .line 28
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    return v0

    .line 33
    :cond_0
    shr-int/lit8 v0, v0, 0x2

    .line 34
    .line 35
    add-int v5, p4, v0

    .line 36
    .line 37
    add-int/lit8 v8, p5, -0x1

    .line 38
    .line 39
    sub-int v9, v8, v0

    .line 40
    .line 41
    move-object/from16 v0, p0

    .line 42
    .line 43
    move/from16 v1, p1

    .line 44
    .line 45
    move/from16 v2, p2

    .line 46
    .line 47
    move/from16 v3, p3

    .line 48
    .line 49
    move/from16 v4, p4

    .line 50
    .line 51
    move v6, v7

    .line 52
    move v7, v9

    .line 53
    invoke-direct/range {v0 .. v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian5(IIIIIIII)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    return v0

    .line 58
    :cond_1
    shr-int/lit8 v9, v0, 0x3

    .line 59
    .line 60
    add-int v5, p4, v9

    .line 61
    .line 62
    shl-int/lit8 v10, v9, 0x1

    .line 63
    .line 64
    add-int v6, p4, v10

    .line 65
    .line 66
    move-object/from16 v0, p0

    .line 67
    .line 68
    move/from16 v1, p1

    .line 69
    .line 70
    move/from16 v2, p2

    .line 71
    .line 72
    move/from16 v3, p3

    .line 73
    .line 74
    move/from16 v4, p4

    .line 75
    .line 76
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    .line 77
    .line 78
    .line 79
    move-result v15

    .line 80
    sub-int v6, v7, v9

    .line 81
    .line 82
    add-int v8, v7, v9

    .line 83
    .line 84
    move-object/from16 v2, p0

    .line 85
    .line 86
    move/from16 v3, p1

    .line 87
    .line 88
    move/from16 v4, p2

    .line 89
    .line 90
    move/from16 v5, p3

    .line 91
    .line 92
    invoke-direct/range {v2 .. v8}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    .line 93
    .line 94
    .line 95
    move-result v16

    .line 96
    add-int/lit8 v6, p5, -0x1

    .line 97
    .line 98
    sub-int v4, v6, v10

    .line 99
    .line 100
    sub-int v5, v6, v9

    .line 101
    .line 102
    move/from16 v2, p2

    .line 103
    .line 104
    move/from16 v3, p3

    .line 105
    .line 106
    invoke-direct/range {v0 .. v6}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    .line 107
    .line 108
    .line 109
    move-result v17

    .line 110
    move-object/from16 v11, p0

    .line 111
    .line 112
    move/from16 v12, p1

    .line 113
    .line 114
    move/from16 v13, p2

    .line 115
    .line 116
    move/from16 v14, p3

    .line 117
    .line 118
    invoke-direct/range {v11 .. v17}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trMedian3(IIIIII)I

    .line 119
    .line 120
    .line 121
    move-result v0

    .line 122
    return v0
.end method

.method private trSort(III)V
    .locals 16

    .line 1
    move/from16 v8, p2

    .line 2
    .line 3
    move-object/from16 v9, p0

    .line 4
    .line 5
    iget-object v10, v9, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 6
    .line 7
    neg-int v0, v8

    .line 8
    const/4 v11, 0x0

    .line 9
    aget v1, v10, v11

    .line 10
    .line 11
    if-ge v0, v1, :cond_4

    .line 12
    .line 13
    new-instance v12, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;

    .line 14
    .line 15
    invoke-static/range {p2 .. p2}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trLog(I)I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    mul-int/lit8 v0, v0, 0x2

    .line 20
    .line 21
    div-int/lit8 v0, v0, 0x3

    .line 22
    .line 23
    const/4 v13, 0x1

    .line 24
    add-int/2addr v0, v13

    .line 25
    invoke-direct {v12, v8, v0}, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;-><init>(II)V

    .line 26
    .line 27
    .line 28
    const/4 v14, 0x0

    .line 29
    :cond_0
    aget v0, v10, v14

    .line 30
    .line 31
    if-gez v0, :cond_1

    .line 32
    .line 33
    sub-int/2addr v14, v0

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    add-int v0, p1, v0

    .line 36
    .line 37
    aget v0, v10, v0

    .line 38
    .line 39
    add-int/lit8 v15, v0, 0x1

    .line 40
    .line 41
    sub-int v0, v15, v14

    .line 42
    .line 43
    if-ge v13, v0, :cond_3

    .line 44
    .line 45
    add-int v2, p1, p3

    .line 46
    .line 47
    add-int v3, p1, v8

    .line 48
    .line 49
    move-object/from16 v0, p0

    .line 50
    .line 51
    move/from16 v1, p1

    .line 52
    .line 53
    move v4, v14

    .line 54
    move v5, v15

    .line 55
    move-object v6, v12

    .line 56
    move/from16 v7, p2

    .line 57
    .line 58
    invoke-direct/range {v0 .. v7}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->trIntroSort(IIIIILio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;I)V

    .line 59
    .line 60
    .line 61
    iget v0, v12, Lio/netty/handler/codec/compression/Bzip2DivSufSort$TRBudget;->chance:I

    .line 62
    .line 63
    if-nez v0, :cond_3

    .line 64
    .line 65
    if-lez v14, :cond_2

    .line 66
    .line 67
    neg-int v0, v14

    .line 68
    aput v0, v10, v11

    .line 69
    .line 70
    :cond_2
    invoke-direct/range {p0 .. p3}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->lsSort(III)V

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    move v14, v15

    .line 75
    :goto_0
    if-lt v14, v8, :cond_0

    .line 76
    .line 77
    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public bwt()I
    .locals 7

    .line 1
    iget-object v0, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->SA:[I

    .line 2
    .line 3
    iget-object v1, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->T:[B

    .line 4
    .line 5
    iget v2, p0, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->n:I

    .line 6
    .line 7
    const/16 v3, 0x100

    .line 8
    .line 9
    new-array v3, v3, [I

    .line 10
    .line 11
    const/high16 v4, 0x10000

    .line 12
    .line 13
    new-array v4, v4, [I

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    return v5

    .line 19
    :cond_0
    const/4 v6, 0x1

    .line 20
    if-ne v2, v6, :cond_1

    .line 21
    .line 22
    aget-byte v1, v1, v5

    .line 23
    .line 24
    aput v1, v0, v5

    .line 25
    .line 26
    return v5

    .line 27
    :cond_1
    invoke-direct {p0, v3, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->sortTypeBstar([I[I)I

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-lez v0, :cond_2

    .line 32
    .line 33
    invoke-direct {p0, v3, v4}, Lio/netty/handler/codec/compression/Bzip2DivSufSort;->constructBWT([I[I)I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    return v0

    .line 38
    :cond_2
    return v5
.end method
