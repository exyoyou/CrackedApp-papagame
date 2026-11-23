.class Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;->b:Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x3

    .line 6
    if-eq p1, v0, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;->b:Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->getFromActivity()Landroid/app/Activity;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    .line 16
    iget-object p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;->b:Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->getFromActivity()Landroid/app/Activity;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    if-eqz p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;->b:Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->getFromActivity()Landroid/app/Activity;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    instance-of p1, p1, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 31
    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity$a;->b:Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/kongzue/dialogx/util/DialogXFloatingWindowActivity;->getFromActivity()Landroid/app/Activity;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1, p2}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    return p1

    .line 45
    :cond_0
    const/4 p1, 0x0

    .line 46
    return p1
.end method
