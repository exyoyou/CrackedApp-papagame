.class Lcom/xinzhu/overmind/client/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/f;->finishActivity(Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/os/IBinder;

.field final synthetic c:Lcom/xinzhu/overmind/client/f;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/f;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/f$b;->c:Lcom/xinzhu/overmind/client/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/f$b;->b:Landroid/os/IBinder;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->T()Landroid/util/ArrayMap;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/client/f$b;->b:Landroid/os/IBinder;

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    new-instance v1, Lcom/xinzhu/haunted/android/app/g$a;

    .line 31
    .line 32
    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/g$a;-><init>(Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g$a;->g()Landroid/app/Activity;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/app/Activity;->getParent()Landroid/app/Activity;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    goto :goto_0

    .line 50
    :cond_2
    new-instance v1, Lcom/xinzhu/haunted/android/app/a;

    .line 51
    .line 52
    invoke-direct {v1, v0}, Lcom/xinzhu/haunted/android/app/a;-><init>(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/a;->j()I

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/a;->k()Landroid/content/Intent;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 64
    .line 65
    .line 66
    move-result v3

    .line 67
    const/4 v4, 0x0

    .line 68
    if-eqz v3, :cond_3

    .line 69
    .line 70
    new-instance v3, Lcom/xinzhu/haunted/android/app/n;

    .line 71
    .line 72
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-direct {v3, v5}, Lcom/xinzhu/haunted/android/app/n;-><init>(Ljava/lang/Object;)V

    .line 77
    .line 78
    .line 79
    iget-object v5, p0, Lcom/xinzhu/overmind/client/f$b;->b:Landroid/os/IBinder;

    .line 80
    .line 81
    invoke-virtual {v3, v5, v0, v2, v4}, Lcom/xinzhu/haunted/android/app/n;->g(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->a()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    .line 91
    new-instance v3, Lcom/xinzhu/haunted/android/app/n;

    .line 92
    .line 93
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 94
    .line 95
    .line 96
    move-result-object v5

    .line 97
    invoke-direct {v3, v5}, Lcom/xinzhu/haunted/android/app/n;-><init>(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    iget-object v5, p0, Lcom/xinzhu/overmind/client/f$b;->b:Landroid/os/IBinder;

    .line 101
    .line 102
    invoke-virtual {v3, v5, v0, v2, v4}, Lcom/xinzhu/haunted/android/app/n;->h(Landroid/os/IBinder;ILandroid/content/Intent;Z)Z

    .line 103
    .line 104
    .line 105
    :goto_1
    const/4 v0, 0x1

    .line 106
    invoke-virtual {v1, v0}, Lcom/xinzhu/haunted/android/app/a;->n(Z)Z

    .line 107
    .line 108
    .line 109
    return-void

    .line 110
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    .line 111
    .line 112
    const-string v1, "not support lower than sdk 21"

    .line 113
    .line 114
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    throw v0
.end method
