.class public Lcom/xinzhu/overmind/client/hook/proxies/location/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

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
    const-string v0, "contexthub"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, "contexthub_service"

    .line 11
    .line 12
    :goto_0
    sput-object v0, Lcom/xinzhu/overmind/client/hook/proxies/location/a;->b:Ljava/lang/String;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/hook/proxies/location/a;->b:Ljava/lang/String;

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
    sget-object v0, Lcom/xinzhu/overmind/client/hook/proxies/location/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ly8/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    sget-object p1, Lcom/xinzhu/overmind/client/hook/proxies/location/a;->b:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onBindMethod()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-array v3, v1, [I

    .line 12
    .line 13
    const-string v4, "getContextHubHandles"

    .line 14
    .line 15
    invoke-direct {v0, v4, v3}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 19
    .line 20
    .line 21
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 22
    .line 23
    const-string v3, "getContextHubInfo"

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-direct {v0, v3, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 33
    .line 34
    const-string v3, "loadNanoApp"

    .line 35
    .line 36
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 43
    .line 44
    const-string v3, "unloadNanoApp"

    .line 45
    .line 46
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 50
    .line 51
    .line 52
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 53
    .line 54
    const-string v3, "getNanoAppInstanceInfo"

    .line 55
    .line 56
    invoke-direct {v0, v3, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 63
    .line 64
    const-string v3, "findNanoAppOnHub"

    .line 65
    .line 66
    new-array v1, v1, [I

    .line 67
    .line 68
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 75
    .line 76
    const-string v1, "sendMessage"

    .line 77
    .line 78
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 82
    .line 83
    .line 84
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 85
    .line 86
    const-string v1, "getContextHubs"

    .line 87
    .line 88
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 92
    .line 93
    .line 94
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 95
    .line 96
    const-string v1, "loadNanoAppOnHub"

    .line 97
    .line 98
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 105
    .line 106
    const-string v1, "unloadNanoAppFromHub"

    .line 107
    .line 108
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 112
    .line 113
    .line 114
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 115
    .line 116
    const-string v1, "enableNanoApp"

    .line 117
    .line 118
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 125
    .line 126
    const-string v1, "disableNanoApp"

    .line 127
    .line 128
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 135
    .line 136
    const-string v1, "queryNanoApps"

    .line 137
    .line 138
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 145
    .line 146
    const-string v1, "createClient"

    .line 147
    .line 148
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 152
    .line 153
    .line 154
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 155
    .line 156
    const-string v1, "createPendingIntentClient"

    .line 157
    .line 158
    invoke-direct {v0, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 162
    .line 163
    .line 164
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 165
    .line 166
    const-string v1, "registerCallback"

    .line 167
    .line 168
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 172
    .line 173
    .line 174
    return-void
.end method
