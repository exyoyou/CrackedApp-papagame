.class public Lcom/xinzhu/overmind/client/hook/proxies/am/c;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "ActivityTaskManager"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "activity_task"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "activity_task"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xinzhu/haunted/android/app/o$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string p1, "activity_task"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/xinzhu/haunted/android/app/f;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v0, Ll9/b;

    .line 11
    .line 12
    invoke-direct {v0, p1}, Ll9/b;-><init>(Ljava/lang/Object;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ll9/b;->e(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method protected onBindMethod()V
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$o;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;

    .line 10
    .line 11
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$n;-><init>()V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$a;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 23
    .line 24
    .line 25
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;

    .line 26
    .line 27
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$b;-><init>()V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 31
    .line 32
    .line 33
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$c;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 39
    .line 40
    .line 41
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;

    .line 42
    .line 43
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$d;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;

    .line 50
    .line 51
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$f;-><init>()V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 55
    .line 56
    .line 57
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;

    .line 58
    .line 59
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$g;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 63
    .line 64
    .line 65
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;

    .line 66
    .line 67
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$s;-><init>()V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;

    .line 74
    .line 75
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$p;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 79
    .line 80
    .line 81
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;

    .line 82
    .line 83
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$r;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 87
    .line 88
    .line 89
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$t;

    .line 90
    .line 91
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$t;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;

    .line 98
    .line 99
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$q;-><init>()V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 103
    .line 104
    .line 105
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;

    .line 106
    .line 107
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$l;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;

    .line 114
    .line 115
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$e;-><init>()V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 119
    .line 120
    .line 121
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;

    .line 122
    .line 123
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$k;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;

    .line 130
    .line 131
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$h;-><init>()V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 135
    .line 136
    .line 137
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;

    .line 138
    .line 139
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$i;-><init>()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;

    .line 146
    .line 147
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$j;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 151
    .line 152
    .line 153
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;

    .line 154
    .line 155
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/am/d$m;-><init>()V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 159
    .line 160
    .line 161
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->u()Z

    .line 162
    .line 163
    .line 164
    move-result v0

    .line 165
    if-eqz v0, :cond_0

    .line 166
    .line 167
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/b;

    .line 168
    .line 169
    const-string v1, "startAppLockService"

    .line 170
    .line 171
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/client/hook/common/b;-><init>(Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 175
    .line 176
    .line 177
    :cond_0
    return-void
.end method
