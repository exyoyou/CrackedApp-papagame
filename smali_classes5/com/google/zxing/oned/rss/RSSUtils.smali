.class public final Lcom/google/zxing/oned/rss/RSSUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static combins(II)I
    .locals 4

    .line 1
    sub-int v0, p0, p1

    .line 2
    .line 3
    if-le v0, p1, :cond_0

    .line 4
    .line 5
    move v3, v0

    .line 6
    move v0, p1

    .line 7
    move p1, v3

    .line 8
    :cond_0
    const/4 v1, 0x1

    .line 9
    const/4 v2, 0x1

    .line 10
    :goto_0
    if-le p0, p1, :cond_2

    .line 11
    .line 12
    mul-int v1, v1, p0

    .line 13
    .line 14
    if-gt v2, v0, :cond_1

    .line 15
    .line 16
    div-int/2addr v1, v2

    .line 17
    add-int/lit8 v2, v2, 0x1

    .line 18
    .line 19
    :cond_1
    add-int/lit8 p0, p0, -0x1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    :goto_1
    if-gt v2, v0, :cond_3

    .line 23
    .line 24
    div-int/2addr v1, v2

    .line 25
    add-int/lit8 v2, v2, 0x1

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_3
    return v1
.end method

.method static elements([III)[I
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    add-int/lit8 v0, v0, 0x2

    .line 3
    .line 4
    new-array v0, v0, [I

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    shl-int/2addr p2, v1

    .line 8
    const/4 v2, 0x0

    .line 9
    aput v1, v0, v2

    .line 10
    .line 11
    const/16 v3, 0xa

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x1

    .line 15
    :goto_0
    add-int/lit8 v6, p2, -0x2

    .line 16
    .line 17
    if-ge v4, v6, :cond_1

    .line 18
    .line 19
    add-int/lit8 v6, v4, -0x1

    .line 20
    .line 21
    aget v7, p0, v6

    .line 22
    .line 23
    aget v6, v0, v6

    .line 24
    .line 25
    sub-int/2addr v7, v6

    .line 26
    aput v7, v0, v4

    .line 27
    .line 28
    add-int/lit8 v6, v4, 0x1

    .line 29
    .line 30
    aget v8, p0, v4

    .line 31
    .line 32
    sub-int/2addr v8, v7

    .line 33
    aput v8, v0, v6

    .line 34
    .line 35
    aget v6, v0, v4

    .line 36
    .line 37
    add-int/2addr v8, v6

    .line 38
    add-int/2addr v5, v8

    .line 39
    if-ge v6, v3, :cond_0

    .line 40
    .line 41
    move v3, v6

    .line 42
    :cond_0
    add-int/lit8 v4, v4, 0x2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_1
    add-int/lit8 p0, p2, -0x1

    .line 46
    .line 47
    sub-int/2addr p1, v5

    .line 48
    aput p1, v0, p0

    .line 49
    .line 50
    if-ge p1, v3, :cond_2

    .line 51
    .line 52
    move v3, p1

    .line 53
    :cond_2
    if-le v3, v1, :cond_3

    .line 54
    .line 55
    :goto_1
    if-ge v2, p2, :cond_3

    .line 56
    .line 57
    aget p0, v0, v2

    .line 58
    .line 59
    add-int/lit8 p1, v3, -0x1

    .line 60
    .line 61
    add-int/2addr p0, p1

    .line 62
    aput p0, v0, v2

    .line 63
    .line 64
    add-int/lit8 p0, v2, 0x1

    .line 65
    .line 66
    aget v4, v0, p0

    .line 67
    .line 68
    sub-int/2addr v4, p1

    .line 69
    aput v4, v0, p0

    .line 70
    .line 71
    add-int/lit8 v2, v2, 0x2

    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_3
    return-object v0
.end method

.method public static getRSSvalue([IIZ)I
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    array-length v2, v0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    :goto_0
    if-ge v4, v2, :cond_0

    .line 9
    .line 10
    aget v6, v0, v4

    .line 11
    .line 12
    add-int/2addr v5, v6

    .line 13
    add-int/lit8 v4, v4, 0x1

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v4, 0x0

    .line 17
    const/4 v6, 0x0

    .line 18
    const/4 v7, 0x0

    .line 19
    :goto_1
    add-int/lit8 v8, v2, -0x1

    .line 20
    .line 21
    if-ge v4, v8, :cond_6

    .line 22
    .line 23
    const/4 v9, 0x1

    .line 24
    shl-int v10, v9, v4

    .line 25
    .line 26
    or-int/2addr v7, v10

    .line 27
    const/4 v11, 0x1

    .line 28
    :goto_2
    aget v12, v0, v4

    .line 29
    .line 30
    if-ge v11, v12, :cond_5

    .line 31
    .line 32
    sub-int v12, v5, v11

    .line 33
    .line 34
    add-int/lit8 v13, v12, -0x1

    .line 35
    .line 36
    sub-int v14, v2, v4

    .line 37
    .line 38
    add-int/lit8 v15, v14, -0x2

    .line 39
    .line 40
    invoke-static {v13, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    .line 41
    .line 42
    .line 43
    move-result v13

    .line 44
    if-eqz p2, :cond_1

    .line 45
    .line 46
    if-nez v7, :cond_1

    .line 47
    .line 48
    add-int/lit8 v3, v14, -0x1

    .line 49
    .line 50
    sub-int v9, v12, v3

    .line 51
    .line 52
    if-lt v9, v3, :cond_1

    .line 53
    .line 54
    sub-int v3, v12, v14

    .line 55
    .line 56
    invoke-static {v3, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    sub-int/2addr v13, v3

    .line 61
    :cond_1
    add-int/lit8 v3, v14, -0x1

    .line 62
    .line 63
    const/4 v9, 0x1

    .line 64
    if-le v3, v9, :cond_3

    .line 65
    .line 66
    sub-int v3, v12, v15

    .line 67
    .line 68
    const/4 v15, 0x0

    .line 69
    :goto_3
    if-le v3, v1, :cond_2

    .line 70
    .line 71
    sub-int v16, v12, v3

    .line 72
    .line 73
    add-int/lit8 v0, v16, -0x1

    .line 74
    .line 75
    add-int/lit8 v9, v14, -0x3

    .line 76
    .line 77
    invoke-static {v0, v9}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    add-int/2addr v15, v0

    .line 82
    add-int/lit8 v3, v3, -0x1

    .line 83
    .line 84
    move-object/from16 v0, p0

    .line 85
    .line 86
    const/4 v9, 0x1

    .line 87
    goto :goto_3

    .line 88
    :cond_2
    sub-int v0, v8, v4

    .line 89
    .line 90
    mul-int v15, v15, v0

    .line 91
    .line 92
    sub-int/2addr v13, v15

    .line 93
    goto :goto_4

    .line 94
    :cond_3
    if-le v12, v1, :cond_4

    .line 95
    .line 96
    add-int/lit8 v13, v13, -0x1

    .line 97
    .line 98
    :cond_4
    :goto_4
    add-int/2addr v6, v13

    .line 99
    add-int/lit8 v11, v11, 0x1

    .line 100
    .line 101
    not-int v0, v10

    .line 102
    and-int/2addr v7, v0

    .line 103
    const/4 v9, 0x1

    .line 104
    move-object/from16 v0, p0

    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_5
    sub-int/2addr v5, v11

    .line 108
    add-int/lit8 v4, v4, 0x1

    .line 109
    .line 110
    move-object/from16 v0, p0

    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_6
    return v6
.end method

.method static getRSSwidths(IIIIZ)[I
    .locals 17

    .line 1
    move/from16 v0, p2

    .line 2
    .line 3
    move/from16 v1, p3

    .line 4
    .line 5
    new-array v2, v0, [I

    .line 6
    .line 7
    move/from16 v4, p0

    .line 8
    .line 9
    move/from16 v5, p1

    .line 10
    .line 11
    const/4 v6, 0x0

    .line 12
    const/4 v7, 0x0

    .line 13
    :goto_0
    add-int/lit8 v8, v0, -0x1

    .line 14
    .line 15
    if-ge v6, v8, :cond_5

    .line 16
    .line 17
    const/4 v9, 0x1

    .line 18
    shl-int v10, v9, v6

    .line 19
    .line 20
    or-int/2addr v7, v10

    .line 21
    const/4 v11, 0x1

    .line 22
    :goto_1
    sub-int v12, v5, v11

    .line 23
    .line 24
    add-int/lit8 v13, v12, -0x1

    .line 25
    .line 26
    sub-int v14, v0, v6

    .line 27
    .line 28
    add-int/lit8 v15, v14, -0x2

    .line 29
    .line 30
    invoke-static {v13, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    .line 31
    .line 32
    .line 33
    move-result v13

    .line 34
    if-eqz p4, :cond_0

    .line 35
    .line 36
    if-nez v7, :cond_0

    .line 37
    .line 38
    add-int/lit8 v3, v14, -0x1

    .line 39
    .line 40
    sub-int v9, v12, v3

    .line 41
    .line 42
    if-lt v9, v3, :cond_0

    .line 43
    .line 44
    sub-int v3, v12, v14

    .line 45
    .line 46
    invoke-static {v3, v15}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    sub-int/2addr v13, v3

    .line 51
    :cond_0
    add-int/lit8 v3, v14, -0x1

    .line 52
    .line 53
    const/4 v9, 0x1

    .line 54
    if-le v3, v9, :cond_2

    .line 55
    .line 56
    sub-int v3, v12, v15

    .line 57
    .line 58
    const/4 v15, 0x0

    .line 59
    :goto_2
    if-le v3, v1, :cond_1

    .line 60
    .line 61
    sub-int v16, v12, v3

    .line 62
    .line 63
    add-int/lit8 v0, v16, -0x1

    .line 64
    .line 65
    add-int/lit8 v9, v14, -0x3

    .line 66
    .line 67
    invoke-static {v0, v9}, Lcom/google/zxing/oned/rss/RSSUtils;->combins(II)I

    .line 68
    .line 69
    .line 70
    move-result v0

    .line 71
    add-int/2addr v15, v0

    .line 72
    add-int/lit8 v3, v3, -0x1

    .line 73
    .line 74
    move/from16 v0, p2

    .line 75
    .line 76
    const/4 v9, 0x1

    .line 77
    goto :goto_2

    .line 78
    :cond_1
    sub-int v0, v8, v6

    .line 79
    .line 80
    mul-int v15, v15, v0

    .line 81
    .line 82
    sub-int/2addr v13, v15

    .line 83
    goto :goto_3

    .line 84
    :cond_2
    if-le v12, v1, :cond_3

    .line 85
    .line 86
    add-int/lit8 v13, v13, -0x1

    .line 87
    .line 88
    :cond_3
    :goto_3
    sub-int/2addr v4, v13

    .line 89
    if-gez v4, :cond_4

    .line 90
    .line 91
    add-int/2addr v4, v13

    .line 92
    aput v11, v2, v6

    .line 93
    .line 94
    add-int/lit8 v6, v6, 0x1

    .line 95
    .line 96
    move/from16 v0, p2

    .line 97
    .line 98
    move v5, v12

    .line 99
    goto :goto_0

    .line 100
    :cond_4
    add-int/lit8 v11, v11, 0x1

    .line 101
    .line 102
    not-int v0, v10

    .line 103
    and-int/2addr v7, v0

    .line 104
    move/from16 v0, p2

    .line 105
    .line 106
    const/4 v9, 0x1

    .line 107
    goto :goto_1

    .line 108
    :cond_5
    aput v5, v2, v6

    .line 109
    .line 110
    return-object v2
.end method
