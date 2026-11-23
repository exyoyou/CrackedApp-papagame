.class public final Lcom/xinzhu/overmind/utils/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final l:Ljava/lang/String; = "EncodedBuffer"


# instance fields
.field private final a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:I

.field private d:[B

.field private e:I

.field private f:I

.field private g:[B

.field private h:I

.field private i:I

.field private j:I

.field private k:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/utils/h;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->j:I

    .line 5
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->k:I

    if-gtz p1, :cond_0

    const/16 p1, 0x2000

    .line 6
    :cond_0
    iput p1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 7
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 9
    iput p1, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    return-void
.end method

.method private static K(I)I
    .locals 1

    .line 1
    shl-int/lit8 v0, p0, 0x1

    shr-int/lit8 p0, p0, 0x1f

    xor-int/2addr p0, v0

    return p0
.end method

.method private static L(J)J
    .locals 3

    .line 1
    const/4 v0, 0x1

    shl-long v0, p0, v0

    const/16 v2, 0x3f

    shr-long/2addr p0, v2

    xor-long/2addr p0, v0

    return-wide p0
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;I[B)I
    .locals 5

    .line 1
    new-instance p0, Ljava/lang/StringBuffer;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 4
    .line 5
    .line 6
    array-length v0, p3

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_4

    .line 9
    .line 10
    rem-int/lit8 v2, v1, 0x10

    .line 11
    .line 12
    const/16 v3, 0x20

    .line 13
    .line 14
    if-nez v2, :cond_1

    .line 15
    .line 16
    if-eqz v1, :cond_0

    .line 17
    .line 18
    new-instance p0, Ljava/lang/StringBuffer;

    .line 19
    .line 20
    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    .line 21
    .line 22
    .line 23
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 24
    .line 25
    .line 26
    const/16 v2, 0x5b

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    .line 30
    .line 31
    add-int v2, p2, v1

    .line 32
    .line 33
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 34
    .line 35
    .line 36
    const/16 v2, 0x5d

    .line 37
    .line 38
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 42
    .line 43
    .line 44
    goto :goto_1

    .line 45
    :cond_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 46
    .line 47
    .line 48
    :goto_1
    aget-byte v2, p3, v1

    .line 49
    .line 50
    shr-int/lit8 v3, v2, 0x4

    .line 51
    .line 52
    and-int/lit8 v3, v3, 0xf

    .line 53
    .line 54
    int-to-byte v3, v3

    .line 55
    const/16 v4, 0xa

    .line 56
    .line 57
    if-ge v3, v4, :cond_2

    .line 58
    .line 59
    add-int/lit8 v3, v3, 0x30

    .line 60
    .line 61
    int-to-char v3, v3

    .line 62
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 63
    .line 64
    .line 65
    goto :goto_2

    .line 66
    :cond_2
    add-int/lit8 v3, v3, 0x57

    .line 67
    .line 68
    int-to-char v3, v3

    .line 69
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    :goto_2
    and-int/lit8 v2, v2, 0xf

    .line 73
    .line 74
    int-to-byte v2, v2

    .line 75
    if-ge v2, v4, :cond_3

    .line 76
    .line 77
    add-int/lit8 v2, v2, 0x30

    .line 78
    .line 79
    int-to-char v2, v2

    .line 80
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 81
    .line 82
    .line 83
    goto :goto_3

    .line 84
    :cond_3
    add-int/lit8 v2, v2, 0x57

    .line 85
    .line 86
    int-to-char v2, v2

    .line 87
    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 88
    .line 89
    .line 90
    :goto_3
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_4
    return v0
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {p0, p1, v0, p2}, Lcom/xinzhu/overmind/utils/h;->b(Ljava/lang/String;Ljava/lang/String;I[B)I

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method public static i(I)I
    .locals 1

    .line 1
    and-int/lit8 v0, p0, -0x80

    if-nez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    and-int/lit16 v0, p0, -0x4000

    if-nez v0, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p0

    if-nez v0, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr p0, v0

    if-nez p0, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const/4 p0, 0x5

    return p0
.end method

.method public static j(J)I
    .locals 5

    .line 1
    const-wide/16 v0, -0x80

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const-wide/16 v0, -0x4000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    const/4 p0, 0x2

    return p0

    :cond_1
    const-wide/32 v0, -0x200000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    const-wide/32 v0, -0x10000000

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    const-wide v0, -0x800000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_4

    const/4 p0, 0x5

    return p0

    :cond_4
    const-wide v0, -0x40000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_5

    const/4 p0, 0x6

    return p0

    :cond_5
    const-wide/high16 v0, -0x2000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_6

    const/4 p0, 0x7

    return p0

    :cond_6
    const-wide/high16 v0, -0x100000000000000L

    and-long/2addr v0, p0

    cmp-long v4, v0, v2

    if-nez v4, :cond_7

    const/16 p0, 0x8

    return p0

    :cond_7
    const-wide/high16 v0, -0x8000000000000000L

    and-long/2addr p0, v0

    cmp-long v0, p0, v2

    if-nez v0, :cond_8

    const/16 p0, 0x9

    return p0

    :cond_8
    const/16 p0, 0xa

    return p0
.end method

.method public static k(I)I
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/h;->K(I)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/xinzhu/overmind/utils/h;->i(I)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public static l(J)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/h;->L(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Lcom/xinzhu/overmind/utils/h;->j(J)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method private s()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 6
    .line 7
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    .line 8
    .line 9
    if-lt v0, v1, :cond_0

    .line 10
    .line 11
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 12
    .line 13
    new-array v0, v0, [B

    .line 14
    .line 15
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 16
    .line 17
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    .line 23
    .line 24
    add-int/lit8 v0, v0, 0x1

    .line 25
    .line 26
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, [B

    .line 36
    .line 37
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 38
    .line 39
    :goto_0
    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 41
    .line 42
    return-void
.end method


# virtual methods
.method public A(II)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->j:I

    .line 2
    .line 3
    if-ltz v0, :cond_9

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->r()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const-string v1, " "

    .line 10
    .line 11
    const-string v2, " size="

    .line 12
    .line 13
    if-lt p1, v0, :cond_8

    .line 14
    .line 15
    add-int v0, p1, p2

    .line 16
    .line 17
    iget v3, p0, Lcom/xinzhu/overmind/utils/h;->k:I

    .line 18
    .line 19
    if-gt v0, v3, :cond_7

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 25
    .line 26
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 27
    .line 28
    mul-int v2, v0, v1

    .line 29
    .line 30
    iget v3, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 31
    .line 32
    add-int/2addr v2, v3

    .line 33
    if-ne p1, v2, :cond_3

    .line 34
    .line 35
    sub-int p1, v1, v3

    .line 36
    .line 37
    if-gt p2, p1, :cond_1

    .line 38
    .line 39
    add-int/2addr v3, p2

    .line 40
    iput v3, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_1
    sub-int p1, v1, v3

    .line 44
    .line 45
    sub-int/2addr p2, p1

    .line 46
    rem-int p1, p2, v1

    .line 47
    .line 48
    iput p1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 49
    .line 50
    if-nez p1, :cond_2

    .line 51
    .line 52
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 53
    .line 54
    div-int/2addr p2, v1

    .line 55
    add-int/2addr v0, p2

    .line 56
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    div-int/2addr p2, v1

    .line 60
    add-int/lit8 p2, p2, 0x1

    .line 61
    .line 62
    add-int/2addr v0, p2

    .line 63
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 64
    .line 65
    :goto_0
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 66
    .line 67
    iget p2, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 68
    .line 69
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, [B

    .line 74
    .line 75
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 76
    .line 77
    goto :goto_2

    .line 78
    :cond_3
    div-int v0, p1, v1

    .line 79
    .line 80
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, [B

    .line 87
    .line 88
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 89
    .line 90
    rem-int/2addr p1, v2

    .line 91
    :goto_1
    if-lez p2, :cond_6

    .line 92
    .line 93
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 94
    .line 95
    iget v3, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 96
    .line 97
    if-lt v2, v3, :cond_4

    .line 98
    .line 99
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/h;->s()V

    .line 100
    .line 101
    .line 102
    :cond_4
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 103
    .line 104
    if-lt p1, v2, :cond_5

    .line 105
    .line 106
    add-int/lit8 v0, v0, 0x1

    .line 107
    .line 108
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    check-cast p1, [B

    .line 115
    .line 116
    const/4 v1, 0x0

    .line 117
    move-object v1, p1

    .line 118
    const/4 p1, 0x0

    .line 119
    :cond_5
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 120
    .line 121
    iget v3, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 122
    .line 123
    sub-int v3, v2, v3

    .line 124
    .line 125
    sub-int/2addr v2, p1

    .line 126
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    .line 127
    .line 128
    .line 129
    move-result v2

    .line 130
    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    .line 131
    .line 132
    .line 133
    move-result v2

    .line 134
    iget-object v3, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 135
    .line 136
    iget v4, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 137
    .line 138
    invoke-static {v1, p1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    .line 140
    .line 141
    iget v3, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 142
    .line 143
    add-int/2addr v3, v2

    .line 144
    iput v3, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 145
    .line 146
    add-int/2addr p1, v2

    .line 147
    sub-int/2addr p2, v2

    .line 148
    goto :goto_1

    .line 149
    :cond_6
    :goto_2
    return-void

    .line 150
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 151
    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    const-string v4, "Trying to move more data than there is -- srcOffset="

    .line 158
    .line 159
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->g()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object p1

    .line 185
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 186
    .line 187
    .line 188
    throw v0

    .line 189
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    new-instance v3, Ljava/lang/StringBuilder;

    .line 192
    .line 193
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    .line 195
    .line 196
    const-string v4, "Can only move forward in the buffer -- srcOffset="

    .line 197
    .line 198
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    .line 200
    .line 201
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 202
    .line 203
    .line 204
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    .line 212
    .line 213
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->g()Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object p1

    .line 224
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 225
    .line 226
    .line 227
    throw v0

    .line 228
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 229
    .line 230
    const-string p2, "writeFromThisBuffer before startEditing"

    .line 231
    .line 232
    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 233
    .line 234
    .line 235
    throw p1
.end method

.method public B([B)V
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-lez v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    array-length v1, p1

    .line 8
    invoke-virtual {p0, p1, v0, v1}, Lcom/xinzhu/overmind/utils/h;->C([BII)V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method public C([BII)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 5
    .line 6
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 7
    .line 8
    sub-int v2, v0, v1

    .line 9
    .line 10
    if-ge p3, v2, :cond_1

    .line 11
    .line 12
    move v0, p3

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    sub-int/2addr v0, v1

    .line 15
    :goto_0
    if-lez v0, :cond_2

    .line 16
    .line 17
    iget-object v2, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 18
    .line 19
    invoke-static {p1, p2, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 20
    .line 21
    .line 22
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 23
    .line 24
    add-int/2addr v1, v0

    .line 25
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 26
    .line 27
    :goto_1
    sub-int/2addr p3, v0

    .line 28
    add-int/2addr p2, v0

    .line 29
    :cond_2
    if-lez p3, :cond_4

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/h;->s()V

    .line 32
    .line 33
    .line 34
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 35
    .line 36
    if-ge p3, v0, :cond_3

    .line 37
    .line 38
    move v0, p3

    .line 39
    :cond_3
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 40
    .line 41
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 42
    .line 43
    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 44
    .line 45
    .line 46
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 47
    .line 48
    add-int/2addr v1, v0

    .line 49
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_4
    return-void
.end method

.method public D(B)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/xinzhu/overmind/utils/h;->s()V

    .line 8
    .line 9
    .line 10
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 11
    .line 12
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 13
    .line 14
    add-int/lit8 v2, v1, 0x1

    .line 15
    .line 16
    iput v2, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 17
    .line 18
    aput-byte p1, v0, v1

    .line 19
    .line 20
    return-void
.end method

.method public E(I)V
    .locals 1

    .line 1
    int-to-byte v0, p1

    .line 2
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 3
    .line 4
    .line 5
    shr-int/lit8 v0, p1, 0x8

    .line 6
    .line 7
    int-to-byte v0, v0

    .line 8
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 9
    .line 10
    .line 11
    shr-int/lit8 v0, p1, 0x10

    .line 12
    .line 13
    int-to-byte v0, v0

    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 15
    .line 16
    .line 17
    shr-int/lit8 p1, p1, 0x18

    .line 18
    .line 19
    int-to-byte p1, p1

    .line 20
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 21
    .line 22
    .line 23
    return-void
.end method

.method public F(J)V
    .locals 2

    .line 1
    long-to-int v0, p1

    .line 2
    int-to-byte v0, v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 4
    .line 5
    .line 6
    const/16 v0, 0x8

    .line 7
    .line 8
    shr-long v0, p1, v0

    .line 9
    .line 10
    long-to-int v1, v0

    .line 11
    int-to-byte v0, v1

    .line 12
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 13
    .line 14
    .line 15
    const/16 v0, 0x10

    .line 16
    .line 17
    shr-long v0, p1, v0

    .line 18
    .line 19
    long-to-int v1, v0

    .line 20
    int-to-byte v0, v1

    .line 21
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 22
    .line 23
    .line 24
    const/16 v0, 0x18

    .line 25
    .line 26
    shr-long v0, p1, v0

    .line 27
    .line 28
    long-to-int v1, v0

    .line 29
    int-to-byte v0, v1

    .line 30
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 31
    .line 32
    .line 33
    const/16 v0, 0x20

    .line 34
    .line 35
    shr-long v0, p1, v0

    .line 36
    .line 37
    long-to-int v1, v0

    .line 38
    int-to-byte v0, v1

    .line 39
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 40
    .line 41
    .line 42
    const/16 v0, 0x28

    .line 43
    .line 44
    shr-long v0, p1, v0

    .line 45
    .line 46
    long-to-int v1, v0

    .line 47
    int-to-byte v0, v1

    .line 48
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 49
    .line 50
    .line 51
    const/16 v0, 0x30

    .line 52
    .line 53
    shr-long v0, p1, v0

    .line 54
    .line 55
    long-to-int v1, v0

    .line 56
    int-to-byte v0, v1

    .line 57
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 58
    .line 59
    .line 60
    const/16 v0, 0x38

    .line 61
    .line 62
    shr-long/2addr p1, v0

    .line 63
    long-to-int p2, p1

    .line 64
    int-to-byte p1, p2

    .line 65
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 66
    .line 67
    .line 68
    return-void
.end method

.method public G(I)V
    .locals 1

    .line 1
    :goto_0
    and-int/lit8 v0, p1, -0x80

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    int-to-byte p1, p1

    .line 6
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    and-int/lit8 v0, p1, 0x7f

    .line 11
    .line 12
    or-int/lit16 v0, v0, 0x80

    .line 13
    .line 14
    int-to-byte v0, v0

    .line 15
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 16
    .line 17
    .line 18
    ushr-int/lit8 p1, p1, 0x7

    .line 19
    .line 20
    goto :goto_0
.end method

.method public H(J)V
    .locals 5

    .line 1
    :goto_0
    const-wide/16 v0, -0x80

    .line 2
    .line 3
    and-long/2addr v0, p1

    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-nez v4, :cond_0

    .line 9
    .line 10
    long-to-int p2, p1

    .line 11
    int-to-byte p1, p2

    .line 12
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-wide/16 v0, 0x7f

    .line 17
    .line 18
    and-long/2addr v0, p1

    .line 19
    const-wide/16 v2, 0x80

    .line 20
    .line 21
    or-long/2addr v0, v2

    .line 22
    long-to-int v1, v0

    .line 23
    int-to-byte v0, v1

    .line 24
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/utils/h;->D(B)V

    .line 25
    .line 26
    .line 27
    const/4 v0, 0x7

    .line 28
    ushr-long/2addr p1, v0

    .line 29
    goto :goto_0
.end method

.method public I(I)V
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/xinzhu/overmind/utils/h;->K(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/utils/h;->G(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public J(J)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/xinzhu/overmind/utils/h;->L(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/utils/h;->H(J)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_0

    .line 10
    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v4, "{"

    .line 17
    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v4, "} "

    .line 25
    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    iget-object v4, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    check-cast v4, [B

    .line 40
    .line 41
    invoke-static {p1, v3, v2, v4}, Lcom/xinzhu/overmind/utils/h;->b(Ljava/lang/String;Ljava/lang/String;I[B)I

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    add-int/2addr v2, v3

    .line 46
    add-int/lit8 v1, v1, 0x1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method

.method public d(II)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 4
    .line 5
    div-int v1, p1, v1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [B

    .line 12
    .line 13
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 14
    .line 15
    rem-int v2, p1, v1

    .line 16
    .line 17
    int-to-byte v3, p2

    .line 18
    aput-byte v3, v0, v2

    .line 19
    .line 20
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 21
    .line 22
    add-int/lit8 v2, p1, 0x1

    .line 23
    .line 24
    div-int v1, v2, v1

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    check-cast v0, [B

    .line 31
    .line 32
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 33
    .line 34
    rem-int/2addr v2, v1

    .line 35
    shr-int/lit8 v3, p2, 0x8

    .line 36
    .line 37
    int-to-byte v3, v3

    .line 38
    aput-byte v3, v0, v2

    .line 39
    .line 40
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 41
    .line 42
    add-int/lit8 v2, p1, 0x2

    .line 43
    .line 44
    div-int v1, v2, v1

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    check-cast v0, [B

    .line 51
    .line 52
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 53
    .line 54
    rem-int/2addr v2, v1

    .line 55
    shr-int/lit8 v3, p2, 0x10

    .line 56
    .line 57
    int-to-byte v3, v3

    .line 58
    aput-byte v3, v0, v2

    .line 59
    .line 60
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 61
    .line 62
    add-int/lit8 p1, p1, 0x3

    .line 63
    .line 64
    div-int v1, p1, v1

    .line 65
    .line 66
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    check-cast v0, [B

    .line 71
    .line 72
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 73
    .line 74
    rem-int/2addr p1, v1

    .line 75
    shr-int/lit8 p2, p2, 0x18

    .line 76
    .line 77
    int-to-byte p2, p2

    .line 78
    aput-byte p2, v0, p1

    .line 79
    .line 80
    return-void
.end method

.method public e(I)[B
    .locals 7

    .line 1
    new-array v0, p1, [B

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 4
    .line 5
    div-int v1, p1, v1

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    :goto_0
    if-ge v3, v1, :cond_0

    .line 11
    .line 12
    iget-object v5, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v5

    .line 18
    iget v6, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 19
    .line 20
    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 21
    .line 22
    .line 23
    iget v5, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 24
    .line 25
    add-int/2addr v4, v5

    .line 26
    add-int/lit8 v3, v3, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget v5, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 30
    .line 31
    mul-int v1, v1, v5

    .line 32
    .line 33
    sub-int/2addr p1, v1

    .line 34
    if-lez p1, :cond_1

    .line 35
    .line 36
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-static {v1, v2, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-object v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "EncodedBuffer( mChunkSize="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, " mBuffers.size="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    const-string v1, " mBufferCount="

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    const-string v1, " mWriteIndex="

    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 46
    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    const-string v1, " mWriteBufIndex="

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 56
    .line 57
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v1, " mReadBufIndex="

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 66
    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string v1, " mReadIndex="

    .line 71
    .line 72
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 76
    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v1, " mReadableSize="

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->k:I

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string v1, " mReadLimit="

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->j:I

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    const-string v1, " )"

    .line 101
    .line 102
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    return-object v0
.end method

.method public h(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 4
    .line 5
    div-int v1, p1, v1

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, [B

    .line 12
    .line 13
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 14
    .line 15
    rem-int v2, p1, v1

    .line 16
    .line 17
    aget-byte v0, v0, v2

    .line 18
    .line 19
    and-int/lit16 v0, v0, 0xff

    .line 20
    .line 21
    iget-object v2, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 22
    .line 23
    add-int/lit8 v3, p1, 0x1

    .line 24
    .line 25
    div-int v1, v3, v1

    .line 26
    .line 27
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    check-cast v1, [B

    .line 32
    .line 33
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 34
    .line 35
    rem-int/2addr v3, v2

    .line 36
    aget-byte v1, v1, v3

    .line 37
    .line 38
    and-int/lit16 v1, v1, 0xff

    .line 39
    .line 40
    shl-int/lit8 v1, v1, 0x8

    .line 41
    .line 42
    or-int/2addr v0, v1

    .line 43
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 44
    .line 45
    add-int/lit8 v3, p1, 0x2

    .line 46
    .line 47
    div-int v2, v3, v2

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, [B

    .line 54
    .line 55
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 56
    .line 57
    rem-int/2addr v3, v2

    .line 58
    aget-byte v1, v1, v3

    .line 59
    .line 60
    and-int/lit16 v1, v1, 0xff

    .line 61
    .line 62
    shl-int/lit8 v1, v1, 0x10

    .line 63
    .line 64
    or-int/2addr v0, v1

    .line 65
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 66
    .line 67
    add-int/lit8 p1, p1, 0x3

    .line 68
    .line 69
    div-int v2, p1, v2

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, [B

    .line 76
    .line 77
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 78
    .line 79
    rem-int/2addr p1, v2

    .line 80
    aget-byte p1, v1, p1

    .line 81
    .line 82
    and-int/lit16 p1, p1, 0xff

    .line 83
    .line 84
    shl-int/lit8 p1, p1, 0x18

    .line 85
    .line 86
    or-int/2addr p1, v0

    .line 87
    return p1
.end method

.method public m()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public n()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->k:I

    .line 2
    .line 3
    return v0
.end method

.method public o()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, -0x1

    .line 4
    .line 5
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 6
    .line 7
    mul-int v0, v0, v1

    .line 8
    .line 9
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 10
    .line 11
    add-int/2addr v0, v1

    .line 12
    return v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public q()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 2
    .line 3
    return v0
.end method

.method public r()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    return v0
.end method

.method public t()B
    .locals 3

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    .line 4
    .line 5
    if-gt v0, v1, :cond_2

    .line 6
    .line 7
    add-int/lit8 v1, v1, -0x1

    .line 8
    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 12
    .line 13
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->j:I

    .line 14
    .line 15
    if-ge v1, v2, :cond_2

    .line 16
    .line 17
    :cond_0
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 18
    .line 19
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 20
    .line 21
    if-lt v1, v2, :cond_1

    .line 22
    .line 23
    add-int/lit8 v0, v0, 0x1

    .line 24
    .line 25
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 26
    .line 27
    iget-object v1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, [B

    .line 34
    .line 35
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/h;->g:[B

    .line 36
    .line 37
    const/4 v0, 0x0

    .line 38
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 39
    .line 40
    :cond_1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->g:[B

    .line 41
    .line 42
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 43
    .line 44
    add-int/lit8 v2, v1, 0x1

    .line 45
    .line 46
    iput v2, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 47
    .line 48
    aget-byte v0, v0, v1

    .line 49
    .line 50
    return v0

    .line 51
    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    .line 52
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v2, "Trying to read too much data mReadBufIndex="

    .line 59
    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string v2, " mBufferCount="

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->c:I

    .line 74
    .line 75
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string v2, " mReadIndex="

    .line 79
    .line 80
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 84
    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    const-string v2, " mReadLimit="

    .line 89
    .line 90
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget v2, p0, Lcom/xinzhu/overmind/utils/h;->j:I

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v0
.end method

.method public u()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->t()B

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    and-int/lit16 v0, v0, 0xff

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->t()B

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    shl-int/lit8 v1, v1, 0x8

    .line 14
    .line 15
    or-int/2addr v0, v1

    .line 16
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->t()B

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    and-int/lit16 v1, v1, 0xff

    .line 21
    .line 22
    shl-int/lit8 v1, v1, 0x10

    .line 23
    .line 24
    or-int/2addr v0, v1

    .line 25
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->t()B

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    and-int/lit16 v1, v1, 0xff

    .line 30
    .line 31
    shl-int/lit8 v1, v1, 0x18

    .line 32
    .line 33
    or-int/2addr v0, v1

    .line 34
    return v0
.end method

.method public v()J
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    :goto_0
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->t()B

    .line 5
    .line 6
    .line 7
    move-result v3

    .line 8
    and-int/lit8 v4, v3, 0x7f

    .line 9
    .line 10
    int-to-long v4, v4

    .line 11
    shl-long/2addr v4, v0

    .line 12
    or-long/2addr v1, v4

    .line 13
    and-int/lit16 v3, v3, 0x80

    .line 14
    .line 15
    if-nez v3, :cond_0

    .line 16
    .line 17
    return-wide v1

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x7

    .line 19
    .line 20
    const/16 v3, 0x40

    .line 21
    .line 22
    if-gt v0, v3, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v2, "Varint too long -- "

    .line 33
    .line 34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->g()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0
.end method

.method public w()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, [B

    .line 9
    .line 10
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/h;->g:[B

    .line 11
    .line 12
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 13
    .line 14
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 15
    .line 16
    return-void
.end method

.method public x(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/utils/h;->r()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-gt p1, v0, :cond_1

    .line 6
    .line 7
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 8
    .line 9
    div-int v1, p1, v0

    .line 10
    .line 11
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 12
    .line 13
    rem-int/2addr p1, v0

    .line 14
    iput p1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 15
    .line 16
    if-nez p1, :cond_0

    .line 17
    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 21
    .line 22
    add-int/lit8 v1, v1, -0x1

    .line 23
    .line 24
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 25
    .line 26
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 27
    .line 28
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 29
    .line 30
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, [B

    .line 35
    .line 36
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 37
    .line 38
    return-void

    .line 39
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    .line 40
    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    const-string v2, "rewindWriteTo only can go backwards"

    .line 47
    .line 48
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw v0
.end method

.method public y(I)V
    .locals 3

    .line 1
    if-ltz p1, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 7
    .line 8
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 9
    .line 10
    sub-int v2, v0, v1

    .line 11
    .line 12
    if-gt p1, v2, :cond_1

    .line 13
    .line 14
    add-int/2addr v1, p1

    .line 15
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    sub-int v1, v0, v1

    .line 19
    .line 20
    sub-int/2addr p1, v1

    .line 21
    rem-int v1, p1, v0

    .line 22
    .line 23
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 24
    .line 25
    if-nez v1, :cond_2

    .line 26
    .line 27
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 28
    .line 29
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 30
    .line 31
    div-int/2addr p1, v0

    .line 32
    add-int/2addr v1, p1

    .line 33
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 37
    .line 38
    div-int/2addr p1, v0

    .line 39
    add-int/lit8 p1, p1, 0x1

    .line 40
    .line 41
    add-int/2addr v1, p1

    .line 42
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 43
    .line 44
    :goto_0
    iget-object p1, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 45
    .line 46
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 47
    .line 48
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    check-cast p1, [B

    .line 53
    .line 54
    iput-object p1, p0, Lcom/xinzhu/overmind/utils/h;->g:[B

    .line 55
    .line 56
    :goto_1
    return-void

    .line 57
    :cond_3
    new-instance v0, Ljava/lang/RuntimeException;

    .line 58
    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v2, "skipRead with negative amount="

    .line 65
    .line 66
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw v0
.end method

.method public z()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 2
    .line 3
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->b:I

    .line 4
    .line 5
    mul-int v0, v0, v1

    .line 6
    .line 7
    iget v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 8
    .line 9
    add-int/2addr v0, v1

    .line 10
    iput v0, p0, Lcom/xinzhu/overmind/utils/h;->k:I

    .line 11
    .line 12
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->j:I

    .line 13
    .line 14
    iget-object v0, p0, Lcom/xinzhu/overmind/utils/h;->a:Ljava/util/ArrayList;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    check-cast v0, [B

    .line 22
    .line 23
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/h;->d:[B

    .line 24
    .line 25
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->e:I

    .line 26
    .line 27
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->f:I

    .line 28
    .line 29
    iput-object v0, p0, Lcom/xinzhu/overmind/utils/h;->g:[B

    .line 30
    .line 31
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->h:I

    .line 32
    .line 33
    iput v1, p0, Lcom/xinzhu/overmind/utils/h;->i:I

    .line 34
    .line 35
    return-void
.end method
