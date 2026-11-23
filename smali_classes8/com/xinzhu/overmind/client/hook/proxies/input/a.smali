.class public Lcom/xinzhu/overmind/client/hook/proxies/input/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final b:Ljava/lang/String; = "input_method"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "input_method"

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
    const-string v0, "input_method"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lz9/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "input_method"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 12
    .line 13
    new-instance v1, Lz8/a;

    .line 14
    .line 15
    invoke-direct {v1, p1}, Lz8/a;-><init>(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Lz8/a;->a()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    move-object p1, p2

    .line 25
    check-cast p1, Landroid/os/IInterface;

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Lz8/a;->c(Landroid/os/IInterface;)Z

    .line 28
    .line 29
    .line 30
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 35
    .line 36
    invoke-static {}, Lo9/a;->a()Z

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    invoke-static {p2}, Lo9/a;->c(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_1

    .line 2
    .line 3
    array-length v0, p3

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    aget-object v2, p3, v1

    .line 8
    .line 9
    instance-of v3, v2, Landroid/view/inputmethod/EditorInfo;

    .line 10
    .line 11
    if-eqz v3, :cond_0

    .line 12
    .line 13
    check-cast v2, Landroid/view/inputmethod/EditorInfo;

    .line 14
    .line 15
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v3

    .line 19
    iput-object v3, v2, Landroid/view/inputmethod/EditorInfo;->packageName:Ljava/lang/String;

    .line 20
    .line 21
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/b;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    return-object p1
.end method

.method protected onBindMethod()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 7
    .line 8
    const-string v2, "getInputMethodList"

    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-direct {v0, v2, v1, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 15
    .line 16
    .line 17
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 18
    .line 19
    const-string v1, "getEnabledInputMethodList"

    .line 20
    .line 21
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 22
    .line 23
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 27
    .line 28
    .line 29
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 36
    .line 37
    const-string v1, "startInputOrWindowGainedFocus"

    .line 38
    .line 39
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 40
    .line 41
    const/16 v4, 0xa

    .line 42
    .line 43
    invoke-direct {v0, v1, v2, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 50
    .line 51
    const-string v1, "startInputOrWindowGainedFocusAsync"

    .line 52
    .line 53
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 54
    .line 55
    invoke-direct {v0, v1, v2, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 59
    .line 60
    .line 61
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 62
    .line 63
    const-string v1, "isStylusHandwritingAvailableAsUser"

    .line 64
    .line 65
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 66
    .line 67
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 71
    .line 72
    .line 73
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 74
    .line 75
    const-string v1, "getCurrentInputMethodInfoAsUser"

    .line 76
    .line 77
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 78
    .line 79
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 83
    .line 84
    .line 85
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 86
    .line 87
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 88
    .line 89
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 90
    .line 91
    const-string v4, "getEnabledInputMethodSubtypeList"

    .line 92
    .line 93
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 97
    .line 98
    .line 99
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 100
    .line 101
    const-string v1, "acceptStylusHandwritingDelegation"

    .line 102
    .line 103
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 104
    .line 105
    const/4 v4, 0x1

    .line 106
    invoke-direct {v0, v1, v2, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 113
    .line 114
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 115
    .line 116
    const-string v2, "prepareStylusHandwritingDelegation"

    .line 117
    .line 118
    invoke-direct {v0, v2, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 122
    .line 123
    .line 124
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 125
    .line 126
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 127
    .line 128
    invoke-direct {v0, v2, v1, v4}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 132
    .line 133
    .line 134
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 135
    .line 136
    const-string v1, "getCurrentInputMethodSubtype"

    .line 137
    .line 138
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 139
    .line 140
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 147
    .line 148
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 149
    .line 150
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 151
    .line 152
    const-string v4, "setAdditionalInputMethodSubtypes"

    .line 153
    .line 154
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 161
    .line 162
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 163
    .line 164
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 165
    .line 166
    const-string v4, "setExplicitlyEnabledInputMethodSubtypes"

    .line 167
    .line 168
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 175
    .line 176
    const-string v1, "getLastInputMethodSubtype"

    .line 177
    .line 178
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 179
    .line 180
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 184
    .line 185
    .line 186
    :cond_0
    return-void
.end method
