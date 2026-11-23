.class Lcom/join/mgps/Util/g0$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/g0;->B(Landroid/content/Context;Lcom/join/mgps/Util/g0$o0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/t;

.field final synthetic c:Lcom/join/mgps/Util/g0$o0;

.field final synthetic d:Lcom/join/mgps/Util/g0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/g0;Lcom/join/mgps/customview/t;Lcom/join/mgps/Util/g0$o0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$mDialog",
            "val$lienster"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/g0$j;->d:Lcom/join/mgps/Util/g0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/g0$j;->b:Lcom/join/mgps/customview/t;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/Util/g0$j;->c:Lcom/join/mgps/Util/g0$o0;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/Util/g0$j;->b:Lcom/join/mgps/customview/t;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/Util/g0$j;->b:Lcom/join/mgps/customview/t;

    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/Util/g0$j;->c:Lcom/join/mgps/Util/g0$o0;

    .line 17
    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-interface {p1}, Lcom/join/mgps/Util/g0$o0;->a()V

    .line 21
    .line 22
    .line 23
    :cond_1
    return-void
.end method
