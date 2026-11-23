.class final Lkotlin/time/UnboundLocalDateTime;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/time/UnboundLocalDateTime$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0003\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B?\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u000e\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0003J\u0008\u0010\u0017\u001a\u00020\u0018H\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\rR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0006\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0007\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\rR\u0011\u0010\u0008\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\rR\u0011\u0010\t\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\r\u00a8\u0006\u001a"
    }
    d2 = {
        "Lkotlin/time/UnboundLocalDateTime;",
        "",
        "year",
        "",
        "month",
        "day",
        "hour",
        "minute",
        "second",
        "nanosecond",
        "<init>",
        "(IIIIIII)V",
        "getYear",
        "()I",
        "getMonth",
        "getDay",
        "getHour",
        "getMinute",
        "getSecond",
        "getNanosecond",
        "toInstant",
        "Lkotlin/time/Instant;",
        "offsetSeconds",
        "toString",
        "",
        "Companion",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/time/ExperimentalTime;
.end annotation


# static fields
.field public static final Companion:Lkotlin/time/UnboundLocalDateTime$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final day:I

.field private final hour:I

.field private final minute:I

.field private final month:I

.field private final nanosecond:I

.field private final second:I

.field private final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/time/UnboundLocalDateTime$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/time/UnboundLocalDateTime$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlin/time/UnboundLocalDateTime;->Companion:Lkotlin/time/UnboundLocalDateTime$Companion;

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 5
    .line 6
    iput p2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 7
    .line 8
    iput p3, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 9
    .line 10
    iput p4, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 11
    .line 12
    iput p5, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 13
    .line 14
    iput p6, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 15
    .line 16
    iput p7, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public final getDay()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 2
    .line 3
    return v0
.end method

.method public final getHour()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMinute()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 2
    .line 3
    return v0
.end method

.method public final getMonth()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 2
    .line 3
    return v0
.end method

.method public final getNanosecond()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSecond()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 2
    .line 3
    return v0
.end method

.method public final getYear()I
    .locals 1

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 2
    .line 3
    return v0
.end method

.method public final toInstant(I)Lkotlin/time/Instant;
    .locals 11
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 2
    .line 3
    int-to-long v1, v0

    .line 4
    const/16 v3, 0x16d

    .line 5
    .line 6
    int-to-long v3, v3

    .line 7
    mul-long v3, v3, v1

    .line 8
    .line 9
    const-wide/16 v5, 0x0

    .line 10
    .line 11
    cmp-long v7, v1, v5

    .line 12
    .line 13
    if-ltz v7, :cond_0

    .line 14
    .line 15
    const/4 v5, 0x3

    .line 16
    int-to-long v5, v5

    .line 17
    add-long/2addr v5, v1

    .line 18
    const/4 v7, 0x4

    .line 19
    int-to-long v7, v7

    .line 20
    div-long/2addr v5, v7

    .line 21
    const/16 v7, 0x63

    .line 22
    .line 23
    int-to-long v7, v7

    .line 24
    add-long/2addr v7, v1

    .line 25
    const/16 v9, 0x64

    .line 26
    .line 27
    int-to-long v9, v9

    .line 28
    div-long/2addr v7, v9

    .line 29
    sub-long/2addr v5, v7

    .line 30
    const/16 v7, 0x18f

    .line 31
    .line 32
    int-to-long v7, v7

    .line 33
    add-long/2addr v1, v7

    .line 34
    const/16 v7, 0x190

    .line 35
    .line 36
    int-to-long v7, v7

    .line 37
    div-long/2addr v1, v7

    .line 38
    add-long/2addr v5, v1

    .line 39
    add-long/2addr v3, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v5, -0x4

    .line 42
    int-to-long v5, v5

    .line 43
    div-long v5, v1, v5

    .line 44
    .line 45
    const/16 v7, -0x64

    .line 46
    .line 47
    int-to-long v7, v7

    .line 48
    div-long v7, v1, v7

    .line 49
    .line 50
    sub-long/2addr v5, v7

    .line 51
    const/16 v7, -0x190

    .line 52
    .line 53
    int-to-long v7, v7

    .line 54
    div-long/2addr v1, v7

    .line 55
    add-long/2addr v5, v1

    .line 56
    sub-long/2addr v3, v5

    .line 57
    :goto_0
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 58
    .line 59
    mul-int/lit16 v2, v1, 0x16f

    .line 60
    .line 61
    add-int/lit16 v2, v2, -0x16a

    .line 62
    .line 63
    div-int/lit8 v2, v2, 0xc

    .line 64
    .line 65
    int-to-long v5, v2

    .line 66
    add-long/2addr v3, v5

    .line 67
    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 68
    .line 69
    add-int/lit8 v2, v2, -0x1

    .line 70
    .line 71
    int-to-long v5, v2

    .line 72
    add-long/2addr v3, v5

    .line 73
    const/4 v2, 0x2

    .line 74
    if-le v1, v2, :cond_1

    .line 75
    .line 76
    const-wide/16 v1, -0x1

    .line 77
    .line 78
    add-long/2addr v3, v1

    .line 79
    invoke-static {v0}, Lkotlin/time/InstantKt;->isLeapYear(I)Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    if-nez v0, :cond_1

    .line 84
    .line 85
    add-long/2addr v3, v1

    .line 86
    :cond_1
    const v0, 0xafaa8

    .line 87
    .line 88
    .line 89
    int-to-long v0, v0

    .line 90
    sub-long/2addr v3, v0

    .line 91
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 92
    .line 93
    mul-int/lit16 v0, v0, 0xe10

    .line 94
    .line 95
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 96
    .line 97
    mul-int/lit8 v1, v1, 0x3c

    .line 98
    .line 99
    add-int/2addr v0, v1

    .line 100
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 101
    .line 102
    add-int/2addr v0, v1

    .line 103
    const v1, 0x15180

    .line 104
    .line 105
    .line 106
    int-to-long v1, v1

    .line 107
    mul-long v3, v3, v1

    .line 108
    .line 109
    int-to-long v0, v0

    .line 110
    add-long/2addr v3, v0

    .line 111
    int-to-long v0, p1

    .line 112
    sub-long/2addr v3, v0

    .line 113
    sget-object p1, Lkotlin/time/Instant;->Companion:Lkotlin/time/Instant$Companion;

    .line 114
    .line 115
    invoke-virtual {p1}, Lkotlin/time/Instant$Companion;->getMIN$kotlin_stdlib()Lkotlin/time/Instant;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 120
    .line 121
    .line 122
    move-result-wide v0

    .line 123
    cmp-long v2, v3, v0

    .line 124
    .line 125
    if-ltz v2, :cond_2

    .line 126
    .line 127
    invoke-virtual {p1}, Lkotlin/time/Instant$Companion;->getMAX$kotlin_stdlib()Lkotlin/time/Instant;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0}, Lkotlin/time/Instant;->getEpochSeconds()J

    .line 132
    .line 133
    .line 134
    move-result-wide v0

    .line 135
    cmp-long v2, v3, v0

    .line 136
    .line 137
    if-gtz v2, :cond_2

    .line 138
    .line 139
    iget v0, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 140
    .line 141
    invoke-virtual {p1, v3, v4, v0}, Lkotlin/time/Instant$Companion;->fromEpochSeconds(JI)Lkotlin/time/Instant;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    return-object p1

    .line 146
    :cond_2
    new-instance p1, Lkotlin/time/InstantFormatException;

    .line 147
    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    .line 149
    .line 150
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 151
    .line 152
    .line 153
    const-string v1, "The parsed date is outside the range representable by Instant (Unix epoch second "

    .line 154
    .line 155
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    const/16 v1, 0x29

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    invoke-direct {p1, v0}, Lkotlin/time/InstantFormatException;-><init>(Ljava/lang/String;)V

    .line 171
    .line 172
    .line 173
    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "UnboundLocalDateTime("

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->year:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const/16 v1, 0x2d

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->month:I

    .line 22
    .line 23
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->day:I

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    const/16 v1, 0x20

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->hour:I

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const/16 v1, 0x3a

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget v2, p0, Lkotlin/time/UnboundLocalDateTime;->minute:I

    .line 50
    .line 51
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->second:I

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    const/16 v1, 0x2e

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    iget v1, p0, Lkotlin/time/UnboundLocalDateTime;->nanosecond:I

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const/16 v1, 0x29

    .line 73
    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    return-object v0
.end method
