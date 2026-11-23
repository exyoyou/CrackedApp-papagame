.class Lcom/join/mgps/customview/GamelistExpandableTextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/GamelistExpandableTextView;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/GamelistExpandableTextView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/GamelistExpandableTextView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/join/mgps/customview/GamelistExpandableTextView;->f(Lcom/join/mgps/customview/GamelistExpandableTextView;)Ljava/lang/CharSequence;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iget-object v2, p0, Lcom/join/mgps/customview/GamelistExpandableTextView$a;->b:Lcom/join/mgps/customview/GamelistExpandableTextView;

    .line 17
    .line 18
    invoke-static {v2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->g(Lcom/join/mgps/customview/GamelistExpandableTextView;)Landroid/widget/TextView$BufferType;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-static {v0, v1, v2}, Lcom/join/mgps/customview/GamelistExpandableTextView;->h(Lcom/join/mgps/customview/GamelistExpandableTextView;Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
