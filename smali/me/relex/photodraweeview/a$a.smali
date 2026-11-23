.class Lme/relex/photodraweeview/a$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lme/relex/photodraweeview/a;-><init>(Lcom/facebook/drawee/view/DraweeView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lme/relex/photodraweeview/a;


# direct methods
.method constructor <init>(Lme/relex/photodraweeview/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lme/relex/photodraweeview/a$a;->b:Lme/relex/photodraweeview/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/GestureDetector$SimpleOnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lme/relex/photodraweeview/a$a;->b:Lme/relex/photodraweeview/a;

    .line 5
    .line 6
    invoke-static {p1}, Lme/relex/photodraweeview/a;->e(Lme/relex/photodraweeview/a;)Landroid/view/View$OnLongClickListener;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lme/relex/photodraweeview/a$a;->b:Lme/relex/photodraweeview/a;

    .line 13
    .line 14
    invoke-static {p1}, Lme/relex/photodraweeview/a;->e(Lme/relex/photodraweeview/a;)Landroid/view/View$OnLongClickListener;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    iget-object v0, p0, Lme/relex/photodraweeview/a$a;->b:Lme/relex/photodraweeview/a;

    .line 19
    .line 20
    invoke-virtual {v0}, Lme/relex/photodraweeview/a;->r()Lcom/facebook/drawee/view/DraweeView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
