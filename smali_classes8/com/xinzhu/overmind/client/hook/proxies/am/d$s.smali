.class Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;
.super Lcom/xinzhu/overmind/client/hook/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xinzhu/overmind/client/hook/proxies/am/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "s"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/hook/e;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method protected c()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "startActivityIntentSender"

    return-object v0
.end method

.method protected d(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x3

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x2

    .line 10
    :goto_0
    add-int/lit8 v1, v0, 0x2

    .line 11
    .line 12
    add-int/lit8 v2, v0, 0x3

    .line 13
    .line 14
    add-int/lit8 v3, v0, 0x4

    .line 15
    .line 16
    add-int/lit8 v4, v0, 0x5

    .line 17
    .line 18
    add-int/lit8 v5, v0, 0x6

    .line 19
    .line 20
    add-int/lit8 v6, v0, 0x7

    .line 21
    .line 22
    aget-object v7, p3, v0

    .line 23
    .line 24
    check-cast v7, Landroid/content/Intent;

    .line 25
    .line 26
    aget-object v8, p3, v1

    .line 27
    .line 28
    check-cast v8, Landroid/os/IBinder;

    .line 29
    .line 30
    aget-object v9, p3, v2

    .line 31
    .line 32
    check-cast v9, Ljava/lang/String;

    .line 33
    .line 34
    aget-object v10, p3, v3

    .line 35
    .line 36
    check-cast v10, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v10

    .line 42
    aget-object v4, p3, v4

    .line 43
    .line 44
    check-cast v4, Ljava/lang/Integer;

    .line 45
    .line 46
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    aget-object v5, p3, v5

    .line 51
    .line 52
    check-cast v5, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v5

    .line 58
    aget-object v6, p3, v6

    .line 59
    .line 60
    check-cast v6, Landroid/os/Bundle;

    .line 61
    .line 62
    if-nez v7, :cond_1

    .line 63
    .line 64
    new-instance v7, Landroid/content/Intent;

    .line 65
    .line 66
    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 67
    .line 68
    .line 69
    aput-object v7, p3, v0

    .line 70
    .line 71
    :cond_1
    new-instance v0, Lt8/m;

    .line 72
    .line 73
    invoke-direct {v0, v7}, Lt8/m;-><init>(Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    const-string v11, "_VM_|_trampoline_result_to_"

    .line 77
    .line 78
    invoke-virtual {v0, v11, v8}, Lt8/m;->d(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "_VM_|_trampoline_result_who_"

    .line 82
    .line 83
    invoke-virtual {v7, v0, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    .line 85
    .line 86
    const-string v0, "_VM_|_trampoline_request_code_"

    .line 87
    .line 88
    invoke-virtual {v7, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 89
    .line 90
    .line 91
    const-string v0, "_VM_|_trampoline_options_"

    .line 92
    .line 93
    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 94
    .line 95
    .line 96
    const-string v0, "_VM_|_trampoline_calling_package_"

    .line 97
    .line 98
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPackageName()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v6

    .line 102
    invoke-virtual {v7, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 103
    .line 104
    .line 105
    const-string v0, "_VM_|_trampoline_flagsMask_"

    .line 106
    .line 107
    invoke-virtual {v7, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    .line 109
    .line 110
    const-string v0, "_VM_|_trampoline_flagsValues_"

    .line 111
    .line 112
    invoke-virtual {v7, v0, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    .line 114
    .line 115
    const/4 v0, 0x0

    .line 116
    aput-object v0, p3, v1

    .line 117
    .line 118
    aput-object v0, p3, v2

    .line 119
    .line 120
    const/4 v0, -0x1

    .line 121
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    aput-object v0, p3, v3

    .line 126
    .line 127
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    return-object p1
.end method
