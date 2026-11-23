.class Lcom/kongzue/dialogx/dialogs/l$h$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kongzue/dialogx/interfaces/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/l$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/kongzue/dialogx/dialogs/l$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/l$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$d;->a:Lcom/kongzue/dialogx/dialogs/l$h;

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
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$d;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/l;->S:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 6
    .line 7
    sget-object v3, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 8
    .line 9
    if-ne v2, v3, :cond_1

    .line 10
    .line 11
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-static {v1}, Lcom/kongzue/dialogx/dialogs/l;->V0(Lcom/kongzue/dialogx/dialogs/l;)F

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    cmpg-float v1, v1, v2

    .line 19
    .line 20
    if-gtz v1, :cond_0

    .line 21
    .line 22
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h$d;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 25
    .line 26
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 27
    .line 28
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/l;->R1:[I

    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    aget v2, v2, v3

    .line 32
    .line 33
    add-int/2addr p1, v2

    .line 34
    int-to-float p1, p1

    .line 35
    invoke-static {v1, p1}, Lcom/kongzue/dialogx/dialogs/l;->W0(Lcom/kongzue/dialogx/dialogs/l;F)F

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    iget-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$d;->a:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/kongzue/dialogx/dialogs/l;->V0(Lcom/kongzue/dialogx/dialogs/l;)F

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setY(F)V

    .line 49
    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_1
    sget-object v1, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;->TOP_INSIDE:Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings$ALIGN;

    .line 53
    .line 54
    if-ne v2, v1, :cond_2

    .line 55
    .line 56
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 57
    .line 58
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 59
    .line 60
    const/4 v1, 0x0

    .line 61
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 62
    .line 63
    .line 64
    :cond_2
    :goto_1
    return-void
.end method
