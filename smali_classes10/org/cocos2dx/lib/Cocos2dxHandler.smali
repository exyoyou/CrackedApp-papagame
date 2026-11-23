.class public Lorg/cocos2dx/lib/Cocos2dxHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;,
        Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;
    }
.end annotation


# static fields
.field public static final HANDLER_SHOW_DIALOG:I = 0x1

.field public static final HANDLER_SHOW_EDITBOX_DIALOG:I = 0x2


# instance fields
.field private mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lorg/cocos2dx/lib/Cocos2dxActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/cocos2dx/lib/Cocos2dxActivity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method private showDialog(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lorg/cocos2dx/lib/Cocos2dxActivity;

    .line 8
    .line 9
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;

    .line 12
    .line 13
    new-instance v1, Landroid/app/AlertDialog$Builder;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->titile:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget-object p1, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$DialogMessage;->message:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    new-instance v0, Lorg/cocos2dx/lib/Cocos2dxHandler$1;

    .line 31
    .line 32
    invoke-direct {v0, p0}, Lorg/cocos2dx/lib/Cocos2dxHandler$1;-><init>(Lorg/cocos2dx/lib/Cocos2dxHandler;)V

    .line 33
    .line 34
    .line 35
    const-string v1, "Ok"

    .line 36
    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 46
    .line 47
    .line 48
    return-void
.end method

.method private showEditBoxDialog(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;

    .line 4
    .line 5
    new-instance v8, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;

    .line 6
    .line 7
    iget-object v0, p0, Lorg/cocos2dx/lib/Cocos2dxHandler;->mActivity:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    move-object v1, v0

    .line 14
    check-cast v1, Landroid/content/Context;

    .line 15
    .line 16
    iget-object v2, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->title:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v3, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->content:Ljava/lang/String;

    .line 19
    .line 20
    iget v4, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputMode:I

    .line 21
    .line 22
    iget v5, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->inputFlag:I

    .line 23
    .line 24
    iget v6, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->returnType:I

    .line 25
    .line 26
    iget v7, p1, Lorg/cocos2dx/lib/Cocos2dxHandler$EditBoxMessage;->maxLength:I

    .line 27
    .line 28
    move-object v0, v8

    .line 29
    invoke-direct/range {v0 .. v7}, Lorg/cocos2dx/lib/Cocos2dxEditBoxDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IIII)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 33
    .line 34
    .line 35
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_1

    .line 5
    .line 6
    const/4 v1, 0x2

    .line 7
    if-eq v0, v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHandler;->showEditBoxDialog(Landroid/os/Message;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lorg/cocos2dx/lib/Cocos2dxHandler;->showDialog(Landroid/os/Message;)V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method
