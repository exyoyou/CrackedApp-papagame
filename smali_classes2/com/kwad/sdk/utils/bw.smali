.class public final Lcom/kwad/sdk/utils/bw;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static aw(J)Ljava/lang/String;
    .locals 11

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    cmp-long v2, p0, v0

    .line 4
    .line 5
    if-lez v2, :cond_2

    .line 6
    .line 7
    const-wide/32 v2, 0x5265c00

    .line 8
    .line 9
    .line 10
    cmp-long v4, p0, v2

    .line 11
    .line 12
    if-ltz v4, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const-wide/16 v2, 0x3e8

    .line 16
    .line 17
    :try_start_0
    div-long/2addr p0, v2

    .line 18
    const-wide/16 v2, 0x3c

    .line 19
    .line 20
    rem-long v4, p0, v2

    .line 21
    .line 22
    div-long v6, p0, v2

    .line 23
    .line 24
    rem-long/2addr v6, v2

    .line 25
    const-wide/16 v2, 0xe10

    .line 26
    .line 27
    div-long/2addr p0, v2

    .line 28
    new-instance v2, Ljava/lang/StringBuilder;

    .line 29
    .line 30
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    .line 32
    .line 33
    new-instance v3, Ljava/util/Formatter;

    .line 34
    .line 35
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    invoke-direct {v3, v2, v8}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x1

    .line 43
    const/4 v8, 0x0

    .line 44
    const/4 v9, 0x2

    .line 45
    cmp-long v10, p0, v0

    .line 46
    .line 47
    if-lez v10, :cond_1

    .line 48
    .line 49
    const-string v0, "%d:%02d:%02d"

    .line 50
    .line 51
    const/4 v1, 0x3

    .line 52
    new-array v1, v1, [Ljava/lang/Object;

    .line 53
    .line 54
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    .line 56
    .line 57
    move-result-object p0

    .line 58
    aput-object p0, v1, v8

    .line 59
    .line 60
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 61
    .line 62
    .line 63
    move-result-object p0

    .line 64
    aput-object p0, v1, v2

    .line 65
    .line 66
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    aput-object p0, v1, v9

    .line 71
    .line 72
    invoke-virtual {v3, v0, v1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    return-object p0

    .line 81
    :cond_1
    const-string p0, "%02d:%02d"

    .line 82
    .line 83
    new-array p1, v9, [Ljava/lang/Object;

    .line 84
    .line 85
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    aput-object v0, p1, v8

    .line 90
    .line 91
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    aput-object v0, p1, v2

    .line 96
    .line 97
    invoke-virtual {v3, p0, p1}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 98
    .line 99
    .line 100
    move-result-object p0

    .line 101
    invoke-virtual {p0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    return-object p0

    .line 106
    :catch_0
    move-exception p0

    .line 107
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTrace(Ljava/lang/Throwable;)V

    .line 108
    .line 109
    .line 110
    const-string p0, ""

    .line 111
    .line 112
    return-object p0

    .line 113
    :cond_2
    :goto_0
    const-string p0, "00:00"

    .line 114
    .line 115
    return-object p0
.end method
