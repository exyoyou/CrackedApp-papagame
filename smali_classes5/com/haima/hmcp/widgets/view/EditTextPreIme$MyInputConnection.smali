.class Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/widgets/view/EditTextPreIme;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyInputConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Landroid/view/inputmethod/InputConnection;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public deleteSurroundingText(II)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_1

    .line 3
    .line 4
    if-nez p2, :cond_1

    .line 5
    .line 6
    new-instance p1, Landroid/view/KeyEvent;

    .line 7
    .line 8
    const/4 p2, 0x0

    .line 9
    const/16 v1, 0x43

    .line 10
    .line 11
    invoke-direct {p1, p2, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    new-instance p1, Landroid/view/KeyEvent;

    .line 21
    .line 22
    invoke-direct {p1, v0, v1}, Landroid/view/KeyEvent;-><init>(II)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const/4 v0, 0x0

    .line 33
    :goto_0
    return v0

    .line 34
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->deleteSurroundingText(II)Z

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    return p1
.end method

.method public finishComposingText()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$100()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "==finishComposingText===="

    .line 6
    .line 7
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$200(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$300(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Lcom/haima/hmcp/utils/HmIMEManager$HmKeyBoardListener;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 27
    .line 28
    const/4 v1, 0x1

    .line 29
    invoke-static {v0, v1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$202(Lcom/haima/hmcp/widgets/view/EditTextPreIme;Z)Z

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 33
    .line 34
    invoke-static {v0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$500(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Landroid/os/Handler;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 39
    .line 40
    invoke-static {v1}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$400(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Ljava/lang/Runnable;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    const-wide/16 v2, 0x64

    .line 45
    .line 46
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 47
    .line 48
    .line 49
    :cond_0
    invoke-super {p0}, Landroid/view/inputmethod/InputConnectionWrapper;->finishComposingText()Z

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    return v0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/view/inputmethod/InputConnectionWrapper;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    .line 3
    .line 4
    .line 5
    move-result-object v0

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 13
    .line 14
    invoke-static {v0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$000(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Landroid/view/View$OnKeyListener;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    iget-object v0, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 21
    .line 22
    invoke-static {v0}, Lcom/haima/hmcp/widgets/view/EditTextPreIme;->access$000(Lcom/haima/hmcp/widgets/view/EditTextPreIme;)Landroid/view/View$OnKeyListener;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/haima/hmcp/widgets/view/EditTextPreIme$MyInputConnection;->this$0:Lcom/haima/hmcp/widgets/view/EditTextPreIme;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 29
    .line 30
    .line 31
    move-result v2

    .line 32
    invoke-interface {v0, v1, v2, p1}, Landroid/view/View$OnKeyListener;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    .line 33
    .line 34
    .line 35
    :cond_0
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    return p1
.end method
