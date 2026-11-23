.class public Lcom/alibaba/fastjson/parser/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/parser/l$a;
    }
.end annotation


# static fields
.field public static final f:I = 0x200

.field public static final g:I = 0x8

.field public static final h:I = 0x1000


# instance fields
.field private final a:[Lcom/alibaba/fastjson/parser/l$a;

.field private final b:[Ljava/lang/String;

.field private final c:[[C

.field private final d:I

.field private e:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x200

    .line 1
    invoke-direct {p0, v0}, Lcom/alibaba/fastjson/parser/l;-><init>(I)V

    const/4 v0, 0x4

    const v1, 0x1215ef

    const-string v2, "$ref"

    const/4 v3, 0x0

    .line 2
    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/alibaba/fastjson/parser/l;->a(Ljava/lang/String;III)Ljava/lang/String;

    .line 3
    sget-object v0, Lcom/alibaba/fastjson/a;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p0, v0, v3, v1, v2}, Lcom/alibaba/fastjson/parser/l;->a(Ljava/lang/String;III)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    add-int/lit8 v0, p1, -0x1

    .line 6
    iput v0, p0, Lcom/alibaba/fastjson/parser/l;->d:I

    .line 7
    new-array v0, p1, [Lcom/alibaba/fastjson/parser/l$a;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/l;->a:[Lcom/alibaba/fastjson/parser/l$a;

    .line 8
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/parser/l;->b:[Ljava/lang/String;

    .line 9
    new-array p1, p1, [[C

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/l;->c:[[C

    return-void
.end method

.method public static final d([CII)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v0, p2, :cond_0

    .line 4
    .line 5
    mul-int/lit8 v1, v1, 0x1f

    .line 6
    .line 7
    add-int/lit8 v2, p1, 0x1

    .line 8
    .line 9
    aget-char p1, p0, p1

    .line 10
    .line 11
    add-int/2addr v1, p1

    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    move p1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    return v1
.end method


# virtual methods
.method public a(Ljava/lang/String;III)Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/l;->d:I

    .line 2
    .line 3
    and-int/2addr v0, p4

    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/l;->b:[Ljava/lang/String;

    .line 5
    .line 6
    aget-object v1, v1, v0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ne v4, p3, :cond_2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/l;->c:[[C

    .line 19
    .line 20
    aget-object v4, v4, v0

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, p3, :cond_1

    .line 24
    .line 25
    add-int v6, p2, v5

    .line 26
    .line 27
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    aget-char v7, v4, v5

    .line 32
    .line 33
    if-eq v6, v7, :cond_0

    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    goto :goto_1

    .line 37
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v4, 0x1

    .line 41
    :goto_1
    if-eqz v4, :cond_4

    .line 42
    .line 43
    return-object v1

    .line 44
    :cond_2
    const/4 v4, 0x0

    .line 45
    goto :goto_2

    .line 46
    :cond_3
    const/4 v4, 0x1

    .line 47
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/l;->a:[Lcom/alibaba/fastjson/parser/l$a;

    .line 48
    .line 49
    aget-object v1, v1, v0

    .line 50
    .line 51
    const/4 v5, 0x0

    .line 52
    :goto_3
    if-eqz v1, :cond_9

    .line 53
    .line 54
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/l$a;->c:[C

    .line 55
    .line 56
    array-length v7, v6

    .line 57
    if-ne p3, v7, :cond_8

    .line 58
    .line 59
    iget v7, v1, Lcom/alibaba/fastjson/parser/l$a;->b:I

    .line 60
    .line 61
    if-ne p4, v7, :cond_8

    .line 62
    .line 63
    const/4 v7, 0x0

    .line 64
    :goto_4
    if-ge v7, p3, :cond_6

    .line 65
    .line 66
    add-int v8, p2, v7

    .line 67
    .line 68
    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    aget-char v9, v6, v7

    .line 73
    .line 74
    if-eq v8, v9, :cond_5

    .line 75
    .line 76
    const/4 v6, 0x0

    .line 77
    goto :goto_5

    .line 78
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    const/4 v6, 0x1

    .line 82
    :goto_5
    if-nez v6, :cond_7

    .line 83
    .line 84
    add-int/lit8 v5, v5, 0x1

    .line 85
    .line 86
    goto :goto_6

    .line 87
    :cond_7
    iget-object p1, v1, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 88
    .line 89
    return-object p1

    .line 90
    :cond_8
    :goto_6
    iget-object v1, v1, Lcom/alibaba/fastjson/parser/l$a;->e:Lcom/alibaba/fastjson/parser/l$a;

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_9
    const/16 v1, 0x8

    .line 94
    .line 95
    if-lt v5, v1, :cond_a

    .line 96
    .line 97
    add-int/2addr p3, p2

    .line 98
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    return-object p1

    .line 103
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    .line 104
    .line 105
    const/16 v2, 0x1000

    .line 106
    .line 107
    if-lt v1, v2, :cond_b

    .line 108
    .line 109
    add-int/2addr p3, p2

    .line 110
    invoke-virtual {p1, p2, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    return-object p1

    .line 115
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/parser/l$a;

    .line 116
    .line 117
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/l;->a:[Lcom/alibaba/fastjson/parser/l$a;

    .line 118
    .line 119
    aget-object v10, v2, v0

    .line 120
    .line 121
    move-object v5, v1

    .line 122
    move-object v6, p1

    .line 123
    move v7, p2

    .line 124
    move v8, p3

    .line 125
    move v9, p4

    .line 126
    invoke-direct/range {v5 .. v10}, Lcom/alibaba/fastjson/parser/l$a;-><init>(Ljava/lang/String;IIILcom/alibaba/fastjson/parser/l$a;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/l;->a:[Lcom/alibaba/fastjson/parser/l$a;

    .line 130
    .line 131
    aput-object v1, p1, v0

    .line 132
    .line 133
    if-eqz v4, :cond_c

    .line 134
    .line 135
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/l;->b:[Ljava/lang/String;

    .line 136
    .line 137
    iget-object p2, v1, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 138
    .line 139
    aput-object p2, p1, v0

    .line 140
    .line 141
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/l;->c:[[C

    .line 142
    .line 143
    iget-object p2, v1, Lcom/alibaba/fastjson/parser/l$a;->c:[C

    .line 144
    .line 145
    aput-object p2, p1, v0

    .line 146
    .line 147
    :cond_c
    iget p1, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    .line 148
    .line 149
    add-int/2addr p1, v3

    .line 150
    iput p1, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    .line 151
    .line 152
    iget-object p1, v1, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 153
    .line 154
    return-object p1
.end method

.method public b([CII)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1, p2, p3}, Lcom/alibaba/fastjson/parser/l;->d([CII)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/alibaba/fastjson/parser/l;->c([CIII)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public c([CIII)Ljava/lang/String;
    .locals 11

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/l;->d:I

    .line 2
    .line 3
    and-int/2addr v0, p4

    .line 4
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/l;->b:[Ljava/lang/String;

    .line 5
    .line 6
    aget-object v1, v1, v0

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v1, :cond_3

    .line 11
    .line 12
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 13
    .line 14
    .line 15
    move-result v4

    .line 16
    if-ne v4, p3, :cond_2

    .line 17
    .line 18
    iget-object v4, p0, Lcom/alibaba/fastjson/parser/l;->c:[[C

    .line 19
    .line 20
    aget-object v4, v4, v0

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    :goto_0
    if-ge v5, p3, :cond_1

    .line 24
    .line 25
    add-int v6, p2, v5

    .line 26
    .line 27
    aget-char v6, p1, v6

    .line 28
    .line 29
    aget-char v7, v4, v5

    .line 30
    .line 31
    if-eq v6, v7, :cond_0

    .line 32
    .line 33
    const/4 v4, 0x0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    add-int/lit8 v5, v5, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v4, 0x1

    .line 39
    :goto_1
    if-eqz v4, :cond_4

    .line 40
    .line 41
    return-object v1

    .line 42
    :cond_2
    const/4 v4, 0x0

    .line 43
    goto :goto_2

    .line 44
    :cond_3
    const/4 v4, 0x1

    .line 45
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/alibaba/fastjson/parser/l;->a:[Lcom/alibaba/fastjson/parser/l$a;

    .line 46
    .line 47
    aget-object v1, v1, v0

    .line 48
    .line 49
    const/4 v5, 0x0

    .line 50
    :goto_3
    if-eqz v1, :cond_9

    .line 51
    .line 52
    iget-object v6, v1, Lcom/alibaba/fastjson/parser/l$a;->c:[C

    .line 53
    .line 54
    array-length v7, v6

    .line 55
    if-ne p3, v7, :cond_8

    .line 56
    .line 57
    iget v7, v1, Lcom/alibaba/fastjson/parser/l$a;->b:I

    .line 58
    .line 59
    if-ne p4, v7, :cond_8

    .line 60
    .line 61
    const/4 v7, 0x0

    .line 62
    :goto_4
    if-ge v7, p3, :cond_6

    .line 63
    .line 64
    add-int v8, p2, v7

    .line 65
    .line 66
    aget-char v8, p1, v8

    .line 67
    .line 68
    aget-char v9, v6, v7

    .line 69
    .line 70
    if-eq v8, v9, :cond_5

    .line 71
    .line 72
    const/4 v6, 0x0

    .line 73
    goto :goto_5

    .line 74
    :cond_5
    add-int/lit8 v7, v7, 0x1

    .line 75
    .line 76
    goto :goto_4

    .line 77
    :cond_6
    const/4 v6, 0x1

    .line 78
    :goto_5
    if-nez v6, :cond_7

    .line 79
    .line 80
    add-int/lit8 v5, v5, 0x1

    .line 81
    .line 82
    goto :goto_6

    .line 83
    :cond_7
    iget-object p1, v1, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 84
    .line 85
    return-object p1

    .line 86
    :cond_8
    :goto_6
    iget-object v1, v1, Lcom/alibaba/fastjson/parser/l$a;->e:Lcom/alibaba/fastjson/parser/l$a;

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_9
    const/16 v1, 0x8

    .line 90
    .line 91
    if-lt v5, v1, :cond_a

    .line 92
    .line 93
    new-instance p4, Ljava/lang/String;

    .line 94
    .line 95
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 96
    .line 97
    .line 98
    return-object p4

    .line 99
    :cond_a
    iget v1, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    .line 100
    .line 101
    const/16 v2, 0x1000

    .line 102
    .line 103
    if-lt v1, v2, :cond_b

    .line 104
    .line 105
    new-instance p4, Ljava/lang/String;

    .line 106
    .line 107
    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 108
    .line 109
    .line 110
    return-object p4

    .line 111
    :cond_b
    new-instance v1, Lcom/alibaba/fastjson/parser/l$a;

    .line 112
    .line 113
    iget-object v2, p0, Lcom/alibaba/fastjson/parser/l;->a:[Lcom/alibaba/fastjson/parser/l$a;

    .line 114
    .line 115
    aget-object v10, v2, v0

    .line 116
    .line 117
    move-object v5, v1

    .line 118
    move-object v6, p1

    .line 119
    move v7, p2

    .line 120
    move v8, p3

    .line 121
    move v9, p4

    .line 122
    invoke-direct/range {v5 .. v10}, Lcom/alibaba/fastjson/parser/l$a;-><init>([CIIILcom/alibaba/fastjson/parser/l$a;)V

    .line 123
    .line 124
    .line 125
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/l;->a:[Lcom/alibaba/fastjson/parser/l$a;

    .line 126
    .line 127
    aput-object v1, p1, v0

    .line 128
    .line 129
    if-eqz v4, :cond_c

    .line 130
    .line 131
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/l;->b:[Ljava/lang/String;

    .line 132
    .line 133
    iget-object p2, v1, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 134
    .line 135
    aput-object p2, p1, v0

    .line 136
    .line 137
    iget-object p1, p0, Lcom/alibaba/fastjson/parser/l;->c:[[C

    .line 138
    .line 139
    iget-object p2, v1, Lcom/alibaba/fastjson/parser/l$a;->c:[C

    .line 140
    .line 141
    aput-object p2, p1, v0

    .line 142
    .line 143
    :cond_c
    iget p1, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    .line 144
    .line 145
    add-int/2addr p1, v3

    .line 146
    iput p1, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    .line 147
    .line 148
    iget-object p1, v1, Lcom/alibaba/fastjson/parser/l$a;->a:Ljava/lang/String;

    .line 149
    .line 150
    return-object p1
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/alibaba/fastjson/parser/l;->e:I

    .line 2
    .line 3
    return v0
.end method
