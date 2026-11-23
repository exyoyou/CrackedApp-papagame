.class public final Lkotlin/time/DurationKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n1021#1,6:1070\n1024#1,3:1076\n1021#1,6:1079\n1021#1,6:1085\n1024#1,3:1091\n1#2:1069\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1070,6\n970#1:1076,3\n973#1:1079,6\n976#1:1085,6\n1021#1:1091,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\t\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000c\n\u0002\u0008\u0015\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0005\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\u0007\u001a\u0019\u0010\u0000\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u0004H\u0007\u00a2\u0006\u0002\u0010\t\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n\u00a2\u0006\u0004\u0008\u000c\u0010\r\u001a\u001c\u0010\n\u001a\u00020\u0001*\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u0001H\u0087\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u001a\u001d\u0010\u0010\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0002\u00a2\u0006\u0002\u0010\u0015\u001a\u0010\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u0012H\u0002\u001a)\u0010\u0017\u001a\u00020\u0012*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\u0008\u001a)\u0010\u001c\u001a\u00020\u0002*\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u00022\u0012\u0010\u0019\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00140\u001aH\u0082\u0008\u001a\u0010\u0010!\u001a\u00020\u00062\u0006\u0010\"\u001a\u00020\u0006H\u0002\u001a\u0010\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002\u001a\u0015\u0010%\u001a\u00020\u00012\u0006\u0010&\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\'\u001a\u0015\u0010(\u001a\u00020\u00012\u0006\u0010)\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\'\u001a\u001d\u0010*\u001a\u00020\u00012\u0006\u0010+\u001a\u00020\u00062\u0006\u0010,\u001a\u00020\u0002H\u0002\u00a2\u0006\u0002\u0010-\u001a\u0015\u0010.\u001a\u00020\u00012\u0006\u0010\"\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\'\u001a\u0015\u0010/\u001a\u00020\u00012\u0006\u0010$\u001a\u00020\u0006H\u0002\u00a2\u0006\u0002\u0010\'\"\u000e\u0010\u001d\u001a\u00020\u0002X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001e\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010\u001f\u001a\u00020\u0006X\u0080T\u00a2\u0006\u0002\n\u0000\"\u000e\u0010 \u001a\u00020\u0006X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u00060"
    }
    d2 = {
        "toDuration",
        "Lkotlin/time/Duration;",
        "",
        "unit",
        "Lkotlin/time/DurationUnit;",
        "(ILkotlin/time/DurationUnit;)J",
        "",
        "(JLkotlin/time/DurationUnit;)J",
        "",
        "(DLkotlin/time/DurationUnit;)J",
        "times",
        "duration",
        "times-mvk6XK0",
        "(IJ)J",
        "times-kIfJnKk",
        "(DJ)J",
        "parseDuration",
        "value",
        "",
        "strictIso",
        "",
        "(Ljava/lang/String;Z)J",
        "parseOverLongIsoComponent",
        "substringWhile",
        "startIndex",
        "predicate",
        "Lkotlin/Function1;",
        "",
        "skipWhile",
        "NANOS_IN_MILLIS",
        "MAX_NANOS",
        "MAX_MILLIS",
        "MAX_NANOS_IN_MILLIS",
        "nanosToMillis",
        "nanos",
        "millisToNanos",
        "millis",
        "durationOfNanos",
        "normalNanos",
        "(J)J",
        "durationOfMillis",
        "normalMillis",
        "durationOf",
        "normalValue",
        "unitDiscriminator",
        "(JI)J",
        "durationOfNanosNormalized",
        "durationOfMillisNormalized",
        "kotlin-stdlib"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDuration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,1068:1\n1021#1,6:1070\n1024#1,3:1076\n1021#1,6:1079\n1021#1,6:1085\n1024#1,3:1091\n1#2:1069\n*S KotlinDebug\n*F\n+ 1 Duration.kt\nkotlin/time/DurationKt\n*L\n936#1:1070,6\n970#1:1076,3\n973#1:1079,6\n976#1:1085,6\n1021#1:1091,3\n*E\n"
    }
.end annotation


# static fields
.field public static final MAX_MILLIS:J = 0x3fffffffffffffffL

.field public static final MAX_NANOS:J = 0x3ffffffffffa14bfL

.field private static final MAX_NANOS_IN_MILLIS:J = 0x431bde82d7aL

.field public static final NANOS_IN_MILLIS:I = 0xf4240


# direct methods
.method public static final synthetic access$durationOf(JI)J
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/time/DurationKt;->durationOf(JI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfMillisNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$durationOfNanosNormalized(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanosNormalized(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$millisToNanos(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$nanosToMillis(J)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final synthetic access$parseDuration(Ljava/lang/String;Z)J
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->parseDuration(Ljava/lang/String;Z)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final durationOf(JI)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    int-to-long v0, p2

    .line 4
    add-long/2addr p0, v0

    .line 5
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 6
    .line 7
    .line 8
    move-result-wide p0

    .line 9
    return-wide p0
.end method

.method private static final durationOfMillis(J)J
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    const-wide/16 v0, 0x1

    .line 4
    .line 5
    add-long/2addr p0, v0

    .line 6
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 7
    .line 8
    .line 9
    move-result-wide p0

    .line 10
    return-wide p0
.end method

.method private static final durationOfMillisNormalized(J)J
    .locals 6

    .line 1
    const-wide v0, -0x431bde82d7aL

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmp-long v3, v0, p0

    .line 8
    .line 9
    if-gtz v3, :cond_0

    .line 10
    .line 11
    const-wide v0, 0x431bde82d7bL

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v3, p0, v0

    .line 17
    .line 18
    if-gez v3, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :cond_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->millisToNanos(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    .line 28
    .line 29
    .line 30
    move-result-wide p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-wide v2, -0x3fffffffffffffffL    # -2.0000000000000004

    .line 33
    .line 34
    .line 35
    .line 36
    .line 37
    const-wide v4, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 38
    .line 39
    .line 40
    .line 41
    .line 42
    move-wide v0, p0

    .line 43
    invoke-static/range {v0 .. v5}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    .line 44
    .line 45
    .line 46
    move-result-wide p0

    .line 47
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 48
    .line 49
    .line 50
    move-result-wide p0

    .line 51
    :goto_0
    return-wide p0
.end method

.method private static final durationOfNanos(J)J
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    shl-long/2addr p0, v0

    .line 3
    invoke-static {p0, p1}, Lkotlin/time/Duration;->constructor-impl(J)J

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method private static final durationOfNanosNormalized(J)J
    .locals 4

    .line 1
    const-wide v0, -0x3ffffffffffa14bfL    # -2.0000000001722644

    .line 2
    .line 3
    .line 4
    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    cmp-long v3, v0, p0

    .line 8
    .line 9
    if-gtz v3, :cond_0

    .line 10
    .line 11
    const-wide v0, 0x3ffffffffffa14c0L    # 1.999999999913868

    .line 12
    .line 13
    .line 14
    .line 15
    .line 16
    cmp-long v3, p0, v0

    .line 17
    .line 18
    if-gez v3, :cond_0

    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    :cond_0
    if-eqz v2, :cond_1

    .line 22
    .line 23
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    .line 24
    .line 25
    .line 26
    move-result-wide p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->nanosToMillis(J)J

    .line 29
    .line 30
    .line 31
    move-result-wide p0

    .line 32
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    .line 33
    .line 34
    .line 35
    move-result-wide p0

    .line 36
    :goto_0
    return-wide p0
.end method

.method private static final millisToNanos(J)J
    .locals 2

    const v0, 0xf4240

    int-to-long v0, v0

    mul-long p0, p0, v0

    return-wide p0
.end method

.method private static final nanosToMillis(J)J
    .locals 2

    .line 1
    const v0, 0xf4240

    .line 2
    .line 3
    .line 4
    int-to-long v0, v0

    .line 5
    div-long/2addr p0, v0

    .line 6
    return-wide p0
.end method

.method private static final parseDuration(Ljava/lang/String;Z)J
    .locals 27

    .line 1
    move-object/from16 v6, p0

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v7

    .line 7
    if-eqz v7, :cond_29

    .line 8
    .line 9
    sget-object v8, Lkotlin/time/Duration;->Companion:Lkotlin/time/Duration$Companion;

    .line 10
    .line 11
    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getZERO-UwyO8pc()J

    .line 12
    .line 13
    .line 14
    move-result-wide v9

    .line 15
    const-string v2, "Infinity"

    .line 16
    .line 17
    const/4 v11, 0x0

    .line 18
    invoke-virtual {v6, v11}, Ljava/lang/String;->charAt(I)C

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/16 v1, 0x2b

    .line 23
    .line 24
    const/16 v3, 0x2d

    .line 25
    .line 26
    const/4 v12, 0x1

    .line 27
    if-eq v0, v1, :cond_0

    .line 28
    .line 29
    if-eq v0, v3, :cond_0

    .line 30
    .line 31
    const/4 v13, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 v13, 0x1

    .line 34
    :goto_0
    if-lez v13, :cond_1

    .line 35
    .line 36
    const/4 v14, 0x1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    const/4 v14, 0x0

    .line 39
    :goto_1
    const/4 v0, 0x2

    .line 40
    const/4 v15, 0x0

    .line 41
    if-eqz v14, :cond_2

    .line 42
    .line 43
    invoke-static {v6, v3, v11, v0, v15}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    const/16 v16, 0x1

    .line 50
    .line 51
    goto :goto_2

    .line 52
    :cond_2
    const/16 v16, 0x0

    .line 53
    .line 54
    :goto_2
    const-string v5, "No components"

    .line 55
    .line 56
    if-le v7, v13, :cond_28

    .line 57
    .line 58
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 59
    .line 60
    .line 61
    move-result v1

    .line 62
    const/16 v3, 0x50

    .line 63
    .line 64
    const-string v4, "Unexpected order of duration components"

    .line 65
    .line 66
    move-object/from16 v17, v5

    .line 67
    .line 68
    const/16 v5, 0x3a

    .line 69
    .line 70
    const/16 v0, 0x30

    .line 71
    .line 72
    const-string v11, "substring(...)"

    .line 73
    .line 74
    const-string v15, "null cannot be cast to non-null type java.lang.String"

    .line 75
    .line 76
    if-ne v1, v3, :cond_12

    .line 77
    .line 78
    add-int/2addr v13, v12

    .line 79
    if-eq v13, v7, :cond_11

    .line 80
    .line 81
    const/4 v1, 0x0

    .line 82
    const/4 v2, 0x0

    .line 83
    :goto_3
    if-ge v13, v7, :cond_25

    .line 84
    .line 85
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    const/16 v8, 0x54

    .line 90
    .line 91
    if-ne v3, v8, :cond_4

    .line 92
    .line 93
    if-nez v1, :cond_3

    .line 94
    .line 95
    add-int/lit8 v13, v13, 0x1

    .line 96
    .line 97
    if-eq v13, v7, :cond_3

    .line 98
    .line 99
    const/4 v1, 0x1

    .line 100
    goto :goto_3

    .line 101
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 102
    .line 103
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_4
    move v3, v13

    .line 108
    :goto_4
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 109
    .line 110
    .line 111
    move-result v8

    .line 112
    if-ge v3, v8, :cond_8

    .line 113
    .line 114
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .line 115
    .line 116
    .line 117
    move-result v8

    .line 118
    if-gt v0, v8, :cond_5

    .line 119
    .line 120
    if-ge v8, v5, :cond_5

    .line 121
    .line 122
    const/4 v14, 0x1

    .line 123
    goto :goto_5

    .line 124
    :cond_5
    const/4 v14, 0x0

    .line 125
    :goto_5
    if-nez v14, :cond_7

    .line 126
    .line 127
    const-string v14, "+-."

    .line 128
    .line 129
    const/4 v0, 0x2

    .line 130
    const/4 v5, 0x0

    .line 131
    const/4 v12, 0x0

    .line 132
    invoke-static {v14, v8, v5, v0, v12}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    move-result v8

    .line 136
    if-eqz v8, :cond_6

    .line 137
    .line 138
    goto :goto_6

    .line 139
    :cond_6
    const/4 v5, 0x0

    .line 140
    goto :goto_7

    .line 141
    :cond_7
    const/4 v0, 0x2

    .line 142
    const/4 v12, 0x0

    .line 143
    :goto_6
    const/4 v5, 0x1

    .line 144
    :goto_7
    if-eqz v5, :cond_9

    .line 145
    .line 146
    add-int/lit8 v3, v3, 0x1

    .line 147
    .line 148
    const/16 v0, 0x30

    .line 149
    .line 150
    const/16 v5, 0x3a

    .line 151
    .line 152
    const/4 v12, 0x1

    .line 153
    goto :goto_4

    .line 154
    :cond_8
    const/4 v0, 0x2

    .line 155
    const/4 v12, 0x0

    .line 156
    :cond_9
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v3

    .line 163
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 167
    .line 168
    .line 169
    move-result v5

    .line 170
    if-nez v5, :cond_a

    .line 171
    .line 172
    const/4 v5, 0x1

    .line 173
    goto :goto_8

    .line 174
    :cond_a
    const/4 v5, 0x0

    .line 175
    :goto_8
    if-nez v5, :cond_10

    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    add-int/2addr v13, v5

    .line 182
    if-ltz v13, :cond_b

    .line 183
    .line 184
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    .line 185
    .line 186
    .line 187
    move-result v5

    .line 188
    if-ge v13, v5, :cond_b

    .line 189
    .line 190
    const/4 v5, 0x1

    .line 191
    goto :goto_9

    .line 192
    :cond_b
    const/4 v5, 0x0

    .line 193
    :goto_9
    if-eqz v5, :cond_f

    .line 194
    .line 195
    invoke-interface {v6, v13}, Ljava/lang/CharSequence;->charAt(I)C

    .line 196
    .line 197
    .line 198
    move-result v5

    .line 199
    add-int/lit8 v13, v13, 0x1

    .line 200
    .line 201
    invoke-static {v5, v1}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->durationUnitByIsoChar(CZ)Lkotlin/time/DurationUnit;

    .line 202
    .line 203
    .line 204
    move-result-object v5

    .line 205
    if-eqz v2, :cond_d

    .line 206
    .line 207
    invoke-virtual {v2, v5}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    if-lez v2, :cond_c

    .line 212
    .line 213
    goto :goto_a

    .line 214
    :cond_c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    invoke-direct {v0, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw v0

    .line 220
    :cond_d
    :goto_a
    const/16 v21, 0x2e

    .line 221
    .line 222
    const/16 v22, 0x0

    .line 223
    .line 224
    const/16 v23, 0x0

    .line 225
    .line 226
    const/16 v24, 0x6

    .line 227
    .line 228
    const/16 v25, 0x0

    .line 229
    .line 230
    move-object/from16 v20, v3

    .line 231
    .line 232
    invoke-static/range {v20 .. v25}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 233
    .line 234
    .line 235
    move-result v2

    .line 236
    sget-object v8, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    .line 237
    .line 238
    if-ne v5, v8, :cond_e

    .line 239
    .line 240
    if-lez v2, :cond_e

    .line 241
    .line 242
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    const/4 v8, 0x0

    .line 246
    invoke-virtual {v3, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 251
    .line 252
    .line 253
    move/from16 p1, v1

    .line 254
    .line 255
    invoke-static {v14}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    .line 256
    .line 257
    .line 258
    move-result-wide v0

    .line 259
    invoke-static {v0, v1, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 260
    .line 261
    .line 262
    move-result-wide v0

    .line 263
    invoke-static {v9, v10, v0, v1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 264
    .line 265
    .line 266
    move-result-wide v0

    .line 267
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v2

    .line 274
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 278
    .line 279
    .line 280
    move-result-wide v2

    .line 281
    invoke-static {v2, v3, v5}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    .line 282
    .line 283
    .line 284
    move-result-wide v2

    .line 285
    invoke-static {v0, v1, v2, v3}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 286
    .line 287
    .line 288
    move-result-wide v9

    .line 289
    goto :goto_b

    .line 290
    :cond_e
    move/from16 p1, v1

    .line 291
    .line 292
    invoke-static {v3}, Lkotlin/time/DurationKt;->parseOverLongIsoComponent(Ljava/lang/String;)J

    .line 293
    .line 294
    .line 295
    move-result-wide v0

    .line 296
    invoke-static {v0, v1, v5}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 297
    .line 298
    .line 299
    move-result-wide v0

    .line 300
    invoke-static {v9, v10, v0, v1}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 301
    .line 302
    .line 303
    move-result-wide v9

    .line 304
    :goto_b
    move/from16 v1, p1

    .line 305
    .line 306
    move-object v2, v5

    .line 307
    const/16 v0, 0x30

    .line 308
    .line 309
    const/16 v5, 0x3a

    .line 310
    .line 311
    const/4 v12, 0x1

    .line 312
    goto/16 :goto_3

    .line 313
    .line 314
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 315
    .line 316
    new-instance v1, Ljava/lang/StringBuilder;

    .line 317
    .line 318
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .line 320
    .line 321
    const-string v2, "Missing unit for value "

    .line 322
    .line 323
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 330
    .line 331
    .line 332
    move-result-object v1

    .line 333
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    throw v0

    .line 337
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 338
    .line 339
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 340
    .line 341
    .line 342
    throw v0

    .line 343
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 344
    .line 345
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 346
    .line 347
    .line 348
    throw v0

    .line 349
    :cond_12
    const/4 v12, 0x0

    .line 350
    if-nez p1, :cond_27

    .line 351
    .line 352
    const/4 v3, 0x0

    .line 353
    sub-int v0, v7, v13

    .line 354
    .line 355
    const/16 v1, 0x8

    .line 356
    .line 357
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 358
    .line 359
    .line 360
    move-result v5

    .line 361
    const/16 v20, 0x1

    .line 362
    .line 363
    const/16 v1, 0x30

    .line 364
    .line 365
    move-object/from16 v0, p0

    .line 366
    .line 367
    const/16 v12, 0x30

    .line 368
    .line 369
    move v1, v13

    .line 370
    move-object/from16 v26, v4

    .line 371
    .line 372
    move v4, v5

    .line 373
    move-object/from16 v12, v17

    .line 374
    .line 375
    move/from16 v5, v20

    .line 376
    .line 377
    invoke-static/range {v0 .. v5}, Lkotlin/text/StringsKt;->regionMatches(Ljava/lang/String;ILjava/lang/String;IIZ)Z

    .line 378
    .line 379
    .line 380
    move-result v0

    .line 381
    if-eqz v0, :cond_13

    .line 382
    .line 383
    invoke-virtual {v8}, Lkotlin/time/Duration$Companion;->getINFINITE-UwyO8pc()J

    .line 384
    .line 385
    .line 386
    move-result-wide v9

    .line 387
    goto/16 :goto_19

    .line 388
    .line 389
    :cond_13
    xor-int/lit8 v0, v14, 0x1

    .line 390
    .line 391
    if-eqz v14, :cond_15

    .line 392
    .line 393
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 394
    .line 395
    .line 396
    move-result v1

    .line 397
    const/16 v2, 0x28

    .line 398
    .line 399
    if-ne v1, v2, :cond_15

    .line 400
    .line 401
    invoke-static/range {p0 .. p0}, Lkotlin/text/StringsKt;->last(Ljava/lang/CharSequence;)C

    .line 402
    .line 403
    .line 404
    move-result v1

    .line 405
    const/16 v2, 0x29

    .line 406
    .line 407
    if-ne v1, v2, :cond_15

    .line 408
    .line 409
    add-int/lit8 v13, v13, 0x1

    .line 410
    .line 411
    add-int/lit8 v7, v7, -0x1

    .line 412
    .line 413
    if-eq v13, v7, :cond_14

    .line 414
    .line 415
    const/4 v0, 0x1

    .line 416
    goto :goto_c

    .line 417
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 418
    .line 419
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    throw v0

    .line 423
    :cond_15
    :goto_c
    const/4 v1, 0x0

    .line 424
    const/4 v5, 0x0

    .line 425
    :goto_d
    if-ge v13, v7, :cond_25

    .line 426
    .line 427
    if-eqz v5, :cond_17

    .line 428
    .line 429
    if-eqz v0, :cond_17

    .line 430
    .line 431
    :goto_e
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 432
    .line 433
    .line 434
    move-result v2

    .line 435
    if-ge v13, v2, :cond_17

    .line 436
    .line 437
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 438
    .line 439
    .line 440
    move-result v2

    .line 441
    const/16 v3, 0x20

    .line 442
    .line 443
    if-ne v2, v3, :cond_16

    .line 444
    .line 445
    const/4 v5, 0x1

    .line 446
    goto :goto_f

    .line 447
    :cond_16
    const/4 v5, 0x0

    .line 448
    :goto_f
    if-eqz v5, :cond_17

    .line 449
    .line 450
    add-int/lit8 v13, v13, 0x1

    .line 451
    .line 452
    goto :goto_e

    .line 453
    :cond_17
    move v2, v13

    .line 454
    :goto_10
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 455
    .line 456
    .line 457
    move-result v3

    .line 458
    if-ge v2, v3, :cond_1b

    .line 459
    .line 460
    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    .line 461
    .line 462
    .line 463
    move-result v3

    .line 464
    const/16 v4, 0x30

    .line 465
    .line 466
    const/16 v5, 0x3a

    .line 467
    .line 468
    if-gt v4, v3, :cond_18

    .line 469
    .line 470
    if-ge v3, v5, :cond_18

    .line 471
    .line 472
    const/4 v8, 0x1

    .line 473
    goto :goto_11

    .line 474
    :cond_18
    const/4 v8, 0x0

    .line 475
    :goto_11
    if-nez v8, :cond_1a

    .line 476
    .line 477
    const/16 v8, 0x2e

    .line 478
    .line 479
    if-ne v3, v8, :cond_19

    .line 480
    .line 481
    goto :goto_12

    .line 482
    :cond_19
    const/4 v3, 0x0

    .line 483
    goto :goto_13

    .line 484
    :cond_1a
    :goto_12
    const/4 v3, 0x1

    .line 485
    :goto_13
    if-eqz v3, :cond_1c

    .line 486
    .line 487
    add-int/lit8 v2, v2, 0x1

    .line 488
    .line 489
    goto :goto_10

    .line 490
    :cond_1b
    const/16 v4, 0x30

    .line 491
    .line 492
    const/16 v5, 0x3a

    .line 493
    .line 494
    :cond_1c
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 495
    .line 496
    .line 497
    invoke-virtual {v6, v13, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 498
    .line 499
    .line 500
    move-result-object v2

    .line 501
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    .line 503
    .line 504
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    .line 505
    .line 506
    .line 507
    move-result v3

    .line 508
    if-nez v3, :cond_1d

    .line 509
    .line 510
    const/4 v3, 0x1

    .line 511
    goto :goto_14

    .line 512
    :cond_1d
    const/4 v3, 0x0

    .line 513
    :goto_14
    if-nez v3, :cond_24

    .line 514
    .line 515
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 516
    .line 517
    .line 518
    move-result v3

    .line 519
    add-int/2addr v13, v3

    .line 520
    move v3, v13

    .line 521
    :goto_15
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    .line 522
    .line 523
    .line 524
    move-result v8

    .line 525
    if-ge v3, v8, :cond_1f

    .line 526
    .line 527
    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    .line 528
    .line 529
    .line 530
    move-result v8

    .line 531
    const/16 v12, 0x61

    .line 532
    .line 533
    if-gt v12, v8, :cond_1e

    .line 534
    .line 535
    const/16 v12, 0x7b

    .line 536
    .line 537
    if-ge v8, v12, :cond_1e

    .line 538
    .line 539
    const/4 v8, 0x1

    .line 540
    goto :goto_16

    .line 541
    :cond_1e
    const/4 v8, 0x0

    .line 542
    :goto_16
    if-eqz v8, :cond_1f

    .line 543
    .line 544
    add-int/lit8 v3, v3, 0x1

    .line 545
    .line 546
    goto :goto_15

    .line 547
    :cond_1f
    invoke-static {v6, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 548
    .line 549
    .line 550
    invoke-virtual {v6, v13, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object v3

    .line 554
    invoke-static {v3, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 558
    .line 559
    .line 560
    move-result v8

    .line 561
    add-int/2addr v13, v8

    .line 562
    invoke-static {v3}, Lkotlin/time/DurationUnitKt__DurationUnitKt;->durationUnitByShortName(Ljava/lang/String;)Lkotlin/time/DurationUnit;

    .line 563
    .line 564
    .line 565
    move-result-object v3

    .line 566
    if-eqz v1, :cond_21

    .line 567
    .line 568
    invoke-virtual {v1, v3}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    .line 569
    .line 570
    .line 571
    move-result v1

    .line 572
    if-lez v1, :cond_20

    .line 573
    .line 574
    goto :goto_17

    .line 575
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 576
    .line 577
    move-object/from16 v1, v26

    .line 578
    .line 579
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 580
    .line 581
    .line 582
    throw v0

    .line 583
    :cond_21
    :goto_17
    move-object/from16 v1, v26

    .line 584
    .line 585
    const/16 v19, 0x2e

    .line 586
    .line 587
    const/16 v20, 0x0

    .line 588
    .line 589
    const/16 v21, 0x0

    .line 590
    .line 591
    const/16 v22, 0x6

    .line 592
    .line 593
    const/16 v23, 0x0

    .line 594
    .line 595
    move-object/from16 v18, v2

    .line 596
    .line 597
    invoke-static/range {v18 .. v23}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CIZILjava/lang/Object;)I

    .line 598
    .line 599
    .line 600
    move-result v8

    .line 601
    if-lez v8, :cond_23

    .line 602
    .line 603
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 604
    .line 605
    .line 606
    const/4 v12, 0x0

    .line 607
    invoke-virtual {v2, v12, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 608
    .line 609
    .line 610
    move-result-object v14

    .line 611
    invoke-static {v14, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 612
    .line 613
    .line 614
    invoke-static {v14}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 615
    .line 616
    .line 617
    move-result-wide v4

    .line 618
    invoke-static {v4, v5, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 619
    .line 620
    .line 621
    move-result-wide v4

    .line 622
    invoke-static {v9, v10, v4, v5}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 623
    .line 624
    .line 625
    move-result-wide v4

    .line 626
    invoke-static {v2, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 627
    .line 628
    .line 629
    invoke-virtual {v2, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v2

    .line 633
    invoke-static {v2, v11}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 634
    .line 635
    .line 636
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 637
    .line 638
    .line 639
    move-result-wide v8

    .line 640
    invoke-static {v8, v9, v3}, Lkotlin/time/DurationKt;->toDuration(DLkotlin/time/DurationUnit;)J

    .line 641
    .line 642
    .line 643
    move-result-wide v8

    .line 644
    invoke-static {v4, v5, v8, v9}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 645
    .line 646
    .line 647
    move-result-wide v9

    .line 648
    if-lt v13, v7, :cond_22

    .line 649
    .line 650
    goto :goto_18

    .line 651
    :cond_22
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 652
    .line 653
    const-string v1, "Fractional component must be last"

    .line 654
    .line 655
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 656
    .line 657
    .line 658
    throw v0

    .line 659
    :cond_23
    const/4 v12, 0x0

    .line 660
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 661
    .line 662
    .line 663
    move-result-wide v4

    .line 664
    invoke-static {v4, v5, v3}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    .line 665
    .line 666
    .line 667
    move-result-wide v4

    .line 668
    invoke-static {v9, v10, v4, v5}, Lkotlin/time/Duration;->plus-LRDsOJo(JJ)J

    .line 669
    .line 670
    .line 671
    move-result-wide v9

    .line 672
    :goto_18
    move-object/from16 v26, v1

    .line 673
    .line 674
    move-object v1, v3

    .line 675
    const/4 v5, 0x1

    .line 676
    goto/16 :goto_d

    .line 677
    .line 678
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 679
    .line 680
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 681
    .line 682
    .line 683
    throw v0

    .line 684
    :cond_25
    :goto_19
    if-eqz v16, :cond_26

    .line 685
    .line 686
    invoke-static {v9, v10}, Lkotlin/time/Duration;->unaryMinus-UwyO8pc(J)J

    .line 687
    .line 688
    .line 689
    move-result-wide v9

    .line 690
    :cond_26
    return-wide v9

    .line 691
    :cond_27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 692
    .line 693
    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 694
    .line 695
    .line 696
    throw v0

    .line 697
    :cond_28
    move-object v12, v5

    .line 698
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 699
    .line 700
    invoke-direct {v0, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    throw v0

    .line 704
    :cond_29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 705
    .line 706
    const-string v1, "The string is empty"

    .line 707
    .line 708
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 709
    .line 710
    .line 711
    throw v0
.end method

.method private static final parseOverLongIsoComponent(Ljava/lang/String;)J
    .locals 12

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x2

    .line 7
    const/4 v3, 0x1

    .line 8
    const/4 v4, 0x0

    .line 9
    if-lez v0, :cond_0

    .line 10
    .line 11
    const-string v5, "+-"

    .line 12
    .line 13
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v6

    .line 17
    invoke-static {v5, v6, v4, v2, v1}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;CZILjava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-eqz v5, :cond_0

    .line 22
    .line 23
    const/4 v5, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v5, 0x0

    .line 26
    :goto_0
    sub-int v6, v0, v5

    .line 27
    .line 28
    const/16 v7, 0x3a

    .line 29
    .line 30
    const/16 v8, 0x30

    .line 31
    .line 32
    const/16 v9, 0x10

    .line 33
    .line 34
    if-le v6, v9, :cond_6

    .line 35
    .line 36
    move v6, v5

    .line 37
    :goto_1
    if-ge v5, v0, :cond_4

    .line 38
    .line 39
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v10

    .line 43
    if-ne v10, v8, :cond_1

    .line 44
    .line 45
    if-ne v6, v5, :cond_3

    .line 46
    .line 47
    add-int/lit8 v6, v6, 0x1

    .line 48
    .line 49
    goto :goto_3

    .line 50
    :cond_1
    const/16 v11, 0x31

    .line 51
    .line 52
    if-gt v11, v10, :cond_2

    .line 53
    .line 54
    if-ge v10, v7, :cond_2

    .line 55
    .line 56
    const/4 v10, 0x1

    .line 57
    goto :goto_2

    .line 58
    :cond_2
    const/4 v10, 0x0

    .line 59
    :goto_2
    if-eqz v10, :cond_6

    .line 60
    .line 61
    :cond_3
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 62
    .line 63
    goto :goto_1

    .line 64
    :cond_4
    sub-int v5, v0, v6

    .line 65
    .line 66
    if-le v5, v9, :cond_6

    .line 67
    .line 68
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    const/16 v0, 0x2d

    .line 73
    .line 74
    if-ne p0, v0, :cond_5

    .line 75
    .line 76
    const-wide/high16 v0, -0x8000000000000000L

    .line 77
    .line 78
    goto :goto_4

    .line 79
    :cond_5
    const-wide v0, 0x7fffffffffffffffL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    :goto_4
    return-wide v0

    .line 85
    :cond_6
    const-string v5, "+"

    .line 86
    .line 87
    invoke-static {p0, v5, v4, v2, v1}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_8

    .line 92
    .line 93
    if-le v0, v3, :cond_8

    .line 94
    .line 95
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    if-gt v8, v0, :cond_7

    .line 100
    .line 101
    if-ge v0, v7, :cond_7

    .line 102
    .line 103
    const/4 v4, 0x1

    .line 104
    :cond_7
    if-eqz v4, :cond_8

    .line 105
    .line 106
    invoke-static {p0, v3}, Lkotlin/text/StringsKt;->drop(Ljava/lang/String;I)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    :cond_8
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 111
    .line 112
    .line 113
    move-result-wide v0

    .line 114
    return-wide v0
.end method

.method private static final skipWhile(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)I"
        }
    .end annotation

    .line 1
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-ge p1, v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/Boolean;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    add-int/lit8 p1, p1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    return p1
.end method

.method private static final substringWhile(Ljava/lang/String;ILkotlin/jvm/functions/Function1;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Character;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1
    move v0, p1

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {p2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    .line 28
    add-int/lit8 v0, v0, 0x1

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string p2, "null cannot be cast to non-null type java.lang.String"

    .line 32
    .line 33
    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    const-string p1, "substring(...)"

    .line 41
    .line 42
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    return-object p0
.end method

.method private static final times-kIfJnKk(DJ)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p2, p3, p0, p1}, Lkotlin/time/Duration;->times-UwyO8pc(JD)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method private static final times-mvk6XK0(IJ)J
    .locals 0
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    .annotation build Lkotlin/internal/InlineOnly;
    .end annotation

    .line 1
    invoke-static {p1, p2, p0}, Lkotlin/time/Duration;->times-UwyO8pc(JI)J

    .line 2
    .line 3
    .line 4
    move-result-wide p0

    .line 5
    return-wide p0
.end method

.method public static final toDuration(DLkotlin/time/DurationUnit;)J
    .locals 7
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide v0

    .line 9
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_2

    .line 10
    invoke-static {v0, v1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide v0

    const-wide v4, -0x3ffffffffffa14bfL    # -2.0000000001722644

    const/4 v2, 0x0

    cmp-long v6, v4, v0

    if-gtz v6, :cond_0

    const-wide v4, 0x3ffffffffffa14c0L    # 1.999999999913868

    cmp-long v6, v0, v4

    if-gez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    .line 11
    invoke-static {v0, v1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_1

    .line 12
    :cond_1
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(DLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/math/MathKt;->roundToLong(D)J

    move-result-wide p0

    .line 13
    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillisNormalized(J)J

    move-result-wide p0

    :goto_1
    return-wide p0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Duration value cannot be NaN."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final toDuration(ILkotlin/time/DurationUnit;)J
    .locals 2
    .param p1    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/time/DurationUnit;->SECONDS:Lkotlin/time/DurationUnit;

    invoke-virtual {p1, v0}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-gtz v0, :cond_0

    int-to-long v0, p0

    .line 2
    sget-object p0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    invoke-static {v0, v1, p1, p0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    goto :goto_0

    :cond_0
    int-to-long v0, p0

    .line 3
    invoke-static {v0, v1, p1}, Lkotlin/time/DurationKt;->toDuration(JLkotlin/time/DurationUnit;)J

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public static final toDuration(JLkotlin/time/DurationUnit;)J
    .locals 7
    .param p2    # Lkotlin/time/DurationUnit;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lkotlin/SinceKotlin;
        version = "1.6"
    .end annotation

    .annotation build Lkotlin/WasExperimental;
        markerClass = {
            Lkotlin/time/ExperimentalTime;
        }
    .end annotation

    const-string v0, "unit"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object v0, Lkotlin/time/DurationUnit;->NANOSECONDS:Lkotlin/time/DurationUnit;

    const-wide v1, 0x3ffffffffffa14bfL    # 1.9999999999138678

    invoke-static {v1, v2, v0, p2}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    neg-long v3, v1

    const/4 v5, 0x0

    cmp-long v6, v3, p0

    if-gtz v6, :cond_0

    cmp-long v3, p0, v1

    if-gtz v3, :cond_0

    const/4 v5, 0x1

    :cond_0
    if-eqz v5, :cond_1

    .line 5
    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnitOverflow(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfNanos(J)J

    move-result-wide p0

    return-wide p0

    .line 6
    :cond_1
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    invoke-static {p0, p1, p2, v0}, Lkotlin/time/DurationUnitKt__DurationUnitJvmKt;->convertDurationUnit(JLkotlin/time/DurationUnit;Lkotlin/time/DurationUnit;)J

    move-result-wide v1

    const-wide v3, -0x3fffffffffffffffL    # -2.0000000000000004

    const-wide v5, 0x3fffffffffffffffL    # 1.9999999999999998

    .line 7
    invoke-static/range {v1 .. v6}, Lkotlin/ranges/RangesKt;->coerceIn(JJJ)J

    move-result-wide p0

    invoke-static {p0, p1}, Lkotlin/time/DurationKt;->durationOfMillis(J)J

    move-result-wide p0

    return-wide p0
.end method
