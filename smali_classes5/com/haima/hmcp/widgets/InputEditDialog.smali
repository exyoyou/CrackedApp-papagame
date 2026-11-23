.class public Lcom/haima/hmcp/widgets/InputEditDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/widgets/InputEditDialog$OnTextSendListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "InputEditDialog"


# instance fields
.field private confirmBtn:Landroid/widget/Button;

.field protected inputManager:Landroid/view/inputmethod/InputMethodManager;

.field private mContext:Landroid/content/Context;

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mKeyEventPreImeListener:Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;

.field private mOnTextSendListener:Lcom/haima/hmcp/widgets/InputEditDialog$OnTextSendListener;

.field private messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

.field private rlDlg:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnKeyListener;Landroid/widget/TextView$OnEditorActionListener;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget v0, Lcom/haima/hmcp/R$style;->haima_hmcp_virtual_dialog:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/haima/hmcp/widgets/InputEditDialog$2;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/haima/hmcp/widgets/InputEditDialog$2;-><init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mKeyEventPreImeListener:Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mContext:Landroid/content/Context;

    .line 14
    .line 15
    sget v0, Lcom/haima/hmcp/R$layout;->hm_dialog_input_edit:I

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v1, -0x1

    .line 25
    const/4 v2, -0x2

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/view/Window;->setLayout(II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    const v1, 0x106000d

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 37
    .line 38
    .line 39
    const-string v0, "input_method"

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 46
    .line 47
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 48
    .line 49
    sget p1, Lcom/haima/hmcp/R$id;->et_input_message:I

    .line 50
    .line 51
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 58
    .line 59
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mKeyEventPreImeListener:Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;

    .line 60
    .line 61
    invoke-virtual {p1, v1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->setKeyEventListener(Lcom/haima/hmcp/widgets/view/EditTextPreIme$KeyEventPreImeListener;)V

    .line 62
    .line 63
    .line 64
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 65
    .line 66
    const/4 v1, 0x1

    .line 67
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 71
    .line 72
    invoke-virtual {p1, p4}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 73
    .line 74
    .line 75
    sget p1, Lcom/haima/hmcp/R$id;->confrim_btn:I

    .line 76
    .line 77
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    check-cast p1, Landroid/widget/Button;

    .line 82
    .line 83
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->confirmBtn:Landroid/widget/Button;

    .line 84
    .line 85
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mContext:Landroid/content/Context;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 92
    .line 93
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 94
    .line 95
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->confirmBtn:Landroid/widget/Button;

    .line 96
    .line 97
    new-instance p4, Lcom/haima/hmcp/widgets/d0;

    .line 98
    .line 99
    invoke-direct {p4, p0}, Lcom/haima/hmcp/widgets/d0;-><init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 106
    .line 107
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 108
    .line 109
    .line 110
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 111
    .line 112
    invoke-static {}, Lcom/haima/hmcp/utils/HmIMEManager;->getInstance()Lcom/haima/hmcp/utils/HmIMEManager;

    .line 113
    .line 114
    .line 115
    move-result-object p3

    .line 116
    invoke-virtual {p3}, Lcom/haima/hmcp/utils/HmIMEManager;->getCurrentActivity()Landroid/app/Activity;

    .line 117
    .line 118
    .line 119
    move-result-object p3

    .line 120
    invoke-virtual {p1, p3, p2}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->setSoftKeyListener(Landroid/app/Activity;Landroid/view/View$OnKeyListener;)V

    .line 121
    .line 122
    .line 123
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 124
    .line 125
    new-instance p2, Lcom/haima/hmcp/widgets/InputEditDialog$1;

    .line 126
    .line 127
    invoke-direct {p2, p0}, Lcom/haima/hmcp/widgets/InputEditDialog$1;-><init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->setHmKeyBoardListener(Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;)V

    .line 131
    .line 132
    .line 133
    sget p1, Lcom/haima/hmcp/R$id;->rl_outside_view:I

    .line 134
    .line 135
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 140
    .line 141
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->rlDlg:Landroid/widget/RelativeLayout;

    .line 142
    .line 143
    new-instance p2, Lcom/haima/hmcp/widgets/e0;

    .line 144
    .line 145
    invoke-direct {p2, p0}, Lcom/haima/hmcp/widgets/e0;-><init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    .line 150
    .line 151
    sget p1, Lcom/haima/hmcp/R$id;->rl_inputdlg_view:I

    .line 152
    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Landroid/widget/LinearLayout;

    .line 158
    .line 159
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 163
    .line 164
    .line 165
    new-instance p2, Lcom/haima/hmcp/widgets/f0;

    .line 166
    .line 167
    invoke-direct {p2, p0}, Lcom/haima/hmcp/widgets/f0;-><init>(Lcom/haima/hmcp/widgets/InputEditDialog;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    return-void
.end method

.method public static synthetic a(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditDialog;->lambda$new$0(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/widgets/InputEditDialog;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public static synthetic b(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditDialog;->lambda$new$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditDialog;->lambda$new$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic d(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/widget/EditText;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/widgets/InputEditDialog;->lambda$showSoftKeyboard$3(Landroid/widget/EditText;)V

    return-void
.end method

.method private synthetic lambda$new$0(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mOnTextSendListener:Lcom/haima/hmcp/widgets/InputEditDialog$OnTextSendListener;

    .line 23
    .line 24
    invoke-interface {v0, p1}, Lcom/haima/hmcp/widgets/InputEditDialog$OnTextSendListener;->onTextSend(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 30
    .line 31
    const/4 v2, 0x2

    .line 32
    invoke-virtual {p1, v0, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 33
    .line 34
    .line 35
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 38
    .line 39
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 47
    .line 48
    const-string v0, ""

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/InputEditDialog;->dismiss()V

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mContext:Landroid/content/Context;

    .line 58
    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    sget v0, Lcom/haima/hmcp/R$string;->haima_hmcp_input_content_empty:I

    .line 64
    .line 65
    invoke-static {v0}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 77
    .line 78
    const/4 v0, 0x0

    .line 79
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    sget v0, Lcom/haima/hmcp/R$id;->rl_inputdlg_view:I

    .line 6
    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/InputEditDialog;->dismiss()V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/haima/hmcp/widgets/InputEditDialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method private synthetic lambda$showSoftKeyboard$3(Landroid/widget/EditText;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->inputManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method private showSoftKeyboard(Landroid/widget/EditText;)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/haima/hmcp/widgets/c0;

    .line 15
    .line 16
    invoke-direct {v0, p0, p1}, Lcom/haima/hmcp/widgets/c0;-><init>(Lcom/haima/hmcp/widgets/InputEditDialog;Landroid/widget/EditText;)V

    .line 17
    .line 18
    .line 19
    const-wide/16 v1, 0x32

    .line 20
    .line 21
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 22
    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 5
    .line 6
    iget-object v1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 7
    .line 8
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMessageEditText()Landroid/widget/EditText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 2
    .line 3
    return-object v0
.end method

.method public setOnTextSendListener(Lcom/haima/hmcp/widgets/InputEditDialog$OnTextSendListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->mOnTextSendListener:Lcom/haima/hmcp/widgets/InputEditDialog$OnTextSendListener;

    .line 2
    .line 3
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/16 v1, 0x14

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/widgets/InputEditDialog;->messageTextView:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/haima/hmcp/widgets/InputEditDialog;->showSoftKeyboard(Landroid/widget/EditText;)V

    .line 13
    .line 14
    .line 15
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 16
    .line 17
    .line 18
    return-void
.end method
