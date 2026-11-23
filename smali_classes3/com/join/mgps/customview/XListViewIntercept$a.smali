.class Lcom/join/mgps/customview/XListViewIntercept$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/XListViewIntercept;->e(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/XListViewIntercept;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/XListViewIntercept;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/XListViewIntercept$a;->b:Lcom/join/mgps/customview/XListViewIntercept;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept$a;->b:Lcom/join/mgps/customview/XListViewIntercept;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/XListViewIntercept;->c(Lcom/join/mgps/customview/XListViewIntercept;)Landroid/widget/RelativeLayout;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Lcom/join/mgps/customview/XListViewIntercept;->b(Lcom/join/mgps/customview/XListViewIntercept;I)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/XListViewIntercept$a;->b:Lcom/join/mgps/customview/XListViewIntercept;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 21
    .line 22
    .line 23
    return-void
.end method
