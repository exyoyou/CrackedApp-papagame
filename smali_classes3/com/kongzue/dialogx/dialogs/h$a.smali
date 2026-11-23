.class Lcom/kongzue/dialogx/dialogs/h$a;
.super Lcom/kongzue/dialogx/interfaces/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/h;->s0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$a;->a:Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-direct {p0}, Lcom/kongzue/dialogx/interfaces/d;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/h$a;->a:Lcom/kongzue/dialogx/dialogs/h;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/h;->S2()Lcom/kongzue/dialogx/dialogs/g$e;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/g$e;->c:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p1, v0}, Lcom/kongzue/dialogx/dialogs/h;->O4(Lcom/kongzue/dialogx/dialogs/h;F)F

    .line 14
    .line 15
    .line 16
    return-void
.end method
