.class public abstract Lcom/papa91/wrapper/SystemUiHider;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;
    }
.end annotation


# static fields
.field public static final FLAG_FULLSCREEN:I = 0x2

.field public static final FLAG_HIDE_NAVIGATION:I = 0x6

.field public static final FLAG_LAYOUT_IN_SCREEN_OLDER_DEVICES:I = 0x1

.field private static sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAnchorView:Landroid/view/View;

.field protected mFlags:I

.field protected mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/papa91/wrapper/SystemUiHider$1;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa91/wrapper/SystemUiHider$1;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/papa91/wrapper/SystemUiHider;->sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 7
    .line 8
    return-void
.end method

.method protected constructor <init>(Landroid/app/Activity;Landroid/view/View;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/papa91/wrapper/SystemUiHider;->sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 5
    .line 6
    iput-object v0, p0, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHider;->mActivity:Landroid/app/Activity;

    .line 9
    .line 10
    iput-object p2, p0, Lcom/papa91/wrapper/SystemUiHider;->mAnchorView:Landroid/view/View;

    .line 11
    .line 12
    iput p3, p0, Lcom/papa91/wrapper/SystemUiHider;->mFlags:I

    .line 13
    .line 14
    return-void
.end method

.method public static getInstance(Landroid/app/Activity;Landroid/view/View;I)Lcom/papa91/wrapper/SystemUiHider;
    .locals 2

    .line 1
    sget v0, Lcom/papa91/wrapper/Wrapper;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0xb

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    new-instance v0, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;

    .line 8
    .line 9
    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/wrapper/SystemUiHiderHoneycomb;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    new-instance v0, Lcom/papa91/wrapper/SystemUiHiderBase;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1, p2}, Lcom/papa91/wrapper/SystemUiHiderBase;-><init>(Landroid/app/Activity;Landroid/view/View;I)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method


# virtual methods
.method public abstract hide()V
.end method

.method public abstract isVisible()Z
.end method

.method public setOnVisibilityChangeListener(Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/papa91/wrapper/SystemUiHider;->sDummyListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 4
    .line 5
    :cond_0
    iput-object p1, p0, Lcom/papa91/wrapper/SystemUiHider;->mOnVisibilityChangeListener:Lcom/papa91/wrapper/SystemUiHider$OnVisibilityChangeListener;

    .line 6
    .line 7
    return-void
.end method

.method public abstract setup()V
.end method

.method public abstract show()V
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/papa91/wrapper/SystemUiHider;->isVisible()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/papa91/wrapper/SystemUiHider;->hide()V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/papa91/wrapper/SystemUiHider;->show()V

    .line 12
    .line 13
    .line 14
    :goto_0
    return-void
.end method
