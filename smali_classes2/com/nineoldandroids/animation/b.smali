.class public Lcom/nineoldandroids/animation/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:[I

.field private static final b:I = 0x0

.field private static final c:[I

.field private static final d:I = 0x0

.field private static final e:[I

.field private static final f:I = 0x0

.field private static final g:I = 0x1

.field private static final h:I = 0x2

.field private static final i:I = 0x3

.field private static final j:I = 0x4

.field private static final k:I = 0x5

.field private static final l:I = 0x6

.field private static final m:I = 0x7

.field private static final n:I

.field private static final o:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const v0, 0x10102e2

    .line 2
    .line 3
    .line 4
    filled-new-array {v0}, [I

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    sput-object v0, Lcom/nineoldandroids/animation/b;->a:[I

    .line 9
    .line 10
    const v0, 0x10102e1

    .line 11
    .line 12
    .line 13
    filled-new-array {v0}, [I

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sput-object v0, Lcom/nineoldandroids/animation/b;->c:[I

    .line 18
    .line 19
    const/16 v0, 0x8

    .line 20
    .line 21
    new-array v0, v0, [I

    .line 22
    .line 23
    fill-array-data v0, :array_0

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/nineoldandroids/animation/b;->e:[I

    .line 27
    .line 28
    return-void

    .line 29
    :array_0
    .array-data 4
        0x1010141
        0x1010198
        0x10101be
        0x10101bf
        0x10101c0
        0x10102de
        0x10102df
        0x10102e0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/a;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    invoke-static {p0, p1, v0, v1, v2}, Lcom/nineoldandroids/animation/b;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/d;I)Lcom/nineoldandroids/animation/a;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    return-object p0
.end method

.method private static b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/d;I)Lcom/nineoldandroids/animation/a;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move-object v2, v1

    .line 7
    move-object v3, v2

    .line 8
    :cond_0
    :goto_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 9
    .line 10
    .line 11
    move-result v4

    .line 12
    const/4 v5, 0x3

    .line 13
    const/4 v6, 0x0

    .line 14
    if-ne v4, v5, :cond_1

    .line 15
    .line 16
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    if-le v5, v0, :cond_8

    .line 21
    .line 22
    :cond_1
    const/4 v5, 0x1

    .line 23
    if-eq v4, v5, :cond_8

    .line 24
    .line 25
    const/4 v5, 0x2

    .line 26
    if-eq v4, v5, :cond_2

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    const-string v4, "objectAnimator"

    .line 34
    .line 35
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-eqz v4, :cond_3

    .line 40
    .line 41
    invoke-static {p0, p2}, Lcom/nineoldandroids/animation/b;->e(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/l;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    goto :goto_1

    .line 46
    :cond_3
    const-string v4, "animator"

    .line 47
    .line 48
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result v4

    .line 52
    if-eqz v4, :cond_4

    .line 53
    .line 54
    invoke-static {p0, p2, v1}, Lcom/nineoldandroids/animation/b;->d(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/q;)Lcom/nineoldandroids/animation/q;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    goto :goto_1

    .line 59
    :cond_4
    const-string v4, "set"

    .line 60
    .line 61
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    if-eqz v3, :cond_7

    .line 66
    .line 67
    new-instance v3, Lcom/nineoldandroids/animation/d;

    .line 68
    .line 69
    invoke-direct {v3}, Lcom/nineoldandroids/animation/d;-><init>()V

    .line 70
    .line 71
    .line 72
    sget-object v4, Lcom/nineoldandroids/animation/b;->a:[I

    .line 73
    .line 74
    invoke-virtual {p0, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    new-instance v5, Landroid/util/TypedValue;

    .line 79
    .line 80
    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    .line 84
    .line 85
    .line 86
    iget v7, v5, Landroid/util/TypedValue;->type:I

    .line 87
    .line 88
    const/16 v8, 0x10

    .line 89
    .line 90
    if-ne v7, v8, :cond_5

    .line 91
    .line 92
    iget v6, v5, Landroid/util/TypedValue;->data:I

    .line 93
    .line 94
    :cond_5
    invoke-static {p0, p1, p2, v3, v6}, Lcom/nineoldandroids/animation/b;->b(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/d;I)Lcom/nineoldandroids/animation/a;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    .line 99
    .line 100
    :goto_1
    if-eqz p3, :cond_0

    .line 101
    .line 102
    if-nez v2, :cond_6

    .line 103
    .line 104
    new-instance v2, Ljava/util/ArrayList;

    .line 105
    .line 106
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 107
    .line 108
    .line 109
    :cond_6
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    goto :goto_0

    .line 113
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    .line 114
    .line 115
    new-instance p2, Ljava/lang/StringBuilder;

    .line 116
    .line 117
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 118
    .line 119
    .line 120
    const-string p3, "Unknown animator name: "

    .line 121
    .line 122
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    throw p0

    .line 140
    :cond_8
    if-eqz p3, :cond_b

    .line 141
    .line 142
    if-eqz v2, :cond_b

    .line 143
    .line 144
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    new-array p0, p0, [Lcom/nineoldandroids/animation/a;

    .line 149
    .line 150
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 155
    .line 156
    .line 157
    move-result p2

    .line 158
    if-eqz p2, :cond_9

    .line 159
    .line 160
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 161
    .line 162
    .line 163
    move-result-object p2

    .line 164
    check-cast p2, Lcom/nineoldandroids/animation/a;

    .line 165
    .line 166
    add-int/lit8 v0, v6, 0x1

    .line 167
    .line 168
    aput-object p2, p0, v6

    .line 169
    .line 170
    move v6, v0

    .line 171
    goto :goto_2

    .line 172
    :cond_9
    if-nez p4, :cond_a

    .line 173
    .line 174
    invoke-virtual {p3, p0}, Lcom/nineoldandroids/animation/d;->D([Lcom/nineoldandroids/animation/a;)V

    .line 175
    .line 176
    .line 177
    goto :goto_3

    .line 178
    :cond_a
    invoke-virtual {p3, p0}, Lcom/nineoldandroids/animation/d;->B([Lcom/nineoldandroids/animation/a;)V

    .line 179
    .line 180
    .line 181
    :cond_b
    :goto_3
    return-object v3
.end method

.method public static c(Landroid/content/Context;I)Lcom/nineoldandroids/animation/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    const-string v0, "Can\'t load animation resource ID #0x"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 5
    .line 6
    .line 7
    move-result-object v2

    .line 8
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getAnimation(I)Landroid/content/res/XmlResourceParser;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-static {p0, v1}, Lcom/nineoldandroids/animation/b;->a(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Lcom/nineoldandroids/animation/a;

    .line 13
    .line 14
    .line 15
    move-result-object p0
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-object p0

    .line 22
    :catchall_0
    move-exception p0

    .line 23
    goto :goto_0

    .line 24
    :catch_0
    move-exception p0

    .line 25
    :try_start_1
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    .line 26
    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 50
    .line 51
    .line 52
    throw v2

    .line 53
    :catch_1
    move-exception p0

    .line 54
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    .line 55
    .line 56
    new-instance v3, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-direct {v2, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, p0}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 79
    .line 80
    .line 81
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 82
    :goto_0
    if-eqz v1, :cond_1

    .line 83
    .line 84
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 85
    .line 86
    .line 87
    :cond_1
    throw p0
.end method

.method private static d(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/q;)Lcom/nineoldandroids/animation/q;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    sget-object v1, Lcom/nineoldandroids/animation/b;->e:[I

    .line 4
    .line 5
    move-object/from16 v2, p1

    .line 6
    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x1

    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    int-to-long v4, v4

    .line 18
    const/4 v6, 0x2

    .line 19
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 20
    .line 21
    .line 22
    move-result v7

    .line 23
    int-to-long v7, v7

    .line 24
    const/4 v9, 0x7

    .line 25
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 26
    .line 27
    .line 28
    move-result v9

    .line 29
    if-nez p2, :cond_0

    .line 30
    .line 31
    new-instance v10, Lcom/nineoldandroids/animation/q;

    .line 32
    .line 33
    invoke-direct {v10}, Lcom/nineoldandroids/animation/q;-><init>()V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move-object/from16 v10, p2

    .line 38
    .line 39
    :goto_0
    if-nez v9, :cond_1

    .line 40
    .line 41
    const/4 v9, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    const/4 v9, 0x0

    .line 44
    :goto_1
    const/4 v11, 0x5

    .line 45
    invoke-virtual {v1, v11}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 46
    .line 47
    .line 48
    move-result-object v12

    .line 49
    if-eqz v12, :cond_2

    .line 50
    .line 51
    const/4 v13, 0x1

    .line 52
    goto :goto_2

    .line 53
    :cond_2
    const/4 v13, 0x0

    .line 54
    :goto_2
    if-eqz v13, :cond_3

    .line 55
    .line 56
    iget v12, v12, Landroid/util/TypedValue;->type:I

    .line 57
    .line 58
    goto :goto_3

    .line 59
    :cond_3
    const/4 v12, 0x0

    .line 60
    :goto_3
    const/4 v14, 0x6

    .line 61
    invoke-virtual {v1, v14}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 62
    .line 63
    .line 64
    move-result-object v15

    .line 65
    if-eqz v15, :cond_4

    .line 66
    .line 67
    const/16 v16, 0x1

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_4
    const/16 v16, 0x0

    .line 71
    .line 72
    :goto_4
    if-eqz v16, :cond_5

    .line 73
    .line 74
    iget v15, v15, Landroid/util/TypedValue;->type:I

    .line 75
    .line 76
    goto :goto_5

    .line 77
    :cond_5
    const/4 v15, 0x0

    .line 78
    :goto_5
    const/16 v2, 0x1f

    .line 79
    .line 80
    const/16 v3, 0x1c

    .line 81
    .line 82
    if-eqz v13, :cond_6

    .line 83
    .line 84
    if-lt v12, v3, :cond_6

    .line 85
    .line 86
    if-le v12, v2, :cond_7

    .line 87
    .line 88
    :cond_6
    if-eqz v16, :cond_8

    .line 89
    .line 90
    if-lt v15, v3, :cond_8

    .line 91
    .line 92
    if-gt v15, v2, :cond_8

    .line 93
    .line 94
    :cond_7
    new-instance v9, Lcom/nineoldandroids/animation/e;

    .line 95
    .line 96
    invoke-direct {v9}, Lcom/nineoldandroids/animation/e;-><init>()V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v10, v9}, Lcom/nineoldandroids/animation/q;->e0(Lcom/nineoldandroids/animation/p;)V

    .line 100
    .line 101
    .line 102
    const/4 v9, 0x0

    .line 103
    :cond_8
    const/4 v2, 0x0

    .line 104
    if-eqz v9, :cond_e

    .line 105
    .line 106
    if-eqz v13, :cond_c

    .line 107
    .line 108
    if-ne v12, v11, :cond_9

    .line 109
    .line 110
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    goto :goto_6

    .line 115
    :cond_9
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 116
    .line 117
    .line 118
    move-result v3

    .line 119
    :goto_6
    if-eqz v16, :cond_b

    .line 120
    .line 121
    if-ne v15, v11, :cond_a

    .line 122
    .line 123
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    goto :goto_7

    .line 128
    :cond_a
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    :goto_7
    new-array v6, v6, [F

    .line 133
    .line 134
    const/4 v9, 0x0

    .line 135
    aput v3, v6, v9

    .line 136
    .line 137
    const/4 v12, 0x1

    .line 138
    aput v2, v6, v12

    .line 139
    .line 140
    invoke-virtual {v10, v6}, Lcom/nineoldandroids/animation/q;->f0([F)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_c

    .line 144
    .line 145
    :cond_b
    const/4 v9, 0x0

    .line 146
    const/4 v12, 0x1

    .line 147
    new-array v2, v12, [F

    .line 148
    .line 149
    aput v3, v2, v9

    .line 150
    .line 151
    invoke-virtual {v10, v2}, Lcom/nineoldandroids/animation/q;->f0([F)V

    .line 152
    .line 153
    .line 154
    goto/16 :goto_c

    .line 155
    .line 156
    :cond_c
    const/4 v9, 0x0

    .line 157
    const/4 v12, 0x1

    .line 158
    if-ne v15, v11, :cond_d

    .line 159
    .line 160
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 161
    .line 162
    .line 163
    move-result v2

    .line 164
    goto :goto_8

    .line 165
    :cond_d
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    :goto_8
    new-array v3, v12, [F

    .line 170
    .line 171
    aput v2, v3, v9

    .line 172
    .line 173
    invoke-virtual {v10, v3}, Lcom/nineoldandroids/animation/q;->f0([F)V

    .line 174
    .line 175
    .line 176
    goto/16 :goto_c

    .line 177
    .line 178
    :cond_e
    const/4 v9, 0x0

    .line 179
    if-eqz v13, :cond_14

    .line 180
    .line 181
    if-ne v12, v11, :cond_f

    .line 182
    .line 183
    invoke-virtual {v1, v11, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 184
    .line 185
    .line 186
    move-result v6

    .line 187
    float-to-int v6, v6

    .line 188
    goto :goto_9

    .line 189
    :cond_f
    if-lt v12, v3, :cond_10

    .line 190
    .line 191
    const/16 v6, 0x1f

    .line 192
    .line 193
    if-gt v12, v6, :cond_10

    .line 194
    .line 195
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 196
    .line 197
    .line 198
    move-result v6

    .line 199
    goto :goto_9

    .line 200
    :cond_10
    invoke-virtual {v1, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 201
    .line 202
    .line 203
    move-result v6

    .line 204
    :goto_9
    if-eqz v16, :cond_13

    .line 205
    .line 206
    if-ne v15, v11, :cond_11

    .line 207
    .line 208
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    float-to-int v2, v2

    .line 213
    goto :goto_a

    .line 214
    :cond_11
    if-lt v15, v3, :cond_12

    .line 215
    .line 216
    const/16 v2, 0x1f

    .line 217
    .line 218
    if-gt v15, v2, :cond_12

    .line 219
    .line 220
    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 221
    .line 222
    .line 223
    move-result v2

    .line 224
    goto :goto_a

    .line 225
    :cond_12
    invoke-virtual {v1, v14, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 226
    .line 227
    .line 228
    move-result v2

    .line 229
    :goto_a
    filled-new-array {v6, v2}, [I

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v10, v2}, Lcom/nineoldandroids/animation/q;->h0([I)V

    .line 234
    .line 235
    .line 236
    goto :goto_c

    .line 237
    :cond_13
    filled-new-array {v6}, [I

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v10, v2}, Lcom/nineoldandroids/animation/q;->h0([I)V

    .line 242
    .line 243
    .line 244
    goto :goto_c

    .line 245
    :cond_14
    if-eqz v16, :cond_17

    .line 246
    .line 247
    if-ne v15, v11, :cond_15

    .line 248
    .line 249
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    float-to-int v2, v2

    .line 254
    move v3, v2

    .line 255
    const/4 v2, 0x0

    .line 256
    goto :goto_b

    .line 257
    :cond_15
    if-lt v15, v3, :cond_16

    .line 258
    .line 259
    const/16 v2, 0x1f

    .line 260
    .line 261
    if-gt v15, v2, :cond_16

    .line 262
    .line 263
    const/4 v2, 0x0

    .line 264
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    .line 265
    .line 266
    .line 267
    move-result v3

    .line 268
    goto :goto_b

    .line 269
    :cond_16
    const/4 v2, 0x0

    .line 270
    invoke-virtual {v1, v14, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 271
    .line 272
    .line 273
    move-result v3

    .line 274
    :goto_b
    filled-new-array {v3}, [I

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    invoke-virtual {v10, v3}, Lcom/nineoldandroids/animation/q;->h0([I)V

    .line 279
    .line 280
    .line 281
    goto :goto_d

    .line 282
    :cond_17
    :goto_c
    const/4 v2, 0x0

    .line 283
    :goto_d
    invoke-virtual {v10, v4, v5}, Lcom/nineoldandroids/animation/q;->d0(J)Lcom/nineoldandroids/animation/q;

    .line 284
    .line 285
    .line 286
    invoke-virtual {v10, v7, v8}, Lcom/nineoldandroids/animation/q;->n(J)V

    .line 287
    .line 288
    .line 289
    const/4 v3, 0x3

    .line 290
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 291
    .line 292
    .line 293
    move-result v4

    .line 294
    if-eqz v4, :cond_18

    .line 295
    .line 296
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 297
    .line 298
    .line 299
    move-result v3

    .line 300
    invoke-virtual {v10, v3}, Lcom/nineoldandroids/animation/q;->j0(I)V

    .line 301
    .line 302
    .line 303
    :cond_18
    const/4 v3, 0x4

    .line 304
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 305
    .line 306
    .line 307
    move-result v4

    .line 308
    if-eqz v4, :cond_19

    .line 309
    .line 310
    const/4 v4, 0x1

    .line 311
    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 312
    .line 313
    .line 314
    move-result v3

    .line 315
    invoke-virtual {v10, v3}, Lcom/nineoldandroids/animation/q;->k0(I)V

    .line 316
    .line 317
    .line 318
    :cond_19
    invoke-virtual {v1, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 319
    .line 320
    .line 321
    move-result v2

    .line 322
    if-lez v2, :cond_1a

    .line 323
    .line 324
    invoke-static {v0, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 325
    .line 326
    .line 327
    move-result-object v0

    .line 328
    invoke-virtual {v10, v0}, Lcom/nineoldandroids/animation/q;->m(Landroid/view/animation/Interpolator;)V

    .line 329
    .line 330
    .line 331
    :cond_1a
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    .line 333
    .line 334
    return-object v10
.end method

.method private static e(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/nineoldandroids/animation/l;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/nineoldandroids/animation/l;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/nineoldandroids/animation/l;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p0, p1, v0}, Lcom/nineoldandroids/animation/b;->d(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/nineoldandroids/animation/q;)Lcom/nineoldandroids/animation/q;

    .line 7
    .line 8
    .line 9
    sget-object v1, Lcom/nineoldandroids/animation/b;->c:[I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const/4 p1, 0x0

    .line 16
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    invoke-virtual {v0, p1}, Lcom/nineoldandroids/animation/l;->A0(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    .line 25
    .line 26
    return-object v0
.end method
