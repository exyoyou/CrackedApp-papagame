.class public final Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;
.super Landroidx/lifecycle/ViewModel;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0013\n\u0002\u0010\u0008\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0011\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000e\u0010:\u001a\u00020;2\u0006\u0010<\u001a\u00020=J\u000e\u0010D\u001a\u00020;2\u0006\u0010<\u001a\u00020=R \u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR \u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0008\"\u0004\u0008\u0012\u0010\nR \u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0014\u0010\u0008\"\u0004\u0008\u0015\u0010\nR \u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0008\"\u0004\u0008\u0018\u0010\nR \u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001b\u0010\u0008\"\u0004\u0008\u001c\u0010\nR \u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u0008\"\u0004\u0008\u001f\u0010\nR\u001a\u0010 \u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008!\u0010\"\"\u0004\u0008#\u0010$R\u001a\u0010%\u001a\u00020\u001aX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008&\u0010\"\"\u0004\u0008\'\u0010$R\u001a\u0010(\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u001a\u0010.\u001a\u00020)X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u0010+\"\u0004\u00080\u0010-R\u001a\u00101\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00082\u0010\r\"\u0004\u00083\u0010\u000fR \u00104\u001a\u0008\u0012\u0004\u0012\u00020)0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00085\u0010\u0008\"\u0004\u00086\u0010\nR \u00107\u001a\u0008\u0012\u0004\u0012\u00020\u001a0\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u00088\u0010\u0008\"\u0004\u00089\u0010\nR\u001c\u0010>\u001a\u0004\u0018\u00010?X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010C\u00a8\u0006E"
    }
    d2 = {
        "Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;",
        "Landroidx/lifecycle/ViewModel;",
        "<init>",
        "()V",
        "moble",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "getMoble",
        "()Landroidx/lifecycle/MutableLiveData;",
        "setMoble",
        "(Landroidx/lifecycle/MutableLiveData;)V",
        "mobleNumber",
        "getMobleNumber",
        "()Ljava/lang/String;",
        "setMobleNumber",
        "(Ljava/lang/String;)V",
        "account",
        "getAccount",
        "setAccount",
        "codeText",
        "getCodeText",
        "setCodeText",
        "sendCodeButnText",
        "getSendCodeButnText",
        "setSendCodeButnText",
        "sendCodeButnColor",
        "",
        "getSendCodeButnColor",
        "setSendCodeButnColor",
        "title",
        "getTitle",
        "setTitle",
        "colorNormal",
        "getColorNormal",
        "()I",
        "setColorNormal",
        "(I)V",
        "colorWait",
        "getColorWait",
        "setColorWait",
        "canSendCode",
        "",
        "getCanSendCode",
        "()Z",
        "setCanSendCode",
        "(Z)V",
        "breakCodeCountDown",
        "getBreakCodeCountDown",
        "setBreakCodeCountDown",
        "platform",
        "getPlatform",
        "setPlatform",
        "hidesoftWard",
        "getHidesoftWard",
        "setHidesoftWard",
        "callStatus",
        "getCallStatus",
        "setCallStatus",
        "sendUnbindThridPart",
        "",
        "context",
        "Landroid/content/Context;",
        "coluting",
        "Lkotlinx/coroutines/Job;",
        "getColuting",
        "()Lkotlinx/coroutines/Job;",
        "setColuting",
        "(Lkotlinx/coroutines/Job;)V",
        "sendsmsCode",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private account:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private breakCodeCountDown:Z

.field private callStatus:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private canSendCode:Z

.field private codeText:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private colorNormal:I

.field private colorWait:I

.field private coluting:Lkotlinx/coroutines/v1;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hidesoftWard:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private moble:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private mobleNumber:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private platform:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sendCodeButnColor:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private sendCodeButnText:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private title:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    .line 5
    .line 6
    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->moble:Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    const-string v0, ""

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->mobleNumber:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 16
    .line 17
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->account:Landroidx/lifecycle/MutableLiveData;

    .line 21
    .line 22
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 23
    .line 24
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->codeText:Landroidx/lifecycle/MutableLiveData;

    .line 28
    .line 29
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 30
    .line 31
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnText:Landroidx/lifecycle/MutableLiveData;

    .line 35
    .line 36
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnColor:Landroidx/lifecycle/MutableLiveData;

    .line 42
    .line 43
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 44
    .line 45
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    .line 49
    .line 50
    const-string v1, "#3CA4FD"

    .line 51
    .line 52
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    iput v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->colorNormal:I

    .line 57
    .line 58
    const-string v1, "#4C4B5F"

    .line 59
    .line 60
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    iput v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->colorWait:I

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->canSendCode:Z

    .line 68
    .line 69
    iput-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->platform:Ljava/lang/String;

    .line 70
    .line 71
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 72
    .line 73
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 74
    .line 75
    .line 76
    iput-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->hidesoftWard:Landroidx/lifecycle/MutableLiveData;

    .line 77
    .line 78
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    .line 81
    .line 82
    .line 83
    iput-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->callStatus:Landroidx/lifecycle/MutableLiveData;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->hidesoftWard:Landroidx/lifecycle/MutableLiveData;

    .line 86
    .line 87
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    .line 93
    .line 94
    const-string v2, "\u89e3\u7ed1\u5e10\u53f7"

    .line 95
    .line 96
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->moble:Landroidx/lifecycle/MutableLiveData;

    .line 100
    .line 101
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->account:Landroidx/lifecycle/MutableLiveData;

    .line 105
    .line 106
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->codeText:Landroidx/lifecycle/MutableLiveData;

    .line 110
    .line 111
    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnText:Landroidx/lifecycle/MutableLiveData;

    .line 115
    .line 116
    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnColor:Landroidx/lifecycle/MutableLiveData;

    .line 122
    .line 123
    iget v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->colorNormal:I

    .line 124
    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 130
    .line 131
    .line 132
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->callStatus:Landroidx/lifecycle/MutableLiveData;

    .line 133
    .line 134
    const/4 v1, 0x0

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method


# virtual methods
.method public final getAccount()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->account:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getBreakCodeCountDown()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->breakCodeCountDown:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCallStatus()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->callStatus:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCanSendCode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->canSendCode:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getCodeText()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->codeText:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getColorNormal()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->colorNormal:I

    .line 2
    .line 3
    return v0
.end method

.method public final getColorWait()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->colorWait:I

    .line 2
    .line 3
    return v0
.end method

.method public final getColuting()Lkotlinx/coroutines/v1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->coluting:Lkotlinx/coroutines/v1;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHidesoftWard()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->hidesoftWard:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMoble()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->moble:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMobleNumber()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->mobleNumber:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlatform()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->platform:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSendCodeButnColor()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnColor:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSendCodeButnText()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnText:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getTitle()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    .line 2
    .line 3
    return-object v0
.end method

.method public final sendUnbindThridPart(Landroid/content/Context;)V
    .locals 10
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 15
    .line 16
    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 17
    .line 18
    .line 19
    new-instance v9, Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;

    .line 20
    .line 21
    iget-object v3, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->mobleNumber:Ljava/lang/String;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->codeText:Landroidx/lifecycle/MutableLiveData;

    .line 24
    .line 25
    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v4

    .line 33
    const-string v5, ""

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    const-string v0, "getToken(...)"

    .line 44
    .line 45
    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v8, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->platform:Ljava/lang/String;

    .line 49
    .line 50
    move-object v2, v9

    .line 51
    invoke-direct/range {v2 .. v8}, Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object v9, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 55
    .line 56
    iget-object v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->hidesoftWard:Landroidx/lifecycle/MutableLiveData;

    .line 57
    .line 58
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 64
    .line 65
    move-object v2, v0

    .line 66
    check-cast v2, Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;

    .line 67
    .line 68
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v2, v0}, Lcom/join/kotlin/ui/account/modle/UnThirdPartRequest;->setSign(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    sget-object v3, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 76
    .line 77
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    const/4 v5, 0x0

    .line 82
    new-instance v6, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;

    .line 83
    .line 84
    const/4 v0, 0x0

    .line 85
    invoke-direct {v6, v1, p1, p0, v0}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendUnbindThridPart$job$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroid/content/Context;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Lkotlin/coroutines/Continuation;)V

    .line 86
    .line 87
    .line 88
    const/4 v7, 0x2

    .line 89
    const/4 v8, 0x0

    .line 90
    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 91
    .line 92
    .line 93
    return-void
.end method

.method public final sendsmsCode(Landroid/content/Context;)V
    .locals 8
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "context"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->canSendCode:Z

    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->canSendCode:Z

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/dto/MMSRequesBean;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->mobleNumber:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v1, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_BIND:I

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v0}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    sget-object v2, Lkotlinx/coroutines/o1;->b:Lkotlinx/coroutines/o1;

    .line 37
    .line 38
    invoke-static {}, Lkotlinx/coroutines/z0;->c()Lkotlinx/coroutines/CoroutineDispatcher;

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    const/4 v4, 0x0

    .line 43
    new-instance v5, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-direct {v5, v0, p0, p1, v1}, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle$sendsmsCode$job$1;-><init>(Lcom/join/mgps/dto/MMSRequesBean;Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;Landroid/content/Context;Lkotlin/coroutines/Continuation;)V

    .line 47
    .line 48
    .line 49
    const/4 v6, 0x2

    .line 50
    const/4 v7, 0x0

    .line 51
    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/h;->e(Lkotlinx/coroutines/l0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/v1;

    .line 52
    .line 53
    .line 54
    return-void
.end method

.method public final setAccount(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->account:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setBreakCodeCountDown(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->breakCodeCountDown:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCallStatus(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->callStatus:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setCanSendCode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->canSendCode:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setCodeText(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->codeText:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setColorNormal(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->colorNormal:I

    .line 2
    .line 3
    return-void
.end method

.method public final setColorWait(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->colorWait:I

    .line 2
    .line 3
    return-void
.end method

.method public final setColuting(Lkotlinx/coroutines/v1;)V
    .locals 0
    .param p1    # Lkotlinx/coroutines/v1;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->coluting:Lkotlinx/coroutines/v1;

    .line 2
    .line 3
    return-void
.end method

.method public final setHidesoftWard(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->hidesoftWard:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setMoble(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->moble:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setMobleNumber(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->mobleNumber:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setPlatform(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->platform:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setSendCodeButnColor(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnColor:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setSendCodeButnText(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->sendCodeButnText:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method

.method public final setTitle(Landroidx/lifecycle/MutableLiveData;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/MutableLiveData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/ui/account/viewmodle/UnbindViewModle;->title:Landroidx/lifecycle/MutableLiveData;

    .line 7
    .line 8
    return-void
.end method
