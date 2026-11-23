.class Lcom/papa91/wrapper/SystemUiHiderHoneycomb;
.super Lcom/papa91/wrapper/SystemUiHiderBase;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private mHideFlags:I

.field private mShowFlags:I

.field private mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mSystemUiVisibilityChangeListener2:Landroid/view/View$OnSystemUiVisibilityChangeListener;

.field private mTestFlags:I

.field private mVisible:Z


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/papa91/wrapper/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mVisible:Z

    .line 6
    .line 7
    new-instance p2, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;

    .line 8
    .line 9
    invoke-direct {p2, p0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$1;-><init>(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)V

    .line 10
    .line 11
    .line 12
    iput-object p2, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener2:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 13
    .line 14
    new-instance p2, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;

    .line 15
    .line 16
    invoke-direct {p2, p0}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb$2;-><init>(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)V

    .line 17
    .line 18
    .line 19
    iput-object p2, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 20
    .line 21
    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 23
    .line 24
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 25
    .line 26
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 27
    .line 28
    iget p2, p0, Lcom/papa91/wrapper/SystemUiHider;->mFlags:I

    .line 29
    .line 30
    and-int/lit8 p3, p2, 0x2

    .line 31
    .line 32
    if-eqz p3, :cond_0

    .line 33
    .line 34
    or-int/lit16 p1, p1, 0x404

    .line 35
    .line 36
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 37
    .line 38
    :cond_0
    and-int/lit8 p1, p2, 0x6

    .line 39
    .line 40
    if-eqz p1, :cond_1

    .line 41
    .line 42
    const/4 p1, 0x2

    .line 43
    iput p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 44
    .line 45
    :cond_1
    return-void
.end method

.method static synthetic access$002(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mVisible:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic access$100(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mTestFlags:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic access$200(Lcom/papa91/wrapper/SystemUiHiderHoneycomb;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public hide()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 9
    .line 10
    iget v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mHideFlags:I

    .line 11
    .line 12
    or-int/lit8 v1, v1, 0x2

    .line 13
    .line 14
    or-int/lit16 v1, v1, 0x200

    .line 15
    .line 16
    or-int/lit16 v1, v1, 0x1000

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mVisible:Z

    .line 2
    .line 3
    return v0
.end method

.method public setup()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mSystemUiVisibilityChangeListener2:Landroid/view/View$OnSystemUiVisibilityChangeListener;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnSystemUiVisibilityChangeListener(Landroid/view/View$OnSystemUiVisibilityChangeListener;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public show()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 2
    .line 3
    iget v1, p0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;->mShowFlags:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
