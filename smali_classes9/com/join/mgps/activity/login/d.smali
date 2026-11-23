.class public final synthetic Lcom/join/mgps/activity/login/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic b:Lcom/join/mgps/activity/login/LoginMainActivity$3;

.field public final synthetic c:Lcom/kongzue/dialogx/dialogs/a;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity$3;Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/mgps/activity/login/d;->b:Lcom/join/mgps/activity/login/LoginMainActivity$3;

    iput-object p2, p0, Lcom/join/mgps/activity/login/d;->c:Lcom/kongzue/dialogx/dialogs/a;

    iput-object p3, p0, Lcom/join/mgps/activity/login/d;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/login/d;->b:Lcom/join/mgps/activity/login/LoginMainActivity$3;

    iget-object v1, p0, Lcom/join/mgps/activity/login/d;->c:Lcom/kongzue/dialogx/dialogs/a;

    iget-object v2, p0, Lcom/join/mgps/activity/login/d;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p1}, Lcom/join/mgps/activity/login/LoginMainActivity$3;->d(Lcom/join/mgps/activity/login/LoginMainActivity$3;Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method
