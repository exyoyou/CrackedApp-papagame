.class public final synthetic Lcom/join/mgps/activity/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/popwindow/view/PopWindowView$c;


# instance fields
.field public final synthetic a:Lcom/join/mgps/activity/CreateEndGameActivity;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/CreateEndGameActivity;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/t0;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    iput-object p2, p0, Lcom/join/mgps/activity/t0;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/t0;->a:Lcom/join/mgps/activity/CreateEndGameActivity;

    iget-object v1, p0, Lcom/join/mgps/activity/t0;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/join/mgps/activity/CreateEndGameActivity;->j(Lcom/join/mgps/activity/CreateEndGameActivity;Landroid/view/View;)V

    return-void
.end method
