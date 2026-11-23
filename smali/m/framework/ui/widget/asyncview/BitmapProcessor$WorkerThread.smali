.class Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/framework/ui/widget/asyncview/BitmapProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WorkerThread"
.end annotation


# instance fields
.field private curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

.field private lastReport:J

.field private localType:Z

.field private processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;


# direct methods
.method public constructor <init>(Lm/framework/ui/widget/asyncview/BitmapProcessor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 5
    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 7
    .line 8
    .line 9
    move-result-wide v0

    .line 10
    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 11
    .line 12
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    .line 2
    .line 3
    return-void
.end method

.method static synthetic access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 2
    .line 3
    return-wide v0
.end method

.method static synthetic access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 2
    .line 3
    return-void
.end method

.method static synthetic access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->saveFile(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)Lm/framework/ui/widget/asyncview/BitmapProcessor;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    return-object p0
.end method

.method private doLocalTask()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 14
    .line 15
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    add-int/lit8 v0, v0, -0x1

    .line 20
    .line 21
    invoke-virtual {v1, v0}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    .line 29
    :goto_0
    if-eqz v0, :cond_5

    .line 30
    .line 31
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 32
    .line 33
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Landroid/graphics/Bitmap;

    .line 46
    .line 47
    if-eqz v1, :cond_1

    .line 48
    .line 49
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 50
    .line 51
    invoke-static {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 52
    .line 53
    .line 54
    invoke-static {v0, v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 55
    .line 56
    .line 57
    goto :goto_3

    .line 58
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 59
    .line 60
    iget-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 61
    .line 62
    invoke-static {v2}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    invoke-static {v3}, Lm/framework/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v3

    .line 74
    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-eqz v1, :cond_2

    .line 82
    .line 83
    invoke-direct {p0, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 84
    .line 85
    .line 86
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 87
    .line 88
    .line 89
    move-result-wide v0

    .line 90
    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 91
    .line 92
    return-void

    .line 93
    :cond_2
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 94
    .line 95
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    const/16 v2, 0x28

    .line 104
    .line 105
    if-le v1, v2, :cond_4

    .line 106
    .line 107
    :goto_1
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 108
    .line 109
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    const/4 v2, 0x0

    .line 118
    if-gtz v1, :cond_3

    .line 119
    .line 120
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 121
    .line 122
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 127
    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_3
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 131
    .line 132
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v2}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    goto :goto_1

    .line 140
    :cond_4
    :goto_2
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 141
    .line 142
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 147
    .line 148
    .line 149
    :goto_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 150
    .line 151
    .line 152
    move-result-wide v0

    .line 153
    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 154
    .line 155
    goto :goto_4

    .line 156
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 157
    .line 158
    .line 159
    move-result-wide v0

    .line 160
    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 161
    .line 162
    const-wide/16 v0, 0x1e

    .line 163
    .line 164
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 165
    .line 166
    .line 167
    :goto_4
    return-void
.end method

.method private doNetworkTask()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-lez v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 14
    .line 15
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$5(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    const/4 v0, 0x0

    .line 28
    :goto_0
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 31
    .line 32
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-lez v1, :cond_1

    .line 41
    .line 42
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 43
    .line 44
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/Vector;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    add-int/lit8 v1, v1, -0x1

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    check-cast v0, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 55
    .line 56
    :cond_1
    if-eqz v0, :cond_3

    .line 57
    .line 58
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 59
    .line 60
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    invoke-virtual {v1, v2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    check-cast v1, Landroid/graphics/Bitmap;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    iput-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 77
    .line 78
    invoke-static {v0, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 79
    .line 80
    .line 81
    invoke-static {v0, v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_2
    invoke-direct {p0, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 86
    .line 87
    .line 88
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 89
    .line 90
    .line 91
    move-result-wide v0

    .line 92
    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 93
    .line 94
    goto :goto_2

    .line 95
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 96
    .line 97
    .line 98
    move-result-wide v0

    .line 99
    iput-wide v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->lastReport:J

    .line 100
    .line 101
    const-wide/16 v0, 0x1e

    .line 102
    .line 103
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 104
    .line 105
    .line 106
    :goto_2
    return-void
.end method

.method private doTask(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 2
    .line 3
    invoke-static {p1, p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$1(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 9
    .line 10
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$4(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-static {v2}, Lm/framework/utils/Data;->MD5(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Lm/framework/utils/Utils;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 43
    .line 44
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    invoke-virtual {v1, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 56
    .line 57
    .line 58
    :cond_0
    iput-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    new-instance v1, Lm/framework/network/NetworkHelper;

    .line 62
    .line 63
    invoke-direct {v1}, Lm/framework/network/NetworkHelper;-><init>()V

    .line 64
    .line 65
    .line 66
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    new-instance v4, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;

    .line 71
    .line 72
    invoke-direct {v4, p0, v0, p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread$1;-><init>(Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;Ljava/io/File;Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, v3, v4}, Lm/framework/network/NetworkHelper;->download(Ljava/lang/String;Lm/framework/network/ResponseCallback;)V

    .line 76
    .line 77
    .line 78
    move-object v0, v2

    .line 79
    :goto_0
    if-eqz v0, :cond_2

    .line 80
    .line 81
    iget-object v1, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 82
    .line 83
    invoke-static {v1}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$3(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Ljava/util/WeakHashMap;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-static {p1}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;)Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v3

    .line 91
    invoke-virtual {v1, v3, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    invoke-static {p1, v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;->access$2(Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;Landroid/graphics/Bitmap;)V

    .line 95
    .line 96
    .line 97
    :cond_2
    iput-object v2, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->curReq:Lm/framework/ui/widget/asyncview/BitmapProcessor$ImageReq;

    .line 98
    .line 99
    return-void
.end method

.method private saveFile(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 8
    .line 9
    .line 10
    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 25
    .line 26
    .line 27
    :cond_1
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    .line 28
    .line 29
    .line 30
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 31
    .line 32
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-static {v1}, Lm/framework/utils/Utils;->getFileMime(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const-string v2, "png"

    .line 43
    .line 44
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_2

    .line 49
    .line 50
    const-string v2, "gif"

    .line 51
    .line 52
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_3

    .line 57
    .line 58
    :cond_2
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 59
    .line 60
    :cond_3
    new-instance v1, Ljava/io/FileOutputStream;

    .line 61
    .line 62
    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 63
    .line 64
    .line 65
    const/16 v2, 0x64

    .line 66
    .line 67
    invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 68
    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :catchall_0
    nop

    .line 78
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    .line 79
    .line 80
    .line 81
    move-result p1

    .line 82
    if-eqz p1, :cond_4

    .line 83
    .line 84
    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    .line 3
    .line 4
    :catchall_0
    return-void
.end method

.method public run()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->processor:Lm/framework/ui/widget/asyncview/BitmapProcessor;

    .line 2
    .line 3
    invoke-static {v0}, Lm/framework/ui/widget/asyncview/BitmapProcessor;->access$0(Lm/framework/ui/widget/asyncview/BitmapProcessor;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_0
    iget-boolean v0, p0, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->localType:Z

    .line 11
    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doLocalTask()V

    .line 15
    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    invoke-direct {p0}, Lm/framework/ui/widget/asyncview/BitmapProcessor$WorkerThread;->doNetworkTask()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    .line 25
    .line 26
    goto :goto_0
.end method
