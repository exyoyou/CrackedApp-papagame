.class public Lcom/haima/hmcp/widgets/HmcpHideEditText;
.super Landroid/widget/EditText;
.source "SourceFile"

# interfaces
.implements Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;
    }
.end annotation


# instance fields
.field private hmcpInputConnection:Lcom/haima/hmcp/utils/HmcpInputConnection;

.field private mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

.field private onHmKeyListener:Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/haima/hmcp/widgets/HmcpHideEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/HmcpHideEditText;->init(Landroid/content/Context;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 4

    .line 1
    const-string v0, "12702"

    .line 2
    .line 3
    const-string v1, "onCreateInputConnection\uff1ashow"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->hmcpInputConnection:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->clearHmKeyBoardListener()V

    .line 13
    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 16
    .line 17
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 22
    .line 23
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Lcom/haima/hmcp/utils/HmIMEManager;->getCurrentActivity()Landroid/app/Activity;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-direct {v0, p1, v3, v1, v2}, Lcom/haima/hmcp/utils/HmcpInputConnection;-><init>(Landroid/view/inputmethod/InputConnection;ZLcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;Landroid/app/Activity;)V

    .line 33
    .line 34
    .line 35
    iput-object v0, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->hmcpInputConnection:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 36
    .line 37
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->setListener(Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;)V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->hmcpInputConnection:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 41
    .line 42
    return-object p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "onKeyUp:"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "\u952e\u76d8\u8f93\u5165KeyUp"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->onHmKeyListener:Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;

    .line 24
    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-static {p2}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputEvent;)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->onHmKeyListener:Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;

    .line 34
    .line 35
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 36
    .line 37
    .line 38
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public onSendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    const-string v3, ")"

    .line 14
    .line 15
    const-string v4, "("

    .line 16
    .line 17
    if-eqz v2, :cond_3

    .line 18
    .line 19
    const/4 v5, 0x1

    .line 20
    if-eq v2, v5, :cond_1

    .line 21
    .line 22
    return v0

    .line 23
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string v5, "onKeyUp: "

    .line 29
    .line 30
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    const-string v2, "\u952e\u76d8\u8f93\u5165KeyUp"

    .line 54
    .line 55
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v1, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->onHmKeyListener:Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;

    .line 59
    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    invoke-interface {v1, v0, p1}, Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    return p1

    .line 71
    :cond_2
    return v0

    .line 72
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    .line 73
    .line 74
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 75
    .line 76
    .line 77
    const-string v5, "onKeyDown: "

    .line 78
    .line 79
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-static {v1}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    const-string v2, "\u952e\u76d8\u8f93\u5165KeyDown"

    .line 103
    .line 104
    invoke-static {v2, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    iget-object v1, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->onHmKeyListener:Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;

    .line 108
    .line 109
    if-eqz v1, :cond_4

    .line 110
    .line 111
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 112
    .line 113
    .line 114
    move-result v0

    .line 115
    invoke-interface {v1, v0, p1}, Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    return p1

    .line 120
    :cond_4
    return v0
.end method

.method public release()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->hmcpInputConnection:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/utils/HmcpInputConnection;->setListener(Lcom/haima/hmcp/listeners/HmcpInputConnectionListener;)V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->hmcpInputConnection:Lcom/haima/hmcp/utils/HmcpInputConnection;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/HmcpInputConnection;->clearHmKeyBoardListener()V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method public setKeyBoardListener(Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->mListener:Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 2
    .line 3
    return-void
.end method

.method public setOnHmKeyListener(Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/HmcpHideEditText;->onHmKeyListener:Lcom/haima/hmcp/widgets/HmcpHideEditText$OnHmKeyListener;

    .line 2
    .line 3
    return-void
.end method
