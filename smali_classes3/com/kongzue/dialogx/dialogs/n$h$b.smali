.class Lcom/kongzue/dialogx/dialogs/n$h$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/n$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/n$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/n$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/n$h$b;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/n$h$b;->a:Lcom/kongzue/dialogx/dialogs/n$h;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/n$h;->h:Lcom/kongzue/dialogx/dialogs/n;

    .line 4
    .line 5
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/n;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 6
    .line 7
    sget-object v2, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;->TOP_INSIDE:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopTipSettings$ALIGN;

    .line 8
    .line 9
    if-ne v1, v2, :cond_0

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/n$h;->b:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
