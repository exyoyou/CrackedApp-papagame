.class Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->a(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->c()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e:Lcom/kongzue/dialogx/dialogs/CustomDialog;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->b:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 12
    .line 13
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->a(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 14
    .line 15
    .line 16
    new-instance v0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;

    .line 17
    .line 18
    invoke-direct {v0, p0}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g$a;-><init>(Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/CustomDialog$f$g;->b:Lcom/kongzue/dialogx/dialogs/CustomDialog$f;

    .line 22
    .line 23
    const/4 v2, 0x0

    .line 24
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog$f;->e(Landroid/view/animation/Animation;)J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    invoke-static {v0, v1, v2}, Lcom/kongzue/dialogx/dialogs/CustomDialog;->j1(Ljava/lang/Runnable;J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
