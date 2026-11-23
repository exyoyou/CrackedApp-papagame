.class public Lcom/haima/hmcp/utils/SoftKeyBoardListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SoftKeyBoardListener"

.field public static rootViewVisibleHeight:I

.field private static softKeyBoardListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener;


# instance fields
.field private final REFER_HEIGHT:I

.field private activitySoftReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private onSoftKeyBoardChangeListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0xc8

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->REFER_HEIGHT:I

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->activitySoftReference:Ljava/lang/ref/SoftReference;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 16
    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->activitySoftReference:Ljava/lang/ref/SoftReference;

    .line 20
    .line 21
    :cond_1
    new-instance v0, Ljava/lang/ref/SoftReference;

    .line 22
    .line 23
    invoke-direct {v0, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->activitySoftReference:Ljava/lang/ref/SoftReference;

    .line 27
    .line 28
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    new-instance v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;

    .line 43
    .line 44
    invoke-direct {v0, p0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener$1;-><init>(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method static synthetic access$002(Lcom/haima/hmcp/utils/SoftKeyBoardListener;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$100(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$200(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Landroid/app/Activity;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->getActivity()Landroid/app/Activity;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$300(Lcom/haima/hmcp/utils/SoftKeyBoardListener;)Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 2
    .line 3
    return-object p0
.end method

.method public static clearVisibleHeight()V
    .locals 2

    .line 1
    const-string v0, "SoftKeyBoardListener"

    .line 2
    .line 3
    const-string v1, "\u952e\u76d8-\u53ef\u89c1\u9ad8\u5ea6\u6e05\u96f6"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootViewVisibleHeight:I

    .line 10
    .line 11
    return-void
.end method

.method private getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->activitySoftReference:Ljava/lang/ref/SoftReference;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/app/Activity;

    .line 12
    .line 13
    :goto_0
    return-object v0
.end method

.method public static setListener(Landroid/app/Activity;Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->softKeyBoardListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->release()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    sput-object v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->softKeyBoardListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 10
    .line 11
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    .line 13
    new-instance v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;-><init>(Landroid/app/Activity;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->softKeyBoardListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->setOnSoftKeyBoardChangeListener(Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method

.method private setOnSoftKeyBoardChangeListener(Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 2
    .line 3
    return-void
.end method


# virtual methods
.method public release()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, " \u952e\u76d8-release called"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "SoftKeyBoardListener"

    .line 23
    .line 24
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    invoke-static {}, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->clearVisibleHeight()V

    .line 28
    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->onSoftKeyBoardChangeListener:Lcom/haima/hmcp/utils/SoftKeyBoardListener$OnSoftKeyBoardChangeListener;

    .line 32
    .line 33
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 34
    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 38
    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v2, " \u952e\u76d8-release removeOnGlobalLayoutListener called"

    .line 54
    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->rootView:Landroid/view/View;

    .line 66
    .line 67
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->onGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/utils/SoftKeyBoardListener;->activitySoftReference:Ljava/lang/ref/SoftReference;

    .line 77
    .line 78
    if-eqz v0, :cond_1

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->clear()V

    .line 81
    .line 82
    .line 83
    :cond_1
    return-void
.end method
