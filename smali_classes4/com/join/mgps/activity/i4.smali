.class public final synthetic Lcom/join/mgps/activity/i4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/HMCloudMainActivity;

.field public final synthetic c:Landroid/view/animation/AnimationSet;

.field public final synthetic d:Landroid/widget/PopupWindow;

.field public final synthetic e:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/animation/AnimationSet;Landroid/widget/PopupWindow;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/i4;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/i4;->c:Landroid/view/animation/AnimationSet;

    iput-object p3, p0, Lcom/join/mgps/activity/i4;->d:Landroid/widget/PopupWindow;

    iput-object p4, p0, Lcom/join/mgps/activity/i4;->e:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/i4;->b:Lcom/join/mgps/activity/HMCloudMainActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/i4;->c:Landroid/view/animation/AnimationSet;

    iget-object v2, p0, Lcom/join/mgps/activity/i4;->d:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lcom/join/mgps/activity/i4;->e:Landroid/view/View;

    invoke-static {v0, v1, v2, v3}, Lcom/join/mgps/activity/HMCloudMainActivity;->e0(Lcom/join/mgps/activity/HMCloudMainActivity;Landroid/view/animation/AnimationSet;Landroid/widget/PopupWindow;Landroid/view/View;)V

    return-void
.end method
