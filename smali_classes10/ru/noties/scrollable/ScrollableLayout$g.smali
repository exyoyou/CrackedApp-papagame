.class Lru/noties/scrollable/ScrollableLayout$g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "g"
.end annotation


# instance fields
.field final a:Lru/noties/scrollable/ScrollableLayout$h;


# direct methods
.method constructor <init>(Lru/noties/scrollable/ScrollableLayout$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$g;->a:Lru/noties/scrollable/ScrollableLayout$h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method a(Landroid/view/MotionEvent;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "event",
            "action"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 6
    .line 7
    .line 8
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$g;->a:Lru/noties/scrollable/ScrollableLayout$h;

    .line 9
    .line 10
    invoke-interface {p2, p1}, Lru/noties/scrollable/ScrollableLayout$h;->a(Landroid/view/MotionEvent;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
