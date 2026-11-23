.class final Lio/socket/engineio/parser/Parser$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/socket/engineio/parser/Parser$EncodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/socket/engineio/parser/Parser;->encodeOneBinaryPacket(Lio/socket/engineio/parser/Packet;Lio/socket/engineio/parser/Parser$EncodeCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;


# direct methods
.method constructor <init>(Lio/socket/engineio/parser/Parser$EncodeCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/socket/engineio/parser/Parser$4;->val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 9

    .line 1
    instance-of v0, p1, Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    const/4 v4, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    check-cast p1, Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    add-int/2addr v5, v2

    .line 24
    new-array v6, v5, [B

    .line 25
    .line 26
    aput-byte v4, v6, v4

    .line 27
    .line 28
    const/4 v7, 0x0

    .line 29
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 30
    .line 31
    .line 32
    move-result v8

    .line 33
    if-ge v7, v8, :cond_0

    .line 34
    .line 35
    add-int/lit8 v8, v7, 0x1

    .line 36
    .line 37
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    .line 42
    .line 43
    .line 44
    move-result v7

    .line 45
    int-to-byte v7, v7

    .line 46
    aput-byte v7, v6, v8

    .line 47
    .line 48
    move v7, v8

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    sub-int/2addr v5, v3

    .line 51
    aput-byte v1, v6, v5

    .line 52
    .line 53
    iget-object v0, p0, Lio/socket/engineio/parser/Parser$4;->val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;

    .line 54
    .line 55
    new-array v1, v2, [[B

    .line 56
    .line 57
    aput-object v6, v1, v4

    .line 58
    .line 59
    invoke-static {p1}, Lio/socket/engineio/parser/Parser;->access$100(Ljava/lang/String;)[B

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    aput-object p1, v1, v3

    .line 64
    .line 65
    invoke-static {v1}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-interface {v0, p1}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    return-void

    .line 73
    :cond_1
    check-cast p1, [B

    .line 74
    .line 75
    array-length v0, p1

    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 81
    .line 82
    .line 83
    move-result v5

    .line 84
    add-int/2addr v5, v2

    .line 85
    new-array v6, v5, [B

    .line 86
    .line 87
    aput-byte v3, v6, v4

    .line 88
    .line 89
    const/4 v7, 0x0

    .line 90
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v8

    .line 94
    if-ge v7, v8, :cond_2

    .line 95
    .line 96
    add-int/lit8 v8, v7, 0x1

    .line 97
    .line 98
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    invoke-static {v7}, Ljava/lang/Character;->getNumericValue(C)I

    .line 103
    .line 104
    .line 105
    move-result v7

    .line 106
    int-to-byte v7, v7

    .line 107
    aput-byte v7, v6, v8

    .line 108
    .line 109
    move v7, v8

    .line 110
    goto :goto_1

    .line 111
    :cond_2
    sub-int/2addr v5, v3

    .line 112
    aput-byte v1, v6, v5

    .line 113
    .line 114
    iget-object v0, p0, Lio/socket/engineio/parser/Parser$4;->val$doneCallback:Lio/socket/engineio/parser/Parser$EncodeCallback;

    .line 115
    .line 116
    new-array v1, v2, [[B

    .line 117
    .line 118
    aput-object v6, v1, v4

    .line 119
    .line 120
    aput-object p1, v1, v3

    .line 121
    .line 122
    invoke-static {v1}, Lio/socket/engineio/parser/Buffer;->concat([[B)[B

    .line 123
    .line 124
    .line 125
    move-result-object p1

    .line 126
    invoke-interface {v0, p1}, Lio/socket/engineio/parser/Parser$EncodeCallback;->call(Ljava/lang/Object;)V

    .line 127
    .line 128
    .line 129
    return-void
.end method
