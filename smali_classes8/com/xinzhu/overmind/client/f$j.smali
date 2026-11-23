.class Lcom/xinzhu/overmind/client/f$j;
.super Lde/robv/android/xposed/XC_MethodHook;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/f;->gameSpecificHooks(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/xinzhu/overmind/client/f;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/f$j;->b:Lcom/xinzhu/overmind/client/f;

    .line 2
    .line 3
    invoke-direct {p0}, Lde/robv/android/xposed/XC_MethodHook;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method protected afterHookedMethod(Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    const-string v0, "android_id"

    .line 2
    .line 3
    :try_start_0
    invoke-virtual {p1}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->getResult()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    check-cast v1, Landroid/database/MatrixCursor;

    .line 8
    .line 9
    iget-object v2, p1, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->args:[Ljava/lang/Object;

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    aget-object v2, v2, v3

    .line 13
    .line 14
    check-cast v2, [Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    invoke-interface {v3, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 21
    .line 22
    .line 23
    move-result v3

    .line 24
    if-eqz v3, :cond_3

    .line 25
    .line 26
    new-instance v3, Landroid/database/MatrixCursor;

    .line 27
    .line 28
    invoke-virtual {v1}, Landroid/database/MatrixCursor;->getColumnNames()[Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v4

    .line 32
    invoke-direct {v3, v4}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    const/4 v4, 0x0

    .line 36
    const/4 v5, 0x0

    .line 37
    :goto_0
    array-length v6, v2

    .line 38
    if-ge v5, v6, :cond_2

    .line 39
    .line 40
    aget-object v6, v2, v5

    .line 41
    .line 42
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    const/4 v7, 0x2

    .line 47
    const/4 v8, 0x1

    .line 48
    if-eqz v6, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lma/c;->a()Lma/c;

    .line 51
    .line 52
    .line 53
    move-result-object v6

    .line 54
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 55
    .line 56
    .line 57
    move-result v9

    .line 58
    invoke-virtual {v6, v9}, Lma/c;->b(I)Lcom/xinzhu/overmind/server/os/MindDeviceInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v6

    .line 62
    if-eqz v6, :cond_1

    .line 63
    .line 64
    iget-boolean v9, v6, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->b:Z

    .line 65
    .line 66
    if-eqz v9, :cond_1

    .line 67
    .line 68
    new-array v7, v7, [Ljava/lang/Object;

    .line 69
    .line 70
    aput-object v0, v7, v4

    .line 71
    .line 72
    iget-object v6, v6, Lcom/xinzhu/overmind/server/os/MindDeviceInfo;->c:Ljava/lang/String;

    .line 73
    .line 74
    aput-object v6, v7, v8

    .line 75
    .line 76
    invoke-virtual {v3, v7}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_0
    invoke-virtual {v1, v5}, Landroid/database/AbstractCursor;->moveToPosition(I)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_1

    .line 85
    .line 86
    new-array v6, v7, [Ljava/lang/String;

    .line 87
    .line 88
    invoke-virtual {v1, v4}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v7

    .line 92
    aput-object v7, v6, v4

    .line 93
    .line 94
    invoke-virtual {v1, v8}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    aput-object v7, v6, v8

    .line 99
    .line 100
    invoke-virtual {v3, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p1, v3}, Lde/robv/android/xposed/XC_MethodHook$MethodHookParam;->setResult(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    .line 108
    .line 109
    goto :goto_2

    .line 110
    :catchall_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 112
    .line 113
    .line 114
    :cond_3
    :goto_2
    return-void
.end method
