.class Lcn/fly/tools/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/fly/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/a;->a(Lcn/fly/tools/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/io/File;

.field final synthetic b:Lcn/fly/tools/a$a;

.field final synthetic c:Lcn/fly/tools/a;


# direct methods
.method constructor <init>(Lcn/fly/tools/a;[Ljava/io/File;Lcn/fly/tools/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/a$2;->c:Lcn/fly/tools/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcn/fly/tools/a$2;->a:[Ljava/io/File;

    .line 4
    .line 5
    iput-object p3, p0, Lcn/fly/tools/a$2;->b:Lcn/fly/tools/a$a;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onResponse(Lcn/fly/tools/utils/DH$DHResponse;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Lcn/fly/tools/utils/DH$DHResponse;->getDetailNetworkTypeForStatic()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "004c5biRcd"

    .line 6
    .line 7
    invoke-static {v1}, Lcn/fly/commons/n;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object v0, p0, Lcn/fly/tools/a$2;->a:[Ljava/io/File;

    .line 19
    .line 20
    array-length v1, v0

    .line 21
    const/4 v2, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v1, :cond_5

    .line 24
    .line 25
    aget-object v4, v0, v3

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    iget-object v6, p0, Lcn/fly/tools/a$2;->c:Lcn/fly/tools/a;

    .line 32
    .line 33
    invoke-static {v6, v5}, Lcn/fly/tools/a;->a(Lcn/fly/tools/a;Ljava/lang/String;)Z

    .line 34
    .line 35
    .line 36
    move-result v6

    .line 37
    if-eqz v6, :cond_1

    .line 38
    .line 39
    goto :goto_5

    .line 40
    :cond_1
    const/4 v6, 0x0

    .line 41
    const/4 v7, 0x2

    .line 42
    const/4 v8, 0x1

    .line 43
    :try_start_0
    new-instance v9, Ljava/io/FileReader;

    .line 44
    .line 45
    invoke-direct {v9, v4}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 46
    .line 47
    .line 48
    :try_start_1
    new-instance v10, Ljava/io/BufferedReader;

    .line 49
    .line 50
    invoke-direct {v10, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 51
    .line 52
    .line 53
    :cond_2
    :goto_1
    :try_start_2
    invoke-virtual {v10}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v6

    .line 57
    if-eqz v6, :cond_3

    .line 58
    .line 59
    new-instance v11, Ljava/lang/String;

    .line 60
    .line 61
    invoke-static {v6, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    const-string v12, "utf-8"

    .line 66
    .line 67
    invoke-direct {v11, v6, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v6

    .line 74
    if-nez v6, :cond_2

    .line 75
    .line 76
    iget-object v6, p0, Lcn/fly/tools/a$2;->b:Lcn/fly/tools/a$a;

    .line 77
    .line 78
    invoke-interface {v6, v11}, Lcn/fly/tools/a$a;->a(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object v6, p0, Lcn/fly/tools/a$2;->b:Lcn/fly/tools/a$a;

    .line 83
    .line 84
    invoke-interface {v6, p1}, Lcn/fly/tools/a$a;->a(Lcn/fly/tools/utils/DH$DHResponse;)Z

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    if-eqz v6, :cond_4

    .line 89
    .line 90
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    const-string v11, "[LGSM] D l"

    .line 95
    .line 96
    new-array v12, v2, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {v6, v11, v12}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Object;[Ljava/lang/Object;)I

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    .line 103
    .line 104
    :cond_4
    new-array v4, v7, [Ljava/io/Closeable;

    .line 105
    .line 106
    aput-object v10, v4, v2

    .line 107
    .line 108
    aput-object v9, v4, v8

    .line 109
    .line 110
    invoke-static {v4}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 111
    .line 112
    .line 113
    goto :goto_4

    .line 114
    :catchall_0
    move-exception v4

    .line 115
    goto :goto_2

    .line 116
    :catchall_1
    move-exception v4

    .line 117
    move-object v10, v6

    .line 118
    :goto_2
    move-object v6, v9

    .line 119
    goto :goto_3

    .line 120
    :catchall_2
    move-exception v4

    .line 121
    move-object v10, v6

    .line 122
    :goto_3
    :try_start_3
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v9, v4}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 127
    .line 128
    .line 129
    new-array v4, v7, [Ljava/io/Closeable;

    .line 130
    .line 131
    aput-object v10, v4, v2

    .line 132
    .line 133
    aput-object v6, v4, v8

    .line 134
    .line 135
    invoke-static {v4}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 136
    .line 137
    .line 138
    :goto_4
    iget-object v4, p0, Lcn/fly/tools/a$2;->c:Lcn/fly/tools/a;

    .line 139
    .line 140
    invoke-static {v4, v5}, Lcn/fly/tools/a;->b(Lcn/fly/tools/a;Ljava/lang/String;)V

    .line 141
    .line 142
    .line 143
    :goto_5
    add-int/lit8 v3, v3, 0x1

    .line 144
    .line 145
    goto :goto_0

    .line 146
    :catchall_3
    move-exception p1

    .line 147
    new-array v0, v7, [Ljava/io/Closeable;

    .line 148
    .line 149
    aput-object v10, v0, v2

    .line 150
    .line 151
    aput-object v6, v0, v8

    .line 152
    .line 153
    invoke-static {v0}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcn/fly/tools/a$2;->c:Lcn/fly/tools/a;

    .line 157
    .line 158
    invoke-static {v0, v5}, Lcn/fly/tools/a;->b(Lcn/fly/tools/a;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    throw p1

    .line 162
    :cond_5
    return-void
.end method
