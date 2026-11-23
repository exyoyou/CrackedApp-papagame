.class public Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;
.super Lcom/join/mgps/activity/BaseAccountActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$g;,
        Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$f;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0765
.end annotation


# instance fields
.field private SMS_INBOX:Landroid/net/Uri;

.field application:Lcom/MApplication;

.field private code:Ljava/lang/String;

.field codeSize:I

.field private dialog:Lcom/join/mgps/dialog/f1;

.field mmsCode:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field phoneNumber:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private phonemuber:Ljava/lang/String;

.field resendCode:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcAccountClient:Lcom/join/mgps/rpc/b;

.field sendCode:Landroid/widget/Button;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field public smsHandler:Landroid/os/Handler;

.field private smsObserver:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$f;

.field time:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$g;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/BaseAccountActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->codeSize:I

    .line 6
    .line 7
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$a;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$a;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->smsHandler:Landroid/os/Handler;

    .line 13
    .line 14
    const-string v0, "content://sms/"

    .line 15
    .line 16
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->SMS_INBOX:Landroid/net/Uri;

    .line 21
    .line 22
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->showDialog()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private showDialog()V
    .locals 6

    .line 1
    new-instance v0, Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    const v1, 0x7f1301b0

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/customview/t;-><init>(Landroid/content/Context;I)V

    .line 7
    .line 8
    .line 9
    const v1, 0x7f0d0187

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setContentView(I)V

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0a04b2

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Landroid/widget/Button;

    .line 23
    .line 24
    const v3, 0x7f0a04b8

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v4

    .line 31
    check-cast v4, Landroid/widget/Button;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/Button;

    .line 38
    .line 39
    const-string v5, "\u8fd4\u56de"

    .line 40
    .line 41
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    const-string v4, "\u7b49\u5f85"

    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    .line 48
    .line 49
    const v1, 0x7f0a1762

    .line 50
    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    check-cast v1, Landroid/widget/TextView;

    .line 57
    .line 58
    const-string v4, "\u63a5\u6536\u77ed\u4fe1\u7a0d\u6709\u5ef6\u8fdf\uff0c\u786e\u8ba4\u8fd4\u56de\u5417\uff1f"

    .line 59
    .line 60
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    .line 62
    .line 63
    new-instance v1, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$d;

    .line 64
    .line 65
    invoke-direct {v1, p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$d;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;Landroid/app/Dialog;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    check-cast v1, Landroid/widget/Button;

    .line 76
    .line 77
    new-instance v2, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$e;

    .line 78
    .line 79
    invoke-direct {v2, p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$e;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;Landroid/app/Dialog;)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 86
    .line 87
    .line 88
    return-void
.end method


# virtual methods
.method afterview()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/a;->c0()Lcom/join/mgps/rpc/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/MApplication;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->application:Lcom/MApplication;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Lcom/MApplication;->i(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/BaseAccountActivity;->titleText:Landroid/widget/TextView;

    .line 19
    .line 20
    const-string v1, "\u586b\u5199\u9a8c\u8bc1\u7801"

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->sendCode:Landroid/widget/Button;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/join/mgps/Util/h0;->h0(Landroid/content/Context;)Lcom/join/mgps/Util/h0;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/g0;->x(Landroid/content/Context;)Lcom/join/mgps/dialog/f1;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->dialog:Lcom/join/mgps/dialog/f1;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    const-string v2, "phonenumber"

    .line 46
    .line 47
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 52
    .line 53
    const-string v2, "+86"

    .line 54
    .line 55
    const-string v3, ""

    .line 56
    .line 57
    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->sendCode:Landroid/widget/Button;

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$b;

    .line 69
    .line 70
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$b;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/BaseAccountActivity;->setOnclickBack(Landroid/view/View$OnClickListener;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phoneNumber:Landroid/widget/TextView;

    .line 77
    .line 78
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 79
    .line 80
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 84
    .line 85
    const/4 v2, 0x3

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 90
    .line 91
    const/4 v1, 0x7

    .line 92
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 96
    .line 97
    const/16 v2, 0xb

    .line 98
    .line 99
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :catch_0
    move-exception v0

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 105
    .line 106
    .line 107
    :goto_0
    new-instance v0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$g;

    .line 108
    .line 109
    const-wide/32 v3, 0xea60

    .line 110
    .line 111
    .line 112
    const-wide/16 v5, 0x3e8

    .line 113
    .line 114
    move-object v1, v0

    .line 115
    move-object v2, p0

    .line 116
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$g;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;JJ)V

    .line 117
    .line 118
    .line 119
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->time:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$g;

    .line 120
    .line 121
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->mmsCode:Landroid/widget/EditText;

    .line 125
    .line 126
    new-instance v1, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$c;

    .line 127
    .line 128
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$c;-><init>(Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 132
    .line 133
    .line 134
    return-void
.end method

.method error(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getSmsFromPhone()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v6, "body"

    .line 6
    .line 7
    filled-new-array {v6}, [Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "date >  "

    .line 17
    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    const-wide/32 v7, 0x927c0

    .line 26
    .line 27
    .line 28
    sub-long/2addr v3, v7

    .line 29
    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->SMS_INBOX:Landroid/net/Uri;

    .line 37
    .line 38
    const/4 v4, 0x0

    .line 39
    const-string v5, "date desc"

    .line 40
    .line 41
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-nez v0, :cond_0

    .line 46
    .line 47
    return-void

    .line 48
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    if-eqz v1, :cond_2

    .line 53
    .line 54
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    const-string v1, "\u609f\u996d\u6e38\u620f\u5385"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 65
    .line 66
    .line 67
    move-result v1

    .line 68
    if-eqz v1, :cond_2

    .line 69
    .line 70
    const-string v1, "\\d+"

    .line 71
    .line 72
    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 73
    .line 74
    .line 75
    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_1
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_2

    .line 85
    .line 86
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 91
    .line 92
    .line 93
    move-result v2

    .line 94
    const/4 v3, 0x6

    .line 95
    if-ne v2, v3, :cond_1

    .line 96
    .line 97
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->mmsCode:Landroid/widget/EditText;

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    const/4 v0, 0x4

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->showDialog()V

    .line 5
    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method protected onPause()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onPause()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method reGetCodeSuccess()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "\u83b7\u53d6\u9a8c\u8bc1\u7801\u6210\u529f"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method registerSendCode(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->showLoding()V

    .line 10
    .line 11
    .line 12
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/AccountMMSCheckCodebean;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;-><init>()V

    .line 15
    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setMobile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 20
    .line 21
    .line 22
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    const/4 p1, 0x0

    .line 32
    :goto_0
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setCode(I)V

    .line 33
    .line 34
    .line 35
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->setSign(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 43
    .line 44
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountMMSCheckCodebean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p1, v1}, Lcom/join/mgps/rpc/b;->d(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    .line 60
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 65
    .line 66
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 67
    .line 68
    .line 69
    move-result v1

    .line 70
    if-eqz v1, :cond_0

    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->sendCodeSuccess()V

    .line 73
    .line 74
    .line 75
    goto :goto_1

    .line 76
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 81
    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->showLodingDismis()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 94
    .line 95
    .line 96
    goto :goto_2

    .line 97
    :catch_1
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->showLodingDismis()V

    .line 102
    .line 103
    .line 104
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    .line 105
    .line 106
    .line 107
    goto :goto_2

    .line 108
    :cond_2
    const-string p1, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 109
    .line 110
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void
.end method

.method resendCode()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->resendgetCode()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method resendgetCode()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    const-string v0, "\u8fde\u63a5\u5931\u8d25\uff0c\u8bf7\u7a0d\u540e\u518d\u8bd5\u3002"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->time:Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish$g;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 12
    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/MMSRequesBean;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/join/mgps/dto/MMSRequesBean;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setMobile(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    sget v2, Lcom/join/mgps/dto/MMSRequesBean;->TYPE_FORGOT:I

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setType(I)V

    .line 27
    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/Util/k2;->g(Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/MMSRequesBean;->setSign(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->rpcAccountClient:Lcom/join/mgps/rpc/b;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/join/mgps/dto/MMSRequesBean;->getParams()Lorg/springframework/util/LinkedMultiValueMap;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    invoke-interface {v2, v1}, Lcom/join/mgps/rpc/b;->e(Ljava/util/Map;)Lcom/join/mgps/dto/AccountResultMainBean;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    if-eqz v1, :cond_1

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getError()I

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    check-cast v2, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 59
    .line 60
    invoke-virtual {v2}, Lcom/join/mgps/dto/AccountTokenSuccess;->is_success()Z

    .line 61
    .line 62
    .line 63
    move-result v2

    .line 64
    if-eqz v2, :cond_0

    .line 65
    .line 66
    invoke-virtual {p0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->reGetCodeSuccess()V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountResultMainBean;->getData()Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Lcom/join/mgps/dto/AccountTokenSuccess;

    .line 75
    .line 76
    invoke-virtual {v1}, Lcom/join/mgps/dto/AccountTokenSuccess;->getError_msg()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v1

    .line 80
    invoke-virtual {p0, v1}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_1
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    .line 86
    .line 87
    goto :goto_0

    .line 88
    :catch_0
    move-exception v1

    .line 89
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    const-string v0, "\u6ca1\u6709\u7f51\u7edc\uff0c\u8bf7\u5148\u68c0\u67e5\u7f51\u7edc\u3002"

    .line 97
    .line 98
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->error(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    return-void
.end method

.method sendCode()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->mmsCode:Landroid/widget/EditText;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->code:Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->code:Ljava/lang/String;

    .line 24
    .line 25
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->j(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->code:Ljava/lang/String;

    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    const/4 v1, 0x6

    .line 38
    if-ne v0, v1, :cond_0

    .line 39
    .line 40
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->code:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->registerSendCode(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    const-string v1, "\u8f93\u5165\u683c\u5f0f\u6709\u8bef"

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :goto_0
    return-void
.end method

.method sendCodeSuccess()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/MyAccountGetpassByPhone_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "phoneNumber"

    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->phonemuber:Ljava/lang/String;

    .line 11
    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 13
    .line 14
    .line 15
    const-string v1, "MMSCode"

    .line 16
    .line 17
    iget-object v2, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->code:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method showLoding()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLodingDismis()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MyAccountMMSCodeGetpassbackFinish;->dialog:Lcom/join/mgps/dialog/f1;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method
