.class public final synthetic Lcom/join/mgps/activity/m5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Landroid/view/animation/AnimationSet;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Landroid/widget/PopupWindow;


# direct methods
.method public synthetic constructor <init>(Landroid/view/animation/AnimationSet;Landroid/view/View;Landroid/widget/PopupWindow;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/m5;->b:Landroid/view/animation/AnimationSet;

    iput-object p2, p0, Lcom/join/mgps/activity/m5;->c:Landroid/view/View;

    iput-object p3, p0, Lcom/join/mgps/activity/m5;->d:Landroid/widget/PopupWindow;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/m5;->b:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/join/mgps/activity/m5;->c:Landroid/view/View;

    iget-object v2, p0, Lcom/join/mgps/activity/m5;->d:Landroid/widget/PopupWindow;

    invoke-static {v0, v1, v2}, Lcom/join/mgps/activity/HMCloudMenuActivity;->A(Landroid/view/animation/AnimationSet;Landroid/view/View;Landroid/widget/PopupWindow;)V

    return-void
.end method
