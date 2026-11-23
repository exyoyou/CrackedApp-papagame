.class Lcom/xinzhu/overmind/client/f$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xinzhu/overmind/client/f;->handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/content/Intent;

.field final synthetic c:Landroid/os/IBinder;

.field final synthetic d:Lcom/xinzhu/overmind/client/f;


# direct methods
.method constructor <init>(Lcom/xinzhu/overmind/client/f;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/xinzhu/overmind/client/f$c;->d:Lcom/xinzhu/overmind/client/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/xinzhu/overmind/client/f$c;->b:Landroid/content/Intent;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f$c;->b:Landroid/content/Intent;

    .line 8
    .line 9
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lt9/a;->b(Landroid/content/Intent;Ljava/lang/String;)Lt9/a;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v0, v0, Lt9/a;->a:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v0, Landroid/content/Intent;

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f$c;->b:Landroid/content/Intent;

    .line 23
    .line 24
    :goto_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    .line 25
    .line 26
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    if-eqz v2, :cond_1

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->T()Landroid/util/ArrayMap;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    iget-object v3, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v1, v2, v0}, Lcom/xinzhu/haunted/android/app/g;->e0(Ljava/lang/Object;Ljava/util/List;)V

    .line 54
    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_1
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 58
    .line 59
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/haunted/android/app/g;->C(Landroid/os/IBinder;Ljava/util/List;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    if-eqz v2, :cond_2

    .line 68
    .line 69
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 70
    .line 71
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-virtual {v1, v2, v0}, Lcom/xinzhu/haunted/android/app/g;->h0(Landroid/os/IBinder;Ljava/util/List;)V

    .line 76
    .line 77
    .line 78
    goto :goto_1

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 80
    .line 81
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    const/4 v4, 0x1

    .line 86
    invoke-virtual {v1, v2, v3, v4}, Lcom/xinzhu/haunted/android/app/g;->D(Landroid/os/IBinder;Ljava/util/List;Z)Z

    .line 87
    .line 88
    .line 89
    move-result v2

    .line 90
    if-eqz v2, :cond_3

    .line 91
    .line 92
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 93
    .line 94
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {v1, v2, v0, v4}, Lcom/xinzhu/haunted/android/app/g;->i0(Landroid/os/IBinder;Ljava/util/List;Z)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 103
    .line 104
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 105
    .line 106
    .line 107
    move-result-object v3

    .line 108
    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/haunted/android/app/g;->y(Landroid/os/IBinder;Ljava/util/List;)Z

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f$c;->c:Landroid/os/IBinder;

    .line 115
    .line 116
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v1, v2, v0}, Lcom/xinzhu/haunted/android/app/g;->d0(Landroid/os/IBinder;Ljava/util/List;)V

    .line 121
    .line 122
    .line 123
    :cond_4
    :goto_1
    return-void
.end method
