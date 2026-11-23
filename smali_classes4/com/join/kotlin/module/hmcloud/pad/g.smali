.class public final synthetic Lcom/join/kotlin/module/hmcloud/pad/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/g;->b:Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/pad/g;->c:Ljava/util/List;

    iput p3, p0, Lcom/join/kotlin/module/hmcloud/pad/g;->d:I

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/g;->b:Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/g;->c:Ljava/util/List;

    iget v2, p0, Lcom/join/kotlin/module/hmcloud/pad/g;->d:I

    invoke-static {v0, v1, v2, p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;->a(Lcom/join/kotlin/module/hmcloud/pad/HMKeyboardView;Ljava/util/List;ILandroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
