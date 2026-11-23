.class public Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CRASH:Ljava/lang/String; = "crash"

.field public static final ERROR:Ljava/lang/String; = "error"

.field private static PHONE_INFO:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static setupErrorInfo(Landroid/content/Context;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    sget-object p4, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->PHONE_INFO:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    if-nez p4, :cond_0

    .line 4
    .line 5
    new-instance p4, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    sput-object p4, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->PHONE_INFO:Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-static {p0, p4}, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->setupPhoneInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 13
    .line 14
    .line 15
    :cond_0
    sget-object p0, Lcom/bykv/vk/component/ttvideo/utils/AVErrorInfo;->PHONE_INFO:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string p0, "\r\n"

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const-string p0, ":"

    .line 29
    .line 30
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method public static final setupPhoneInfo(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 10

    .line 1
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/VersionInfo;->getVersion()[Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\r\n"

    .line 6
    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const/4 v5, 0x3

    .line 13
    new-array v5, v5, [Ljava/lang/Object;

    .line 14
    .line 15
    aget-object v6, v0, v4

    .line 16
    .line 17
    aput-object v6, v5, v4

    .line 18
    .line 19
    aget-object v6, v0, v3

    .line 20
    .line 21
    aput-object v6, v5, v3

    .line 22
    .line 23
    aget-object v0, v0, v2

    .line 24
    .line 25
    aput-object v0, v5, v2

    .line 26
    .line 27
    const-string v0, "version:%s,%s,%s\r\n"

    .line 28
    .line 29
    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    :cond_0
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/MemoryInfo;->getRomMemroy()[J

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_1

    .line 44
    .line 45
    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 46
    .line 47
    new-array v6, v2, [Ljava/lang/Object;

    .line 48
    .line 49
    aget-wide v7, v0, v4

    .line 50
    .line 51
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    aput-object v7, v6, v4

    .line 56
    .line 57
    aget-wide v7, v0, v3

    .line 58
    .line 59
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    aput-object v0, v6, v3

    .line 64
    .line 65
    const-string v0, "rom memory totle:%d,availe:%d\r\n"

    .line 66
    .line 67
    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    :cond_1
    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/utils/MemoryInfo;->getAvailMemory(Landroid/content/Context;)J

    .line 78
    .line 79
    .line 80
    move-result-wide v5

    .line 81
    invoke-static {}, Lcom/bykv/vk/component/ttvideo/utils/MemoryInfo;->getTolalMemory()J

    .line 82
    .line 83
    .line 84
    move-result-wide v7

    .line 85
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 86
    .line 87
    new-array v9, v2, [Ljava/lang/Object;

    .line 88
    .line 89
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 90
    .line 91
    .line 92
    move-result-object v7

    .line 93
    aput-object v7, v9, v4

    .line 94
    .line 95
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v5

    .line 99
    aput-object v5, v9, v3

    .line 100
    .line 101
    const-string v5, "ram memory totle:%d,availe:%d\r\n"

    .line 102
    .line 103
    invoke-static {v0, v5, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v5

    .line 107
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-static {p0}, Lcom/bykv/vk/component/ttvideo/utils/HardWareInfo;->getSDCardSize(Landroid/content/Context;)[J

    .line 114
    .line 115
    .line 116
    move-result-object p0

    .line 117
    if-eqz p0, :cond_2

    .line 118
    .line 119
    new-array v2, v2, [Ljava/lang/Object;

    .line 120
    .line 121
    aget-wide v5, p0, v4

    .line 122
    .line 123
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 124
    .line 125
    .line 126
    move-result-object v5

    .line 127
    aput-object v5, v2, v4

    .line 128
    .line 129
    aget-wide v4, p0, v3

    .line 130
    .line 131
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 132
    .line 133
    .line 134
    move-result-object p0

    .line 135
    aput-object p0, v2, v3

    .line 136
    .line 137
    const-string p0, "sdcard totle:%d,availe:%d\r\n"

    .line 138
    .line 139
    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    :cond_2
    return-void
.end method
