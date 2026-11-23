.class Lcom/join/android/app/component/album/lib/b$c;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/android/app/component/album/lib/b;->j(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/android/app/component/album/lib/b;


# direct methods
.method constructor <init>(Lcom/join/android/app/component/album/lib/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/component/album/lib/b$c;->b:Lcom/join/android/app/component/album/lib/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    sget-object v2, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$c;->b:Lcom/join/android/app/component/album/lib/b;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->d(Lcom/join/android/app/component/album/lib/b;)Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const/4 v3, 0x0

    .line 22
    const-string v4, "mime_type=? or mime_type=?"

    .line 23
    .line 24
    const/4 v7, 0x2

    .line 25
    new-array v5, v7, [Ljava/lang/String;

    .line 26
    .line 27
    const-string v6, "image/jpeg"

    .line 28
    .line 29
    const/4 v8, 0x0

    .line 30
    aput-object v6, v5, v8

    .line 31
    .line 32
    const-string v6, "image/png"

    .line 33
    .line 34
    const/4 v9, 0x1

    .line 35
    aput-object v6, v5, v9

    .line 36
    .line 37
    const-string v6, "date_modified"

    .line 38
    .line 39
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    const-string v2, "_data"

    .line 50
    .line 51
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    iget-object v3, p0, Lcom/join/android/app/component/album/lib/b$c;->b:Lcom/join/android/app/component/album/lib/b;

    .line 60
    .line 61
    invoke-static {v3}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    iput v7, v3, Landroid/os/Message;->what:I

    .line 70
    .line 71
    iput-object v2, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    .line 73
    iget-object v4, p0, Lcom/join/android/app/component/album/lib/b$c;->b:Lcom/join/android/app/component/album/lib/b;

    .line 74
    .line 75
    invoke-static {v4}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 76
    .line 77
    .line 78
    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 80
    .line 81
    .line 82
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 87
    .line 88
    .line 89
    iget-object v1, p0, Lcom/join/android/app/component/album/lib/b$c;->b:Lcom/join/android/app/component/album/lib/b;

    .line 90
    .line 91
    invoke-static {v1}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    iput v8, v1, Landroid/os/Message;->what:I

    .line 100
    .line 101
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/android/app/component/album/lib/b$c;->b:Lcom/join/android/app/component/album/lib/b;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/join/android/app/component/album/lib/b;->e(Lcom/join/android/app/component/album/lib/b;)Landroid/os/Handler;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 115
    .line 116
    .line 117
    :goto_1
    return-void
.end method
