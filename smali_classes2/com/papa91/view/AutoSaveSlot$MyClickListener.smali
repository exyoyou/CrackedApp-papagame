.class public Lcom/papa91/view/AutoSaveSlot$MyClickListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/AutoSaveSlot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyClickListener"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;
    }
.end annotation


# static fields
.field private static timeout:I = 0x190


# instance fields
.field private clickCount:I

.field private handler:Landroid/os/Handler;

.field private myClickCallBack:Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->myClickCallBack:Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    .line 8
    .line 9
    new-instance p1, Landroid/os/Handler;

    .line 10
    .line 11
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->handler:Landroid/os/Handler;

    .line 15
    .line 16
    return-void
.end method

.method static synthetic access$000(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$002(Lcom/papa91/view/AutoSaveSlot$MyClickListener;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->myClickCallBack:Lcom/papa91/view/AutoSaveSlot$MyClickListener$MyClickCallBack;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->handler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-nez p1, :cond_0

    .line 6
    .line 7
    iget p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    .line 8
    .line 9
    add-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    iput p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->clickCount:I

    .line 12
    .line 13
    iget-object p1, p0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->handler:Landroid/os/Handler;

    .line 14
    .line 15
    new-instance p2, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;

    .line 16
    .line 17
    invoke-direct {p2, p0}, Lcom/papa91/view/AutoSaveSlot$MyClickListener$1;-><init>(Lcom/papa91/view/AutoSaveSlot$MyClickListener;)V

    .line 18
    .line 19
    .line 20
    sget v0, Lcom/papa91/view/AutoSaveSlot$MyClickListener;->timeout:I

    .line 21
    .line 22
    int-to-long v0, v0

    .line 23
    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    :cond_0
    const/4 p1, 0x0

    .line 27
    return p1
.end method
