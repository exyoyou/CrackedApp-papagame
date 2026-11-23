.class public final Lcom/alibaba/fastjson/parser/g;
.super Lcom/alibaba/fastjson/parser/e;
.source "SourceFile"


# static fields
.field protected static final A:[C


# instance fields
.field private final w:Ljava/lang/String;

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "\""

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    sget-object v1, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, "\":\""

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lcom/alibaba/fastjson/parser/g;->A:[C

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, v0}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lcom/alibaba/fastjson/parser/e;-><init>()V

    const/16 v0, 0xa

    .line 3
    iput v0, p0, Lcom/alibaba/fastjson/parser/g;->x:I

    const/16 v0, 0x13

    .line 4
    iput v0, p0, Lcom/alibaba/fastjson/parser/g;->y:I

    const/16 v0, 0x17

    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/parser/g;->z:I

    .line 6
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->d:I

    .line 7
    iput-object p1, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    const/4 p1, -0x1

    .line 8
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/g;->next()C

    .line 10
    iget-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    const p2, 0xfeff

    if-ne p1, p2, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/g;->next()C

    :cond_0
    return-void
.end method

.method public constructor <init>([CI)V
    .locals 1

    .line 12
    sget v0, Lcom/alibaba/fastjson/a;->DEFAULT_PARSER_FEATURE:I

    invoke-direct {p0, p1, p2, v0}, Lcom/alibaba/fastjson/parser/g;-><init>([CII)V

    return-void
.end method

.method public constructor <init>([CII)V
    .locals 2

    .line 13
    new-instance v0, Ljava/lang/String;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, p2}, Ljava/lang/String;-><init>([CII)V

    invoke-direct {p0, v0, p3}, Lcom/alibaba/fastjson/parser/g;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static final S0(Ljava/lang/String;I[C)Z
    .locals 5

    .line 1
    array-length v0, p2

    .line 2
    add-int v1, v0, p1

    .line 3
    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    const/4 v3, 0x0

    .line 9
    if-le v1, v2, :cond_0

    .line 10
    .line 11
    return v3

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    :goto_0
    if-ge v1, v0, :cond_2

    .line 14
    .line 15
    aget-char v2, p2, v1

    .line 16
    .line 17
    add-int v4, p1, v1

    .line 18
    .line 19
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 20
    .line 21
    .line 22
    move-result v4

    .line 23
    if-eq v2, v4, :cond_1

    .line 24
    .line 25
    return v3

    .line 26
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_2
    const/4 p0, 0x1

    .line 30
    return p0
.end method

.method static T0(CCCCCCII)Z
    .locals 4

    .line 1
    const/16 v0, 0x32

    const/4 v1, 0x0

    const/16 v2, 0x31

    if-eq p0, v2, :cond_0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    const/16 p0, 0x30

    if-lt p1, p0, :cond_d

    const/16 v3, 0x39

    if-le p1, v3, :cond_1

    goto :goto_1

    :cond_1
    if-lt p2, p0, :cond_d

    if-le p2, v3, :cond_2

    goto :goto_1

    :cond_2
    if-lt p3, p0, :cond_d

    if-le p3, v3, :cond_3

    goto :goto_1

    :cond_3
    if-ne p4, p0, :cond_5

    if-lt p5, v2, :cond_4

    if-le p5, v3, :cond_6

    :cond_4
    return v1

    :cond_5
    if-ne p4, v2, :cond_d

    if-eq p5, p0, :cond_6

    if-eq p5, v2, :cond_6

    if-eq p5, v0, :cond_6

    return v1

    :cond_6
    if-ne p6, p0, :cond_8

    if-lt p7, v2, :cond_7

    if-le p7, v3, :cond_c

    :cond_7
    return v1

    :cond_8
    if-eq p6, v2, :cond_b

    if-ne p6, v0, :cond_9

    goto :goto_0

    :cond_9
    const/16 p1, 0x33

    if-ne p6, p1, :cond_a

    if-eq p7, p0, :cond_c

    if-eq p7, v2, :cond_c

    :cond_a
    return v1

    :cond_b
    :goto_0
    if-lt p7, p0, :cond_d

    if-le p7, v3, :cond_c

    goto :goto_1

    :cond_c
    const/4 p0, 0x1

    return p0

    :cond_d
    :goto_1
    return v1
.end method

.method private U0(CCCCCC)Z
    .locals 4

    .line 1
    const/16 v0, 0x39

    const/4 v1, 0x0

    const/16 v2, 0x30

    if-ne p1, v2, :cond_1

    if-lt p2, v2, :cond_0

    if-le p2, v0, :cond_4

    :cond_0
    return v1

    :cond_1
    const/16 v3, 0x31

    if-ne p1, v3, :cond_3

    if-lt p2, v2, :cond_2

    if-le p2, v0, :cond_4

    :cond_2
    return v1

    :cond_3
    const/16 v3, 0x32

    if-ne p1, v3, :cond_b

    if-lt p2, v2, :cond_b

    const/16 p1, 0x34

    if-le p2, p1, :cond_4

    goto :goto_0

    :cond_4
    const/16 p1, 0x35

    const/16 p2, 0x36

    if-lt p3, v2, :cond_6

    if-gt p3, p1, :cond_6

    if-lt p4, v2, :cond_5

    if-le p4, v0, :cond_7

    :cond_5
    return v1

    :cond_6
    if-ne p3, p2, :cond_b

    if-eq p4, v2, :cond_7

    return v1

    :cond_7
    if-lt p5, v2, :cond_9

    if-gt p5, p1, :cond_9

    if-lt p6, v2, :cond_8

    if-le p6, v0, :cond_a

    :cond_8
    return v1

    :cond_9
    if-ne p5, p2, :cond_b

    if-eq p6, v2, :cond_a

    return v1

    :cond_a
    const/4 p1, 0x1

    return p1

    :cond_b
    :goto_0
    return v1
.end method

.method private X0(CCCCCCCC)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1, v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 14
    .line 15
    sget-object v1, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 16
    .line 17
    aget p1, v1, p1

    .line 18
    .line 19
    mul-int/lit16 p1, p1, 0x3e8

    .line 20
    .line 21
    aget p2, v1, p2

    .line 22
    .line 23
    mul-int/lit8 p2, p2, 0x64

    .line 24
    .line 25
    add-int/2addr p1, p2

    .line 26
    aget p2, v1, p3

    .line 27
    .line 28
    mul-int/lit8 p2, p2, 0xa

    .line 29
    .line 30
    add-int/2addr p1, p2

    .line 31
    aget p2, v1, p4

    .line 32
    .line 33
    add-int/2addr p1, p2

    .line 34
    aget p2, v1, p5

    .line 35
    .line 36
    mul-int/lit8 p2, p2, 0xa

    .line 37
    .line 38
    aget p3, v1, p6

    .line 39
    .line 40
    add-int/2addr p2, p3

    .line 41
    const/4 p3, 0x1

    .line 42
    sub-int/2addr p2, p3

    .line 43
    aget p4, v1, p7

    .line 44
    .line 45
    mul-int/lit8 p4, p4, 0xa

    .line 46
    .line 47
    aget p5, v1, p8

    .line 48
    .line 49
    add-int/2addr p4, p5

    .line 50
    invoke-virtual {v0, p3, p1}, Ljava/util/Calendar;->set(II)V

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 54
    .line 55
    const/4 p3, 0x2

    .line 56
    invoke-virtual {p1, p3, p2}, Ljava/util/Calendar;->set(II)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 60
    .line 61
    const/4 p2, 0x5

    .line 62
    invoke-virtual {p1, p2, p4}, Ljava/util/Calendar;->set(II)V

    .line 63
    .line 64
    .line 65
    return-void
.end method


# virtual methods
.method public C0([C)I
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 7
    .line 8
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v3, v1, p1}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const/4 p1, -0x2

    .line 17
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 21
    .line 22
    array-length p1, p1

    .line 23
    add-int/2addr v3, p1

    .line 24
    add-int/lit8 p1, v3, 0x1

    .line 25
    .line 26
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 27
    .line 28
    .line 29
    move-result v3

    .line 30
    const/16 v4, 0x30

    .line 31
    .line 32
    const/4 v5, -0x1

    .line 33
    if-lt v3, v4, :cond_a

    .line 34
    .line 35
    const/16 v6, 0x39

    .line 36
    .line 37
    if-gt v3, v6, :cond_a

    .line 38
    .line 39
    sget-object v7, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 40
    .line 41
    aget v3, v7, v3

    .line 42
    .line 43
    :goto_0
    add-int/lit8 v7, p1, 0x1

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-lt p1, v4, :cond_1

    .line 50
    .line 51
    if-gt p1, v6, :cond_1

    .line 52
    .line 53
    mul-int/lit8 v3, v3, 0xa

    .line 54
    .line 55
    sget-object v8, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 56
    .line 57
    aget p1, v8, p1

    .line 58
    .line 59
    add-int/2addr v3, p1

    .line 60
    move p1, v7

    .line 61
    goto :goto_0

    .line 62
    :cond_1
    const/16 v4, 0x2e

    .line 63
    .line 64
    if-ne p1, v4, :cond_2

    .line 65
    .line 66
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 67
    .line 68
    return v0

    .line 69
    :cond_2
    add-int/lit8 v7, v7, -0x1

    .line 70
    .line 71
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 72
    .line 73
    if-gez v3, :cond_3

    .line 74
    .line 75
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 76
    .line 77
    return v0

    .line 78
    :cond_3
    const/16 v4, 0x10

    .line 79
    .line 80
    const/16 v6, 0x2c

    .line 81
    .line 82
    if-ne p1, v6, :cond_4

    .line 83
    .line 84
    add-int/lit8 v7, v7, 0x1

    .line 85
    .line 86
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 87
    .line 88
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 89
    .line 90
    .line 91
    move-result p1

    .line 92
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 93
    .line 94
    const/4 p1, 0x3

    .line 95
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 96
    .line 97
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 98
    .line 99
    return v3

    .line 100
    :cond_4
    const/16 v8, 0x7d

    .line 101
    .line 102
    if-ne p1, v8, :cond_9

    .line 103
    .line 104
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    iput v7, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 107
    .line 108
    invoke-virtual {p0, v7}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 109
    .line 110
    .line 111
    move-result p1

    .line 112
    if-ne p1, v6, :cond_5

    .line 113
    .line 114
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 115
    .line 116
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 117
    .line 118
    add-int/lit8 p1, p1, 0x1

    .line 119
    .line 120
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 121
    .line 122
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 123
    .line 124
    .line 125
    move-result p1

    .line 126
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :cond_5
    const/16 v4, 0x5d

    .line 130
    .line 131
    if-ne p1, v4, :cond_6

    .line 132
    .line 133
    const/16 p1, 0xf

    .line 134
    .line 135
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 136
    .line 137
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 138
    .line 139
    add-int/lit8 p1, p1, 0x1

    .line 140
    .line 141
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 142
    .line 143
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_6
    if-ne p1, v8, :cond_7

    .line 151
    .line 152
    const/16 p1, 0xd

    .line 153
    .line 154
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 155
    .line 156
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 157
    .line 158
    add-int/lit8 p1, p1, 0x1

    .line 159
    .line 160
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 161
    .line 162
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 163
    .line 164
    .line 165
    move-result p1

    .line 166
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 167
    .line 168
    goto :goto_1

    .line 169
    :cond_7
    const/16 v4, 0x1a

    .line 170
    .line 171
    if-ne p1, v4, :cond_8

    .line 172
    .line 173
    const/16 p1, 0x14

    .line 174
    .line 175
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 176
    .line 177
    :goto_1
    const/4 p1, 0x4

    .line 178
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_8
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 182
    .line 183
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 184
    .line 185
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 186
    .line 187
    return v0

    .line 188
    :cond_9
    :goto_2
    return v3

    .line 189
    :cond_a
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 190
    .line 191
    return v0
.end method

.method public D0([C)J
    .locals 12

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    iget-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 7
    .line 8
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v2, v0, p1}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    const-wide/16 v3, 0x0

    .line 15
    .line 16
    if-nez v2, :cond_0

    .line 17
    .line 18
    const/4 p1, -0x2

    .line 19
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 20
    .line 21
    return-wide v3

    .line 22
    :cond_0
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 23
    .line 24
    array-length p1, p1

    .line 25
    add-int/2addr v2, p1

    .line 26
    add-int/lit8 p1, v2, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    const/16 v5, 0x30

    .line 33
    .line 34
    const/4 v6, -0x1

    .line 35
    if-lt v2, v5, :cond_a

    .line 36
    .line 37
    const/16 v7, 0x39

    .line 38
    .line 39
    if-gt v2, v7, :cond_a

    .line 40
    .line 41
    sget-object v8, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 42
    .line 43
    aget v2, v8, v2

    .line 44
    .line 45
    int-to-long v8, v2

    .line 46
    :goto_0
    add-int/lit8 v2, p1, 0x1

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    if-lt p1, v5, :cond_1

    .line 53
    .line 54
    if-gt p1, v7, :cond_1

    .line 55
    .line 56
    const-wide/16 v10, 0xa

    .line 57
    .line 58
    mul-long v8, v8, v10

    .line 59
    .line 60
    sget-object v10, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 61
    .line 62
    aget p1, v10, p1

    .line 63
    .line 64
    int-to-long v10, p1

    .line 65
    add-long/2addr v8, v10

    .line 66
    move p1, v2

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/16 v5, 0x2e

    .line 69
    .line 70
    if-ne p1, v5, :cond_2

    .line 71
    .line 72
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 73
    .line 74
    return-wide v3

    .line 75
    :cond_2
    add-int/lit8 v2, v2, -0x1

    .line 76
    .line 77
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 78
    .line 79
    cmp-long v5, v8, v3

    .line 80
    .line 81
    if-gez v5, :cond_3

    .line 82
    .line 83
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 84
    .line 85
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 86
    .line 87
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 88
    .line 89
    return-wide v3

    .line 90
    :cond_3
    const/16 v5, 0x10

    .line 91
    .line 92
    const/16 v7, 0x2c

    .line 93
    .line 94
    if-ne p1, v7, :cond_4

    .line 95
    .line 96
    add-int/lit8 v2, v2, 0x1

    .line 97
    .line 98
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 99
    .line 100
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 101
    .line 102
    .line 103
    const/4 p1, 0x3

    .line 104
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 105
    .line 106
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 107
    .line 108
    return-wide v8

    .line 109
    :cond_4
    const/16 v10, 0x7d

    .line 110
    .line 111
    if-ne p1, v10, :cond_9

    .line 112
    .line 113
    add-int/lit8 v2, v2, 0x1

    .line 114
    .line 115
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 116
    .line 117
    invoke-virtual {p0, v2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    if-ne p1, v7, :cond_5

    .line 122
    .line 123
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 124
    .line 125
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 126
    .line 127
    add-int/lit8 p1, p1, 0x1

    .line 128
    .line 129
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 130
    .line 131
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 132
    .line 133
    .line 134
    move-result p1

    .line 135
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 136
    .line 137
    goto :goto_1

    .line 138
    :cond_5
    const/16 v2, 0x5d

    .line 139
    .line 140
    if-ne p1, v2, :cond_6

    .line 141
    .line 142
    const/16 p1, 0xf

    .line 143
    .line 144
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 145
    .line 146
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 147
    .line 148
    add-int/lit8 p1, p1, 0x1

    .line 149
    .line 150
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 151
    .line 152
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 153
    .line 154
    .line 155
    move-result p1

    .line 156
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_6
    if-ne p1, v10, :cond_7

    .line 160
    .line 161
    const/16 p1, 0xd

    .line 162
    .line 163
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 164
    .line 165
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 166
    .line 167
    add-int/lit8 p1, p1, 0x1

    .line 168
    .line 169
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 170
    .line 171
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 176
    .line 177
    goto :goto_1

    .line 178
    :cond_7
    const/16 v2, 0x1a

    .line 179
    .line 180
    if-ne p1, v2, :cond_8

    .line 181
    .line 182
    const/16 p1, 0x14

    .line 183
    .line 184
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 185
    .line 186
    :goto_1
    const/4 p1, 0x4

    .line 187
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 188
    .line 189
    return-wide v8

    .line 190
    :cond_8
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 191
    .line 192
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 193
    .line 194
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 195
    .line 196
    return-wide v3

    .line 197
    :cond_9
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 198
    .line 199
    return-wide v3

    .line 200
    :cond_a
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 201
    .line 202
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 203
    .line 204
    iput v6, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 205
    .line 206
    return-wide v3
.end method

.method public E0([C)Ljava/lang/String;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 5
    .line 6
    iget-char v2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 7
    .line 8
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v3, v1, p1}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-nez v3, :cond_0

    .line 15
    .line 16
    const/4 p1, -0x2

    .line 17
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1

    .line 24
    :cond_0
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 25
    .line 26
    array-length p1, p1

    .line 27
    add-int/2addr v3, p1

    .line 28
    add-int/lit8 p1, v3, 0x1

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    const/16 v4, 0x22

    .line 35
    .line 36
    const/4 v5, -0x1

    .line 37
    if-eq v3, v4, :cond_1

    .line 38
    .line 39
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_1
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {v3, v4, p1}, Ljava/lang/String;->indexOf(II)I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    if-eq v3, v5, :cond_b

    .line 53
    .line 54
    sub-int v4, v3, p1

    .line 55
    .line 56
    invoke-virtual {p0, p1, v4}, Lcom/alibaba/fastjson/parser/g;->R0(II)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    const/4 v4, 0x0

    .line 61
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v6

    .line 65
    const/4 v7, 0x1

    .line 66
    if-ge v4, v6, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    const/16 v8, 0x5c

    .line 73
    .line 74
    if-ne v6, v8, :cond_2

    .line 75
    .line 76
    const/4 v0, 0x1

    .line 77
    goto :goto_1

    .line 78
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 79
    .line 80
    goto :goto_0

    .line 81
    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    .line 82
    .line 83
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 84
    .line 85
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    return-object p1

    .line 90
    :cond_4
    add-int/2addr v3, v7

    .line 91
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 92
    .line 93
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 98
    .line 99
    const/16 v3, 0x2c

    .line 100
    .line 101
    if-ne v0, v3, :cond_5

    .line 102
    .line 103
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 104
    .line 105
    add-int/2addr v0, v7

    .line 106
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 107
    .line 108
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 113
    .line 114
    const/4 v0, 0x3

    .line 115
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 116
    .line 117
    return-object p1

    .line 118
    :cond_5
    const/16 v4, 0x7d

    .line 119
    .line 120
    if-ne v0, v4, :cond_a

    .line 121
    .line 122
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 123
    .line 124
    add-int/2addr v0, v7

    .line 125
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 128
    .line 129
    .line 130
    move-result v0

    .line 131
    if-ne v0, v3, :cond_6

    .line 132
    .line 133
    const/16 v0, 0x10

    .line 134
    .line 135
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 136
    .line 137
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 138
    .line 139
    add-int/2addr v0, v7

    .line 140
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_6
    const/16 v3, 0x5d

    .line 150
    .line 151
    if-ne v0, v3, :cond_7

    .line 152
    .line 153
    const/16 v0, 0xf

    .line 154
    .line 155
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 156
    .line 157
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 158
    .line 159
    add-int/2addr v0, v7

    .line 160
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 161
    .line 162
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 167
    .line 168
    goto :goto_2

    .line 169
    :cond_7
    if-ne v0, v4, :cond_8

    .line 170
    .line 171
    const/16 v0, 0xd

    .line 172
    .line 173
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 174
    .line 175
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 176
    .line 177
    add-int/2addr v0, v7

    .line 178
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 179
    .line 180
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 185
    .line 186
    goto :goto_2

    .line 187
    :cond_8
    const/16 v3, 0x1a

    .line 188
    .line 189
    if-ne v0, v3, :cond_9

    .line 190
    .line 191
    const/16 v0, 0x14

    .line 192
    .line 193
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 194
    .line 195
    :goto_2
    const/4 v0, 0x4

    .line 196
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 197
    .line 198
    return-object p1

    .line 199
    :cond_9
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 200
    .line 201
    iput-char v2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 202
    .line 203
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 204
    .line 205
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    return-object p1

    .line 210
    :cond_a
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 211
    .line 212
    invoke-virtual {p0}, Lcom/alibaba/fastjson/parser/e;->Q0()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object p1

    .line 216
    return-object p1

    .line 217
    :cond_b
    new-instance p1, Lcom/alibaba/fastjson/JSONException;

    .line 218
    .line 219
    const-string v0, "unclosed str"

    .line 220
    .line 221
    invoke-direct {p1, v0}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    throw p1
.end method

.method public F0([CLjava/lang/Class;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([C",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 5
    .line 6
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 7
    .line 8
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 p1, -0x2

    .line 16
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 17
    .line 18
    return-object v1

    .line 19
    :cond_0
    const-class v0, Ljava/util/HashSet;

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    new-instance p2, Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    const-class v0, Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 36
    .line 37
    .line 38
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    new-instance p2, Ljava/util/ArrayList;

    .line 42
    .line 43
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    check-cast p2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .line 53
    :goto_0
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 54
    .line 55
    array-length p1, p1

    .line 56
    add-int/2addr v0, p1

    .line 57
    add-int/lit8 p1, v0, 0x1

    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    const/16 v2, 0x5b

    .line 64
    .line 65
    const/4 v3, -0x1

    .line 66
    if-eq v0, v2, :cond_3

    .line 67
    .line 68
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 69
    .line 70
    return-object v1

    .line 71
    :cond_3
    add-int/lit8 v0, p1, 0x1

    .line 72
    .line 73
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 74
    .line 75
    .line 76
    move-result p1

    .line 77
    :goto_1
    const/16 v2, 0x22

    .line 78
    .line 79
    if-eq p1, v2, :cond_4

    .line 80
    .line 81
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 82
    .line 83
    return-object v1

    .line 84
    :cond_4
    move p1, v0

    .line 85
    :goto_2
    add-int/lit8 v4, p1, 0x1

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    if-ne p1, v2, :cond_d

    .line 92
    .line 93
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 94
    .line 95
    add-int/lit8 v2, v4, -0x1

    .line 96
    .line 97
    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-interface {p2, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    add-int/lit8 p1, v4, 0x1

    .line 105
    .line 106
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 107
    .line 108
    .line 109
    move-result v0

    .line 110
    const/16 v2, 0x2c

    .line 111
    .line 112
    if-ne v0, v2, :cond_5

    .line 113
    .line 114
    add-int/lit8 v0, p1, 0x1

    .line 115
    .line 116
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 117
    .line 118
    .line 119
    move-result p1

    .line 120
    goto :goto_1

    .line 121
    :cond_5
    const/16 v4, 0x5d

    .line 122
    .line 123
    if-ne v0, v4, :cond_c

    .line 124
    .line 125
    add-int/lit8 v0, p1, 0x1

    .line 126
    .line 127
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 128
    .line 129
    .line 130
    move-result p1

    .line 131
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 132
    .line 133
    if-ne p1, v2, :cond_6

    .line 134
    .line 135
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 140
    .line 141
    const/4 p1, 0x3

    .line 142
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 143
    .line 144
    return-object p2

    .line 145
    :cond_6
    const/16 v5, 0x7d

    .line 146
    .line 147
    if-ne p1, v5, :cond_b

    .line 148
    .line 149
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 150
    .line 151
    .line 152
    move-result p1

    .line 153
    if-ne p1, v2, :cond_7

    .line 154
    .line 155
    const/16 p1, 0x10

    .line 156
    .line 157
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 158
    .line 159
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 160
    .line 161
    add-int/lit8 p1, p1, 0x1

    .line 162
    .line 163
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 164
    .line 165
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 170
    .line 171
    goto :goto_3

    .line 172
    :cond_7
    if-ne p1, v4, :cond_8

    .line 173
    .line 174
    const/16 p1, 0xf

    .line 175
    .line 176
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 177
    .line 178
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 179
    .line 180
    add-int/lit8 p1, p1, 0x1

    .line 181
    .line 182
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 183
    .line 184
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 185
    .line 186
    .line 187
    move-result p1

    .line 188
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_8
    if-ne p1, v5, :cond_9

    .line 192
    .line 193
    const/16 p1, 0xd

    .line 194
    .line 195
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 196
    .line 197
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 198
    .line 199
    add-int/lit8 p1, p1, 0x1

    .line 200
    .line 201
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 202
    .line 203
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 204
    .line 205
    .line 206
    move-result p1

    .line 207
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_9
    const/16 v0, 0x1a

    .line 211
    .line 212
    if-ne p1, v0, :cond_a

    .line 213
    .line 214
    const/16 v0, 0x14

    .line 215
    .line 216
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 217
    .line 218
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 219
    .line 220
    :goto_3
    const/4 p1, 0x4

    .line 221
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 222
    .line 223
    return-object p2

    .line 224
    :cond_a
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 225
    .line 226
    return-object v1

    .line 227
    :cond_b
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 228
    .line 229
    return-object v1

    .line 230
    :cond_c
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 231
    .line 232
    return-object v1

    .line 233
    :cond_d
    const/16 v5, 0x5c

    .line 234
    .line 235
    if-ne p1, v5, :cond_e

    .line 236
    .line 237
    iput v3, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 238
    .line 239
    return-object v1

    .line 240
    :cond_e
    move p1, v4

    .line 241
    goto/16 :goto_2

    .line 242
    .line 243
    :catch_0
    move-exception p1

    .line 244
    new-instance p2, Lcom/alibaba/fastjson/JSONException;

    .line 245
    .line 246
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    invoke-direct {p2, v0, p1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    .line 252
    .line 253
    throw p2
.end method

.method public G0([CLcom/alibaba/fastjson/parser/l;)Ljava/lang/String;
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 7
    .line 8
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/4 v2, 0x0

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    const/4 p1, -0x2

    .line 16
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 20
    .line 21
    array-length p1, p1

    .line 22
    add-int/2addr v1, p1

    .line 23
    add-int/lit8 p1, v1, 0x1

    .line 24
    .line 25
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/16 v3, 0x22

    .line 30
    .line 31
    const/4 v4, -0x1

    .line 32
    if-eq v1, v3, :cond_1

    .line 33
    .line 34
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 35
    .line 36
    return-object v2

    .line 37
    :cond_1
    move v1, p1

    .line 38
    :goto_0
    add-int/lit8 v5, v1, 0x1

    .line 39
    .line 40
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-ne v1, v3, :cond_8

    .line 45
    .line 46
    iput v5, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 47
    .line 48
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    iput-char v1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 53
    .line 54
    iget-object v3, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 55
    .line 56
    sub-int/2addr v5, p1

    .line 57
    add-int/lit8 v5, v5, -0x1

    .line 58
    .line 59
    invoke-virtual {p2, v3, p1, v5, v0}, Lcom/alibaba/fastjson/parser/l;->a(Ljava/lang/String;III)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    const/16 p2, 0x2c

    .line 64
    .line 65
    if-ne v1, p2, :cond_2

    .line 66
    .line 67
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 68
    .line 69
    add-int/lit8 p2, p2, 0x1

    .line 70
    .line 71
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 72
    .line 73
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 74
    .line 75
    .line 76
    move-result p2

    .line 77
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 78
    .line 79
    const/4 p2, 0x3

    .line 80
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 81
    .line 82
    return-object p1

    .line 83
    :cond_2
    const/16 v0, 0x7d

    .line 84
    .line 85
    if-ne v1, v0, :cond_7

    .line 86
    .line 87
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 88
    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    .line 91
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 92
    .line 93
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 94
    .line 95
    .line 96
    move-result v1

    .line 97
    if-ne v1, p2, :cond_3

    .line 98
    .line 99
    const/16 p2, 0x10

    .line 100
    .line 101
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 102
    .line 103
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 104
    .line 105
    add-int/lit8 p2, p2, 0x1

    .line 106
    .line 107
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 108
    .line 109
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 110
    .line 111
    .line 112
    move-result p2

    .line 113
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_3
    const/16 p2, 0x5d

    .line 117
    .line 118
    if-ne v1, p2, :cond_4

    .line 119
    .line 120
    const/16 p2, 0xf

    .line 121
    .line 122
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 123
    .line 124
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 125
    .line 126
    add-int/lit8 p2, p2, 0x1

    .line 127
    .line 128
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 129
    .line 130
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 131
    .line 132
    .line 133
    move-result p2

    .line 134
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 135
    .line 136
    goto :goto_1

    .line 137
    :cond_4
    if-ne v1, v0, :cond_5

    .line 138
    .line 139
    const/16 p2, 0xd

    .line 140
    .line 141
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 142
    .line 143
    iget p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 144
    .line 145
    add-int/lit8 p2, p2, 0x1

    .line 146
    .line 147
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 148
    .line 149
    invoke-virtual {p0, p2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 150
    .line 151
    .line 152
    move-result p2

    .line 153
    iput-char p2, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_5
    const/16 p2, 0x1a

    .line 157
    .line 158
    if-ne v1, p2, :cond_6

    .line 159
    .line 160
    const/16 p2, 0x14

    .line 161
    .line 162
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 163
    .line 164
    :goto_1
    const/4 p2, 0x4

    .line 165
    iput p2, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 166
    .line 167
    return-object p1

    .line 168
    :cond_6
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 169
    .line 170
    return-object v2

    .line 171
    :cond_7
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 172
    .line 173
    return-object v2

    .line 174
    :cond_8
    mul-int/lit8 v0, v0, 0x1f

    .line 175
    .line 176
    add-int/2addr v0, v1

    .line 177
    const/16 v6, 0x5c

    .line 178
    .line 179
    if-ne v1, v6, :cond_9

    .line 180
    .line 181
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 182
    .line 183
    return-object v2

    .line 184
    :cond_9
    move v1, v5

    .line 185
    goto/16 :goto_0
.end method

.method public final O0(Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 7
    .line 8
    sget-object v3, Lcom/alibaba/fastjson/parser/g;->A:[C

    .line 9
    .line 10
    invoke-static {v1, v2, v3}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const/4 p1, -0x2

    .line 17
    return p1

    .line 18
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 19
    .line 20
    array-length v2, v3

    .line 21
    add-int/2addr v1, v2

    .line 22
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    :goto_0
    const/4 v3, -0x1

    .line 27
    if-ge v0, v2, :cond_2

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    add-int v5, v1, v0

    .line 34
    .line 35
    invoke-virtual {p0, v5}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 36
    .line 37
    .line 38
    move-result v5

    .line 39
    if-eq v4, v5, :cond_1

    .line 40
    .line 41
    return v3

    .line 42
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    add-int/2addr v1, v2

    .line 46
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 47
    .line 48
    .line 49
    move-result p1

    .line 50
    const/16 v0, 0x22

    .line 51
    .line 52
    if-eq p1, v0, :cond_3

    .line 53
    .line 54
    return v3

    .line 55
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 56
    .line 57
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 62
    .line 63
    const/16 v0, 0x10

    .line 64
    .line 65
    const/16 v2, 0x2c

    .line 66
    .line 67
    if-ne p1, v2, :cond_4

    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 76
    .line 77
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 78
    .line 79
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 80
    .line 81
    const/4 p1, 0x3

    .line 82
    return p1

    .line 83
    :cond_4
    const/16 v4, 0x7d

    .line 84
    .line 85
    if-ne p1, v4, :cond_9

    .line 86
    .line 87
    add-int/lit8 v1, v1, 0x1

    .line 88
    .line 89
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 90
    .line 91
    .line 92
    move-result p1

    .line 93
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 94
    .line 95
    if-ne p1, v2, :cond_5

    .line 96
    .line 97
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 98
    .line 99
    add-int/lit8 v1, v1, 0x1

    .line 100
    .line 101
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 102
    .line 103
    .line 104
    move-result p1

    .line 105
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_5
    const/16 v0, 0x5d

    .line 109
    .line 110
    if-ne p1, v0, :cond_6

    .line 111
    .line 112
    const/16 p1, 0xf

    .line 113
    .line 114
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 115
    .line 116
    add-int/lit8 v1, v1, 0x1

    .line 117
    .line 118
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_6
    if-ne p1, v4, :cond_7

    .line 126
    .line 127
    const/16 p1, 0xd

    .line 128
    .line 129
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 130
    .line 131
    add-int/lit8 v1, v1, 0x1

    .line 132
    .line 133
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_7
    const/16 v0, 0x1a

    .line 141
    .line 142
    if-ne p1, v0, :cond_8

    .line 143
    .line 144
    const/16 p1, 0x14

    .line 145
    .line 146
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 147
    .line 148
    :goto_1
    const/4 p1, 0x4

    .line 149
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 150
    .line 151
    goto :goto_2

    .line 152
    :cond_8
    return v3

    .line 153
    :cond_9
    :goto_2
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 154
    .line 155
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 156
    .line 157
    return p1
.end method

.method public final R()Ljava/lang/String;
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/alibaba/fastjson/parser/e;->k:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 6
    .line 7
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 8
    .line 9
    add-int/lit8 v2, v1, 0x1

    .line 10
    .line 11
    add-int/lit8 v1, v1, 0x1

    .line 12
    .line 13
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 14
    .line 15
    add-int/2addr v1, v3

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    return-object v0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/String;

    .line 22
    .line 23
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/e;->h:[C

    .line 24
    .line 25
    const/4 v2, 0x0

    .line 26
    iget v3, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public final R0(II)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public V0()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->W0(Z)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    return v0
.end method

.method public W0(Z)Z
    .locals 32

    .line 1
    move-object/from16 v9, p0

    .line 2
    .line 3
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget v1, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 10
    .line 11
    sub-int v10, v0, v1

    .line 12
    .line 13
    const/4 v11, 0x6

    .line 14
    const/4 v12, 0x3

    .line 15
    const/16 v13, 0xd

    .line 16
    .line 17
    const/4 v14, 0x2

    .line 18
    const/16 v15, 0x39

    .line 19
    .line 20
    const/4 v8, 0x5

    .line 21
    const/16 v16, 0x1

    .line 22
    .line 23
    const/16 v7, 0x30

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    if-nez p1, :cond_4

    .line 27
    .line 28
    if-le v10, v13, :cond_4

    .line 29
    .line 30
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    iget v1, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 35
    .line 36
    add-int/lit8 v1, v1, 0x1

    .line 37
    .line 38
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    iget v2, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 43
    .line 44
    add-int/2addr v2, v14

    .line 45
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    iget v3, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 50
    .line 51
    add-int/2addr v3, v12

    .line 52
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iget v4, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 57
    .line 58
    add-int/lit8 v4, v4, 0x4

    .line 59
    .line 60
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    iget v5, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 65
    .line 66
    add-int/2addr v5, v8

    .line 67
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    iget v13, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 72
    .line 73
    add-int/2addr v13, v10

    .line 74
    add-int/lit8 v13, v13, -0x1

    .line 75
    .line 76
    invoke-virtual {v9, v13}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 77
    .line 78
    .line 79
    move-result v13

    .line 80
    iget v12, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 81
    .line 82
    add-int/2addr v12, v10

    .line 83
    sub-int/2addr v12, v14

    .line 84
    invoke-virtual {v9, v12}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 85
    .line 86
    .line 87
    move-result v12

    .line 88
    const/16 v14, 0x2f

    .line 89
    .line 90
    if-ne v0, v14, :cond_4

    .line 91
    .line 92
    const/16 v0, 0x44

    .line 93
    .line 94
    if-ne v1, v0, :cond_4

    .line 95
    .line 96
    const/16 v0, 0x61

    .line 97
    .line 98
    if-ne v2, v0, :cond_4

    .line 99
    .line 100
    const/16 v0, 0x74

    .line 101
    .line 102
    if-ne v3, v0, :cond_4

    .line 103
    .line 104
    const/16 v0, 0x65

    .line 105
    .line 106
    if-ne v4, v0, :cond_4

    .line 107
    .line 108
    const/16 v0, 0x28

    .line 109
    .line 110
    if-ne v5, v0, :cond_4

    .line 111
    .line 112
    if-ne v13, v14, :cond_4

    .line 113
    .line 114
    const/16 v0, 0x29

    .line 115
    .line 116
    if-ne v12, v0, :cond_4

    .line 117
    .line 118
    const/4 v0, -0x1

    .line 119
    const/4 v1, 0x6

    .line 120
    :goto_0
    if-ge v1, v10, :cond_2

    .line 121
    .line 122
    iget v2, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 123
    .line 124
    add-int/2addr v2, v1

    .line 125
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    const/16 v3, 0x2b

    .line 130
    .line 131
    if-ne v2, v3, :cond_0

    .line 132
    .line 133
    move v0, v1

    .line 134
    goto :goto_1

    .line 135
    :cond_0
    if-lt v2, v7, :cond_2

    .line 136
    .line 137
    if-le v2, v15, :cond_1

    .line 138
    .line 139
    goto :goto_2

    .line 140
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 141
    .line 142
    goto :goto_0

    .line 143
    :cond_2
    :goto_2
    const/4 v1, -0x1

    .line 144
    if-ne v0, v1, :cond_3

    .line 145
    .line 146
    return v6

    .line 147
    :cond_3
    iget v1, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 148
    .line 149
    add-int/2addr v1, v11

    .line 150
    sub-int/2addr v0, v1

    .line 151
    invoke-virtual {v9, v1, v0}, Lcom/alibaba/fastjson/parser/g;->R0(II)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 156
    .line 157
    .line 158
    move-result-wide v0

    .line 159
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 164
    .line 165
    .line 166
    move-result-object v3

    .line 167
    invoke-static {v3, v2}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    .line 168
    .line 169
    .line 170
    move-result-object v2

    .line 171
    iput-object v2, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 172
    .line 173
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 174
    .line 175
    .line 176
    iput v8, v9, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 177
    .line 178
    return v16

    .line 179
    :cond_4
    const/16 v12, 0x11

    .line 180
    .line 181
    const/16 v13, 0x8

    .line 182
    .line 183
    const/16 v14, 0xc

    .line 184
    .line 185
    const/16 v5, 0xb

    .line 186
    .line 187
    const/16 v4, 0xe

    .line 188
    .line 189
    if-eq v10, v13, :cond_24

    .line 190
    .line 191
    if-eq v10, v4, :cond_24

    .line 192
    .line 193
    if-ne v10, v12, :cond_5

    .line 194
    .line 195
    goto/16 :goto_a

    .line 196
    .line 197
    :cond_5
    iget v0, v9, Lcom/alibaba/fastjson/parser/g;->x:I

    .line 198
    .line 199
    if-ge v10, v0, :cond_6

    .line 200
    .line 201
    return v6

    .line 202
    :cond_6
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 203
    .line 204
    add-int/lit8 v0, v0, 0x4

    .line 205
    .line 206
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 207
    .line 208
    .line 209
    move-result v0

    .line 210
    const/16 v3, 0x2d

    .line 211
    .line 212
    if-eq v0, v3, :cond_7

    .line 213
    .line 214
    return v6

    .line 215
    :cond_7
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 216
    .line 217
    add-int/lit8 v0, v0, 0x7

    .line 218
    .line 219
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-eq v0, v3, :cond_8

    .line 224
    .line 225
    return v6

    .line 226
    :cond_8
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 227
    .line 228
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 233
    .line 234
    add-int/lit8 v0, v0, 0x1

    .line 235
    .line 236
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 237
    .line 238
    .line 239
    move-result v2

    .line 240
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 241
    .line 242
    const/16 v18, 0x2

    .line 243
    .line 244
    add-int/lit8 v0, v0, 0x2

    .line 245
    .line 246
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 247
    .line 248
    .line 249
    move-result v27

    .line 250
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 251
    .line 252
    const/16 v17, 0x3

    .line 253
    .line 254
    add-int/lit8 v0, v0, 0x3

    .line 255
    .line 256
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 257
    .line 258
    .line 259
    move-result v28

    .line 260
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 261
    .line 262
    add-int/2addr v0, v8

    .line 263
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 264
    .line 265
    .line 266
    move-result v29

    .line 267
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 268
    .line 269
    add-int/2addr v0, v11

    .line 270
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 271
    .line 272
    .line 273
    move-result v30

    .line 274
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 275
    .line 276
    add-int/2addr v0, v13

    .line 277
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 278
    .line 279
    .line 280
    move-result v13

    .line 281
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 282
    .line 283
    add-int/lit8 v0, v0, 0x9

    .line 284
    .line 285
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 286
    .line 287
    .line 288
    move-result v31

    .line 289
    move/from16 v19, v1

    .line 290
    .line 291
    move/from16 v20, v2

    .line 292
    .line 293
    move/from16 v21, v27

    .line 294
    .line 295
    move/from16 v22, v28

    .line 296
    .line 297
    move/from16 v23, v29

    .line 298
    .line 299
    move/from16 v24, v30

    .line 300
    .line 301
    move/from16 v25, v13

    .line 302
    .line 303
    move/from16 v26, v31

    .line 304
    .line 305
    invoke-static/range {v19 .. v26}, Lcom/alibaba/fastjson/parser/g;->T0(CCCCCCII)Z

    .line 306
    .line 307
    .line 308
    move-result v0

    .line 309
    if-nez v0, :cond_9

    .line 310
    .line 311
    return v6

    .line 312
    :cond_9
    move-object/from16 v0, p0

    .line 313
    .line 314
    const/16 v11, 0x2d

    .line 315
    .line 316
    move/from16 v3, v27

    .line 317
    .line 318
    const/16 v11, 0xe

    .line 319
    .line 320
    move/from16 v4, v28

    .line 321
    .line 322
    const/16 v15, 0xb

    .line 323
    .line 324
    move/from16 v5, v29

    .line 325
    .line 326
    const/4 v12, 0x0

    .line 327
    move/from16 v6, v30

    .line 328
    .line 329
    move v7, v13

    .line 330
    const/4 v13, 0x5

    .line 331
    move/from16 v8, v31

    .line 332
    .line 333
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/g;->X0(CCCCCCCC)V

    .line 334
    .line 335
    .line 336
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 337
    .line 338
    add-int/lit8 v0, v0, 0xa

    .line 339
    .line 340
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 341
    .line 342
    .line 343
    move-result v0

    .line 344
    const/16 v1, 0x54

    .line 345
    .line 346
    if-eq v0, v1, :cond_d

    .line 347
    .line 348
    const/16 v1, 0x20

    .line 349
    .line 350
    if-ne v0, v1, :cond_a

    .line 351
    .line 352
    if-nez p1, :cond_a

    .line 353
    .line 354
    goto :goto_4

    .line 355
    :cond_a
    const/16 v1, 0x22

    .line 356
    .line 357
    if-eq v0, v1, :cond_c

    .line 358
    .line 359
    const/16 v1, 0x1a

    .line 360
    .line 361
    if-ne v0, v1, :cond_b

    .line 362
    .line 363
    goto :goto_3

    .line 364
    :cond_b
    return v12

    .line 365
    :cond_c
    :goto_3
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 366
    .line 367
    invoke-virtual {v0, v15, v12}, Ljava/util/Calendar;->set(II)V

    .line 368
    .line 369
    .line 370
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 371
    .line 372
    invoke-virtual {v0, v14, v12}, Ljava/util/Calendar;->set(II)V

    .line 373
    .line 374
    .line 375
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 376
    .line 377
    const/16 v1, 0xd

    .line 378
    .line 379
    invoke-virtual {v0, v1, v12}, Ljava/util/Calendar;->set(II)V

    .line 380
    .line 381
    .line 382
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 383
    .line 384
    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 385
    .line 386
    .line 387
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 388
    .line 389
    add-int/lit8 v0, v0, 0xa

    .line 390
    .line 391
    iput v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 392
    .line 393
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    iput-char v0, v9, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 398
    .line 399
    iput v13, v9, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 400
    .line 401
    return v16

    .line 402
    :cond_d
    :goto_4
    iget v0, v9, Lcom/alibaba/fastjson/parser/g;->y:I

    .line 403
    .line 404
    if-ge v10, v0, :cond_e

    .line 405
    .line 406
    return v12

    .line 407
    :cond_e
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 408
    .line 409
    const/16 v1, 0xd

    .line 410
    .line 411
    add-int/2addr v0, v1

    .line 412
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 413
    .line 414
    .line 415
    move-result v0

    .line 416
    const/16 v7, 0x3a

    .line 417
    .line 418
    if-eq v0, v7, :cond_f

    .line 419
    .line 420
    return v12

    .line 421
    :cond_f
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 422
    .line 423
    add-int/lit8 v0, v0, 0x10

    .line 424
    .line 425
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 426
    .line 427
    .line 428
    move-result v0

    .line 429
    if-eq v0, v7, :cond_10

    .line 430
    .line 431
    return v12

    .line 432
    :cond_10
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 433
    .line 434
    add-int/2addr v0, v15

    .line 435
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 436
    .line 437
    .line 438
    move-result v8

    .line 439
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 440
    .line 441
    add-int/2addr v0, v14

    .line 442
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 443
    .line 444
    .line 445
    move-result v23

    .line 446
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 447
    .line 448
    add-int/2addr v0, v11

    .line 449
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 450
    .line 451
    .line 452
    move-result v24

    .line 453
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 454
    .line 455
    add-int/lit8 v0, v0, 0xf

    .line 456
    .line 457
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 458
    .line 459
    .line 460
    move-result v25

    .line 461
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 462
    .line 463
    const/16 v1, 0x11

    .line 464
    .line 465
    add-int/2addr v0, v1

    .line 466
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 467
    .line 468
    .line 469
    move-result v22

    .line 470
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 471
    .line 472
    add-int/lit8 v0, v0, 0x12

    .line 473
    .line 474
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 475
    .line 476
    .line 477
    move-result v26

    .line 478
    move-object/from16 v0, p0

    .line 479
    .line 480
    move v1, v8

    .line 481
    move/from16 v2, v23

    .line 482
    .line 483
    move/from16 v3, v24

    .line 484
    .line 485
    move/from16 v4, v25

    .line 486
    .line 487
    move/from16 v5, v22

    .line 488
    .line 489
    move/from16 v6, v26

    .line 490
    .line 491
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/g;->U0(CCCCCC)Z

    .line 492
    .line 493
    .line 494
    move-result v0

    .line 495
    if-nez v0, :cond_11

    .line 496
    .line 497
    return v12

    .line 498
    :cond_11
    sget-object v0, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 499
    .line 500
    aget v1, v0, v8

    .line 501
    .line 502
    mul-int/lit8 v1, v1, 0xa

    .line 503
    .line 504
    aget v2, v0, v23

    .line 505
    .line 506
    add-int/2addr v1, v2

    .line 507
    aget v2, v0, v24

    .line 508
    .line 509
    mul-int/lit8 v2, v2, 0xa

    .line 510
    .line 511
    aget v3, v0, v25

    .line 512
    .line 513
    add-int/2addr v2, v3

    .line 514
    aget v3, v0, v22

    .line 515
    .line 516
    mul-int/lit8 v3, v3, 0xa

    .line 517
    .line 518
    aget v4, v0, v26

    .line 519
    .line 520
    add-int/2addr v3, v4

    .line 521
    iget-object v4, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 522
    .line 523
    invoke-virtual {v4, v15, v1}, Ljava/util/Calendar;->set(II)V

    .line 524
    .line 525
    .line 526
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 527
    .line 528
    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 529
    .line 530
    .line 531
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 532
    .line 533
    const/16 v2, 0xd

    .line 534
    .line 535
    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 536
    .line 537
    .line 538
    iget v1, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 539
    .line 540
    add-int/lit8 v1, v1, 0x13

    .line 541
    .line 542
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 543
    .line 544
    .line 545
    move-result v1

    .line 546
    const/16 v2, 0x2e

    .line 547
    .line 548
    if-ne v1, v2, :cond_23

    .line 549
    .line 550
    iget v1, v9, Lcom/alibaba/fastjson/parser/g;->z:I

    .line 551
    .line 552
    if-ge v10, v1, :cond_12

    .line 553
    .line 554
    return v12

    .line 555
    :cond_12
    iget v1, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 556
    .line 557
    add-int/lit8 v1, v1, 0x14

    .line 558
    .line 559
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 560
    .line 561
    .line 562
    move-result v1

    .line 563
    const/16 v8, 0x30

    .line 564
    .line 565
    if-lt v1, v8, :cond_22

    .line 566
    .line 567
    const/16 v2, 0x39

    .line 568
    .line 569
    if-le v1, v2, :cond_13

    .line 570
    .line 571
    goto/16 :goto_9

    .line 572
    .line 573
    :cond_13
    aget v1, v0, v1

    .line 574
    .line 575
    iget v3, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 576
    .line 577
    add-int/lit8 v3, v3, 0x15

    .line 578
    .line 579
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 580
    .line 581
    .line 582
    move-result v3

    .line 583
    if-lt v3, v8, :cond_14

    .line 584
    .line 585
    if-gt v3, v2, :cond_14

    .line 586
    .line 587
    mul-int/lit8 v1, v1, 0xa

    .line 588
    .line 589
    aget v2, v0, v3

    .line 590
    .line 591
    add-int/2addr v1, v2

    .line 592
    const/4 v2, 0x2

    .line 593
    goto :goto_5

    .line 594
    :cond_14
    const/4 v2, 0x1

    .line 595
    :goto_5
    const/4 v3, 0x2

    .line 596
    if-ne v2, v3, :cond_15

    .line 597
    .line 598
    iget v3, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 599
    .line 600
    add-int/lit8 v3, v3, 0x16

    .line 601
    .line 602
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 603
    .line 604
    .line 605
    move-result v3

    .line 606
    if-lt v3, v8, :cond_15

    .line 607
    .line 608
    const/16 v4, 0x39

    .line 609
    .line 610
    if-gt v3, v4, :cond_15

    .line 611
    .line 612
    mul-int/lit8 v1, v1, 0xa

    .line 613
    .line 614
    aget v2, v0, v3

    .line 615
    .line 616
    add-int/2addr v1, v2

    .line 617
    const/4 v2, 0x3

    .line 618
    :cond_15
    iget-object v3, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 619
    .line 620
    invoke-virtual {v3, v11, v1}, Ljava/util/Calendar;->set(II)V

    .line 621
    .line 622
    .line 623
    iget v1, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 624
    .line 625
    add-int/lit8 v1, v1, 0x14

    .line 626
    .line 627
    add-int/2addr v1, v2

    .line 628
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 629
    .line 630
    .line 631
    move-result v1

    .line 632
    const/16 v3, 0x2b

    .line 633
    .line 634
    if-eq v1, v3, :cond_17

    .line 635
    .line 636
    const/16 v3, 0x2d

    .line 637
    .line 638
    if-ne v1, v3, :cond_16

    .line 639
    .line 640
    goto :goto_6

    .line 641
    :cond_16
    const/4 v6, 0x0

    .line 642
    goto/16 :goto_8

    .line 643
    .line 644
    :cond_17
    :goto_6
    iget v3, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 645
    .line 646
    add-int/lit8 v3, v3, 0x14

    .line 647
    .line 648
    add-int/2addr v3, v2

    .line 649
    add-int/lit8 v3, v3, 0x1

    .line 650
    .line 651
    invoke-virtual {v9, v3}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 652
    .line 653
    .line 654
    move-result v3

    .line 655
    if-lt v3, v8, :cond_22

    .line 656
    .line 657
    const/16 v4, 0x31

    .line 658
    .line 659
    if-le v3, v4, :cond_18

    .line 660
    .line 661
    goto/16 :goto_9

    .line 662
    .line 663
    :cond_18
    iget v4, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 664
    .line 665
    add-int/lit8 v4, v4, 0x14

    .line 666
    .line 667
    add-int/2addr v4, v2

    .line 668
    const/4 v5, 0x2

    .line 669
    add-int/2addr v4, v5

    .line 670
    invoke-virtual {v9, v4}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 671
    .line 672
    .line 673
    move-result v4

    .line 674
    if-lt v4, v8, :cond_22

    .line 675
    .line 676
    const/16 v5, 0x39

    .line 677
    .line 678
    if-le v4, v5, :cond_19

    .line 679
    .line 680
    goto/16 :goto_9

    .line 681
    .line 682
    :cond_19
    iget v5, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 683
    .line 684
    add-int/lit8 v5, v5, 0x14

    .line 685
    .line 686
    add-int/2addr v5, v2

    .line 687
    const/4 v6, 0x3

    .line 688
    add-int/2addr v5, v6

    .line 689
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 690
    .line 691
    .line 692
    move-result v5

    .line 693
    if-ne v5, v7, :cond_1c

    .line 694
    .line 695
    iget v5, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 696
    .line 697
    add-int/lit8 v5, v5, 0x14

    .line 698
    .line 699
    add-int/2addr v5, v2

    .line 700
    add-int/lit8 v5, v5, 0x4

    .line 701
    .line 702
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 703
    .line 704
    .line 705
    move-result v5

    .line 706
    if-eq v5, v8, :cond_1a

    .line 707
    .line 708
    return v12

    .line 709
    :cond_1a
    iget v5, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 710
    .line 711
    add-int/lit8 v5, v5, 0x14

    .line 712
    .line 713
    add-int/2addr v5, v2

    .line 714
    add-int/2addr v5, v13

    .line 715
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 716
    .line 717
    .line 718
    move-result v5

    .line 719
    if-eq v5, v8, :cond_1b

    .line 720
    .line 721
    return v12

    .line 722
    :cond_1b
    const/4 v11, 0x6

    .line 723
    goto :goto_7

    .line 724
    :cond_1c
    if-ne v5, v8, :cond_1e

    .line 725
    .line 726
    iget v5, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 727
    .line 728
    add-int/lit8 v5, v5, 0x14

    .line 729
    .line 730
    add-int/2addr v5, v2

    .line 731
    add-int/lit8 v5, v5, 0x4

    .line 732
    .line 733
    invoke-virtual {v9, v5}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 734
    .line 735
    .line 736
    move-result v5

    .line 737
    if-eq v5, v8, :cond_1d

    .line 738
    .line 739
    return v12

    .line 740
    :cond_1d
    const/4 v11, 0x5

    .line 741
    goto :goto_7

    .line 742
    :cond_1e
    const/4 v11, 0x3

    .line 743
    :goto_7
    aget v3, v0, v3

    .line 744
    .line 745
    mul-int/lit8 v3, v3, 0xa

    .line 746
    .line 747
    aget v0, v0, v4

    .line 748
    .line 749
    add-int/2addr v3, v0

    .line 750
    mul-int/lit16 v3, v3, 0xe10

    .line 751
    .line 752
    mul-int/lit16 v3, v3, 0x3e8

    .line 753
    .line 754
    const/16 v0, 0x2d

    .line 755
    .line 756
    if-ne v1, v0, :cond_1f

    .line 757
    .line 758
    neg-int v3, v3

    .line 759
    :cond_1f
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 760
    .line 761
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;

    .line 762
    .line 763
    .line 764
    move-result-object v0

    .line 765
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 766
    .line 767
    .line 768
    move-result v0

    .line 769
    if-eq v0, v3, :cond_20

    .line 770
    .line 771
    invoke-static {v3}, Ljava/util/TimeZone;->getAvailableIDs(I)[Ljava/lang/String;

    .line 772
    .line 773
    .line 774
    move-result-object v0

    .line 775
    array-length v1, v0

    .line 776
    if-lez v1, :cond_20

    .line 777
    .line 778
    aget-object v0, v0, v12

    .line 779
    .line 780
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 781
    .line 782
    .line 783
    move-result-object v0

    .line 784
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 785
    .line 786
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 787
    .line 788
    .line 789
    :cond_20
    move v6, v11

    .line 790
    :goto_8
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 791
    .line 792
    add-int/lit8 v2, v2, 0x14

    .line 793
    .line 794
    add-int/2addr v2, v6

    .line 795
    add-int/2addr v0, v2

    .line 796
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 797
    .line 798
    .line 799
    move-result v0

    .line 800
    const/16 v1, 0x1a

    .line 801
    .line 802
    if-eq v0, v1, :cond_21

    .line 803
    .line 804
    const/16 v1, 0x22

    .line 805
    .line 806
    if-eq v0, v1, :cond_21

    .line 807
    .line 808
    return v12

    .line 809
    :cond_21
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 810
    .line 811
    add-int/2addr v0, v2

    .line 812
    iput v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 813
    .line 814
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 815
    .line 816
    .line 817
    move-result v0

    .line 818
    iput-char v0, v9, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 819
    .line 820
    iput v13, v9, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 821
    .line 822
    return v16

    .line 823
    :cond_22
    :goto_9
    return v12

    .line 824
    :cond_23
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 825
    .line 826
    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 827
    .line 828
    .line 829
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 830
    .line 831
    add-int/lit8 v0, v0, 0x13

    .line 832
    .line 833
    iput v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 834
    .line 835
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 836
    .line 837
    .line 838
    move-result v0

    .line 839
    iput-char v0, v9, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 840
    .line 841
    iput v13, v9, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 842
    .line 843
    return v16

    .line 844
    :cond_24
    :goto_a
    const/4 v7, 0x5

    .line 845
    const/16 v8, 0x30

    .line 846
    .line 847
    const/16 v11, 0xe

    .line 848
    .line 849
    const/4 v12, 0x0

    .line 850
    const/16 v15, 0xb

    .line 851
    .line 852
    if-eqz p1, :cond_25

    .line 853
    .line 854
    return v12

    .line 855
    :cond_25
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 856
    .line 857
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 858
    .line 859
    .line 860
    move-result v1

    .line 861
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 862
    .line 863
    add-int/lit8 v0, v0, 0x1

    .line 864
    .line 865
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 866
    .line 867
    .line 868
    move-result v2

    .line 869
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 870
    .line 871
    const/4 v3, 0x2

    .line 872
    add-int/2addr v0, v3

    .line 873
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 874
    .line 875
    .line 876
    move-result v3

    .line 877
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 878
    .line 879
    const/4 v4, 0x3

    .line 880
    add-int/2addr v0, v4

    .line 881
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 882
    .line 883
    .line 884
    move-result v4

    .line 885
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 886
    .line 887
    add-int/lit8 v0, v0, 0x4

    .line 888
    .line 889
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 890
    .line 891
    .line 892
    move-result v5

    .line 893
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 894
    .line 895
    add-int/2addr v0, v7

    .line 896
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 897
    .line 898
    .line 899
    move-result v6

    .line 900
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 901
    .line 902
    const/16 v17, 0x6

    .line 903
    .line 904
    add-int/lit8 v0, v0, 0x6

    .line 905
    .line 906
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 907
    .line 908
    .line 909
    move-result v17

    .line 910
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 911
    .line 912
    add-int/lit8 v0, v0, 0x7

    .line 913
    .line 914
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 915
    .line 916
    .line 917
    move-result v18

    .line 918
    move/from16 v23, v1

    .line 919
    .line 920
    move/from16 v24, v2

    .line 921
    .line 922
    move/from16 v25, v3

    .line 923
    .line 924
    move/from16 v26, v4

    .line 925
    .line 926
    move/from16 v27, v5

    .line 927
    .line 928
    move/from16 v28, v6

    .line 929
    .line 930
    move/from16 v29, v17

    .line 931
    .line 932
    move/from16 v30, v18

    .line 933
    .line 934
    invoke-static/range {v23 .. v30}, Lcom/alibaba/fastjson/parser/g;->T0(CCCCCCII)Z

    .line 935
    .line 936
    .line 937
    move-result v0

    .line 938
    if-nez v0, :cond_26

    .line 939
    .line 940
    return v12

    .line 941
    :cond_26
    move-object/from16 v0, p0

    .line 942
    .line 943
    move/from16 v7, v17

    .line 944
    .line 945
    move/from16 v8, v18

    .line 946
    .line 947
    invoke-direct/range {v0 .. v8}, Lcom/alibaba/fastjson/parser/g;->X0(CCCCCCCC)V

    .line 948
    .line 949
    .line 950
    if-eq v10, v13, :cond_2d

    .line 951
    .line 952
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 953
    .line 954
    add-int/2addr v0, v13

    .line 955
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 956
    .line 957
    .line 958
    move-result v7

    .line 959
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 960
    .line 961
    add-int/lit8 v0, v0, 0x9

    .line 962
    .line 963
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 964
    .line 965
    .line 966
    move-result v8

    .line 967
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 968
    .line 969
    add-int/lit8 v0, v0, 0xa

    .line 970
    .line 971
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 972
    .line 973
    .line 974
    move-result v13

    .line 975
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 976
    .line 977
    add-int/2addr v0, v15

    .line 978
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 979
    .line 980
    .line 981
    move-result v17

    .line 982
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 983
    .line 984
    add-int/2addr v0, v14

    .line 985
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 986
    .line 987
    .line 988
    move-result v18

    .line 989
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 990
    .line 991
    const/16 v1, 0xd

    .line 992
    .line 993
    add-int/2addr v0, v1

    .line 994
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 995
    .line 996
    .line 997
    move-result v19

    .line 998
    move-object/from16 v0, p0

    .line 999
    .line 1000
    move v1, v7

    .line 1001
    move v2, v8

    .line 1002
    move v3, v13

    .line 1003
    move/from16 v4, v17

    .line 1004
    .line 1005
    move/from16 v5, v18

    .line 1006
    .line 1007
    move/from16 v6, v19

    .line 1008
    .line 1009
    invoke-direct/range {v0 .. v6}, Lcom/alibaba/fastjson/parser/g;->U0(CCCCCC)Z

    .line 1010
    .line 1011
    .line 1012
    move-result v0

    .line 1013
    if-nez v0, :cond_27

    .line 1014
    .line 1015
    return v12

    .line 1016
    :cond_27
    const/16 v0, 0x11

    .line 1017
    .line 1018
    if-ne v10, v0, :cond_2c

    .line 1019
    .line 1020
    iget v0, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 1021
    .line 1022
    add-int/2addr v0, v11

    .line 1023
    invoke-virtual {v9, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 1024
    .line 1025
    .line 1026
    move-result v0

    .line 1027
    iget v1, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 1028
    .line 1029
    add-int/lit8 v1, v1, 0xf

    .line 1030
    .line 1031
    invoke-virtual {v9, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 1032
    .line 1033
    .line 1034
    move-result v1

    .line 1035
    iget v2, v9, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 1036
    .line 1037
    add-int/lit8 v2, v2, 0x10

    .line 1038
    .line 1039
    invoke-virtual {v9, v2}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 1040
    .line 1041
    .line 1042
    move-result v2

    .line 1043
    const/16 v3, 0x30

    .line 1044
    .line 1045
    if-lt v0, v3, :cond_2b

    .line 1046
    .line 1047
    const/16 v4, 0x39

    .line 1048
    .line 1049
    if-le v0, v4, :cond_28

    .line 1050
    .line 1051
    goto :goto_b

    .line 1052
    :cond_28
    if-lt v1, v3, :cond_2b

    .line 1053
    .line 1054
    if-le v1, v4, :cond_29

    .line 1055
    .line 1056
    goto :goto_b

    .line 1057
    :cond_29
    if-lt v2, v3, :cond_2b

    .line 1058
    .line 1059
    if-le v2, v4, :cond_2a

    .line 1060
    .line 1061
    goto :goto_b

    .line 1062
    :cond_2a
    sget-object v3, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 1063
    .line 1064
    aget v0, v3, v0

    .line 1065
    .line 1066
    mul-int/lit8 v0, v0, 0x64

    .line 1067
    .line 1068
    aget v1, v3, v1

    .line 1069
    .line 1070
    mul-int/lit8 v1, v1, 0xa

    .line 1071
    .line 1072
    add-int/2addr v0, v1

    .line 1073
    aget v1, v3, v2

    .line 1074
    .line 1075
    add-int/2addr v0, v1

    .line 1076
    move v6, v0

    .line 1077
    goto :goto_c

    .line 1078
    :cond_2b
    :goto_b
    return v12

    .line 1079
    :cond_2c
    const/4 v6, 0x0

    .line 1080
    :goto_c
    sget-object v0, Lcom/alibaba/fastjson/parser/e;->v:[I

    .line 1081
    .line 1082
    aget v1, v0, v7

    .line 1083
    .line 1084
    mul-int/lit8 v1, v1, 0xa

    .line 1085
    .line 1086
    aget v2, v0, v8

    .line 1087
    .line 1088
    add-int/2addr v1, v2

    .line 1089
    aget v2, v0, v13

    .line 1090
    .line 1091
    mul-int/lit8 v2, v2, 0xa

    .line 1092
    .line 1093
    aget v3, v0, v17

    .line 1094
    .line 1095
    add-int/2addr v2, v3

    .line 1096
    aget v3, v0, v18

    .line 1097
    .line 1098
    mul-int/lit8 v3, v3, 0xa

    .line 1099
    .line 1100
    aget v0, v0, v19

    .line 1101
    .line 1102
    add-int/2addr v0, v3

    .line 1103
    move v12, v6

    .line 1104
    move v6, v1

    .line 1105
    goto :goto_d

    .line 1106
    :cond_2d
    const/4 v0, 0x0

    .line 1107
    const/4 v2, 0x0

    .line 1108
    const/4 v6, 0x0

    .line 1109
    :goto_d
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 1110
    .line 1111
    invoke-virtual {v1, v15, v6}, Ljava/util/Calendar;->set(II)V

    .line 1112
    .line 1113
    .line 1114
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 1115
    .line 1116
    invoke-virtual {v1, v14, v2}, Ljava/util/Calendar;->set(II)V

    .line 1117
    .line 1118
    .line 1119
    iget-object v1, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 1120
    .line 1121
    const/16 v2, 0xd

    .line 1122
    .line 1123
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    .line 1124
    .line 1125
    .line 1126
    iget-object v0, v9, Lcom/alibaba/fastjson/parser/e;->l:Ljava/util/Calendar;

    .line 1127
    .line 1128
    invoke-virtual {v0, v11, v12}, Ljava/util/Calendar;->set(II)V

    .line 1129
    .line 1130
    .line 1131
    const/4 v0, 0x5

    .line 1132
    iput v0, v9, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 1133
    .line 1134
    return v16
.end method

.method public final a(IIILcom/alibaba/fastjson/parser/l;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p4, v0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/l;->a(Ljava/lang/String;III)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public final g0()Ljava/lang/String;
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 4
    .line 5
    add-int/2addr v0, v1

    .line 6
    add-int/lit8 v0, v0, -0x1

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 13
    .line 14
    const/16 v2, 0x4c

    .line 15
    .line 16
    if-eq v0, v2, :cond_0

    .line 17
    .line 18
    const/16 v2, 0x53

    .line 19
    .line 20
    if-eq v0, v2, :cond_0

    .line 21
    .line 22
    const/16 v2, 0x42

    .line 23
    .line 24
    if-eq v0, v2, :cond_0

    .line 25
    .line 26
    const/16 v2, 0x46

    .line 27
    .line 28
    if-eq v0, v2, :cond_0

    .line 29
    .line 30
    const/16 v2, 0x44

    .line 31
    .line 32
    if-ne v0, v2, :cond_1

    .line 33
    .line 34
    :cond_0
    add-int/lit8 v1, v1, -0x1

    .line 35
    .line 36
    :cond_1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 37
    .line 38
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 39
    .line 40
    add-int/2addr v1, v2

    .line 41
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method protected final i(I[CII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    add-int/2addr p4, p1

    .line 4
    invoke-virtual {v0, p1, p4, p2, p3}, Ljava/lang/String;->getChars(II[CI)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public final k0(CI)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0, p1, p2}, Ljava/lang/String;->indexOf(II)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method

.method public l0()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eq v0, v1, :cond_1

    .line 11
    .line 12
    iget-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 13
    .line 14
    const/16 v1, 0x1a

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 19
    .line 20
    add-int/2addr v0, v2

    .line 21
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-ne v0, v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v2, 0x0

    .line 31
    :cond_1
    :goto_0
    return v2
.end method

.method public final n([C)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 4
    .line 5
    invoke-static {v0, v1, p1}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public final next()C
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iput-char v0, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 12
    .line 13
    return v0
.end method

.method public o()[B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->j:I

    .line 4
    .line 5
    add-int/lit8 v1, v1, 0x1

    .line 6
    .line 7
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->i:I

    .line 8
    .line 9
    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/c;->b(Ljava/lang/String;II)[B

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public final u(I)C
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lt p1, v0, :cond_0

    .line 8
    .line 9
    const/16 p1, 0x1a

    .line 10
    .line 11
    return p1

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Ljava/lang/String;->charAt(I)C

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    return p1
.end method

.method protected final x(II[C)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 2
    .line 3
    add-int/2addr p2, p1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, p1, p2, p3, v1}, Ljava/lang/String;->getChars(II[CI)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public y0([C)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 3
    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/g;->w:Ljava/lang/String;

    .line 5
    .line 6
    iget v2, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 7
    .line 8
    invoke-static {v1, v2, p1}, Lcom/alibaba/fastjson/parser/g;->S0(Ljava/lang/String;I[C)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    .line 14
    const/4 p1, -0x2

    .line 15
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 16
    .line 17
    return v0

    .line 18
    :cond_0
    iget v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 19
    .line 20
    array-length p1, p1

    .line 21
    add-int/2addr v1, p1

    .line 22
    add-int/lit8 p1, v1, 0x1

    .line 23
    .line 24
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x74

    .line 29
    .line 30
    const/16 v3, 0x65

    .line 31
    .line 32
    const/4 v4, -0x1

    .line 33
    const/4 v5, 0x1

    .line 34
    if-ne v1, v2, :cond_4

    .line 35
    .line 36
    add-int/lit8 v1, p1, 0x1

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    const/16 v2, 0x72

    .line 43
    .line 44
    if-eq p1, v2, :cond_1

    .line 45
    .line 46
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 47
    .line 48
    return v0

    .line 49
    :cond_1
    add-int/lit8 p1, v1, 0x1

    .line 50
    .line 51
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    const/16 v2, 0x75

    .line 56
    .line 57
    if-eq v1, v2, :cond_2

    .line 58
    .line 59
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 60
    .line 61
    return v0

    .line 62
    :cond_2
    add-int/lit8 v1, p1, 0x1

    .line 63
    .line 64
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 65
    .line 66
    .line 67
    move-result p1

    .line 68
    if-eq p1, v3, :cond_3

    .line 69
    .line 70
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 71
    .line 72
    return v0

    .line 73
    :cond_3
    iput v1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 74
    .line 75
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const/4 v1, 0x1

    .line 80
    goto :goto_0

    .line 81
    :cond_4
    const/16 v2, 0x66

    .line 82
    .line 83
    if-ne v1, v2, :cond_f

    .line 84
    .line 85
    add-int/lit8 v1, p1, 0x1

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const/16 v2, 0x61

    .line 92
    .line 93
    if-eq p1, v2, :cond_5

    .line 94
    .line 95
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 96
    .line 97
    return v0

    .line 98
    :cond_5
    add-int/lit8 p1, v1, 0x1

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    const/16 v2, 0x6c

    .line 105
    .line 106
    if-eq v1, v2, :cond_6

    .line 107
    .line 108
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 109
    .line 110
    return v0

    .line 111
    :cond_6
    add-int/lit8 v1, p1, 0x1

    .line 112
    .line 113
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    const/16 v2, 0x73

    .line 118
    .line 119
    if-eq p1, v2, :cond_7

    .line 120
    .line 121
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 122
    .line 123
    return v0

    .line 124
    :cond_7
    add-int/lit8 p1, v1, 0x1

    .line 125
    .line 126
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 127
    .line 128
    .line 129
    move-result v1

    .line 130
    if-eq v1, v3, :cond_8

    .line 131
    .line 132
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 133
    .line 134
    return v0

    .line 135
    :cond_8
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 136
    .line 137
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 138
    .line 139
    .line 140
    move-result p1

    .line 141
    const/4 v1, 0x0

    .line 142
    :goto_0
    const/16 v2, 0x10

    .line 143
    .line 144
    const/16 v3, 0x2c

    .line 145
    .line 146
    if-ne p1, v3, :cond_9

    .line 147
    .line 148
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 149
    .line 150
    add-int/2addr p1, v5

    .line 151
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 158
    .line 159
    const/4 p1, 0x3

    .line 160
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 161
    .line 162
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_9
    const/16 v6, 0x7d

    .line 166
    .line 167
    if-ne p1, v6, :cond_e

    .line 168
    .line 169
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 170
    .line 171
    add-int/2addr p1, v5

    .line 172
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 173
    .line 174
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 175
    .line 176
    .line 177
    move-result p1

    .line 178
    if-ne p1, v3, :cond_a

    .line 179
    .line 180
    iput v2, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 181
    .line 182
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 183
    .line 184
    add-int/2addr p1, v5

    .line 185
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 186
    .line 187
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 192
    .line 193
    goto :goto_1

    .line 194
    :cond_a
    const/16 v2, 0x5d

    .line 195
    .line 196
    if-ne p1, v2, :cond_b

    .line 197
    .line 198
    const/16 p1, 0xf

    .line 199
    .line 200
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 201
    .line 202
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 203
    .line 204
    add-int/2addr p1, v5

    .line 205
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 206
    .line 207
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 208
    .line 209
    .line 210
    move-result p1

    .line 211
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_b
    if-ne p1, v6, :cond_c

    .line 215
    .line 216
    const/16 p1, 0xd

    .line 217
    .line 218
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 219
    .line 220
    iget p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 221
    .line 222
    add-int/2addr p1, v5

    .line 223
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->f:I

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/parser/g;->u(I)C

    .line 226
    .line 227
    .line 228
    move-result p1

    .line 229
    iput-char p1, p0, Lcom/alibaba/fastjson/parser/e;->e:C

    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_c
    const/16 v2, 0x1a

    .line 233
    .line 234
    if-ne p1, v2, :cond_d

    .line 235
    .line 236
    const/16 p1, 0x14

    .line 237
    .line 238
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->b:I

    .line 239
    .line 240
    :goto_1
    const/4 p1, 0x4

    .line 241
    iput p1, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 242
    .line 243
    :goto_2
    return v1

    .line 244
    :cond_d
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 245
    .line 246
    return v0

    .line 247
    :cond_e
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 248
    .line 249
    return v0

    .line 250
    :cond_f
    iput v4, p0, Lcom/alibaba/fastjson/parser/e;->m:I

    .line 251
    .line 252
    return v0
.end method
